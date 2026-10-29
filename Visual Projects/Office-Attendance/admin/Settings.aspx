<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - System & Company Settings</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-gear-fill text-navy"></i> System & General Settings
            </h1>
            <p class="page-subtitle">Configure company profile, security credentials, notification channels, and application preferences.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy" data-demo-action="General system settings updated!">
                <i class="bi bi-check2-circle me-1"></i> Save All Settings
            </button>
        </div>
    </div>

    <div class="row g-4">
        <!-- LEFT COLUMN: COMPANY & ADMIN PROFILE -->
        <div class="col-12 col-lg-7">
            <!-- COMPANY PROFILE CARD -->
            <div class="card-theme mb-4">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-building text-navy"></i> Organization Profile
                    </h2>
                    <span class="badge bg-light text-dark border">HQ Office</span>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Company / Office Name *</label>
                            <input type="text" class="form-control form-control-custom" value="OfficeTrack HR Systems India Pvt Ltd" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Official Contact Email *</label>
                            <input type="email" class="form-control form-control-custom" value="admin@officetrack.com" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Helpline / Support Phone *</label>
                            <input type="tel" class="form-control form-control-custom" value="+91 22 6789 0000" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Company Website</label>
                            <input type="url" class="form-control form-control-custom" value="https://officetrack.internal" />
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Registered Office Address *</label>
                            <textarea class="form-control form-control-custom" rows="2">4th Floor, Tech Park Towers, BKC, Bandra East, Mumbai, Maharashtra 400051</textarea>
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Company Logo</label>
                            <div class="d-flex align-items-center gap-3">
                                <div class="brand-icon" style="width: 50px; height: 50px; font-size: 1.5rem;">
                                    <i class="bi bi-fingerprint"></i>
                                </div>
                                <div>
                                    <input type="file" class="form-control form-control-custom form-control-sm" />
                                    <span class="text-muted small" style="font-size: 0.72rem;">Accepts PNG, JPG, or SVG (Max 2MB)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- SECURITY & CHANGE PASSWORD -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-shield-lock text-navy"></i> Admin Security & Change Password
                    </h2>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label-custom">Current Master Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="currPass" value="admin123" />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#currPass"><i class="bi bi-eye"></i></button>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">New Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="newPass" placeholder="Min 8 characters" />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#newPass"><i class="bi bi-eye"></i></button>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Confirm New Password *</label>
                            <div class="input-group">
                                <input type="password" class="form-control form-control-custom" id="confirmPass" placeholder="Repeat new password" />
                                <button class="btn btn-outline-secondary btn-toggle-password" type="button" data-target="#confirmPass"><i class="bi bi-eye"></i></button>
                            </div>
                        </div>
                        <div class="col-12 text-end">
                            <button type="button" class="btn btn-outline-navy btn-sm" data-demo-action="Admin password updated successfully!">
                                Update Password
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- RIGHT COLUMN: NOTIFICATIONS & SYSTEM INFO -->
        <div class="col-12 col-lg-5">
            <!-- NOTIFICATIONS PREFERENCES -->
            <div class="card-theme mb-4">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-bell text-navy"></i> Automated Alert Preferences
                    </h2>
                </div>
                <div class="card-body-theme">
                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input" type="checkbox" id="emailDailySummary" checked />
                        <label class="form-check-label small fw-semibold" for="emailDailySummary">
                            Daily 10:30 AM Attendance Snapshot Email
                            <div class="text-muted fw-normal" style="font-size: 0.72rem;">Sends total present/absent breakdown to directors</div>
                        </label>
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input" type="checkbox" id="leaveAlerts" checked />
                        <label class="form-check-label small fw-semibold" for="leaveAlerts">
                            Instant Email on Leave Application
                            <div class="text-muted fw-normal" style="font-size: 0.72rem;">Notifies manager when an employee files a leave request</div>
                        </label>
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input" type="checkbox" id="lateAlerts" checked />
                        <label class="form-check-label small fw-semibold" for="lateAlerts">
                            Late Arrival Penalty Warnings
                            <div class="text-muted fw-normal" style="font-size: 0.72rem;">Alert employee via mobile app on 2nd and 3rd late arrival</div>
                        </label>
                    </div>

                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" id="securityAlerts" checked />
                        <label class="form-check-label small fw-semibold" for="securityAlerts">
                            Security Geofence Breach Notifications
                            <div class="text-muted fw-normal" style="font-size: 0.72rem;">Alert admin if an invalid scan from remote IP is attempted</div>
                        </label>
                    </div>
                </div>
            </div>

            <!-- SYSTEM INFORMATION -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-cpu text-navy"></i> System Runtime Info
                    </h2>
                    <span class="badge bg-success bg-opacity-10 text-success border">Healthy</span>
                </div>
                <div class="card-body-theme">
                    <table class="table table-sm table-borderless small mb-0">
                        <tbody>
                            <tr><td class="text-muted">Application Version:</td><td class="fw-semibold">OfficeTrack v2.4.0 (ASP.NET Web Forms)</td></tr>
                            <tr><td class="text-muted">Target Framework:</td><td class="font-monospace">.NET Framework 4.8.1</td></tr>
                            <tr><td class="text-muted">UI Architecture:</td><td>Bootstrap 5.3 + MasterPage Layout</td></tr>
                            <tr><td class="text-muted">Terminal Protocol:</td><td>Encrypted 15-min Dynamic Token</td></tr>
                            <tr><td class="text-muted">Current System Time:</td><td class="font-monospace live-time-display fw-bold"></td></tr>
                            <tr><td class="text-muted">Data Backup:</td><td>Daily Snapshot (02:00 AM IST)</td></tr>
                        </tbody>
                    </table>

                    <div class="mt-3 pt-3 border-top">
                        <button type="button" class="btn btn-sm btn-outline-secondary w-100" data-demo-action="Encrypted database backup downloaded.">
                            <i class="bi bi-cloud-arrow-down me-1"></i> Download Data Backup (.sql.bak)
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

