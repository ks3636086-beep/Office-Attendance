<%@ Page Language="C#" EnableEventValidation="false" MasterPageFile="MasterPage.master" AutoEventWireup="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="Server">
    <title>OfficeTrack - Holidays & Weekly Off</title>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">
                <i class="bi bi-calendar-heart-fill text-navy"></i> Holidays & Weekly Off
            </h1>
            <p class="page-subtitle">Configure official company holidays, gazetted non-working days, and weekly off rules.</p>
        </div>
        <div>
            <button type="button" class="btn btn-navy btn-sm" data-bs-toggle="modal" data-bs-target="#addHolidayModal">
                <i class="bi bi-calendar-plus me-1"></i> Add Official Holiday
            </button>
        </div>
    </div>

    <div class="row g-4">
        <!-- LEFT: 2026 OFFICIAL HOLIDAY LIST -->
        <div class="col-12 col-lg-8">
            <div class="card-theme">
                <div class="card-header-theme">
                    <h2 class="card-title-theme">
                        <i class="bi bi-calendar-check text-navy"></i> Official Holiday Calendar 2026
                    </h2>
                    <span class="badge bg-light text-dark border">14 Declared Holidays</span>
                </div>
                <div class="table-responsive-theme">
                    <table class="table-theme">
                        <thead>
                            <tr>
                                <th>Holiday Name</th>
                                <th>Date</th>
                                <th>Day of Week</th>
                                <th>Category</th>
                                <th>Status</th>
                                <th class="text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-flag text-danger me-1"></i> Republic Day</td>
                                <td class="font-monospace">26 Jan 2026</td>
                                <td>Monday</td>
                                <td><span class="badge bg-light text-dark border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-palette text-warning me-1"></i> Holi Festival</td>
                                <td class="font-monospace">04 Mar 2026</td>
                                <td>Wednesday</td>
                                <td><span class="badge bg-light text-dark border">Gazetted</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-sun text-warning me-1"></i> Independence Day</td>
                                <td class="font-monospace">15 Aug 2026</td>
                                <td>Saturday</td>
                                <td><span class="badge bg-light text-dark border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-flower1 text-success me-1"></i> Gandhi Jayanti</td>
                                <td class="font-monospace">02 Oct 2026</td>
                                <td>Friday</td>
                                <td><span class="badge bg-light text-dark border">National Holiday</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-fire text-warning me-1"></i> Dussehra (Vijayadashami)</td>
                                <td class="font-monospace">20 Oct 2026</td>
                                <td>Tuesday</td>
                                <td><span class="badge bg-light text-dark border">Gazetted</span></td>
                                <td><span class="badge bg-secondary opacity-50">Passed</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                </td>
                            </tr>
                            <tr class="table-warning bg-opacity-25">
                                <td class="fw-semibold text-navy"><i class="bi bi-stars text-warning me-1"></i> Diwali (Deepavali)</td>
                                <td class="font-monospace fw-bold">08 Nov 2026</td>
                                <td>Sunday</td>
                                <td><span class="badge bg-light text-dark border">Festival Holiday</span></td>
                                <td><span class="badge bg-warning text-dark"><i class="bi bi-bell-fill"></i> Upcoming</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                    <button class="btn-sm-action danger" data-demo-action="Holiday removed." data-demo-type="danger"><i class="bi bi-trash"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-semibold text-navy"><i class="bi bi-gift text-danger me-1"></i> Christmas Day</td>
                                <td class="font-monospace fw-bold">25 Dec 2026</td>
                                <td>Friday</td>
                                <td><span class="badge bg-light text-dark border">Gazetted</span></td>
                                <td><span class="badge bg-warning text-dark">Upcoming</span></td>
                                <td class="text-end">
                                    <button class="btn-sm-action" data-bs-toggle="modal" data-bs-target="#editHolidayModal"><i class="bi bi-pencil"></i></button>
                                    <button class="btn-sm-action danger" data-demo-action="Holiday removed." data-demo-type="danger"><i class="bi bi-trash"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- RIGHT: WEEKLY OFF SETTINGS CARD -->
        <div class="col-12 col-lg-4">
            <div class="card-theme p-4 mb-4">
                <h3 class="h6 fw-bold text-navy mb-1"><i class="bi bi-clock-history me-1"></i> Weekly Off Policy</h3>
                <p class="text-muted small mb-3">Define standard office non-working days for automatic payroll calculation.</p>

                <div class="mb-3">
                    <label class="form-label-custom">Sunday Off Policy</label>
                    <div class="p-2 border rounded bg-light">
                        <div class="form-check form-switch mb-0">
                            <input class="form-check-input" type="checkbox" id="sunSwitch" checked />
                            <label class="form-check-label fw-semibold small" for="sunSwitch">All Sundays Off (Mandatory)</label>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label-custom">Saturday Off Rules</label>
                    <select class="form-select form-select-custom mb-2">
                        <option selected>2nd and 4th Saturday Off (Current Policy)</option>
                        <option>All Saturdays Off (5-Day Work Week)</option>
                        <option>All Saturdays Working (6-Day Work Week)</option>
                        <option>Alternate Saturdays Off (1st & 3rd)</option>
                    </select>
                    <span class="small text-muted d-block" style="font-size: 0.74rem;">If a holiday falls on a declared Saturday off, it is marked as compensated.</span>
                </div>

                <div class="mb-4">
                    <label class="form-label-custom">Working Days in Standard Month</label>
                    <div class="p-2 border rounded bg-light small">
                        <div class="d-flex justify-content-between mb-1">
                            <span>Total Calendar Days:</span>
                            <span class="fw-bold">30 / 31</span>
                        </div>
                        <div class="d-flex justify-content-between mb-1">
                            <span>Standard Weekly Offs:</span>
                            <span class="fw-bold text-primary">6 Days</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span>Avg. Working Days:</span>
                            <span class="fw-bold text-success">22 Days</span>
                        </div>
                    </div>
                </div>

                <button type="button" class="btn btn-navy btn-sm w-100" data-demo-action="Weekly off policy saved successfully!">
                    <i class="bi bi-check-lg me-1"></i> Save Weekly Off Policy
                </button>
            </div>
        </div>
    </div>

    <!-- MODAL: ADD HOLIDAY -->
    <div class="modal fade" id="addHolidayModal" tabindex="-1" aria-labelledby="addHolLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="addHolLabel">
                        <i class="bi bi-calendar-plus text-primary me-2"></i> Add Company Holiday
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label-custom">Holiday Name *</label>
                        <input type="text" class="form-control form-control-custom" placeholder="e.g. New Year's Day" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Holiday Date *</label>
                        <input type="date" class="form-control form-control-custom" value="2026-11-08" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Classification</label>
                        <select class="form-select form-select-custom">
                            <option>National Mandatory Holiday</option>
                            <option>Gazetted Festival Holiday</option>
                            <option>Restricted / Optional Holiday</option>
                            <option>Company Special Foundation Day</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Description</label>
                        <textarea class="form-control form-control-custom" rows="2" placeholder="Optional notes for payroll or notice board..."></textarea>
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="New holiday added to 2026 calendar.">Save Holiday</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL: EDIT HOLIDAY -->
    <div class="modal fade" id="editHolidayModal" tabindex="-1" aria-labelledby="editHolLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content modal-content-theme">
                <div class="modal-header modal-header-theme">
                    <h5 class="modal-title fw-bold text-navy" id="editHolLabel">
                        <i class="bi bi-pencil-square text-primary me-2"></i> Edit Holiday Record
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label-custom">Holiday Name</label>
                        <input type="text" class="form-control form-control-custom" value="Diwali (Deepavali)" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label-custom">Holiday Date</label>
                        <input type="date" class="form-control form-control-custom" value="2026-11-08" />
                    </div>
                </div>
                <div class="modal-footer modal-footer-theme">
                    <button type="button" class="btn btn-sm btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-sm btn-navy" data-demo-action="Holiday updated successfully!">Update</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

