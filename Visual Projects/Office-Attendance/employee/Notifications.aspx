<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Notifications & Alerts</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-bell-fill text-navy"></i> Notifications & Alerts
            </h1>
            <p class="page-subtitle">Real-time attendance reminders, punch verifications, and company announcements.</p>
        </div>
        <div>
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="All notifications marked as read!">
                <i class="bi bi-check2-all me-1"></i> Mark All as Read
            </button>
        </div>
    </div>

    <!-- NOTIFICATION FILTER TABS -->
    <ul class="nav nav-pills mb-3" id="notifTabs" role="tablist">
        <li class="nav-item">
            <button class="nav-link active btn-sm" id="tab-all" data-bs-toggle="pill" data-bs-target="#notif-all" type="button" role="tab">
                All Notifications (5)
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-unread" data-bs-toggle="pill" data-bs-target="#notif-unread" type="button" role="tab">
                Unread <span class="badge bg-danger rounded-pill ms-1">2</span>
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-attendance" data-bs-toggle="pill" data-bs-target="#notif-attendance" type="button" role="tab">
                Attendance Punch (2)
            </button>
        </li>
        <li class="nav-item">
            <button class="nav-link btn-sm text-navy" id="tab-leaves" data-bs-toggle="pill" data-bs-target="#notif-leaves" type="button" role="tab">
                Leaves (1)
            </button>
        </li>
    </ul>

    <!-- NOTIFICATION LIST CONTAINER -->
    <div class="tab-content" id="notifTabContents">
        <!-- ALL NOTIFICATIONS TAB -->
        <div class="tab-pane fade show active" id="notif-all" role="tabpanel">
            <div class="card-theme p-0 overflow-hidden">
                <div class="list-group list-group-flush">
                    <!-- Notification 1 (Unread - Attendance Check-in) -->
                    <div class="list-group-item p-3 bg-light bg-opacity-75 border-start border-4 border-success">
                        <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                            <div class="d-flex align-items-center gap-2">
                                <span class="badge rounded-circle p-1 bg-success"> </span>
                                <span class="fw-bold text-navy small"><i class="bi bi-check-circle-fill text-success me-1"></i> Check-In Recorded Successfully</span>
                                <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25" style="font-size:0.65rem;">New</span>
                            </div>
                            <span class="text-muted small font-monospace" style="font-size: 0.72rem;">Today, 09:54 AM</span>
                        </div>
                        <p class="small text-dark mb-1">
                            Your morning check-in was stamped via <strong>Reception Screen #LOBBY-01</strong>. Status: <span class="text-success fw-semibold">Present (On Time)</span>.
                        </p>
                        <span class="text-muted small" style="font-size: 0.72rem;">Device: Apple iPhone 14 Pro • Geofence Verified</span>
                    </div>

                    <!-- Notification 2 (Unread - Late Arrival Flag) -->
                    <div class="list-group-item p-3 bg-light bg-opacity-75 border-start border-4 border-warning">
                        <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                            <div class="d-flex align-items-center gap-2">
                                <span class="badge rounded-circle p-1 bg-warning"> </span>
                                <span class="fw-bold text-navy small"><i class="bi bi-exclamation-triangle-fill text-warning me-1"></i> Late Arrival Flagged</span>
                                <span class="badge bg-warning bg-opacity-25 text-dark border border-warning" style="font-size:0.65rem;">Notice</span>
                            </div>
                            <span class="text-muted small font-monospace" style="font-size: 0.72rem;">27 Oct, 10:20 AM</span>
                        </div>
                        <p class="small text-dark mb-1">
                            You punched in at <strong>10:19 AM</strong> (+19 mins past 10:00 AM start). Grace period threshold was 15 mins.
                        </p>
                        <span class="text-muted small" style="font-size: 0.72rem;">Policy note: 3 late marks in a month incur a half-day salary deduction. (Current late count: 2)</span>
                    </div>

                    <!-- Notification 3 (Read - Leave Approved) -->
                    <div class="list-group-item p-3 border-start border-4 border-primary">
                        <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                            <div class="d-flex align-items-center gap-2">
                                <span class="fw-bold text-navy small"><i class="bi bi-calendar-check-fill text-primary me-1"></i> Leave Application Approved</span>
                            </div>
                            <span class="text-muted small font-monospace" style="font-size: 0.72rem;">11 Oct, 04:30 PM</span>
                        </div>
                        <p class="small text-muted mb-1">
                            Your 1-day Casual Leave request for <strong>14 Oct 2026</strong> has been reviewed and approved by reporting manager <strong>Rajesh Sharma</strong>.
                        </p>
                        <span class="text-muted small" style="font-size: 0.72rem;">Your updated Casual Leave balance is 7 days.</span>
                    </div>

                    <!-- Notification 4 (Read - Holiday Notice) -->
                    <div class="list-group-item p-3 border-start border-4 border-secondary border-opacity-25">
                        <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                            <div class="d-flex align-items-center gap-2">
                                <span class="fw-bold text-navy small"><i class="bi bi-stars text-warning me-1"></i> Upcoming Festival Holiday: Diwali</span>
                            </div>
                            <span class="text-muted small font-monospace" style="font-size: 0.72rem;">25 Oct, 11:00 AM</span>
                        </div>
                        <p class="small text-muted mb-0">
                            OfficeTrack HQ offices will remain closed on <strong>Sunday, 08 November 2026</strong> on account of Diwali. Terminal scan access will be suspended.
                        </p>
                    </div>

                    <!-- Notification 5 (Read - General Notice) -->
                    <div class="list-group-item p-3 border-start border-4 border-secondary border-opacity-25">
                        <div class="d-flex justify-content-between align-items-start gap-2 mb-1">
                            <div class="d-flex align-items-center gap-2">
                                <span class="fw-bold text-navy small"><i class="bi bi-megaphone-fill text-navy me-1"></i> Quarterly Engineering All-Hands</span>
                            </div>
                            <span class="text-muted small font-monospace" style="font-size: 0.72rem;">20 Oct, 02:00 PM</span>
                        </div>
                        <p class="small text-muted mb-0">
                            All staff members are invited to the Q3 engineering product roadmap showcase in Conference Room A or virtually over video conference.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- UNREAD ONLY TAB -->
        <div class="tab-pane fade" id="notif-unread" role="tabpanel">
            <div class="card-theme p-0 overflow-hidden">
                <div class="list-group list-group-flush">
                    <div class="list-group-item p-3 bg-light bg-opacity-75 border-start border-4 border-success">
                        <div class="d-flex justify-content-between align-items-center mb-1">
                            <span class="fw-bold text-navy small"><i class="bi bi-check-circle-fill text-success me-1"></i> Check-In Recorded</span>
                            <span class="text-muted small font-monospace">Today, 09:54 AM</span>
                        </div>
                        <p class="small text-dark mb-0">Your morning check-in was stamped via Reception Screen #LOBBY-01.</p>
                    </div>
                    <div class="list-group-item p-3 bg-light bg-opacity-75 border-start border-4 border-warning">
                        <div class="d-flex justify-content-between align-items-center mb-1">
                            <span class="fw-bold text-navy small"><i class="bi bi-exclamation-triangle-fill text-warning me-1"></i> Late Arrival Flagged</span>
                            <span class="text-muted small font-monospace">27 Oct, 10:20 AM</span>
                        </div>
                        <p class="small text-dark mb-0">You punched in at 10:19 AM (+19 mins past scheduled arrival).</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- ATTENDANCE ONLY TAB -->
        <div class="tab-pane fade" id="notif-attendance" role="tabpanel">
            <div class="card-theme p-3">
                <h2 class="h6 fw-bold text-navy mb-2"><i class="bi bi-shield-check text-success me-1"></i> Attendance Punch Logs</h2>
                <div class="small text-muted">Showing all automated terminal check-in & check-out confirmation receipts.</div>
            </div>
        </div>

        <!-- LEAVES ONLY TAB -->
        <div class="tab-pane fade" id="notif-leaves" role="tabpanel">
            <div class="card-theme p-3">
                <h2 class="h6 fw-bold text-navy mb-2"><i class="bi bi-calendar-check text-primary me-1"></i> Leave Approvals & Rejections</h2>
                <div class="small text-muted">Showing all time-off workflow updates from your managers.</div>
            </div>
        </div>
    </div>
</asp:Content>

