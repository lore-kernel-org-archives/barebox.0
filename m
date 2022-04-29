Delivery-date: Fri, 29 Apr 2022 06:54:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkIee-001dJ3-E7
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 06:54:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkIeb-0000ku-Q3
	for lore@pengutronix.de; Fri, 29 Apr 2022 06:54:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHUyEXb9DIMd3NvidDibFKs1n5XsHR0+KAksQbaZ5mU=; b=kYDW5CC6ikmpfS
	fu/5KV9Pb8A/Eo8Mcv/Un1jHTwecnKkwzRmdRk498HmxWMSiRO8BuQI5cpAr00vd/nj9C43H4AaAE
	wmPJ9kmM/7yFZv5/6y5yv/jZbVg2dT2PkMgshy0Yf0iAMyaePFaw/MaIVOrhqZdF5RrkKbfw6sK66
	ugiVeN7sFdELUtkLQV1c7qwy/eb7SiL2UTxvrTi/rcKEBs+/yMmhxSGbjFWqYHgExabKESJ0etFJk
	j8kFv6d5xb+7phP3in+ZRsR/3FERohJFIkpJoPql3KB50gBHk+eWzd5CYt0mf5sFVjMS+tSZYwiBl
	oG/OtZlx+IhciqlUVV9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkIct-009XxB-Vs; Fri, 29 Apr 2022 04:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkIco-009Xuo-Tv
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 04:53:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nkIci-0000g6-Hv; Fri, 29 Apr 2022 06:52:56 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nkIci-0003W6-9A; Fri, 29 Apr 2022 06:52:56 +0200
Date: Fri, 29 Apr 2022 06:52:56 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220429045256.GA11450@pengutronix.de>
References: <20220427121413.1887458-1-o.rempel@pengutronix.de>
 <20220427121413.1887458-2-o.rempel@pengutronix.de>
 <6rzgk5fitn.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6rzgk5fitn.fsf@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:52:07 up 29 days, 17:21, 58 users,  load average: 0.14, 0.11, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_215303_018313_B2D5ED31 
X-CRM114-Status: GOOD (  27.30  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/5] common: add $global.serial_number with device
 tree fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgVWxyaWNoLAoKT24gVGh1LCBBcHIgMjgsIDIwMjIgYXQgMDM6MTY6MDVQTSArMDIwMCwgVWxy
aWNoIMOWbG1hbm4gd3JvdGU6Cj4gSGkgT2xla3NpaiwKPiAKPiBPbiBXZWQsIEFwciAyNyAyMDIy
IGF0IDE0OjE0ICswMjAwLCBPbGVrc2lqIFJlbXBlbCA8by5yZW1wZWxAcGVuZ3V0cm9uaXguZGU+
IHdyb3RlOgo+ID4gRnJvbTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4K
PiA+Cj4gPiBUaGlzIG5ldyB2YXJpYWJsZSBjYW4gYmUgc2V0IGJ5IGJvYXJkcyBmcm9tIEMgY29k
ZSBvciBmcm9tIHRoZQo+ID4gZW52aXJvbm1lbnQgdG8gY2hhbmdlIHRoZSBzZXJpYWwgbnVtYmVy
IGZpeGVkIHVwIGludG8gdGhlIGtlcm5lbCBkZXZpY2UKPiA+IHRyZWUuCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IE9sZWtzaWogUmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5kZT4KPiA+IC0t
LQo+ID4gIGNvbW1vbi9LY29uZmlnICAgfCAgNSArKysrKwo+ID4gIGNvbW1vbi9taXNjLmMgICAg
fCAxNiArKysrKysrKysrKysrKysrCj4gPiAgY29tbW9uL29mdHJlZS5jICB8ICA5ICsrKysrKysr
Kwo+ID4gIGluY2x1ZGUvY29tbW9uLmggfCAgMyArKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDMz
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvY29tbW9uL0tjb25maWcgYi9jb21t
b24vS2NvbmZpZwo+ID4gaW5kZXggZjdhNmE5NmU4Ny4uZDA4MzAyYTU3MyAxMDA2NDQKPiA+IC0t
LSBhL2NvbW1vbi9LY29uZmlnCj4gPiArKysgYi9jb21tb24vS2NvbmZpZwo+ID4gQEAgLTEwNjYs
NiArMTA2NiwxMSBAQCBjb25maWcgTUFDSElORV9JRAo+ID4gIAkgIE5vdGU6IGlmIG5vIGhhc2hh
YmxlIGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZSBubyBtYWNoaW5lIGlkIHdpbGwgYmUgcGFzc2Vk
Cj4gPiAgCSAgdG8gdGhlIGtlcm5lbC4KPiA+ICAKPiA+ICtjb25maWcgU0VSSUFMX05VTUJFUl9G
SVhVUAo+ID4gKwlib29sICJmaXggdXAgYm9hcmQgc2VyaWFsIG51bWJlciIKPiA+ICsJaGVscAo+
ID4gKwkgIGZpeHVwIHNlcmlhbCBudW1iZXIgc3VwcGxpZWQgYnkgYm9hcmQgY29kZSBpbmZvIGRl
dmljZSB0cmVlCj4gCj4gdGhpcyBzaG91bGQgYmUKPiAKPiAgIHMvY29kZSBpbmZvIGRldmljZS9j
b2RlIGludG8gZGV2aWNlLwo+IAo+IHJpZ2h0PwoKUmlnaHQuIFRoYW5rIHlvdSEKClJlZ2FyZHMs
Ck9sZWtzaWoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==

