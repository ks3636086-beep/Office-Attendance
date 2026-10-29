<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Monthly Payroll Processing</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-receipt-cutoff text-navy"></i> Monthly Payroll Processing
            </h1>
            <p class="page-subtitle">Calculate monthly employee disbursals, attendance deductions, and payslip generation.</p>
        </div>
        <div class="d-flex flex-wrap gap-2">
            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Bulk payslips archive (ZIP) downloaded!">
                <i class="bi bi-download me-1"></i> Download All Payslips
            </button>
            <button type="button" class="btn btn-navy btn-sm" data-demo-action="Payroll batch processed! 48 staff records computed.">
                <i class="bi bi-gear-wide-connected me-1"></i> Generate Payroll
            </button>
        </div>
    </div>

    <!-- MONTH SELECTOR & PAYROLL SUMMARY BAR -->
    <div class="card-theme p-3 mb-4">
        <div class="row g-3 align-items-center">
            <div class="col-12 col-md-3">
                <label class="form-label-custom small mb-1">Payroll Cycle</label>
                <div class="input-group">
                    <span class="input-group-text bg-light"><i class="bi bi-calendar3"></i></span>
                    <select class="form-select form-select-custom" onchange="showToast('Loading payroll for ' + this.value, 'info')">
                        <option selected>October 2026 (Active Run)</option>
                        <option>September 2026 (Disbursed)</option>
                        <option>August 2026 (Disbursed)</option>
                        <option>July 2026 (Disbursed)</option>
                    </select>
                </div>
            </div>

            <div class="col-6 col-md-2">
                <div class="small text-muted">Working Days</div>
                <div class="fw-bold fs-5 text-dark">22 Days</div>
                <div class="text-muted" style="font-size: 0.72rem;">6 Weekly Offs</div>
            </div>

            <div class="col-6 col-md-2">
                <div class="small text-muted">Gross CTC</div>
                <div class="fw-bold fs-5 text-navy">&#8377; 34,20,000</div>
                <div class="text-muted" style="font-size: 0.72rem;">Base + Allowances</div>
            </div>

            <div class="col-6 col-md-2">
                <div class="small text-muted">Total Deductions</div>
                <div class="fw-bold fs-5 text-danger">&#8377; 68,450</div>
                <div class="text-danger" style="font-size: 0.72rem;">Late & Absent Marks</div>
            </div>

            <div class="col-6 col-md-3">
                <div class="small text-muted">Net Disbursal</div>
                <div class="fw-bold fs-5 text-success">&#8377; 33,51,550</div>
                <span class="badge bg-warning text-dark"><i class="bi bi-clock"></i> Draft • Ready for NEFT</span>
            </div>
        </div>
    </div>

    <!-- FILTER ROW -->
    <div class="filter-toolbar">
        <div class="flex-grow-1" style="min-width: 220px;">
            <div class="input-group">
                <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Filter employee by name or ID..." data-table-filter="#payrollTable" />
            </div>
        </div>
        <div style="min-width: 170px;">
            <select class="form-select form-select-custom">
                <option>All Departments (5)</option>
                <option>Engineering & IT</option>
                <option>Marketing & Sales</option>
                <option>HR & Admin</option>
                <option>Finance & Accounts</option>
            </select>
        </div>
        <div style="min-width: 150px;">
            <select class="form-select form-select-custom">
                <option>All Statuses</option>
                <option>Ready</option>
                <option>Deductions Flagged</option>
                <option>Disbursed</option>
            </select>
        </div>
    </div>

    <!-- PAYROLL DATA TABLE -->
    <div class="table-responsive-theme shadow-sm mb-4">
        <table class="table-theme" id="payrollTable">
            <thead>
                <tr>
                    <th>Employee</th>
                    <th>Basic / Gross</th>
                    <th>Work Days</th>
                    <th>Present</th>
                    <th>Late (Mins)</th>
                    <th>Absent</th>
                    <th>Leaves</th>
                    <th>Deductions</th>
                    <th>Net Payable (₹)</th>
                    <th>Status</th>
                    <th class="text-end">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Staff 1 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">VM</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1008" class="user-name-title">Vikram Malhotra</a>
                                <div class="user-sub-id">OT-1008 • Engineering</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="font-monospace fw-semibold">&#8377; 85,000</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Basic: ₹42,500</div>
                    </td>
                    <td class="font-monospace">22</td>
                    <td class="font-monospace text-success fw-bold">21</td>
                    <td class="font-monospace text-warning">34m (2)</td>
                    <td class="font-monospace">0</td>
                    <td class="font-monospace">1 (Paid)</td>
                    <td class="font-monospace text-muted">&#8377; 2,000 <span class="text-muted" style="font-size: 0.68rem;">(PF+PT)</span></td>
                    <td class="font-monospace fw-bold text-navy fs-6">&#8377; 83,000</td>
                    <td><span class="badge-status badge-approved">Ready</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryBreakdownModal" title="Breakdown">
                                <i class="bi bi-eye"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#payslipModal" title="Print Payslip">
                                <i class="bi bi-printer"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Staff 2 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1012" class="user-name-title">Ananya Sharma</a>
                                <div class="user-sub-id">OT-1012 • Marketing</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="font-monospace fw-semibold">&#8377; 78,000</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Basic: ₹39,000</div>
                    </td>
                    <td class="font-monospace">22</td>
                    <td class="font-monospace text-success fw-bold">22</td>
                    <td class="font-monospace text-muted">0m</td>
                    <td class="font-monospace">0</td>
                    <td class="font-monospace">0</td>
                    <td class="font-monospace text-muted">&#8377; 2,000</td>
                    <td class="font-monospace fw-bold text-navy fs-6">&#8377; 76,000</td>
                    <td><span class="badge-status badge-approved">Ready</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryBreakdownModal" title="Breakdown">
                                <i class="bi bi-eye"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#payslipModal" title="Print Payslip">
                                <i class="bi bi-printer"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Staff 3 (Deduction for Absent) -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fee2e2; color:#991b1b;">KS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1039" class="user-name-title">Karan Sethi</a>
                                <div class="user-sub-id">OT-1039 • Marketing</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="font-monospace fw-semibold">&#8377; 60,000</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Basic: ₹30,000</div>
                    </td>
                    <td class="font-monospace">22</td>
                    <td class="font-monospace text-dark fw-bold">19</td>
                    <td class="font-monospace text-muted">15m</td>
                    <td class="font-monospace text-danger fw-bold">2 Days</td>
                    <td class="font-monospace">1 (Paid)</td>
                    <td class="font-monospace text-danger fw-bold">&#8377; 7,454 <span class="badge bg-danger" style="font-size:0.6rem;">Absent</span></td>
                    <td class="font-monospace fw-bold text-navy fs-6">&#8377; 52,546</td>
                    <td><span class="badge-status badge-late">Deductions</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryBreakdownModal" title="Breakdown">
                                <i class="bi bi-eye"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#payslipModal" title="Print Payslip">
                                <i class="bi bi-printer"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Staff 4 (Late Threshold Penalty) -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#dcfce7; color:#166534;">PS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1024" class="user-name-title">Pooja Singh</a>
                                <div class="user-sub-id">OT-1024 • HR</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="font-monospace fw-semibold">&#8377; 55,000</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Basic: ₹27,500</div>
                    </td>
                    <td class="font-monospace">22</td>
                    <td class="font-monospace text-success fw-bold">21.5</td>
                    <td class="font-monospace text-warning fw-bold">98m (3)</td>
                    <td class="font-monospace">0</td>
                    <td class="font-monospace">0</td>
                    <td class="font-monospace text-danger fw-bold">&#8377; 3,250 <span class="badge bg-warning text-dark" style="font-size:0.6rem;">Late Rule</span></td>
                    <td class="font-monospace fw-bold text-navy fs-6">&#8377; 51,750</td>
                    <td><span class="badge-status badge-late">Half-Day Cut</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryBreakdownModal" title="Breakdown">
                                <i class="bi bi-eye"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#payslipModal" title="Print Payslip">
                                <i class="bi bi-printer"></i>
                            </button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- MODAL: SALARY BREAKDOWN -->
    <div class="modal fade" id="salaryBreakdownModal" tabindex="-1" aria-labelledby="salBreakdownLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="salBreakdownLabel">
                        <i class="bi bi-calculator text-primary me-2"></i> Monthly Disbursal Breakdown
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <div class="fw-bold text-navy">Vikram Malhotra (OT-1008)</div>
                        <div class="text-muted small">Month: October 2026 (22 Working Days)</div>
                    </div>

                    <h6 class="fw-bold text-success small mb-2">Earnings (+)</h6>
                    <div class="d-flex justify-content-between small mb-1">
                        <span>Basic Salary:</span><span class="font-monospace">₹42,500.00</span>
                    </div>
                    <div class="d-flex justify-content-between small mb-1">
                        <span>House Rent Allowance:</span><span class="font-monospace">₹21,250.00</span>
                    </div>
                    <div class="d-flex justify-content-between small mb-1">
                        <span>Special Allowance:</span><span class="font-monospace">₹15,250.00</span>
                    </div>
                    <div class="d-flex justify-content-between small mb-2">
                        <span>Medical & Conveyance:</span><span class="font-monospace">₹6,000.00</span>
                    </div>

                    <hr class="my-2" />

                    <h6 class="fw-bold text-danger small mb-2">Deductions (-)</h6>
                    <div class="d-flex justify-content-between small mb-1">
                        <span>Provident Fund (PF):</span><span class="font-monospace text-danger">₹1,800.00</span>
                    </div>
                    <div class="d-flex justify-content-between small mb-1">
                        <span>Professional Tax (PT):</span><span class="font-monospace text-danger">₹200.00</span>
                    </div>
                    <div class="d-flex justify-content-between small mb-2">
                        <span>Attendance Penalty (Late/Absent):</span><span class="font-monospace text-success">₹0.00 (Exempt)</span>
                    </div>

                    <div class="p-3 bg-light rounded-3 mt-3 d-flex justify-content-between align-items-center">
                        <span class="fw-bold text-navy">Net Disbursal:</span>
                        <span class="h5 fw-bold text-navy mb-0">&#8377; 83,000.00</span>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-navy" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: PRINT PAYSLIP PREVIEW -->
    <div class="modal fade" id="payslipModal" tabindex="-1" aria-labelledby="payslipLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="payslipLabel">
                        <i class="bi bi-file-earmark-text text-navy me-2"></i> Employee Payslip Preview
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4 bg-white" id="payslipPrintArea">
                    <!-- Payslip Header -->
                    <div class="d-flex justify-content-between align-items-start border-bottom pb-3 mb-3">
                        <div>
                            <div class="h4 fw-bold text-navy mb-0">OfficeTrack HR Systems</div>
                            <div class="text-muted small">HQ Complex, Bandra Kurla Complex, Mumbai 400051</div>
                            <div class="text-muted small">CIN: U72200MH2022PTC123456</div>
                        </div>
                        <div class="text-end">
                            <span class="badge bg-navy px-3 py-2 fs-6">PAYSLIP</span>
                            <div class="fw-bold text-dark mt-1">October 2026</div>
                        </div>
                    </div>

                    <!-- Employee Details Grid -->
                    <div class="row g-2 small mb-3">
                        <div class="col-6"><strong>Employee Name:</strong> Vikram Malhotra</div>
                        <div class="col-6"><strong>Employee ID:</strong> OT-1008</div>
                        <div class="col-6"><strong>Designation:</strong> Sr. Full Stack Engineer</div>
                        <div class="col-6"><strong>Department:</strong> Engineering & IT</div>
                        <div class="col-6"><strong>Bank Name:</strong> HDFC Bank Ltd</div>
                        <div class="col-6"><strong>Account No:</strong> XXXX-XXXX-8921</div>
                        <div class="col-6"><strong>Working Days:</strong> 22 Days</div>
                        <div class="col-6"><strong>Payable Days:</strong> 22 Days</div>
                    </div>

                    <!-- Earnings vs Deductions Table -->
                    <div class="table-responsive mb-3">
                        <table class="table table-bordered table-sm small mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th style="width: 50%;">Earnings</th>
                                    <th class="text-end">Amount (₹)</th>
                                    <th style="width: 50%;">Deductions</th>
                                    <th class="text-end">Amount (₹)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Basic Salary</td>
                                    <td class="text-end font-monospace">42,500.00</td>
                                    <td>Provident Fund (PF)</td>
                                    <td class="text-end font-monospace">1,800.00</td>
                                </tr>
                                <tr>
                                    <td>House Rent Allowance (HRA)</td>
                                    <td class="text-end font-monospace">21,250.00</td>
                                    <td>Professional Tax (PT)</td>
                                    <td class="text-end font-monospace">200.00</td>
                                </tr>
                                <tr>
                                    <td>Special Allowance</td>
                                    <td class="text-end font-monospace">15,250.00</td>
                                    <td>Late Arrival / Absence Penalty</td>
                                    <td class="text-end font-monospace">0.00</td>
                                </tr>
                                <tr>
                                    <td>Medical & Conveyance</td>
                                    <td class="text-end font-monospace">6,000.00</td>
                                    <td>Income Tax (TDS)</td>
                                    <td class="text-end font-monospace">0.00</td>
                                </tr>
                                <tr class="table-light fw-bold">
                                    <td>Total Earnings (A)</td>
                                    <td class="text-end font-monospace">85,000.00</td>
                                    <td>Total Deductions (B)</td>
                                    <td class="text-end font-monospace">2,000.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="p-3 bg-light border rounded text-dark d-flex justify-content-between align-items-center mb-2">
                        <div>
                            <div class="small fw-semibold">Net Pay Disbursed (A - B):</div>
                            <div class="small text-muted fst-italic">Amount in Words: Eighty Three Thousand Rupees Only</div>
                        </div>
                        <div class="h4 fw-bold text-navy mb-0">&#8377; 83,000.00</div>
                    </div>

                    <div class="text-muted small text-center pt-2" style="font-size: 0.72rem;">
                        This is a computer-generated document and does not require a physical signature.
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-sm btn-navy" onclick="window.print();">
                        <i class="bi bi-printer me-1"></i> Print Payslip
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

