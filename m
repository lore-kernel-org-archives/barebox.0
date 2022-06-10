Delivery-date: Fri, 10 Jun 2022 11:57:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbOH-009sBT-So
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 11:57:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzbOG-0007bL-F8
	for lore@pengutronix.de; Fri, 10 Jun 2022 11:57:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQwTZb+oHLs+IHrcEU+A9VySKaEvFbonX6xxrPh1QJE=; b=TQtrhcETVT5Fmy
	TO6wVR7L9kKqc97SH3zmC+34tGasq6yEeXnlwokivxZ4/E72fL+RGN9wjmZcgpvzk/YPqfOR4Nxg6
	qkVWdlXTKA3Hmd7gqHGtDQzm1nw5C+OWWIjULw4hRdiVi9GT9q4GoZP2RD+bzEmoVkSe6wtsarg7+
	a5eHDHq6YiHPHwck964cRI9nyWK862olpozWkKmd09SlYwmH8W7nddVeKyedrrvpT7RWkQkjjmPd8
	VjBg+arFF/eTPfFttfIFI6qJKwlNgJjrgZSNXE5e34+FehUgDBf97JIn9Cmb5l5b54t6duTS0TxWQ
	2/QCVelHulB0qxxQxgKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbMl-007NSE-Rq; Fri, 10 Jun 2022 09:55:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzbCB-007I9G-Vx
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 09:44:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzbCA-00055O-Aa; Fri, 10 Jun 2022 11:44:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzbCA-00057m-1R; Fri, 10 Jun 2022 11:44:46 +0200
Date: Fri, 10 Jun 2022 11:44:46 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220610094446.GN1615@pengutronix.de>
References: <20220610085633.21606-1-eagle.alexander923@gmail.com>
 <20220610093513.GL1615@pengutronix.de>
 <CAP1tNvR5o5GnKzkALRHd5BbR=mewE0u34xEMaVnj=ix2CEryGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP1tNvR5o5GnKzkALRHd5BbR=mewE0u34xEMaVnj=ix2CEryGA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_024448_062901_3FCFF3E9 
X-CRM114-Status: GOOD (  19.03  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC 1/2] clocksource: Introduce a context storage for the
 clocksource structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBKdW4gMTAsIDIwMjIgYXQgMTI6NDI6NThQTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiDQv9GCLCAxMCDQuNGO0L0uIDIwMjIg0LMuINCyIDEyOjM1LCBTYXNjaGEgSGF1
ZXIgPHNoYUBwZW5ndXRyb25peC5kZT46Cj4gPgo+ID4gT24gRnJpLCBKdW4gMTAsIDIwMjIgYXQg
MTE6NTY6MzFBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+ID4gVGhpcyBwYXRj
aCBhZGRzIGEgY29udGV4dCBlbnRyeSBmb3IgdGhlIGNsb2Nrc291cmNlIHN0cnVjdHVyZS4KPiA+
ID4gVGhpcyBmaWVsZCBjYW4gYmUgdXNlZCB0byBzdG9yZSBhbnkgcHJpdmF0ZSBkcml2ZXIgZGF0
YSwgYW5kIHRvCj4gPiA+IGRpc3Rpbmd1aXNoIGJldHdlZW4gbXVsdGlwbGUgZHJpdmVyIGluc3Rh
bmNlcyBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLgo+ID4KPiA+IFlvdSBjb3VsZCBlbWJlZCBzdHJ1
Y3QgY2xvY2tzb3VyY2UgaW4gYSBwcml2YXRlIHN0cnVjdCBhbmQgdXNlCj4gPiBjb250YWluZXJf
b2YoKSB0byBnZXQgdGhhdCBmcm9tIHRoZSBzdHJ1Y3QgY2xvY2tzb3VyY2UgKi4KPiAKPiBPaCBz
dXJlLiBCdXQgZXZlbiBpbiB0aGlzIGNhc2UsIHdlIG5lZWQgdG8gcGFzcyB0aGUgcG9pbnRlciBv
ZiB0aGUKPiBjbG9ja3NvdXJjZSBzdHJ1Y3R1cmUgdG8gdGhlIHJlYWQoKSBmdW5jdGlvbi4KCklu
ZGVlZC4gSSBkaWRuJ3Qgbm90aWNlIHRoaXMgY2hhbmdlIGluIHlvdXIgcGF0Y2guIFRoYXQgcGFy
dCB3b3VsZCBiZQp1c2VmdWwKClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndh
bGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9u
aXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBo
b25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAy
Njg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

