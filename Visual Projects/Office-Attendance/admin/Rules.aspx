<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Attendance & Policy Rules</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-sliders text-navy"></i> Company Attendance & Shift Rules
            </h1>
            <p class="page-subtitle">Configure organization shift parameters, late deduction rules, and QR terminal security constraints.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy" data-demo-action="Company attendance rules updated successfully!">
                <i class="bi bi-check2-circle me-1"></i> Save Rule Policies
            </button>
        </div>
    </div>

    <!-- RULES CONFIGURATION FORM -->
    <div class="row g-4">
        <!-- 1. SHIFT & TIMINGS -->
        <div class="col-12 col-lg-6">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-clock text-navy"></i> 1. Standard Shift & Grace Period
                    </h2>
                    <span class="badge bg-light text-dark border">General Shift</span>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Office Start Time *</label>
                            <input type="time" class="form-control form-control-custom" value="10:00" />
                            <span class="small text-muted" style="font-size: 0.74rem;">Default: 10:00 AM</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Office End Time *</label>
                            <input type="time" class="form-control form-control-custom" value="18:00" />
                            <span class="small text-muted" style="font-size: 0.74rem;">Default: 06:00 PM</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Arrival Grace Period *</label>
                            <div class="input-group">
                                <input type="number" class="form-control form-control-custom" value="15" />
                                <span class="input-group-text bg-light">Minutes</span>
                            </div>
                            <span class="small text-muted" style="font-size: 0.74rem;">Scans until 10:15 AM marked on-time</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Expected Daily Working Hours *</label>
                            <div class="input-group">
                                <input type="number" class="form-control form-control-custom" value="8" />
                                <span class="input-group-text bg-light">Hours / Day</span>
                            </div>
                            <span class="small text-muted" style="font-size: 0.74rem;">Excluding lunch break</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 2. LATE ARRIVAL & EARLY DEPARTURE POLICY -->
        <div class="col-12 col-lg-6">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-exclamation-triangle text-navy"></i> 2. Late & Early Departure Penalty
                    </h2>
                    <span class="badge bg-warning bg-opacity-10 text-dark border">Penalty Rules</span>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12">
                            <label class="form-label-custom">Late Arrival Monthly Deduction Policy</label>
                            <select class="form-select form-select-custom">
                                <option selected>3 Late Marks = Deduct 0.5 Day Salary (Half-Day)</option>
                                <option>4 Late Marks = Deduct 1 Full Day Salary</option>
                                <option>Direct Pro-Rata Hourly Wage Deduction</option>
                                <option>Warning Only (No Financial Penalty)</option>
                            </select>
                            <span class="small text-muted" style="font-size: 0.74rem;">Counter resets automatically on the 1st of every month</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Early Departure Threshold</label>
                            <input type="time" class="form-control form-control-custom" value="17:30" />
                            <span class="small text-muted" style="font-size: 0.74rem;">Checkout before 05:30 PM triggers early mark</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Maximum Permitted Late Marks</label>
                            <input type="number" class="form-control form-control-custom" value="3" />
                            <span class="small text-muted" style="font-size: 0.74rem;">Triggers HR alert email to supervisor</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 3. HALF DAY & ABSENCE THRESHOLDS -->
        <div class="col-12 col-lg-6">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-hourglass-split text-navy"></i> 3. Half-Day & Absence Thresholds
                    </h2>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Min Hours for Half-Day</label>
                            <div class="input-group">
                                <input type="number" class="form-control form-control-custom" value="4" />
                                <span class="input-group-text bg-light">Hours</span>
                            </div>
                            <span class="small text-muted" style="font-size: 0.74rem;">4 to 6 hours counts as Half-Day</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Absence Minimum Threshold</label>
                            <div class="input-group">
                                <input type="number" class="form-control form-control-custom" value="4" />
                                <span class="input-group-text bg-light">Hours</span>
                            </div>
                            <span class="small text-muted" style="font-size: 0.74rem;">Less than 4 hours logged = Absent (LOP)</span>
                        </div>
                        <div class="col-12">
                            <label class="form-label-custom">Consecutive Unplanned Absence Escalation</label>
                            <select class="form-select form-select-custom">
                                <option selected>Auto-lock QR login after 3 consecutive uninformed absent days</option>
                                <option>Send automated manager notification after 2 days</option>
                                <option>No automated locking</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 4. QR TERMINAL & SECURITY PROTOCOLS -->
        <div class="col-12 col-lg-6">
            <div class="card-theme h-100">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-shield-lock text-navy"></i> 4. Daily QR Code & Hardware Protection
                    </h2>
                    <span class="badge bg-success bg-opacity-10 text-success border">Anti-Proxy</span>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Daily QR Dynamic Refresh Interval</label>
                            <select class="form-select form-select-custom">
                                <option selected>Every 15 Minutes (Recommended)</option>
                                <option>Every 5 Minutes (High Security)</option>
                                <option>Every 60 Minutes</option>
                                <option>Static Daily Code (Single Day)</option>
                            </select>
                        </div>
                        <div class="col-12 col-sm-6">
                            <label class="form-label-custom">Duplicate Attendance Cooldown</label>
                            <div class="input-group">
                                <input type="number" class="form-control form-control-custom" value="60" />
                                <span class="input-group-text bg-light">Minutes</span>
                            </div>
                            <span class="small text-muted" style="font-size: 0.74rem;">Prevents repeated scans in 1 hour</span>
                        </div>
                        <div class="col-12">
                            <div class="form-check form-switch mb-2">
                                <input class="form-check-input" type="checkbox" id="geoCheck" checked />
                                <label class="form-check-label fw-semibold small" for="geoCheck">
                                    Enforce Geofencing (Scans accepted only within 100m radius of office router)
                                </label>
                            </div>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="deviceBindingCheck" checked />
                                <label class="form-check-label fw-semibold small" for="deviceBindingCheck">
                                    Enforce 1 Account = 1 Mobile Device Hardware Fingerprint (Blocks proxy attendance)
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 5. PAYROLL CALCULATION BASIS -->
        <div class="col-12">
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-cash-coin text-navy"></i> 5. Monthly Payable Days Calculation Method
                    </h2>
                </div>
                <div class="card-body-theme">
                    <div class="row g-3">
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Monthly Payable Days Method</label>
                            <select class="form-select form-select-custom">
                                <option selected>Calendar Days Basis (e.g. 30/31 days minus unpaid absences)</option>
                                <option>Fixed 30 Days Standard Basis</option>
                                <option>Actual Working Days Basis (Excludes weekly offs & paid holidays)</option>
                            </select>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label-custom">Overtime Compensation Policy</label>
                            <select class="form-select form-select-custom">
                                <option selected>Compensatory Off (Comp-Off) for weekend / holiday work</option>
                                <option>1.5x Hourly Rate for overtime beyond 9 hours</option>
                                <option>Not applicable / Salaried Exempt</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

