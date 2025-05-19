Imports System.Diagnostics
Imports System.Runtime.InteropServices

Public Class MainForm
    Private batchProcess As Process
    Private isPaused As Boolean = False

    ' Import necessary functions to pause and resume process
    <DllImport("kernel32.dll")>
    Private Shared Function OpenThread(dwDesiredAccess As Integer, bInheritHandle As Boolean, dwThreadId As Integer) As IntPtr
    End Function

    <DllImport("kernel32.dll")>
    Private Shared Function SuspendThread(hThread As IntPtr) As Integer
    End Function

    <DllImport("kernel32.dll")>
    Private Shared Function ResumeThread(hThread As IntPtr) As Integer
    End Function

    <DllImport("kernel32.dll")>
    Private Shared Function CloseHandle(hObject As IntPtr) As Boolean
    End Function

    Private Const THREAD_SUSPEND_RESUME As Integer = &H2

    Private Sub btnPauseResume_Click(sender As Object, e As EventArgs) Handles btnPauseResume.Click
        If batchProcess IsNot Nothing AndAlso Not batchProcess.HasExited Then
            If isPaused Then
                ResumeProcess(batchProcess)
                isPaused = False
                btnPauseResume.Text = "Pause"
            Else
                SuspendProcess(batchProcess)
                isPaused = True
                btnPauseResume.Text = "Resume"
            End If
        End If
    End Sub

    Private Sub SuspendProcess(proc As Process)
        For Each thread In proc.Threads
            Dim threadHandle As IntPtr = OpenThread(THREAD_SUSPEND_RESUME, False, thread.Id)
            If threadHandle <> IntPtr.Zero Then
                SuspendThread(threadHandle)
                CloseHandle(threadHandle)
            End If
        Next
    End Sub

    Private Sub ResumeProcess(proc As Process)
        For Each thread In proc.Threads
            Dim threadHandle As IntPtr = OpenThread(THREAD_SUSPEND_RESUME, False, thread.Id)
            If threadHandle <> IntPtr.Zero Then
                ResumeThread(threadHandle)
                CloseHandle(threadHandle)
            End If
        Next
    End Sub

    Private Sub MainForm_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        ' Ensure that the batch process is terminated when the script's window is closed
        If batchProcess IsNot Nothing AndAlso Not batchProcess.HasExited Then
            batchProcess.Kill()
        End If
    End Sub
End Class
