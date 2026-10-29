<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Attendance Records</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-check-fill text-navy"></i> Attendance Management
            </h1>
            <p class="page-subtitle">Track daily and monthly attendance, log manual corrections, and analyze working hours.</p>
        </div>
        <div class="d-flex flex-wrap gap-2">
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Attendance report exported to Microsoft Excel!">
                <i class="bi bi-file-earmark-excel me-1 text-success"></i> Export Excel
            </button>
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Attendance report exported to PDF!">
                <i class="bi bi-file-earmark-pdf me-1 text-danger"></i> Export PDF
            </button>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal">
                <i class="bi bi-pencil-square me-1"></i> Manual Correction
            </button>
        </div>
    </div>

    <!-- VIEW TOGGLE TABS -->
    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active btn-sm" id="pills-daily-tab" data-bs-toggle="pill" data-bs-target="#pills-daily" type="button" role="tab">
                <i class="bi bi-list-check me-1"></i> Daily Attendance Log
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link btn-sm text-navy" id="pills-calendar-tab" data-bs-toggle="pill" data-bs-target="#pills-calendar" type="button" role="tab">
                <i class="bi bi-calendar3 me-1"></i> Monthly Calendar View
            </button>
        </li>
    </ul>

    <div class="tab-content" id="pills-tabContent">
        <!-- TAB 1: DAILY ATTENDANCE -->
        <div class="tab-pane fade show active" id="pills-daily" role="tabpanel">
            <!-- FILTER TOOLBAR -->
            <div class="filter-toolbar">
                <div style="min-width: 170px;">
                    <label class="form-label-custom small mb-0 d-block text-muted">Attendance Date</label>
                    <input type="date" class="form-control form-control-custom" value="2026-10-29" onchange="showToast('Loading logs for ' + this.value, 'info')" />
                </div>

                <div class="flex-grow-1" style="min-width: 200px;">
                    <label class="form-label-custom small mb-0 d-block text-muted">Search Staff</label>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                        <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Filter by employee name or ID..." data-table-filter="#dailyAttendanceTable" />
                    </div>
                </div>

                <div style="min-width: 150px;">
                    <label class="form-label-custom small mb-0 d-block text-muted">Department</label>
                    <select class="form-select form-select-custom">
                        <option>All Departments</option>
                        <option>Engineering & IT</option>
                        <option>Marketing & Sales</option>
                        <option>HR & Admin</option>
                        <option>Finance & Accounts</option>
                        <option>Operations</option>
                    </select>
                </div>

                <div style="min-width: 140px;">
                    <label class="form-label-custom small mb-0 d-block text-muted">Status</label>
                    <select class="form-select form-select-custom">
                        <option>All Statuses</option>
                        <option>Present</option>
                        <option>Late Arrival</option>
                        <option>Half Day</option>
                        <option>On Leave</option>
                        <option>Absent</option>
                    </select>
                </div>
            </div>

            <!-- ATTENDANCE TABLE -->
            <div class="table-responsive-theme shadow-sm mb-4">
                <table class="table-theme" id="dailyAttendanceTable">
                    <thead>
                        <tr>
                            <th>Employee</th>
                            <th>Department</th>
                            <th>Check In</th>
                            <th>Check Out</th>
                            <th>Total Hours</th>
                            <th>Late Arrival</th>
                            <th>Early Leaving</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Record 1 -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm">VM</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1008" class="user-name-title">Vikram Malhotra</a>
                                        <div class="user-sub-id">OT-1008</div>
                                    </div>
                                </div>
                            </td>
                            <td>Engineering</td>
                            <td class="font-monospace fw-semibold">09:54 AM</td>
                            <td class="font-monospace text-muted">-- Active --</td>
                            <td class="font-monospace">--</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present</span></td>
                            <td class="text-end">
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#attendanceDetailModal" title="Details">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal" title="Correct">
                                    <i class="bi bi-pencil"></i>
                                </button>
                            </td>
                        </tr>

                        <!-- Record 2 -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1012" class="user-name-title">Ananya Sharma</a>
                                        <div class="user-sub-id">OT-1012</div>
                                    </div>
                                </div>
                            </td>
                            <td>Marketing</td>
                            <td class="font-monospace fw-semibold">09:58 AM</td>
                            <td class="font-monospace text-muted">-- Active --</td>
                            <td class="font-monospace">--</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-present">Present</span></td>
                            <td class="text-end">
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#attendanceDetailModal" title="Details">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal" title="Correct">
                                    <i class="bi bi-pencil"></i>
                                </button>
                            </td>
                        </tr>

                        <!-- Record 3 (Late) -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">RK</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1015" class="user-name-title">Rohan Kulkarni</a>
                                        <div class="user-sub-id">OT-1015</div>
                                    </div>
                                </div>
                            </td>
                            <td>Engineering</td>
                            <td class="font-monospace fw-semibold text-warning">10:22 AM</td>
                            <td class="font-monospace text-muted">-- Active --</td>
                            <td class="font-monospace">--</td>
                            <td><span class="badge-status badge-late">+22 mins</span></td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-late">Late Arrival</span></td>
                            <td class="text-end">
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#attendanceDetailModal" title="Details">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal" title="Correct">
                                    <i class="bi bi-pencil"></i>
                                </button>
                            </td>
                        </tr>

                        <!-- Record 4 (On Leave) -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#e0e7ff; color:#3730a3;">NK</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1021" class="user-name-title">Neha Kapoor</a>
                                        <div class="user-sub-id">OT-1021</div>
                                    </div>
                                </div>
                            </td>
                            <td>Finance</td>
                            <td class="font-monospace text-muted">--</td>
                            <td class="font-monospace text-muted">--</td>
                            <td class="font-monospace">--</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-leave">Approved Leave</span></td>
                            <td class="text-end">
                                <a href="Leaves.aspx" class="btn-sm-action" title="View Leave Application">
                                    <i class="bi bi-calendar-event"></i>
                                </a>
                            </td>
                        </tr>

                        <!-- Record 5 (Absent) -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">KS</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1039" class="user-name-title">Karan Sethi</a>
                                        <div class="user-sub-id">OT-1039</div>
                                    </div>
                                </div>
                            </td>
                            <td>Marketing</td>
                            <td class="font-monospace text-danger">No Scan</td>
                            <td class="font-monospace text-muted">--</td>
                            <td class="font-monospace">0h 00m</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge-status badge-absent">Absent</span></td>
                            <td class="text-end">
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal" title="Mark Present Manually">
                                    <i class="bi bi-pencil"></i>
                                </button>
                            </td>
                        </tr>

                        <!-- Record 6 (Half Day) -->
                        <tr>
                            <td>
                                <div class="user-meta-cell">
                                    <div class="user-avatar-sm" style="background:#f3e8ff; color:#6b21a8;">DK</div>
                                    <div>
                                        <a href="EmployeeDetails.aspx?id=OT-1028" class="user-name-title">Deepak Kumar</a>
                                        <div class="user-sub-id">OT-1028</div>
                                    </div>
                                </div>
                            </td>
                            <td>Engineering</td>
                            <td class="font-monospace">10:01 AM</td>
                            <td class="font-monospace">02:15 PM</td>
                            <td class="font-monospace">4h 14m</td>
                            <td><span class="text-muted">-</span></td>
                            <td><span class="badge bg-warning bg-opacity-10 text-dark border">Left 02:15 PM</span></td>
                            <td><span class="badge-status badge-halfday">Half Day (Approved)</span></td>
                            <td class="text-end">
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#attendanceDetailModal" title="Details">
                                    <i class="bi bi-info-circle"></i>
                                </button>
                                <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#manualCorrectionModal" title="Correct">
                                    <i class="bi bi-pencil"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- TAB 2: MONTHLY CALENDAR VIEW -->
        <div class="tab-pane fade" id="pills-calendar" role="tabpanel">
            <div class="card-theme p-4">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h3 class="h6 fw-bold text-navy mb-0">October 2026 - Monthly Company Attendance Matrix</h3>
                    <div class="d-flex gap-2">
                        <button class="btn btn-sm btn-outline-secondary" onclick="showToast('Previous month loaded', 'info')"><i class="bi bi-chevron-left"></i></button>
                        <span class="fw-semibold px-2">October 2026</span>
                        <button class="btn btn-sm btn-outline-secondary" onclick="showToast('Next month loaded', 'info')"><i class="bi bi-chevron-right"></i></button>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered text-center align-middle small mb-0">
                        <thead class="table-light">
                            <tr>
                                <th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th class="table-secondary">Sat</th><th class="table-secondary">Sun</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-muted">28</td><td class="text-muted">29</td><td class="text-muted">30</td>
                                <td class="p-3">
                                    <div class="fw-bold">1</div>
                                    <span class="badge bg-success bg-opacity-75">94%</span>
                                </td>
                                <td class="p-3">
                                    <div class="fw-bold">2</div>
                                    <span class="badge bg-info">Gandhi Jayanti</span>
                                </td>
                                <td class="p-3 bg-light text-muted">
                                    <div class="fw-bold">3</div>
                                    <span class="small">Work</span>
                                </td>
                                <td class="p-3 bg-light text-muted">
                                    <div class="fw-bold">4</div>
                                    <span class="badge bg-secondary">Sun Off</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="p-3"><div class="fw-bold">5</div><span class="badge bg-success">92%</span></td>
                                <td class="p-3"><div class="fw-bold">6</div><span class="badge bg-success">95%</span></td>
                                <td class="p-3"><div class="fw-bold">7</div><span class="badge bg-success">90%</span></td>
                                <td class="p-3"><div class="fw-bold">8</div><span class="badge bg-success">91%</span></td>
                                <td class="p-3"><div class="fw-bold">9</div><span class="badge bg-success">88%</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">10</div><span class="badge bg-secondary">2nd Sat</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">11</div><span class="badge bg-secondary">Sun Off</span></td>
                            </tr>
                            <tr>
                                <td class="p-3"><div class="fw-bold">12</div><span class="badge bg-success">93%</span></td>
                                <td class="p-3"><div class="fw-bold">13</div><span class="badge bg-success">90%</span></td>
                                <td class="p-3"><div class="fw-bold">14</div><span class="badge bg-success">94%</span></td>
                                <td class="p-3"><div class="fw-bold">15</div><span class="badge bg-success">91%</span></td>
                                <td class="p-3"><div class="fw-bold">16</div><span class="badge bg-success">89%</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">17</div><span class="small">Work</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">18</div><span class="badge bg-secondary">Sun Off</span></td>
                            </tr>
                            <tr>
                                <td class="p-3"><div class="fw-bold">19</div><span class="badge bg-success">92%</span></td>
                                <td class="p-3"><div class="fw-bold">20</div><span class="badge bg-info">Dussehra</span></td>
                                <td class="p-3"><div class="fw-bold">21</div><span class="badge bg-success">95%</span></td>
                                <td class="p-3"><div class="fw-bold">22</div><span class="badge bg-success">93%</span></td>
                                <td class="p-3"><div class="fw-bold">23</div><span class="badge bg-success">91%</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">24</div><span class="badge bg-secondary">4th Sat</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">25</div><span class="badge bg-secondary">Sun Off</span></td>
                            </tr>
                            <tr>
                                <td class="p-3"><div class="fw-bold">26</div><span class="badge bg-success">90%</span></td>
                                <td class="p-3"><div class="fw-bold">27</div><span class="badge bg-success">92%</span></td>
                                <td class="p-3"><div class="fw-bold">28</div><span class="badge bg-success">89%</span></td>
                                <td class="p-3 bg-primary bg-opacity-10 border border-primary">
                                    <div class="fw-bold text-primary">29 (Today)</div>
                                    <span class="badge bg-success">79% In</span>
                                </td>
                                <td class="p-3"><div class="fw-bold">30</div><span class="text-muted">Pending</span></td>
                                <td class="p-3 bg-light text-muted"><div class="fw-bold">31</div><span class="badge bg-secondary">Sat Off</span></td>
                                <td class="text-muted">1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: MANUAL ATTENDANCE CORRECTION -->
    <div class="modal fade" id="manualCorrectionModal" tabindex="-1" aria-labelledby="manualCorrLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="manualCorrLabel">
                        <i class="bi bi-pencil-square text-primary me-2"></i> Manual Attendance Correction
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="alert alert-warning small py-2 mb-3">
                        <i class="bi bi-shield-exclamation me-1"></i>
                        Manual corrections are recorded in the system audit logs with your administrator ID and timestamp.
                    </div>
                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Select Employee *</label>
                            <select class="form-select form-select-custom">
                                <option>OT-1008 - Vikram Malhotra</option>
                                <option>OT-1012 - Ananya Sharma</option>
                                <option>OT-1015 - Rohan Kulkarni</option>
                                <option>OT-1024 - Pooja Singh</option>
                                <option selected>OT-1039 - Karan Sethi</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Attendance Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-10-29" />
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Check-In Time *</label>
                            <input type="time" class="form-control form-control-custom" value="10:00" />
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Check-Out Time</label>
                            <input type="time" class="form-control form-control-custom" value="18:00" />
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Status Override *</label>
                            <select class="form-select form-select-custom">
                                <option>Present (On Time)</option>
                                <option>Present (Grace Allowed)</option>
                                <option>Late Arrival Waived</option>
                                <option>Half Day</option>
                                <option>On Duty (Outdoor Client Visit)</option>
                            </select>
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Correction Reason / Manager Approval Note *</label>
                            <textarea class="form-control form-control-custom" rows="3" placeholder="Provide mandatory justification (e.g. Employee was on morning client site visit approved by Director, or scanner hardware glitch verified)."></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Manual attendance correction saved & logged to audit history.">
                        <i class="bi bi-check-lg me-1"></i> Apply Correction
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: ATTENDANCE DETAILS -->
    <div class="modal fade" id="attendanceDetailModal" tabindex="-1" aria-labelledby="attDetailLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="attDetailLabel">
                        <i class="bi bi-info-circle-fill text-navy me-2"></i> Attendance Verification Record
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <table class="table table-sm table-borderless mb-0">
                        <tbody>
                            <tr><td class="text-muted">Staff Name:</td><td class="fw-semibold">Vikram Malhotra (OT-1008)</td></tr>
                            <tr><td class="text-muted">Verification Method:</td><td><span class="badge bg-light text-dark border">Office Terminal QR</span></td></tr>
                            <tr><td class="text-muted">Check-In Timestamp:</td><td class="font-monospace">29 Oct 2026, 09:54:12 AM</td></tr>
                            <tr><td class="text-muted">Terminal Identifier:</td><td>Reception Main Screen (ID #LOBBY-01)</td></tr>
                            <tr><td class="text-muted">Device Bound:</td><td>Apple iPhone 14 Pro (Hardware Bound)</td></tr>
                            <tr><td class="text-muted">Network IP:</td><td class="font-monospace">192.168.1.144 (Office Wi-Fi)</td></tr>
                            <tr><td class="text-muted">Geofence Compliance:</td><td><span class="text-success"><i class="bi bi-check-circle-fill"></i> Passed (4 meters from AP)</span></td></tr>
                            <tr><td class="text-muted">Grace Period Status:</td><td>Within standard scheduled arrival</td></tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-navy" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

