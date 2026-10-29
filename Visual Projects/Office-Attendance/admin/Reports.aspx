<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Analytics & Executive Reports</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-bar-chart-fill text-navy"></i> Attendance & Salary Reports
            </h1>
            <p class="page-subtitle">Export official compliance spreadsheets, audit reports, and departmental attendance trends.</p>
        </div>
        <div class="d-flex flex-wrap gap-2">
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Report downloaded in Microsoft Excel format (.xlsx)">
                <i class="bi bi-file-earmark-excel text-success me-1"></i> Export to Excel
            </button>
            <button type="button" class="btn btn-navy btn-sm" data-demo-action="Official executive summary generated as PDF.">
                <i class="bi bi-file-earmark-pdf text-danger me-1"></i> Export to PDF
            </button>
        </div>
    </div>

    <!-- FILTER CARD -->
    <div class="card-theme p-3 mb-4">
        <div class="row g-3 align-items-end">
            <div class="col-12 col-md-3">
                <label class="form-label-custom small">Report Type</label>
                <select class="form-select form-select-custom" id="reportTypeSelect" onchange="showToast('Displaying ' + this.options[this.selectedIndex].text, 'info')">
                    <option selected>1. Monthly Attendance Summary</option>
                    <option>2. Late Arrivals & Grace Violations</option>
                    <option>3. Absenteeism & Loss of Pay (LOP)</option>
                    <option>4. Overtime & Extended Hours</option>
                    <option>5. Monthly Payroll Deduction Audit</option>
                </select>
            </div>
            <div class="col-6 col-md-3">
                <label class="form-label-custom small">Date Range / Month</label>
                <input type="month" class="form-control form-control-custom" value="2026-10" />
            </div>
            <div class="col-6 col-md-3">
                <label class="form-label-custom small">Department Filter</label>
                <select class="form-select form-select-custom">
                    <option>All Company Divisions (5)</option>
                    <option>Engineering & IT</option>
                    <option>Marketing & Sales</option>
                    <option>HR & Admin</option>
                    <option>Finance & Accounts</option>
                </select>
            </div>
            <div class="col-12 col-md-3">
                <button type="button" class="btn btn-navy w-100" data-demo-action="Report preview generated for October 2026!">
                    <i class="bi bi-funnel me-1"></i> Generate Preview
                </button>
            </div>
        </div>
    </div>

    <!-- REPORT PREVIEW METRICS -->
    <div class="row g-3 mb-4">
        <div class="col-6 col-md-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Total Scheduled Hours</span>
                    <span class="stat-value text-navy" style="font-size: 1.4rem;">8,448 hrs</span>
                    <span class="stat-subtext text-muted">48 staff • 22 days</span>
                </div>
                <div class="stat-icon primary"><i class="bi bi-clock"></i></div>
            </div>
        </div>
        <div class="col-6 col-md-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Actual Logged Hours</span>
                    <span class="stat-value text-success" style="font-size: 1.4rem;">8,124 hrs</span>
                    <span class="stat-subtext text-success"><i class="bi bi-check2"></i> 96.1% fulfillment</span>
                </div>
                <div class="stat-icon success"><i class="bi bi-stopwatch"></i></div>
            </div>
        </div>
        <div class="col-6 col-md-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Total Late Incidents</span>
                    <span class="stat-value text-warning">14</span>
                    <span class="stat-subtext text-muted">Across 8 staff members</span>
                </div>
                <div class="stat-icon warning"><i class="bi bi-exclamation-circle"></i></div>
            </div>
        </div>
        <div class="col-6 col-md-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Payroll Deductions</span>
                    <span class="stat-value text-danger" style="font-size: 1.4rem;">&#8377; 68,450</span>
                    <span class="stat-subtext text-danger">Late marks + Unpaid LOP</span>
                </div>
                <div class="stat-icon danger"><i class="bi bi-cash-stack"></i></div>
            </div>
        </div>
    </div>

    <!-- PREVIEW TABLE -->
    <div class="card-theme">
        <div class="card-header-theme">
            <h2 class="card-title-theme">
                <i class="bi bi-table text-navy"></i> Report Data Preview — October 2026
            </h2>
            <div class="d-flex gap-2">
                <span class="badge bg-light text-dark border">48 Employees Analyzed</span>
            </div>
        </div>
        <div class="table-responsive-theme">
            <table class="table-theme">
                <thead>
                    <tr>
                        <th>Employee</th>
                        <th>Dept</th>
                        <th>Total Shift Days</th>
                        <th>Present Days</th>
                        <th>Late Occurrences</th>
                        <th>Total Late Mins</th>
                        <th>Unplanned LOP</th>
                        <th>Avg Hours/Day</th>
                        <th>Deduction Amount</th>
                        <th>Attendance %</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="user-meta-cell">
                                <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">VM</div>
                                <div>
                                    <div class="user-name-title">Vikram Malhotra</div>
                                    <div class="user-sub-id">OT-1008</div>
                                </div>
                            </div>
                        </td>
                        <td>Engineering</td>
                        <td class="font-monospace">22</td>
                        <td class="font-monospace text-success fw-bold">21</td>
                        <td class="font-monospace text-warning">2</td>
                        <td class="font-monospace">34m</td>
                        <td class="font-monospace">0</td>
                        <td class="font-monospace">8h 14m</td>
                        <td class="font-monospace text-muted">₹0.00</td>
                        <td><span class="badge bg-success bg-opacity-75">95.4%</span></td>
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
                        <td class="font-monospace">22</td>
                        <td class="font-monospace text-success fw-bold">22</td>
                        <td class="font-monospace">0</td>
                        <td class="font-monospace">0m</td>
                        <td class="font-monospace">0</td>
                        <td class="font-monospace">8h 22m</td>
                        <td class="font-monospace text-muted">₹0.00</td>
                        <td><span class="badge bg-success">100%</span></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="user-meta-cell">
                                <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">KS</div>
                                <div>
                                    <div class="user-name-title">Karan Sethi</div>
                                    <div class="user-sub-id">OT-1039</div>
                                </div>
                            </div>
                        </td>
                        <td>Marketing</td>
                        <td class="font-monospace">22</td>
                        <td class="font-monospace text-dark fw-bold">19</td>
                        <td class="font-monospace">1</td>
                        <td class="font-monospace">15m</td>
                        <td class="font-monospace text-danger fw-bold">2 Days</td>
                        <td class="font-monospace">7h 45m</td>
                        <td class="font-monospace text-danger fw-bold">₹7,454.00</td>
                        <td><span class="badge bg-danger">86.3%</span></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="user-meta-cell">
                                <div class="user-avatar-sm" style="background:#dcfce7; color:#166534;">PS</div>
                                <div>
                                    <div class="user-name-title">Pooja Singh</div>
                                    <div class="user-sub-id">OT-1024</div>
                                </div>
                            </div>
                        </td>
                        <td>HR</td>
                        <td class="font-monospace">22</td>
                        <td class="font-monospace text-success fw-bold">21.5</td>
                        <td class="font-monospace text-warning fw-bold">3</td>
                        <td class="font-monospace">98m</td>
                        <td class="font-monospace">0</td>
                        <td class="font-monospace">8h 05m</td>
                        <td class="font-monospace text-danger fw-bold">₹3,250.00</td>
                        <td><span class="badge bg-warning text-dark">91.0%</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="card-footer bg-light p-3 text-center border-top">
            <span class="text-muted small">Showing sample excerpt of 4 staff rows. Full 48 staff records included in the generated Excel / PDF files.</span>
        </div>
    </div>
</asp:Content>

