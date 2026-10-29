<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Salary Management</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-cash-stack text-navy"></i> Employee Salary Management
            </h1>
            <p class="page-subtitle">Configure employee base compensation, allowances, deductions, and revision history.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#updateSalaryModal">
                <i class="bi bi-plus-circle me-1"></i> Configure Salary Structure
            </button>
        </div>
    </div>

    <!-- 4 SUMMARY CARDS -->
    <div class="row g-3 mb-4">
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Total Monthly Payroll</span>
                    <span class="stat-value text-navy" style="font-size: 1.4rem;">&#8377; 34.2L</span>
                    <span class="stat-subtext text-muted">For 48 employees</span>
                </div>
                <div class="stat-icon primary"><i class="bi bi-currency-rupee"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Average CTC</span>
                    <span class="stat-value text-success" style="font-size: 1.4rem;">&#8377; 71.2K</span>
                    <span class="stat-subtext text-success"><i class="bi bi-graph-up"></i> Market aligned</span>
                </div>
                <div class="stat-icon success"><i class="bi bi-bar-chart-line"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Salaries Configured</span>
                    <span class="stat-value text-navy">48 / 48</span>
                    <span class="stat-subtext text-success"><i class="bi bi-check-all"></i> 100% Complete</span>
                </div>
                <div class="stat-icon info"><i class="bi bi-check2-circle"></i></div>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="stat-card">
                <div>
                    <span class="stat-label">Revisions Due</span>
                    <span class="stat-value text-warning">2</span>
                    <span class="stat-subtext text-muted">Q4 Appraisal cycle</span>
                </div>
                <div class="stat-icon warning"><i class="bi bi-award"></i></div>
            </div>
        </div>
    </div>

    <!-- FILTER TOOLBAR -->
    <div class="filter-toolbar">
        <div class="flex-grow-1" style="min-width: 220px;">
            <div class="input-group">
                <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Search by employee name or ID..." data-table-filter="#salaryTable" />
            </div>
        </div>

        <div style="min-width: 170px;">
            <select class="form-select form-select-custom">
                <option>All Departments</option>
                <option>Engineering & IT</option>
                <option>Marketing & Sales</option>
                <option>HR & Admin</option>
                <option>Finance & Accounts</option>
                <option>Operations</option>
            </select>
        </div>

        <div style="min-width: 150px;">
            <select class="form-select form-select-custom">
                <option>All Statuses</option>
                <option>Active CTC</option>
                <option>Revision Pending</option>
                <option>Probation Structure</option>
            </select>
        </div>
    </div>

    <!-- SALARY TABLE -->
    <div class="table-responsive-theme shadow-sm mb-4">
        <table class="table-theme" id="salaryTable">
            <thead>
                <tr>
                    <th>Employee</th>
                    <th>Department</th>
                    <th>Basic Salary (₹)</th>
                    <th>Allowances (HRA + Other)</th>
                    <th>Gross Monthly CTC (₹)</th>
                    <th>Effective Date</th>
                    <th>Status</th>
                    <th class="text-end">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Record 1 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">VM</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1008" class="user-name-title">Vikram Malhotra</a>
                                <div class="user-sub-id">OT-1008 • Sr. Engineer</div>
                            </div>
                        </div>
                    </td>
                    <td>Engineering</td>
                    <td class="font-monospace fw-semibold">42,500.00</td>
                    <td class="font-monospace text-muted">42,500.00</td>
                    <td class="font-monospace fw-bold text-navy">85,000.00</td>
                    <td class="font-monospace">01 Apr 2024</td>
                    <td><span class="badge-status badge-active">Active CTC</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#updateSalaryModal" title="Edit Structure">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryHistoryModal" title="Revision History">
                                <i class="bi bi-clock-history"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Record 2 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1012" class="user-name-title">Ananya Sharma</a>
                                <div class="user-sub-id">OT-1012 • Marketing Lead</div>
                            </div>
                        </div>
                    </td>
                    <td>Marketing</td>
                    <td class="font-monospace fw-semibold">39,000.00</td>
                    <td class="font-monospace text-muted">39,000.00</td>
                    <td class="font-monospace fw-bold text-navy">78,000.00</td>
                    <td class="font-monospace">01 Jun 2023</td>
                    <td><span class="badge-status badge-active">Active CTC</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#updateSalaryModal" title="Edit Structure">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryHistoryModal" title="Revision History">
                                <i class="bi bi-clock-history"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Record 3 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">RK</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1015" class="user-name-title">Rohan Kulkarni</a>
                                <div class="user-sub-id">OT-1015 • UI Designer</div>
                            </div>
                        </div>
                    </td>
                    <td>Engineering</td>
                    <td class="font-monospace fw-semibold">32,500.00</td>
                    <td class="font-monospace text-muted">32,500.00</td>
                    <td class="font-monospace fw-bold text-navy">65,000.00</td>
                    <td class="font-monospace">10 Aug 2023</td>
                    <td><span class="badge-status badge-active">Active CTC</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#updateSalaryModal" title="Edit Structure">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryHistoryModal" title="Revision History">
                                <i class="bi bi-clock-history"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Record 4 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0e7ff; color:#3730a3;">NK</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1021" class="user-name-title">Neha Kapoor</a>
                                <div class="user-sub-id">OT-1021 • Analyst</div>
                            </div>
                        </div>
                    </td>
                    <td>Finance</td>
                    <td class="font-monospace fw-semibold">35,000.00</td>
                    <td class="font-monospace text-muted">35,000.00</td>
                    <td class="font-monospace fw-bold text-navy">70,000.00</td>
                    <td class="font-monospace">01 Nov 2023</td>
                    <td><span class="badge-status badge-pending">Review Due</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#updateSalaryModal" title="Edit Structure">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryHistoryModal" title="Revision History">
                                <i class="bi bi-clock-history"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Record 5 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#dcfce7; color:#166534;">PS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1024" class="user-name-title">Pooja Singh</a>
                                <div class="user-sub-id">OT-1024 • HR Associate</div>
                            </div>
                        </div>
                    </td>
                    <td>HR & Admin</td>
                    <td class="font-monospace fw-semibold">27,500.00</td>
                    <td class="font-monospace text-muted">27,500.00</td>
                    <td class="font-monospace fw-bold text-navy">55,000.00</td>
                    <td class="font-monospace">15 Feb 2024</td>
                    <td><span class="badge-status badge-active">Active CTC</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#updateSalaryModal" title="Edit Structure">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#salaryHistoryModal" title="Revision History">
                                <i class="bi bi-clock-history"></i>
                            </button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- MODAL: ADD / UPDATE SALARY STRUCTURE -->
    <div class="modal fade" id="updateSalaryModal" tabindex="-1" aria-labelledby="salModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="salModalLabel">
                        <i class="bi bi-cash-stack text-success me-2"></i> Employee Compensation Configuration
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Employee *</label>
                            <select class="form-select form-select-custom">
                                <option>OT-1008 - Vikram Malhotra (Sr. Engineer)</option>
                                <option>OT-1012 - Ananya Sharma (Marketing Lead)</option>
                                <option>OT-1015 - Rohan Kulkarni (UI Designer)</option>
                                <option>OT-1021 - Neha Kapoor (Finance Analyst)</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Effective Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-11-01" />
                        </div>

                        <div class="col-12"><hr class="my-1 text-muted" /></div>

                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Basic Salary (Monthly) *</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light">&#8377;</span>
                                <input type="number" class="form-control form-control-custom" value="42500" />
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">House Rent Allowance (HRA)</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light">&#8377;</span>
                                <input type="number" class="form-control form-control-custom" value="21250" />
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Special Allowance</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light">&#8377;</span>
                                <input type="number" class="form-control form-control-custom" value="15250" />
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Provident Fund (PF) Employee Share</label>
                            <select class="form-select form-select-custom">
                                <option selected>Standard 12% of Basic (₹1,800 capped)</option>
                                <option>Exempt / Non-Applicable</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Professional Tax (PT)</label>
                            <input type="text" class="form-control form-control-custom" value="₹200.00 / month" readonly />
                        </div>

                        <div class="col-12">
                            <div class="p-3 bg-light rounded-3 d-flex justify-content-between align-items-center">
                                <span class="fw-bold text-navy">Computed Gross CTC:</span>
                                <span class="h5 fw-bold text-navy mb-0">&#8377; 85,000.00 / month (&#8377; 10.2 LPA)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Salary structure updated successfully!">Save Structure</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: REVISION HISTORY -->
    <div class="modal fade" id="salaryHistoryModal" tabindex="-1" aria-labelledby="salHistLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="salHistLabel">
                        <i class="bi bi-clock-history text-primary me-2"></i> Salary Revision Timeline
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="list-group list-group-flush border rounded-3">
                        <div class="list-group-item p-3">
                            <div class="d-flex justify-content-between align-items-center mb-1">
                                <span class="fw-bold text-navy">FY24 Annual Performance Increment</span>
                                <span class="badge bg-success">+18.0%</span>
                            </div>
                            <div class="text-muted small">Effective: 01 April 2024 • Revised Gross: ₹85,000.00</div>
                            <div class="text-muted small">Approved by: Rajesh Sharma (CTO / Admin)</div>
                        </div>
                        <div class="list-group-item p-3">
                            <div class="d-flex justify-content-between align-items-center mb-1">
                                <span class="fw-bold text-navy">Joining Compensation</span>
                                <span class="badge bg-secondary">Initial Offer</span>
                            </div>
                            <div class="text-muted small">Effective: 15 January 2023 • Gross: ₹72,000.00</div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-navy" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

