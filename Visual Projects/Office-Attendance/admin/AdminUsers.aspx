<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Admin Users Management</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-shield-lock-fill text-navy"></i> Admin Account Management
            </h1>
            <p class="page-subtitle">Manage administrative accounts authorized to access the OfficeTrack portal and records.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#addAdminModal">
                <i class="bi bi-person-plus-fill me-1"></i> Add New Admin
            </button>
        </div>
    </div>

    <!-- FILTER TOOLBAR -->
    <div class="filter-toolbar">
        <div class="flex-grow-1" style="min-width: 220px;">
            <div class="input-group">
                <span class="input-group-text bg-light border-end-0 text-muted"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control form-control-custom border-start-0 ps-0" placeholder="Search admin by name or email..." data-table-filter="#adminUsersTable" />
            </div>
        </div>
        <div style="min-width: 150px;">
            <select class="form-select form-select-custom">
                <option>All Statuses</option>
                <option>Active</option>
                <option>Suspended</option>
            </select>
        </div>
    </div>

    <!-- ADMIN USERS TABLE -->
    <div class="table-responsive-theme shadow-sm mb-4">
        <table class="table-theme" id="adminUsersTable">
            <thead>
                <tr>
                    <th>Admin Name</th>
                    <th>Email Address</th>
                    <th>Designated Role</th>
                    <th>Last Active Login</th>
                    <th>Two-Factor Auth</th>
                    <th>Status</th>
                    <th class="text-end">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Admin 1 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:var(--primary-navy); color:#fff;">RS</div>
                            <div>
                                <div class="user-name-title">Rajesh Sharma</div>
                                <div class="user-sub-id">Primary System Administrator</div>
                            </div>
                        </div>
                    </td>
                    <td class="font-monospace">admin@officetrack.com</td>
                    <td><span class="badge bg-light text-dark border fw-semibold">Admin</span></td>
                    <td class="font-monospace">Today, 09:12 AM</td>
                    <td><span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25"><i class="bi bi-shield-check"></i> Enabled</span></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editAdminModal" title="Edit Profile">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#resetAdminPassModal" title="Reset Password">
                                <i class="bi bi-key"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Admin 2 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#e0f2fe; color:#0369a1;">SV</div>
                            <div>
                                <div class="user-name-title">Sunita Varghese</div>
                                <div class="user-sub-id">HR Operations Lead</div>
                            </div>
                        </div>
                    </td>
                    <td class="font-monospace">sunita.v@officetrack.com</td>
                    <td><span class="badge bg-light text-dark border fw-semibold">Admin</span></td>
                    <td class="font-monospace">Yesterday, 05:40 PM</td>
                    <td><span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25"><i class="bi bi-shield-check"></i> Enabled</span></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editAdminModal" title="Edit Profile">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#resetAdminPassModal" title="Reset Password">
                                <i class="bi bi-key"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateAdminModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>

                <!-- Admin 3 -->
                <tr>
                    <td>
                        <div class="user-meta-cell">
                            <div class="user-avatar-sm" style="background:#fce7f3; color:#9d174d;">AM</div>
                            <div>
                                <div class="user-name-title">Ankit Mehta</div>
                                <div class="user-sub-id">Finance & Payroll Manager</div>
                            </div>
                        </div>
                    </td>
                    <td class="font-monospace">ankit.m@officetrack.com</td>
                    <td><span class="badge bg-light text-dark border fw-semibold">Admin</span></td>
                    <td class="font-monospace">27 Oct 2026, 11:15 AM</td>
                    <td><span class="badge bg-warning bg-opacity-10 text-dark border border-warning border-opacity-25"><i class="bi bi-exclamation-circle"></i> Pending Setup</span></td>
                    <td><span class="badge-status badge-active">Active</span></td>
                    <td class="text-end">
                        <div class="d-inline-flex gap-1">
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editAdminModal" title="Edit Profile">
                                <i class="bi bi-pencil"></i>
                            </button>
                            <button type="button" class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#resetAdminPassModal" title="Reset Password">
                                <i class="bi bi-key"></i>
                            </button>
                            <button type="button" class="btn-sm-action danger" data-bs-toggle="modal" data-bs-target="#deactivateAdminModal" title="Deactivate">
                                <i class="bi bi-slash-circle"></i>
                            </button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- MODAL: ADD ADMIN -->
    <div class="modal fade" id="addAdminModal" tabindex="-1" aria-labelledby="addAdminLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="addAdminLabel">
                        <i class="bi bi-person-plus-fill text-primary me-2"></i> Register Admin User
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label-custom">Full Name *</label>
                        <input type="text" class="form-control form-control-custom" placeholder="e.g. Meera Joshi" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Official Email Address *</label>
                        <input type="email" class="form-control form-control-custom" placeholder="meera.j@officetrack.com" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Role</label>
                        <input type="text" class="form-control form-control-custom" value="Admin" readonly />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Initial Password *</label>
                        <div class="input-group">
                            <input type="password" class="form-control form-control-custom" id="newAdminPass" value="OfficeTrack@2026" />
                            <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#newAdminPass"><i class="bi bi-eye"></i></button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Admin user created successfully!">Create Account</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: EDIT ADMIN -->
    <div class="modal fade" id="editAdminModal" tabindex="-1" aria-labelledby="editAdminLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="editAdminLabel">
                        <i class="bi bi-pencil-square text-primary me-2"></i> Edit Admin Account
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label-custom">Full Name</label>
                        <input type="text" class="form-control form-control-custom" value="Sunita Varghese" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Official Email</label>
                        <input type="email" class="form-control form-control-custom" value="sunita.v@officetrack.com" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Account Status</label>
                        <select class="form-select form-select-custom">
                            <option selected>Active</option>
                            <option>Suspended</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Admin account updated.">Save Changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: RESET PASSWORD -->
    <div class="modal fade" id="resetAdminPassModal" tabindex="-1" aria-labelledby="resetPassLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="resetPassLabel">
                        <i class="bi bi-key-fill text-warning me-2"></i> Reset Admin Password
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <p class="text-muted small">Generate a temporary one-time password for this admin account.</p>
                    <div class="mb-3">
                        <label class="form-label-custom">New Temporary Password</label>
                        <input type="text" class="form-control form-control-custom font-monospace" value="TempPass#2026$X" readonly />
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Temporary password sent to user's registered email.">Dispatch Password</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: DEACTIVATE ADMIN -->
    <div class="modal fade" id="deactivateAdminModal" tabindex="-1" aria-labelledby="deactAdminLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme bg-danger bg-opacity-10">
                    <h5 class="modal-title fw-bold text-danger" id="deactAdminLabel">
                        <i class="bi bi-slash-circle me-2"></i> Suspend Admin Access
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4 text-center">
                    <p class="text-muted small">Are you sure you want to suspend this admin account? The user will immediately lose access to the OfficeTrack portal.</p>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-accent-red" data-demo-action="Admin account suspended." data-demo-type="danger">Confirm Suspension</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

