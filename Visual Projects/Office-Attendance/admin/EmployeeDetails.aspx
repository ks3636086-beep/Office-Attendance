<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Vikram Malhotra Profile</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- BREADCRUMB / BACK LINK -->
    <div class="mb-3">
        <a href="Employees.aspx" class="text-decoration-none small text-muted d-inline-flex align-items-center gap-1">
            <i class="bi bi-arrow-left"></i> Back to Employee Directory
        </a>
    </div>

    <!-- PROFILE HERO CARD -->
    <div class="card-theme p-4 mb-4">
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center gap-3">
            <div class="d-flex flex-column flex-sm-row align-items-sm-center gap-3">
                <div class="user-avatar-sm" style="width: 72px; height: 72px; font-size: 1.6rem; background: #e0f2fe; color: #0369a1; border: 2px solid #bae6fd;">
                    VM
                </div>
                <div>
                    <div class="d-flex align-items-center gap-2 flex-wrap">
                        <h1 class="h4 fw-bold text-navy mb-0">Vikram Malhotra</h1>
                        <span class="badge bg-light text-dark border font-monospace">OT-1008</span>
                        <span class="badge-status badge-active"><i class="bi bi-check-circle-fill"></i> Active Staff</span>
                    </div>
                    <div class="text-muted small mt-1">
                        <span>Sr. Full Stack Engineer</span> • <span>Engineering & IT</span> • <span>Joined 15 Jan 2023 (3.8 yrs)</span>
                    </div>
                    <div class="d-flex flex-wrap gap-3 small text-muted mt-2">
                        <span><i class="bi bi-envelope me-1"></i> vikram.m@officetrack.com</span>
                        <span><i class="bi bi-telephone me-1"></i> +91 98201 44521</span>
                        <span><i class="bi bi-geo-alt me-1"></i> Mumbai HQ (Floor 4)</span>
                    </div>
                </div>
            </div>
            <div class="d-flex gap-2">
                <button type="button" class="btn btn-sm btn-outline-navy" data-demo-action="Employee PDF Dossier downloaded!">
                    <i class="bi bi-file-earmark-pdf me-1"></i> Export PDF
                </button>
                <button type="button" class="btn btn-sm btn-navy" data-bs-toggle="modal" data-bs-target="#editProfileModal">
                    <i class="bi bi-pencil-square me-1"></i> Edit Profile
                </button>
            </div>
        </div>
    </div>

    <!-- NAV TABS -->
    <ul class="nav nav-tabs border-bottom mb-4" id="profileTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active fw-semibold text-navy" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview" type="button" role="tab">
                <i class="bi bi-person-lines-fill me-1"></i> Personal & Job Info
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link fw-semibold text-navy" id="attendance-tab" data-bs-toggle="tab" data-bs-target="#attendance" type="button" role="tab">
                <i class="bi bi-calendar-check me-1"></i> Attendance Logs
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link fw-semibold text-navy" id="leaves-tab" data-bs-toggle="tab" data-bs-target="#leaves" type="button" role="tab">
                <i class="bi bi-calendar-week me-1"></i> Leave Record
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link fw-semibold text-navy" id="salary-tab" data-bs-toggle="tab" data-bs-target="#salary" type="button" role="tab">
                <i class="bi bi-cash-stack me-1"></i> Salary & CTC (Admin View)
            </button>
        </li>
    </ul>

    <!-- TAB CONTENTS -->
    <div class="tab-content" id="profileTabContent">
        <!-- TAB 1: OVERVIEW -->
        <div class="tab-pane fade show active" id="overview" role="tabpanel">
            <div class="row g-4">
                <div class="col-12 col-lg-6">
                    <div class="card-theme h-100">
                        <div class="card-header-theme">
                            <h2 class="card-title-theme"><i class="bi bi-person-badge text-navy"></i> Employment Profile</h2>
                        </div>
                        <div class="card-body-theme">
                            <table class="table table-borderless table-sm mb-0">
                                <tbody>
                                    <tr>
                                        <td class="text-muted" style="width: 40%;">Employee ID</td>
                                        <td class="fw-semibold font-monospace">OT-1008</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Department</td>
                                        <td class="fw-semibold">Engineering & IT</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Designation</td>
                                        <td class="fw-semibold">Sr. Full Stack Engineer</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Work Shift</td>
                                        <td class="fw-semibold">Standard Day Shift (10:00 AM - 06:00 PM)</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Work Location</td>
                                        <td class="fw-semibold">Headquarters - Mumbai</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Reporting Manager</td>
                                        <td class="fw-semibold">Rajesh Sharma (CTO / Admin)</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Employment Type</td>
                                        <td><span class="badge bg-light text-dark border">Full Time Regular</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="card-theme h-100">
                        <div class="card-header-theme">
                            <h2 class="card-title-theme"><i class="bi bi-info-circle text-navy"></i> Personal & Emergency Details</h2>
                        </div>
                        <div class="card-body-theme">
                            <table class="table table-borderless table-sm mb-0">
                                <tbody>
                                    <tr>
                                        <td class="text-muted" style="width: 40%;">Date of Birth</td>
                                        <td class="fw-semibold">14 August 1994 (32 yrs)</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Gender / Blood Group</td>
                                        <td class="fw-semibold">Male • B+ Positive</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Permanent Address</td>
                                        <td class="fw-semibold">402, Sea Green Heights, Bandra West, Mumbai 400050</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Emergency Contact</td>
                                        <td class="fw-semibold">Kavita Malhotra (Spouse) - +91 98201 11223</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Mobile App Access</td>
                                        <td><span class="badge-status badge-active">Device Bound (iPhone 14)</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- TAB 2: ATTENDANCE LOGS -->
        <div class="tab-pane fade" id="attendance" role="tabpanel">
            <!-- Monthly Attendance Metrics Strip -->
            <div class="row g-3 mb-4">
                <div class="col-6 col-md-3">
                    <div class="stat-card">
                        <div>
                            <span class="stat-label">Present Days</span>
                            <span class="stat-value text-success">21</span>
                            <span class="stat-subtext text-muted">Out of 22 working</span>
                        </div>
                        <div class="stat-icon success"><i class="bi bi-check2"></i></div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-card">
                        <div>
                            <span class="stat-label">Late Marks</span>
                            <span class="stat-value text-warning">2</span>
                            <span class="stat-subtext text-muted">Total: 34 mins</span>
                        </div>
                        <div class="stat-icon warning"><i class="bi bi-clock"></i></div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-card">
                        <div>
                            <span class="stat-label">Leaves Taken</span>
                            <span class="stat-value text-primary">1</span>
                            <span class="stat-subtext text-muted">Casual Leave</span>
                        </div>
                        <div class="stat-icon info"><i class="bi bi-calendar-event"></i></div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-card">
                        <div>
                            <span class="stat-label">Avg. Work Hours</span>
                            <span class="stat-value text-navy" style="font-size: 1.35rem;">8h 14m</span>
                            <span class="stat-subtext text-success">Compliant</span>
                        </div>
                        <div class="stat-icon primary"><i class="bi bi-stopwatch"></i></div>
                    </div>
                </div>
            </div>

            <!-- Attendance Table -->
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme"><i class="bi bi-clock-history text-navy"></i> Recent Attendance Records (October 2026)</h2>
                    <a href="Attendance.aspx" class="btn btn-sm btn-outline-navy">View All Logs</a>
                </div>
                <div class="table-responsive-theme">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Check In</th>
                                <th>Check Out</th>
                                <th>Total Hours</th>
                                <th>Late Flag</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="fw-semibold">Today (29 Oct 2026)</td>
                                <td class="font-monospace">09:54 AM</td>
                                <td class="font-monospace text-muted">-- In Progress --</td>
                                <td class="font-monospace">--</td>
                                <td><span class="text-muted">-</span></td>
                                <td><span class="badge-status badge-present">Present (On Time)</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">28 Oct 2026</td>
                                <td class="font-monospace">09:58 AM</td>
                                <td class="font-monospace">06:12 PM</td>
                                <td class="font-monospace">8h 14m</td>
                                <td><span class="text-muted">-</span></td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">27 Oct 2026</td>
                                <td class="font-monospace text-warning">10:19 AM</td>
                                <td class="font-monospace">06:30 PM</td>
                                <td class="font-monospace">8h 11m</td>
                                <td><span class="badge-status badge-late">+19 mins</span></td>
                                <td><span class="badge-status badge-late">Late Arrival</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">26 Oct 2026</td>
                                <td class="font-monospace">10:02 AM</td>
                                <td class="font-monospace">06:05 PM</td>
                                <td class="font-monospace">8h 03m</td>
                                <td><span class="text-muted">-</span></td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">25 Oct 2026</td>
                                <td colspan="4" class="text-center text-muted fst-italic">Sunday - Weekly Off</td>
                                <td><span class="badge bg-light text-muted border">Off Day</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">24 Oct 2026</td>
                                <td colspan="4" class="text-center text-muted fst-italic">Saturday - 4th Saturday Off</td>
                                <td><span class="badge bg-light text-muted border">Off Day</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">23 Oct 2026</td>
                                <td class="font-monospace">09:50 AM</td>
                                <td class="font-monospace">06:15 PM</td>
                                <td class="font-monospace">8h 25m</td>
                                <td><span class="text-muted">-</span></td>
                                <td><span class="badge-status badge-present">Present</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- TAB 3: LEAVE RECORD -->
        <div class="tab-pane fade" id="leaves" role="tabpanel">
            <div class="row g-3 mb-4">
                <div class="col-12 col-md-4">
                    <div class="p-3 border rounded-3 bg-white">
                        <div class="d-flex justify-content-between small text-muted mb-1">
                            <span>Casual Leave</span>
                            <span class="fw-bold text-dark">7 / 10 Remaining</span>
                        </div>
                        <div class="progress" style="height: 6px;">
                            <div class="progress-bar bg-primary" style="width: 70%;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="p-3 border rounded-3 bg-white">
                        <div class="d-flex justify-content-between small text-muted mb-1">
                            <span>Sick Leave</span>
                            <span class="fw-bold text-dark">6 / 8 Remaining</span>
                        </div>
                        <div class="progress" style="height: 6px;">
                            <div class="progress-bar bg-success" style="width: 75%;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="p-3 border rounded-3 bg-white">
                        <div class="d-flex justify-content-between small text-muted mb-1">
                            <span>Annual / Earned</span>
                            <span class="fw-bold text-dark">12 / 15 Remaining</span>
                        </div>
                        <div class="progress" style="height: 6px;">
                            <div class="progress-bar bg-info" style="width: 80%;"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme"><i class="bi bi-calendar-event text-navy"></i> Leave Application History</h2>
                </div>
                <div class="table-responsive-theme">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Leave Type</th>
                                <th>Duration</th>
                                <th>Total Days</th>
                                <th>Reason</th>
                                <th>Applied Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="fw-semibold">Casual Leave</td>
                                <td>14 Oct 2026 to 14 Oct 2026</td>
                                <td>1 Day</td>
                                <td>Family personal function</td>
                                <td>10 Oct 2026</td>
                                <td><span class="badge-status badge-approved">Approved</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Sick Leave</td>
                                <td>02 Aug 2026 to 03 Aug 2026</td>
                                <td>2 Days</td>
                                <td>Viral fever and medical consultation</td>
                                <td>02 Aug 2026</td>
                                <td><span class="badge-status badge-approved">Approved</span></td>
                            </tr>
                            <tr>
                                <td class="fw-semibold">Earned Leave</td>
                                <td>10 May 2026 to 14 May 2026</td>
                                <td>5 Days</td>
                                <td>Annual family vacation</td>
                                <td>20 Apr 2026</td>
                                <td><span class="badge-status badge-approved">Approved</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- TAB 4: SALARY & CTC (ADMIN VIEW) -->
        <div class="tab-pane fade" id="salary" role="tabpanel">
            <div class="row g-4">
                <div class="col-12 col-lg-7">
                    <div class="card-theme h-100">
                        <div class="card-header-theme">
                            <h2 class="card-title-theme"><i class="bi bi-cash-stack text-navy"></i> Current Compensation Structure</h2>
                            <span class="badge bg-success bg-opacity-10 text-success border border-success border-opacity-25">Active CTC</span>
                        </div>
                        <div class="card-body-theme">
                            <div class="d-flex justify-content-between align-items-center mb-3 p-3 bg-light rounded-3">
                                <div>
                                    <div class="text-muted small">Monthly Gross CTC</div>
                                    <div class="h3 fw-bold text-navy mb-0">&#8377; 85,000.00</div>
                                </div>
                                <div class="text-end">
                                    <div class="text-muted small">Annual CTC</div>
                                    <div class="h5 fw-bold text-dark mb-0">&#8377; 10,20,000.00</div>
                                </div>
                            </div>

                            <table class="table table-sm table-bordered">
                                <thead class="table-light">
                                    <tr>
                                        <th>Salary Component</th>
                                        <th class="text-end">Monthly (₹)</th>
                                        <th class="text-end">Annual (₹)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Basic Salary (50%)</td>
                                        <td class="text-end font-monospace">42,500.00</td>
                                        <td class="text-end font-monospace">5,10,000.00</td>
                                    </tr>
                                    <tr>
                                        <td>House Rent Allowance (HRA)</td>
                                        <td class="text-end font-monospace">21,250.00</td>
                                        <td class="text-end font-monospace">2,55,000.00</td>
                                    </tr>
                                    <tr>
                                        <td>Special Allowance</td>
                                        <td class="text-end font-monospace">15,250.00</td>
                                        <td class="text-end font-monospace">1,83,000.00</td>
                                    </tr>
                                    <tr>
                                        <td>Medical & Conveyance</td>
                                        <td class="text-end font-monospace">6,000.00</td>
                                        <td class="text-end font-monospace">72,000.00</td>
                                    </tr>
                                    <tr class="table-light fw-bold text-navy">
                                        <td>Total Gross Earnings</td>
                                        <td class="text-end font-monospace">85,000.00</td>
                                        <td class="text-end font-monospace">10,20,000.00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-5">
                    <div class="card-theme h-100">
                        <div class="card-header-theme">
                            <h2 class="card-title-theme"><i class="bi bi-bank text-navy"></i> Disbursement & Revision</h2>
                        </div>
                        <div class="card-body-theme">
                            <table class="table table-borderless table-sm mb-3">
                                <tbody>
                                    <tr>
                                        <td class="text-muted">Payment Mode</td>
                                        <td class="fw-semibold">Direct Bank Transfer (NEFT)</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Bank Name</td>
                                        <td class="fw-semibold">HDFC Bank Ltd</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Bank Account</td>
                                        <td class="fw-semibold font-monospace">XXXX-XXXX-8921</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">IFSC Code</td>
                                        <td class="fw-semibold font-monospace">HDFC0001234</td>
                                    </tr>
                                    <tr>
                                        <td class="text-muted">Effective Date</td>
                                        <td class="fw-semibold">01 April 2024</td>
                                    </tr>
                                </tbody>
                            </table>

                            <h6 class="fw-bold text-navy small mb-2">Revision History</h6>
                            <div class="list-group list-group-flush border rounded-3 small">
                                <div class="list-group-item p-2 d-flex justify-content-between">
                                    <div>
                                        <div class="fw-semibold">Annual Increment 2024</div>
                                        <div class="text-muted" style="font-size: 0.72rem;">Effective 01 Apr 2024</div>
                                    </div>
                                    <div class="text-end text-success fw-bold">+18.0% (₹85k)</div>
                                </div>
                                <div class="list-group-item p-2 d-flex justify-content-between">
                                    <div>
                                        <div class="fw-semibold">Initial Joining CTC</div>
                                        <div class="text-muted" style="font-size: 0.72rem;">Effective 15 Jan 2023</div>
                                    </div>
                                    <div class="text-end text-dark fw-semibold">₹72,000.00</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: EDIT PROFILE -->
    <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="editProfileLabel">
                        <i class="bi bi-pencil-square me-2"></i> Update Employee Profile
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
                            <label class="form-label-custom">Designation</label>
                            <input type="text" class="form-control form-control-custom" value="Sr. Full Stack Engineer" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Phone</label>
                            <input type="tel" class="form-control form-control-custom" value="+91 98201 44521" />
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Reporting Manager</label>
                            <input type="text" class="form-control form-control-custom" value="Rajesh Sharma" />
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Residential Address</label>
                            <textarea class="form-control form-control-custom" rows="2">402, Sea Green Heights, Bandra West, Mumbai 400050</textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Profile changes saved successfully!">Save Profile</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

