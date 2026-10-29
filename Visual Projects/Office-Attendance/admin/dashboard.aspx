<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Executive Dashboard</title>
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StylesheetsContent" runat="Server">
    <!-- Page Specific Styles if any -->
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-grid-1x2-fill text-navy"></i> Dashboard Overview
            </h1>
            <p class="page-subtitle">Welcome back, Admin. Here is today's real-time office attendance & activity summary.</p>
        </div>
        <div class="d-flex align-items-center gap-2">
            <a href="QR.aspx" class="btn btn-navy">
                <i class="bi bi-qr-code-scan"></i> Show Office QR
            </a>
            <a href="Attendance.aspx" class="btn btn-outline-navy">
                <i class="bi bi-calendar-check"></i> Live Attendance
            </a>
        </div>
    </div>

    <!-- QUICK ACTIONS BAR -->
    <div class="card-theme p-3 mb-4">
        <div class="d-flex flex-wrap align-items-center justify-content-between gap-2">
            <div class="d-flex align-items-center gap-2">
                <span class="badge bg-primary bg-opacity-10 text-navy fw-semibold px-2 py-1">
                    <i class="bi bi-lightning-charge-fill text-warning me-1"></i> Quick Shortcuts
                </span>
                <span class="text-muted small d-none d-md-inline">One-click frequent actions for HR management</span>
            </div>
            <div class="d-flex flex-wrap gap-2">
                <a href="Employees.aspx" class="btn btn-sm btn-outline-navy">
                    <i class="bi bi-person-plus-fill me-1"></i> Add Employee
                </a>
                <a href="Leaves.aspx" class="btn btn-sm btn-outline-navy">
                    <i class="bi bi-check2-circle me-1"></i> Review Leaves (2)
                </a>
                <a href="Payroll.aspx" class="btn btn-sm btn-outline-navy">
                    <i class="bi bi-cash-coin me-1"></i> October Payroll
                </a>
                <a href="Reports.aspx" class="btn btn-sm btn-outline-navy">
                    <i class="bi bi-file-earmark-bar-graph me-1"></i> Export Daily PDF
                </a>
            </div>
        </div>
    </div>

    <!-- 5 KEY METRIC STAT CARDS -->
    <div class="row g-3 mb-4">
        <!-- 1. Total Employees -->
        <div class="col-12 col-sm-6 col-xl">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Total Staff</span>
                    <span class="stat-value">48</span>
                    <span class="stat-subtext text-success">
                        <i class="bi bi-check-circle-fill"></i> 46 Active • 2 Onboarding
                    </span>
                </div>
                <div class="stat-icon primary">
                    <i class="bi bi-people-fill"></i>
                </div>
            </div>
        </div>

        <!-- 2. Present Today -->
        <div class="col-12 col-sm-6 col-xl">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Present Today</span>
                    <span class="stat-value text-success">38</span>
                    <span class="stat-subtext text-success">
                        <i class="bi bi-arrow-up-right"></i> 79.2% attendance rate
                    </span>
                </div>
                <div class="stat-icon success">
                    <i class="bi bi-person-check-fill"></i>
                </div>
            </div>
        </div>

        <!-- 3. Absent Today -->
        <div class="col-12 col-sm-6 col-xl">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Absent Today</span>
                    <span class="stat-value text-danger">4</span>
                    <span class="stat-subtext text-danger">
                        <i class="bi bi-exclamation-circle-fill"></i> 2 Uninformed
                    </span>
                </div>
                <div class="stat-icon danger">
                    <i class="bi bi-person-x-fill"></i>
                </div>
            </div>
        </div>

        <!-- 4. Late Employees -->
        <div class="col-12 col-sm-6 col-xl">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">Late Arrivals</span>
                    <span class="stat-value text-warning">4</span>
                    <span class="stat-subtext text-muted">
                        <i class="bi bi-clock-history"></i> > 15m Grace period
                    </span>
                </div>
                <div class="stat-icon warning">
                    <i class="bi bi-hourglass-split"></i>
                </div>
            </div>
        </div>

        <!-- 5. On Leave -->
        <div class="col-12 col-sm-6 col-xl">
            <div class="stat-card">
                <div class="stat-content">
                    <span class="stat-label">On Leave</span>
                    <span class="stat-value" style="color: #0284c7;">2</span>
                    <span class="stat-subtext text-muted">
                        <i class="bi bi-calendar-event"></i> 1 Sick • 1 Casual
                    </span>
                </div>
                <div class="stat-icon info">
                    <i class="bi bi-calendar-x-fill"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- MIDDLE ROW: TODAY'S ATTENDANCE BREAKDOWN & LIVE QR STATUS -->
    <div class="row g-3 mb-4">
        <!-- Attendance Visual Breakdown -->
        <div class="col-12 col-lg-8">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-pie-chart-fill text-navy"></i> Today's Attendance Composition
                    </h2>
                    <span class="badge bg-light text-dark border">Shift: 10:00 AM - 06:00 PM</span>
                </div>
                <div class="card-body-theme">
                    <!-- Progress Composition Bar -->
                    <div class="mb-3">
                        <div class="d-flex justify-content-between small text-muted mb-1">
                            <span>Turnout: 42 accounted out of 48 total</span>
                            <span class="fw-bold text-dark">87.5% Accounted</span>
                        </div>
                        <div class="progress" style="height: 14px; border-radius: 8px;">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 70%;" title="On Time Present (34)"></div>
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 8.3%;" title="Late Present (4)"></div>
                            <div class="progress-bar bg-info" role="progressbar" style="width: 4.2%;" title="Approved Leave (2)"></div>
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 8.3%;" title="Absent (4)"></div>
                            <div class="progress-bar bg-secondary opacity-25" role="progressbar" style="width: 9.2%;" title="Pending Scan (4)"></div>
                        </div>
                        <div class="d-flex flex-wrap gap-3 small mt-2">
                            <span class="d-inline-flex align-items-center gap-1">
                                <span class="badge rounded-circle p-1 bg-success"> </span> On Time (34)
                            </span>
                            <span class="d-inline-flex align-items-center gap-1">
                                <span class="badge rounded-circle p-1 bg-warning"> </span> Late Arrival (4)
                            </span>
                            <span class="d-inline-flex align-items-center gap-1">
                                <span class="badge rounded-circle p-1 bg-info"> </span> On Leave (2)
                            </span>
                            <span class="d-inline-flex align-items-center gap-1">
                                <span class="badge rounded-circle p-1 bg-danger"> </span> Absent (4)
                            </span>
                            <span class="d-inline-flex align-items-center gap-1 text-muted">
                                <span class="badge rounded-circle p-1 bg-secondary opacity-50"> </span> Awaiting Scan (4)
                            </span>
                        </div>
                    </div>

                    <hr class="border-light-subtle my-3" />

                    <!-- Department Turnout List -->
                    <h6 class="fw-bold text-navy mb-2" style="font-size: 0.85rem;">Department Attendance Progress</h6>
                    <div class="row g-3">
                        <div class="col-12 col-sm-6">
                            <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                                <div class="d-flex justify-content-between small fw-semibold mb-1">
                                    <span>Engineering & IT</span>
                                    <span class="text-success">18 / 20 (90%)</span>
                                </div>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-success" style="width: 90%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                                <div class="d-flex justify-content-between small fw-semibold mb-1">
                                    <span>Marketing & Sales</span>
                                    <span class="text-success">11 / 12 (91.6%)</span>
                                </div>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-success" style="width: 91.6%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                                <div class="d-flex justify-content-between small fw-semibold mb-1">
                                    <span>HR & Admin</span>
                                    <span class="text-success">5 / 6 (83.3%)</span>
                                </div>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-navy" style="width: 83.3%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="p-2 border rounded-3 bg-light bg-opacity-50">
                                <div class="d-flex justify-content-between small fw-semibold mb-1">
                                    <span>Finance & Accounts</span>
                                    <span class="text-warning">4 / 6 (66.7%)</span>
                                </div>
                                <div class="progress" style="height: 6px;">
                                    <div class="progress-bar bg-warning" style="width: 66.7%;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Live Terminal QR Status Card -->
        <div class="col-12 col-lg-4">
            <div class="card-theme h-100 text-center p-3 d-flex flex-column justify-content-between">
                <div>
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <span class="badge-status badge-active">
                            <span class="qr-pulse-dot"></span> Terminal Active
                        </span>
                        <span class="small text-muted font-monospace">Token #8921-X</span>
                    </div>

                    <h3 class="fw-bold text-navy h6 mb-1">Today's Office QR Code</h3>
                    <p class="text-muted small mb-3">Employees scan this code via mobile app at reception</p>

                    <!-- Mini Vector QR Representation -->
                    <div class="d-inline-block p-2 bg-white rounded border shadow-sm mb-2">
                        <svg width="120" height="120" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <!-- Outer Corners -->
                            <rect x="5" y="5" width="28" height="28" rx="4" fill="#0B1B32" />
                            <rect x="10" y="10" width="18" height="18" rx="2" fill="white" />
                            <rect x="14" y="14" width="10" height="10" rx="1" fill="#142B49" />

                            <rect x="67" y="5" width="28" height="28" rx="4" fill="#0B1B32" />
                            <rect x="72" y="10" width="18" height="18" rx="2" fill="white" />
                            <rect x="76" y="14" width="10" height="10" rx="1" fill="#142B49" />

                            <rect x="5" y="67" width="28" height="28" rx="4" fill="#0B1B32" />
                            <rect x="10" y="72" width="18" height="18" rx="2" fill="white" />
                            <rect x="14" y="76" width="10" height="10" rx="1" fill="#142B49" />

                            <!-- Sample QR Pattern Dots -->
                            <rect x="40" y="10" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="52" y="10" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="40" y="24" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="52" y="24" width="8" height="8" rx="1" fill="#142B49" />
                            
                            <rect x="10" y="42" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="24" y="42" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="38" y="42" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="52" y="42" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="66" y="42" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="80" y="42" width="8" height="8" rx="1" fill="#142B49" />

                            <rect x="40" y="60" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="52" y="60" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="66" y="60" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="80" y="60" width="8" height="8" rx="1" fill="#142B49" />
                            
                            <rect x="40" y="76" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="52" y="84" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="68" y="76" width="8" height="8" rx="1" fill="#142B49" />
                            <rect x="80" y="84" width="8" height="8" rx="1" fill="#142B49" />
                        </svg>
                    </div>

                    <div class="small fw-semibold text-dark">38 / 48 Scans Recorded Today</div>
                    <div class="text-muted" style="font-size: 0.72rem;">Refreshes in 08m 42s • Geofence Verified</div>
                </div>

                <div class="mt-3 d-grid gap-2">
                    <a href="QR.aspx" class="btn btn-navy btn-sm">
                        <i class="bi bi-arrows-fullscreen me-1"></i> Open Terminal Display
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- LOWER SECTION: RECENT CHECK-INS & LATE ARRIVALS SUMMARY -->
    <div class="row g-3">
        <!-- Recent Activity Feed -->
        <div class="col-12 col-lg-7">
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-clock-history text-navy"></i> Recent Check-in Activity
                    </h2>
                    <a href="Attendance.aspx" class="small text-decoration-none fw-semibold">View All <i class="bi bi-arrow-right"></i></a>
                </div>
                <div class="table-responsive-theme">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Employee</th>
                                <th>Department</th>
                                <th>Time</th>
                                <th>Verification</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm">VM</div>
                                        <div>
                                            <div class="user-name-title">Vikram Malhotra</div>
                                            <div class="user-sub-id">OT-1008</div>
                                        </div>
                                    </div>
                                </td>
                                <td>Engineering</td>
                                <td class="font-monospace fw-semibold">09:54 AM</td>
                                <td><span class="badge bg-light text-dark border"><i class="bi bi-phone me-1"></i> QR Code</span></td>
                                <td><span class="badge-status badge-present"><i class="bi bi-check-circle"></i> On Time</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                                        <div>
                                            <div class="user-name-title">Ananya Sharma</div>
                                            <div class="user-sub-id">OT-1012</div>
                                        </div>
                                    </div>
                                </td>
                                <td>Marketing</td>
                                <td class="font-monospace fw-semibold">09:58 AM</td>
                                <td><span class="badge bg-light text-dark border"><i class="bi bi-phone me-1"></i> QR Code</span></td>
                                <td><span class="badge-status badge-present"><i class="bi bi-check-circle"></i> On Time</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">RK</div>
                                        <div>
                                            <div class="user-name-title">Rohan Kulkarni</div>
                                            <div class="user-sub-id">OT-1015</div>
                                        </div>
                                    </div>
                                </td>
                                <td>Product</td>
                                <td class="font-monospace fw-semibold text-warning">10:22 AM</td>
                                <td><span class="badge bg-light text-dark border"><i class="bi bi-phone me-1"></i> QR Code</span></td>
                                <td><span class="badge-status badge-late"><i class="bi bi-hourglass-bottom"></i> Late (+22m)</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#e0e7ff; color:#3730a3;">NK</div>
                                        <div>
                                            <div class="user-name-title">Neha Kapoor</div>
                                            <div class="user-sub-id">OT-1021</div>
                                        </div>
                                    </div>
                                </td>
                                <td>Finance</td>
                                <td class="font-monospace fw-semibold">10:04 AM</td>
                                <td><span class="badge bg-light text-dark border"><i class="bi bi-phone me-1"></i> QR Code</span></td>
                                <td><span class="badge-status badge-present"><i class="bi bi-check-circle"></i> Grace Period</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="user-meta-cell">
                                        <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">PS</div>
                                        <div>
                                            <div class="user-name-title">Pooja Singh</div>
                                            <div class="user-sub-id">OT-1024</div>
                                        </div>
                                    </div>
                                </td>
                                <td>Operations</td>
                                <td class="font-monospace fw-semibold text-warning">10:38 AM</td>
                                <td><span class="badge bg-light text-dark border"><i class="bi bi-phone me-1"></i> QR Code</span></td>
                                <td><span class="badge-status badge-late"><i class="bi bi-hourglass-bottom"></i> Late (+38m)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Late Arrival Summary -->
        <div class="col-12 col-lg-5">
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-exclamation-triangle-fill text-warning"></i> Late Arrival Flagged List
                    </h2>
                    <span class="badge bg-warning bg-opacity-10 text-warning border border-warning border-opacity-25">4 Staff</span>
                </div>
                <div class="card-body-theme p-0">
                    <div class="list-group list-group-flush">
                        <div class="list-group-item p-3 d-flex justify-content-between align-items-center">
                            <div class="d-flex align-items-center gap-2">
                                <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">RK</div>
                                <div>
                                    <div class="user-name-title">Rohan Kulkarni</div>
                                    <div class="user-sub-id">Product • In: 10:22 AM</div>
                                </div>
                            </div>
                            <div class="text-end">
                                <span class="badge-status badge-late">+22 Mins</span>
                                <div class="text-muted" style="font-size: 0.7rem;">1st offense this month</div>
                            </div>
                        </div>

                        <div class="list-group-item p-3 d-flex justify-content-between align-items-center">
                            <div class="d-flex align-items-center gap-2">
                                <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">PS</div>
                                <div>
                                    <div class="user-name-title">Pooja Singh</div>
                                    <div class="user-sub-id">Operations • In: 10:38 AM</div>
                                </div>
                            </div>
                            <div class="text-end">
                                <span class="badge-status badge-late">+38 Mins</span>
                                <div class="text-danger" style="font-size: 0.7rem; font-weight: 600;">3rd late (Half-Day warning)</div>
                            </div>
                        </div>

                        <div class="list-group-item p-3 d-flex justify-content-between align-items-center">
                            <div class="d-flex align-items-center gap-2">
                                <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">DK</div>
                                <div>
                                    <div class="user-name-title">Deepak Kumar</div>
                                    <div class="user-sub-id">Engineering • In: 10:45 AM</div>
                                </div>
                            </div>
                            <div class="text-end">
                                <span class="badge-status badge-late">+45 Mins</span>
                                <div class="text-muted" style="font-size: 0.7rem;">Traffic delay flagged</div>
                            </div>
                        </div>

                        <div class="list-group-item p-3 d-flex justify-content-between align-items-center">
                            <div class="d-flex align-items-center gap-2">
                                <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">SD</div>
                                <div>
                                    <div class="user-name-title">Sameer Deshmukh</div>
                                    <div class="user-sub-id">Sales • In: 10:50 AM</div>
                                </div>
                            </div>
                            <div class="text-end">
                                <span class="badge-status badge-late">+50 Mins</span>
                                <div class="text-muted" style="font-size: 0.7rem;">Client meeting claim</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer bg-light p-2 text-center border-top">
                    <a href="Attendance.aspx" class="btn btn-sm btn-link text-navy text-decoration-none">
                        Manage Attendance Penalties & Approvals <i class="bi bi-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptsContent" runat="Server">
    <!-- Page script if needed -->
</asp:Content>
