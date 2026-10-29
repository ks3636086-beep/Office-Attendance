<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Activity Logs & Audit History</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-clock-history text-navy"></i> Activity Logs & Audit History
            </h1>
            <p class="page-subtitle">Immutable chronological trail of administrative actions, attendance corrections, and configuration updates.</p>
        </div>
        <div>
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Audit log trail exported as CSV archive.">
                <i class="bi bi-download me-1"></i> Export Audit Trail (CSV)
            </button>
        </div>
    </div>

    <!-- FILTER TOOLBAR -->
    <div class="filter-toolbar">
        <div class="flex-grow-1" style="min-width: 220px;">
            <div class="input-group">
                <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Search by user, action or keyword..." data-table-filter="#auditTable" />
            </div>
        </div>

        <div style="min-width: 170px;">
            <select class="form-select form-select-custom" onchange="showToast('Filtered by event: ' + this.value, 'info')">
                <option>All Action Categories</option>
                <option>Attendance Corrections</option>
                <option>Salary & Payroll</option>
                <option>Employee Management</option>
                <option>QR Terminal & Security</option>
                <option>Policy & Rules</option>
            </select>
        </div>

        <div style="min-width: 150px;">
            <select class="form-select form-select-custom">
                <option>All Admin Users</option>
                <option>Rajesh Sharma</option>
                <option>Sunita Varghese</option>
                <option>Ankit Mehta</option>
            </select>
        </div>

        <div style="min-width: 140px;">
            <input type="date" class="form-control form-control-custom" value="2026-10-29" />
        </div>
    </div>

    <!-- AUDIT TRAIL TABLE -->
    <div class="table-responsive-theme shadow-sm mb-4">
        <table class="table-theme" id="auditTable">
            <thead>
                <tr>
                    <th>Timestamp</th>
                    <th>Admin User</th>
                    <th>Action Category</th>
                    <th>Target Subject</th>
                    <th>Detailed Log Description</th>
                    <th>IP Address</th>
                </tr>
            </thead>
            <tbody>
                <!-- Log 1 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">29 Oct 2026, 10:14 AM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:var(--primary-navy); color:#fff; width:26px; height:26px; font-size:0.7rem;">RS</div>
                            <span class="fw-semibold">Rajesh Sharma</span>
                        </div>
                    </td>
                    <td><span class="badge bg-warning bg-opacity-10 text-dark border">Attendance</span></td>
                    <td class="fw-semibold">Karan Sethi (OT-1039)</td>
                    <td class="small">Manual correction: Waived morning late mark; client onsite meeting verified.</td>
                    <td class="font-monospace text-muted small">192.168.1.10 (Internal)</td>
                </tr>

                <!-- Log 2 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">29 Oct 2026, 09:15 AM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:var(--primary-navy); color:#fff; width:26px; height:26px; font-size:0.7rem;">RS</div>
                            <span class="fw-semibold">Rajesh Sharma</span>
                        </div>
                    </td>
                    <td><span class="badge bg-primary bg-opacity-10 text-primary border">QR Terminal</span></td>
                    <td class="fw-semibold">Lobby Terminal Screen</td>
                    <td class="small">Generated new daily encryption seed (#OT-8921X) for reception QR display.</td>
                    <td class="font-monospace text-muted small">192.168.1.10</td>
                </tr>

                <!-- Log 3 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">28 Oct 2026, 04:30 PM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d; width:26px; height:26px; font-size:0.7rem;">AM</div>
                            <span class="fw-semibold">Ankit Mehta</span>
                        </div>
                    </td>
                    <td><span class="badge bg-success bg-opacity-10 text-success border">Payroll</span></td>
                    <td class="fw-semibold">October 2026 Batch</td>
                    <td class="small">Initiated October 2026 monthly payroll draft calculation; calculated 48 staff records.</td>
                    <td class="font-monospace text-muted small">192.168.1.28</td>
                </tr>

                <!-- Log 4 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">28 Oct 2026, 02:15 PM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1; width:26px; height:26px; font-size:0.7rem;">SV</div>
                            <span class="fw-semibold">Sunita Varghese</span>
                        </div>
                    </td>
                    <td><span class="badge bg-info bg-opacity-10 text-info border">Leaves</span></td>
                    <td class="fw-semibold">Neha Kapoor (OT-1021)</td>
                    <td class="small">Approved 1-day Casual Leave request for 29 Oct 2026.</td>
                    <td class="font-monospace text-muted small">192.168.1.14</td>
                </tr>

                <!-- Log 5 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">27 Oct 2026, 11:20 AM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:var(--primary-navy); color:#fff; width:26px; height:26px; font-size:0.7rem;">RS</div>
                            <span class="fw-semibold">Rajesh Sharma</span>
                        </div>
                    </td>
                    <td><span class="badge bg-secondary bg-opacity-10 text-dark border">Rules & Policy</span></td>
                    <td class="fw-semibold">Arrival Grace Period</td>
                    <td class="small">Updated grace threshold rule from 10 minutes to 15 minutes as per director approval.</td>
                    <td class="font-monospace text-muted small">192.168.1.10</td>
                </tr>

                <!-- Log 6 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">26 Oct 2026, 03:45 PM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d; width:26px; height:26px; font-size:0.7rem;">AM</div>
                            <span class="fw-semibold">Ankit Mehta</span>
                        </div>
                    </td>
                    <td><span class="badge bg-success bg-opacity-10 text-success border">Salary</span></td>
                    <td class="fw-semibold">Vikram Malhotra (OT-1008)</td>
                    <td class="small">Updated employee CTC structure component: HRA and Special Allowance recalibrated.</td>
                    <td class="font-monospace text-muted small">192.168.1.28</td>
                </tr>

                <!-- Log 7 -->
                <tr>
                    <td class="font-monospace text-navy fw-semibold">25 Oct 2026, 10:00 AM</td>
                    <td>
                        <div class="d-flex align-items-center gap-2">
                            <div class="user-avatar-sm" style="background:#cbd5e1; color:#334155; width:26px; height:26px; font-size:0.7rem;">SYS</div>
                            <span class="fw-semibold text-muted">System Worker</span>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-muted border">System</span></td>
                    <td class="fw-semibold">Automated Backup</td>
                    <td class="small">Scheduled nightly database snapshot completed successfully (Size: 84.2 MB).</td>
                    <td class="font-monospace text-muted small">127.0.0.1 (Localhost)</td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- PAGINATION -->
    <div class="d-flex justify-content-between align-items-center small text-muted">
        <span>Showing 7 of 1,420 audit records</span>
        <div>
            <button class="btn btn-sm btn-outline-secondary me-1" disabled>Previous</button>
            <button class="btn btn-sm btn-navy" onclick="showToast('Loading next audit page...', 'info')">Next</button>
        </div>
    </div>
</asp:Content>

