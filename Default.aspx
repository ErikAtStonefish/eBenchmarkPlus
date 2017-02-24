<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/Site.master" %>

<asp:Content ID="defaultMainContent" ContentPlaceHolderID="MainContent" runat="server">      

    <h2>Benchmarking</h2>

    <div class="row">
        <div class="col-md-12">
            <p>
                eBenchmarkPlus was created to address and assist commercial companies, colleges and universities as well as others to meet
                the new 2017 Los Angeles Energy Disclosure Law and CA AB 802 which both mandate Energy Benchmarking, Audits and Retro-commissioning.
            </p>
        </div>
    </div>

    <hr />

    <h2>Metering & Verification</h2>

    <div class="row">
        <div class="col-md-12">
            <p>
                eBenchmarkPlus also specializes in Metering and Verification (M&V), Sub-metering of electric, water and natural gas, and electrical testing.
            </p>
        </div>
    </div>

    <hr />

    <h2>Learn more about Benchmarking</h2>

    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
            <div>
                <ul id="learnMore" class="nav nav-tabs" role="tablist">
                    <li class="nav-item"><a href="#lacity" data-toggle="tab" class="nav-link active" role="tab">Los Angeles</a></li>
                    <li class="nav-item"><a href="#labbc" data-toggle="tab" class="nav-link" role="tab">L A B B C</a></li>
                    <li class="nav-item"><a href="#california" data-toggle="tab" class="nav-link" role="tab">California</a></li>
                </ul>
            </div>

            <div class="tab-content">
                <div id="lacity" class="tab-pane active" role="tabpanel">
                    <div class="jumbotron">
                        <div class="thumbnail">
                            <img src="Images/City of LA Logo_trans.png" alt="CityOfLA_Logo" />
                            <div class="caption">
                                <h3>Los Angeles Ordinance No. 184674</h3>
                                <p>ARTICLE 1, DIVISION 97 EXISTING BUILDINGS ENERGY AND WATER EFFICIENCY PROGRAM: Link to the Los Angeles ordinance mandating benchmarking.</p>
                                <p><a href="http://clkrep.lacity.org/onlinedocs/2014/14-1478_ORD_184674_12-15-16.pdf" target="_blank" class="btn btn-primary" role="button">Read...</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="labbc" class="tab-pane" role="tabpanel">
                    <div class="jumbotron">
                        <div class="thumbnail">
                            <img src="Images/LABBC.png" alt="LABBC_Logo" />
                            <div class="caption">
                                <h3>City of Los Angeles - LABBC</h3>
                                <p>Your Guide to LA's Benchmarking & Disclosure Ordinance - Final_LA's Benchmarking & Disclosure Ordinance.</p>
                                <p><a href="https://www.dropbox.com/s/2zusdsua9eql8sz/Final_LA%27s%20Benchmarking%20%26%20Disclosure%20Ordinance.pdf?dl=0" target="_blank" class="btn btn-primary" role="button">Read...</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="california" class="tab-pane" role="tabpanel">
                    <div class="jumbotron">
                        <div class="thumbnail">
                            <img src="Images/CA%20header_img.png" alt="CAState_Logo" />
                            <div class="caption">
                                <h3>State of California</h3>
                                <p>Assembly Bill No. 802</p>
                                <p><a href="http://www.energy.ca.gov/benchmarking/documents/AB_802_chapter_590.pdf" target="_blank" class="btn btn-primary" role="button">Read...</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
