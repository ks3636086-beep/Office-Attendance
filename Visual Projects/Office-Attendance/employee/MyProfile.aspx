<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - My Profile</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-person-circle text-navy"></i> My Profile & Credentials
            </h1>
            <p class="page-subtitle">Your registered employment profile, contact details, and account security settings.</p>
        </div>
        <div>
            <a href="Login.aspx" class="btn btn-outline-danger btn-sm">
                <i class="bi bi-box-arrow-right me-1"></i> Log Out
            </a>
        </div>
    </div>

    <!-- PROFILE HERO CARD -->
    <div class="card-theme p-3 p-md-4 mb-3">
        <div class="d-flex flex-column flex-sm-row align-items-sm-center gap-3">
            <div class="emp-avatar" style="width: 64px; height: 64px; font-size: 1.5rem; background: #e0f2fe; color: #0369a1; border: 2px solid #bae6fd;">
                VM
            </div>
            <div class="flex-grow-1">
                <div class="d-flex align-items-center gap-2 flex-wrap">
                    <h2 class="h5 fw-bold text-navy mb-0">Vikram Malhotra</h2>
                    <span class="badge bg-light text-dark border font-monospace">OT-1008</span>
                    <span class="badge-status badge-active"><i class="bi bi-check-circle-fill"></i> Active Regular Staff</span>
                </div>
                <div class="text-muted small mt-1">
                    <span>Sr. Full Stack Engineer</span> • <span>Engineering & IT Department</span>
                </div>
                <div class="d-flex flex-wrap gap-3 small text-muted mt-2">
                    <span><i class="bi bi-envelope me-1"></i> vikram.m@officetrack.com</span>
                    <span><i class="bi bi-telephone me-1"></i> +91 98201 44521</span>
                    <span><i class="bi bi-geo-alt me-1"></i> Mumbai BKC HQ (Floor 4)</span>
                </div>
            </div>
        </div>
    </div>

    <div class="row g-3">
        <!-- LEFT COLUMN: EMPLOYMENT & PERSONAL DETAILS -->
        <div class="col-12 col-lg-7">
            <!-- EMPLOYMENT INFORMATION -->
            <div class="card-theme mb-3">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-briefcase text-navy"></i> Employment Profile
                    </h2>
                </div>
                <div class="card-body-theme">
                    <table class="table table-borderless table-sm small mb-0">
                        <tbody>
                            <tr>
                                <td class="text-muted" style="width: 40%;">Employee ID</td>
                                <td class="fw-semibold font-monospace">OT-1008</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Official Designation</td>
                                <td class="fw-semibold">Sr. Full Stack Engineer</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Department</td>
                                <td class="fw-semibold">Engineering & IT</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Reporting Manager</td>
                                <td class="fw-semibold">Rajesh Sharma (CTO / Admin)</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Joining Date</td>
                                <td class="fw-semibold">15 January 2023 (3.8 Years)</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Standard Shift</td>
                                <td><span class="badge bg-light text-dark border font-monospace">10:00 AM - 06:00 PM (8h)</span></td>
                            </tr>
                            <tr>
                                <td class="text-muted">Registered Hardware Device</td>
                                <td><span class="badge-status badge-active"><i class="bi bi-phone"></i> Apple iPhone 14 Pro</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- PERSONAL & EMERGENCY DETAILS -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-person-lines-fill text-navy"></i> Personal & Emergency Contact
                    </h2>
                </div>
                <div class="card-body-theme">
                    <table class="table table-borderless table-sm small mb-0">
                        <tbody>
                            <tr>
                                <td class="text-muted" style="width: 40%;">Date of Birth</td>
                                <td class="fw-semibold">14 August 1994 (32 Years)</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Blood Group</td>
                                <td class="fw-semibold">B+ Positive</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Emergency Contact Person</td>
                                <td class="fw-semibold">Kavita Malhotra (Spouse)</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Emergency Mobile</td>
                                <td class="fw-semibold font-monospace">+91 98201 11223</td>
                            </tr>
                            <tr>
                                <td class="text-muted">Residential Address</td>
                                <td class="fw-semibold">402, Sea Green Heights, Bandra West, Mumbai 400050</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- RIGHT COLUMN: CHANGE PASSWORD & ACCOUNT SECURITY -->
        <div class="col-12 col-lg-5">
            <!-- SECURITY / CHANGE PASSWORD CARD -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-shield-lock text-navy"></i> Account Security & Password
                    </h2>
                </div>
                <div class="card-body-theme">
                    <form onsubmit="event.preventDefault(); showToast('Password updated successfully!', 'success');">
                        <div class="mb-3">
                            <label class="form-label-custom">Current Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="empCurrPass" value="password123" required />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#empCurrPass">
                                    <i class="bi bi-eye"></i>
                                </button>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label-custom">New Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="empNewPass" placeholder="Min 8 characters" required />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#empNewPass">
                                    <i class="bi bi-eye"></i>
                                </button>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label-custom">Confirm New Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="empConfirmPass" placeholder="Repeat new password" required />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#empConfirmPass">
                                    <i class="bi bi-eye"></i>
                                </button>
                            </div>
                        </div>

                        <div class="d-grid mb-2">
                            <button type="submit" class="btn btn-navy btn-sm">
                                <i class="bi bi-check2 me-1"></i> Update Password
                            </button>
                        </div>
                    </form>

                    <div class="alert alert-light border small text-muted py-2 mt-3 mb-0" style="font-size: 0.74rem;">
                        <i class="bi bi-info-circle me-1"></i> Changing your password will keep your device attendance binding active.
                    </div>
                </div>
            </div>

            <!-- MOBILE APP SIGN OUT OPTION -->
            <div class="card-theme p-3 text-center">
                <span class="small text-muted d-block mb-2">Done for the day? Sign out of your mobile session safely.</span>
                <a href="Login.aspx" class="btn btn-outline-danger btn-sm w-100">
                    <i class="bi bi-box-arrow-right me-1"></i> Log Out from Portal
                </a>
            </div>
        </div>
    </div>
</asp:Content>

