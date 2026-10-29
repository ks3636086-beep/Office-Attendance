<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Employee Directory</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-people-fill text-navy"></i> Employee Management
            </h1>
            <p class="page-subtitle">Directory of all 48 company staff members, roles, contact info, and status.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy" data-bs-toggle="modal" data-bs-target="#addEmployeeModal">
                <i class="bi bi-person-plus-fill me-1"></i> Add New Employee
            </button>
        </div>
    </div>

    <!-- FILTER TOOLBAR -->
    <div class="filter-toolbar">
        <div class="flex-grow-1" style="min-width: 220px;">
            <div class="input-group">
                <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Search by name, ID (e.g. OT-1008), or phone..." data-table-filter="#employeeTable" />
            </div>
        </div>

        <div style="min-width: 160px;">
            <select class="form-select form-select-custom" id="deptFilter" onchange="showToast('Filtered by department: ' + this.value, 'info')">
                <option value="All">All Departments (5)</option>
                <option value="Engineering">Engineering & IT (20)</option>
                <option value="Marketing">Marketing & Sales (12)</option>
                <option value="HR">HR & Admin (6)</option>
                <option value="Finance">Finance & Accounts (6)</option>
                <option value="Operations">Operations (4)</option>
            </select>
        </div>

        <div style="min-width: 140px;">
            <select class="form-select form-select-custom" id="statusFilter" onchange="showToast('Filtered by status: ' + this.value, 'info')">
                <option value="All">All Status</option>
                <option value="Active">Active (46)</option>
                <option value="On Leave">On Leave (2)</option>
                <option value="Inactive">Inactive (0)</option>
            </select>
        </div>

        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="document.querySelector('[data-table-filter]').value=''; document.querySelectorAll('#employeeTable tbody tr').forEach(r => r.style.display=''); showToast('Filters reset', 'info');">
            <i class="bi bi-arrow-counterclockwise"></i> Reset
        </button>
    </div>

    <!-- EMPLOYEE DATA TABLE -->
    <div class="table-responsive-theme shadow-sm mb-4">
        <table class="table-theme" id="employeeTable">
            <thead>
                <tr>
                    <th>Employee Name</th>
                    <th>Employee ID</th>
                    <th>Department & Designation</th>
                    <th>Mobile Contact</th>
                    <th>Joining Date</th>
                    <th>Status</th>
                    <th class="text-end">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">VM</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1008" class="user-name-title">Vikram Malhotra</a>
                                <div class="user-sub-id">vikram.m@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1008</span></td>
                    <td>
                        <div class="fw-semibold">Sr. Full Stack Engineer</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Engineering & IT</div>
                    </td>
                    <td>+91 98201 44521</td>
                    <td>15 Jan 2023</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1008" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 2 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1012" class="user-name-title">Ananya Sharma</a>
                                <div class="user-sub-id">ananya.s@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1012</span></td>
                    <td>
                        <div class="fw-semibold">Product Marketing Lead</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Marketing & Sales</div>
                    </td>
                    <td>+91 98711 23412</td>
                    <td>01 Jun 2023</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1012" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 3 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fef3c7; color:#92400e;">RK</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1015" class="user-name-title">Rohan Kulkarni</a>
                                <div class="user-sub-id">rohan.k@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1015</span></td>
                    <td>
                        <div class="fw-semibold">UI/UX Designer</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Engineering & IT</div>
                    </td>
                    <td>+91 99120 78643</td>
                    <td>10 Aug 2023</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1015" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 4 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0e7ff; color:#3730a3;">NK</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1021" class="user-name-title">Neha Kapoor</a>
                                <div class="user-sub-id">neha.k@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1021</span></td>
                    <td>
                        <div class="fw-semibold">Financial Analyst</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Finance & Accounts</div>
                    </td>
                    <td>+91 97654 32109</td>
                    <td>01 Nov 2023</td>
                    <td><span class="badge-status badge-leave"><i class="bi bi-calendar-event"></i> On Leave</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1021" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 5 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#dcfce7; color:#166534;">PS</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1024" class="user-name-title">Pooja Singh</a>
                                <div class="user-sub-id">pooja.s@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1024</span></td>
                    <td>
                        <div class="fw-semibold">HR Operations Associate</div>
                        <div class="text-muted" style="font-size: 0.72rem;">HR & Admin</div>
                    </td>
                    <td>+91 98450 12987</td>
                    <td>15 Feb 2024</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1024" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 6 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#f3e8ff; color:#6b21a8;">DK</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1028" class="user-name-title">Deepak Kumar</a>
                                <div class="user-sub-id">deepak.k@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1028</span></td>
                    <td>
                        <div class="fw-semibold">DevOps Engineer</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Engineering & IT</div>
                    </td>
                    <td>+91 94451 90812</td>
                    <td>10 May 2024</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1028" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Row 7 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#ffedd5; color:#9a3412;">SD</div>
                            <div>
                                <a href="EmployeeDetails.aspx?id=OT-1033" class="user-name-title">Sameer Deshmukh</a>
                                <div class="user-sub-id">sameer.d@officetrack.com</div>
                            </div>
                        </div>
                    </td>
                    <td><span class="badge bg-light text-dark border font-monospace">OT-1033</span></td>
                    <td>
                        <div class="fw-semibold">Key Account Executive</div>
                        <div class="text-muted" style="font-size: 0.72rem;">Marketing & Sales</div>
                    </td>
                    <td>+91 91234 56780</td>
                    <td>01 Jul 2024</td>
                    <td><span class="badge-status badge-active"><i class="bi bi-check-circle"></i> Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <a href="EmployeeDetails.aspx?id=OT-1033" class="btn-sm-action" title="View Profile">
                                <i class="bi bi-eye"></i>
                            </a>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" title="Edit Employee">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateEmployeeModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- TABLE PAGINATION FOOTER -->
    <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-4">
        <span class="text-muted small">Showing 1 to 7 of 48 records</span>
        <nav aria-label="Page navigation">
            <ul class="pagination pagination-sm mb-0">
                <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item active"><a class="page-link" href="#" style="background-color: var(--primary-navy); border-color: var(--primary-navy);">1</a></li>
                <li class="page-item"><a class="page-link text-navy" href="#" onclick="showToast('Page 2 loaded', 'info')">2</a></li>
                <li class="page-item"><a class="page-link text-navy" href="#" onclick="showToast('Page 3 loaded', 'info')">3</a></li>
                <li class="page-item"><a class="page-link text-navy" href="#" onclick="showToast('Next page loaded', 'info')">Next</a></li>
            </ul>
        </nav>
    </div>

    <!-- MODAL: ADD EMPLOYEE -->
    <div class="modal fade" id="addEmployeeModal" tabindex="-1" aria-labelledby="addEmpLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="addEmpLabel">
                        <i class="bi bi-person-plus-fill me-2"></i> Register New Employee
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-12">
                            <span class="badge bg-light text-navy border fw-bold mb-1">1. Personal Information</span>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">First Name *</label>
                            <input type="text" class="form-control form-control-custom" placeholder="e.g. Ramesh" required />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Last Name *</label>
                            <input type="text" class="form-control form-control-custom" placeholder="e.g. Verma" required />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Official Email *</label>
                            <input type="email" class="form-control form-control-custom" placeholder="ramesh.v@officetrack.com" required />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Mobile Number *</label>
                            <input type="tel" class="form-control form-control-custom" placeholder="+91 98000 00000" required />
                        </div>

                        <div class="col-12 mt-3">
                            <span class="badge bg-light text-navy border fw-bold mb-1">2. Department & Employment</span>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Employee ID</label>
                            <input type="text" class="form-control form-control-custom font-monospace" value="OT-1049" readonly />
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Department *</label>
                            <select class="form-select form-select-custom">
                                <option>Engineering & IT</option>
                                <option>Marketing & Sales</option>
                                <option>HR & Admin</option>
                                <option>Finance & Accounts</option>
                                <option>Operations</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label-custom">Designation *</label>
                            <input type="text" class="form-control form-control-custom" placeholder="e.g. Software Engineer" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Joining Date *</label>
                            <input type="date" class="form-control form-control-custom" value="2026-10-29" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Standard Shift</label>
                            <input type="text" class="form-control form-control-custom" value="10:00 AM - 06:00 PM" readonly />
                        </div>

                        <div class="col-12 mt-3">
                            <span class="badge bg-light text-navy border fw-bold mb-1">3. App Login Credentials</span>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Employee Username *</label>
                            <input type="text" class="form-control form-control-custom" placeholder="e.g. ramesh.v" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Temporary Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="newEmpPass" value="Welcome@2026" />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#newEmpPass">
                                    <i class="bi bi-eye"></i>
                                </button>
                            </div>
                        </div>

                        <div class="col-12">
                            <div class="form-check form-switch mt-2">
                                <input class="form-check-input" type="checkbox" id="empStatusCheck" checked />
                                <label class="form-check-label fw-semibold text-dark small" for="empStatusCheck">Active Status (Authorized to scan office QR attendance)</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="New employee registered successfully!">
                        <i class="bi bi-check-lg me-1"></i> Save Employee
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: EDIT EMPLOYEE -->
    <div class="modal fade" id="editEmployeeModal" tabindex="-1" aria-labelledby="editEmpLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="editEmpLabel">
                        <i class="bi bi-pencil-square me-2"></i> Edit Employee Information
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Full Name</label>
                            <input type="text" class="form-control form-control-custom" value="Vikram Malhotra" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Official Email</label>
                            <input type="email" class="form-control form-control-custom" value="vikram.m@officetrack.com" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Department</label>
                            <select class="form-select form-select-custom">
                                <option selected>Engineering & IT</option>
                                <option>Marketing & Sales</option>
                                <option>HR & Admin</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Designation</label>
                            <input type="text" class="form-control form-control-custom" value="Sr. Full Stack Engineer" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Mobile Number</label>
                            <input type="tel" class="form-control form-control-custom" value="+91 98201 44521" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Status</label>
                            <select class="form-select form-select-custom">
                                <option selected>Active</option>
                                <option>On Leave</option>
                                <option>Suspended</option>
                                <option>Inactive / Resigned</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Employee details updated successfully!">Save Changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: DEACTIVATE CONFIRMATION -->
    <div class="modal fade" id="deactivateEmployeeModal" tabindex="-1" aria-labelledby="deactEmpLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme bg-danger bg-opacity-10">
                    <h5 class="modal-title fw-bold text-danger" id="deactEmpLabel">
                        <i class="bi bi-exclamation-octagon-fill me-2"></i> Confirm Deactivation
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4 text-center">
                    <i class="bi bi-person-x text-danger display-5 mb-2 d-block"></i>
                    <h6 class="fw-bold text-navy">Deactivate Employee Account?</h6>
                    <p class="text-muted small">The employee will no longer be able to log in to the mobile attendance app or record attendance scans. Historical attendance and payroll records will be preserved.</p>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-accent-red" data-demo-action="Employee account deactivated." data-demo-type="danger">
                        Yes, Deactivate
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

