<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Employee Dashboard</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- WELCOME BANNER & DATE -->
    <div class="card-theme p-3 p-md-4 mb-3 border-0" style="background: linear-gradient(135deg, #0B1B32, #142B49); color: #ffffff;">
        <div class="d-flex flex-column flex-sm-row justify-content-between align-items-sm-center gap-3">
            <div class="d-flex align-items-center gap-3">
                <div class="emp-avatar" style="width: 52px; height: 52px; font-size: 1.3rem; background: rgba(255,255,255,0.15); border: 2px solid rgba(255,255,255,0.3);">
                    VM
                </div>
                <div>
                    <div class="d-flex align-items-center gap-2 flex-wrap">
                        <h1 class="h5 fw-bold mb-0 text-white">Hello, Vikram Malhotra!</h1>
                        <span class="badge bg-success bg-opacity-25 text-white border border-success border-opacity-50 font-monospace" style="font-size: 0.7rem;">OT-1008</span>
                    </div>
                    <div class="text-white-50 small mt-1">
                        <span>Sr. Full Stack Engineer</span> • <span>Engineering & IT</span>
                    </div>
                </div>
            </div>
            <div class="text-sm-end">
                <div class="small text-white-50">Today's Date</div>
                <div class="fw-bold text-white">Thursday, 29 Oct 2026</div>
                <div class="badge bg-light text-dark font-monospace live-time-display mt-1">10:45:00 AM</div>
            </div>
        </div>
    </div>

    <!-- TODAY'S ATTENDANCE STATUS CARD (HERO) -->
    <div class="card-theme p-3 mb-3">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="d-flex align-items-center gap-2">
                <div class="stat-icon success" style="width: 32px; height: 32px; font-size: 1rem;">
                    <i class="bi bi-shield-check"></i>
                </div>
                <span class="fw-bold text-navy">Today's Attendance Status</span>
            </div>
            <span class="badge-status badge-present">
                <i class="bi bi-check-circle-fill"></i> Present (On Time)
            </span>
        </div>

        <div class="row g-2 text-center">
            <div class="col-4">
                <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                    <span class="text-muted small d-block" style="font-size: 0.72rem;">Check In</span>
                    <span class="fw-bold text-navy font-monospace fs-6">09:54 AM</span>
                    <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25 d-block mt-1" style="font-size: 0.65rem;">QR Verified</span>
                </div>
            </div>
            <div class="col-4">
                <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                    <span class="text-muted small d-block" style="font-size: 0.72rem;">Check Out</span>
                    <span class="fw-semibold text-muted font-monospace fs-6">-- : --</span>
                    <span class="text-muted d-block mt-1" style="font-size: 0.65rem;">Pending</span>
                </div>
            </div>
            <div class="col-4">
                <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                    <span class="text-muted small d-block" style="font-size: 0.72rem;">Shift Window</span>
                    <span class="fw-semibold text-navy font-monospace fs-6">10am - 6pm</span>
                    <span class="text-muted d-block mt-1" style="font-size: 0.65rem;">8h Required</span>
                </div>
            </div>
        </div>

        <!-- QUICK ACTION SCAN BUTTON -->
        <div class="mt-3">
            <a href="ScanQR.aspx" class="btn btn-navy w-100 py-2 d-flex align-items-center justify-content-center gap-2 shadow-sm">
                <i class="bi bi-qr-code-scan fs-5"></i>
                <span class="fw-semibold">Scan QR Code at Terminal</span>
            </a>
        </div>
    </div>

    <!-- MONTHLY SUMMARY CARDS (4 TILES) -->
    <div class="row g-2 g-md-3 mb-3">
        <!-- Present Days -->
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Present Days</span>
                    <span class="stat-value text-success">21</span>
                    <span class="stat-subtext text-success">
                        <i class="bi bi-check-circle"></i> 95.4% Turnout
                    </span>
                </div>
                <div class="stat-icon success">
                    <i class="bi bi-person-check-fill"></i>
                </div>
            </div>
        </div>

        <!-- Absent Days -->
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Absent Days</span>
                    <span class="stat-value text-navy">0</span>
                    <span class="stat-subtext text-success">
                        <i class="bi bi-emoji-smile"></i> Zero LOP
                    </span>
                </div>
                <div class="stat-icon primary">
                    <i class="bi bi-person-x-fill"></i>
                </div>
            </div>
        </div>

        <!-- Late Days -->
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Late Marks</span>
                    <span class="stat-value text-warning">2</span>
                    <span class="stat-subtext text-muted">
                        <i class="bi bi-info-circle"></i> Max 3 allowed
                    </span>
                </div>
                <div class="stat-icon warning">
                    <i class="bi bi-clock-history"></i>
                </div>
            </div>
        </div>

        <!-- Leave Balance -->
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Leave Balance</span>
                    <span class="stat-value text-primary">18</span>
                    <span class="stat-subtext text-muted">
                        <i class="bi bi-calendar-check"></i> Available
                    </span>
                </div>
                <div class="stat-icon info">
                    <i class="bi bi-calendar-heart-fill"></i>
                </div>
            </div>
        </div>
    </div>

    <div class="row g-3">
        <!-- RECENT ATTENDANCE TABLE (LEFT) -->
        <div class="col-12 col-lg-8">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-clock-history text-navy"></i> Recent Attendance Logs
                    </h2>
                    <a href="MyAttendance.aspx" class="small text-decoration-none fw-semibold">View All <i class="bi bi-arrow-right"></i></a>
                </div>
                <div class="table-responsive-theme border-0">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Check In</th>
                                <th>Check Out</th>
                                <th>Hours</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="fw-semibold">Today (29 Oct)</td>
                                <td class="font-monospace text-success fw-bold">09:54 AM</td>
                                <td class="font-monospace text-muted">-- In Shift --</td>
                                <td class="font-monospace text-muted">--</td>
                                <td><span class="badge-status badge-present">Present (On Time)</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Wed, 28 Oct</td>
                                <td class="font-monospace">09:58 AM</td>
                                <td class="font-monospace">06:12 PM</td>
                                <td class="font-monospace">8h 14m</td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Tue, 27 Oct</td>
                                <td class="font-monospace text-warning fw-bold">10:19 AM</td>
                                <td class="font-monospace">06:30 PM</td>
                                <td class="font-monospace">8h 11m</td>
                                <td><span class="badge-status badge-late">Late (+19m)</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Mon, 26 Oct</td>
                                <td class="font-monospace">10:02 AM</td>
                                <td class="font-monospace">06:05 PM</td>
                                <td class="font-monospace">8h 03m</td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Fri, 23 Oct</td>
                                <td class="font-monospace">09:50 AM</td>
                                <td class="font-monospace">06:15 PM</td>
                                <td class="font-monospace">8h 25m</td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- RIGHT SIDE: UPCOMING HOLIDAY & NOTIFICATIONS -->
        <div class="col-12 col-lg-4">
            <!-- UPCOMING HOLIDAY CARD -->
            <div class="card-theme p-3 mb-3">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="small text-muted fw-bold text-uppercase" style="letter-spacing: 0.05em;">Next Office Holiday</span>
                    <span class="badge bg-warning text-dark"><i class="bi bi-stars"></i> Festival</span>
                </div>
                <div class="d-flex align-items-center gap-3">
                    <div class="p-2 rounded-3 text-center bg-danger bg-opacity-10 text-danger" style="min-width: 50px;">
                        <span class="d-block fw-bold fs-5 lh-1">08</span>
                        <span class="small fw-semibold">NOV</span>
                    </div>
                    <div>
                        <div class="fw-bold text-navy">Diwali (Deepavali)</div>
                        <div class="text-muted small">Sunday • Official Holiday</div>
                    </div>
                </div>
                <div class="mt-2 pt-2 border-top">
                    <a href="Holidays.aspx" class="small text-decoration-none fw-semibold">View 2026 Holiday Calendar <i class="bi bi-chevron-right"></i></a>
                </div>
            </div>

            <!-- RECENT NOTIFICATIONS SNIPPET -->
            <div class="card-theme p-3">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="fw-bold text-navy small"><i class="bi bi-bell-fill text-warning me-1"></i> Recent Alerts</span>
                    <a href="Notifications.aspx" class="small text-decoration-none">All (3)</a>
                </div>
                <div class="list-group list-group-flush small">
                    <div class="list-group-item px-0 py-2 border-0 border-bottom">
                        <div class="fw-semibold text-dark">Check-in Recorded</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Today at 09:54 AM via Reception QR Terminal.</div>
                    </div>
                    <div class="list-group-item px-0 py-2 border-0">
                        <div class="fw-semibold text-dark">Leave Request Approved</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Casual leave for 14 Oct was approved by Admin.</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
