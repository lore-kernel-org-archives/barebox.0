Delivery-date: Thu, 12 Mar 2026 12:36:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eKu-00Ao0g-0I
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 12:36:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0eKu-0005wl-Bx
	for lore@pengutronix.de; Thu, 12 Mar 2026 12:36:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OxN08AeY+iFiBG95J90CqCOl+dutAQKX5gictUf0skA=; b=D8kYBhj4mNvmH1mqWbxaknIjge
	KUAX7M5uYzNm+CMw+Oj0BL23WIPkY72h52FWf2sSk2dGmQTnsndGocCjguFQBjVF4lw6BtqC+JX1u
	rnXHROzZID/IU3OBVe2swh/nMJKuZ5kdvNJPtsJpltYjME1EkdIX/t61N5uj/Eex2nHQChkqdmQ+c
	y1CfpF9qI6qF920VrS3F3IcvnUxpdq0iab1/AkcP6/AV56InrIaOP0VXbdR+wMOEEfNugt/GhbZuA
	J/lKTeoop9uPVh2/ezm2hBoCeM+51tB4RrsrjyEewu7ntaf4SKcj4RPutXX/6Bs6g58/ddzWLrk7F
	msa2TWDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eKV-0000000Dy8O-23TO;
	Thu, 12 Mar 2026 11:35:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eKT-0000000Dy7V-3AuH
	for barebox@bombadil.infradead.org;
	Thu, 12 Mar 2026 11:35:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OxN08AeY+iFiBG95J90CqCOl+dutAQKX5gictUf0skA=; b=Lu+l+DYB0DGt+9thsHf9osIC35
	RJgVNbMZ/iGb8oDwRqA5gaTqrAC1TObjlQCA1pMRUundd47KU63v8VXA5BdZjRP+E6BGTdZju0F99
	fMA/f3cRXuLLgcxmhaVOfyeftHOHbJb8TkGgjZORJQRoI468krhR+/nZZMuYe99yzkiYzmW6vES5e
	9lfbtKDQNq9/f7d6ReZnmPdsnWizaiSCsu1LHtvMEXWKn8/lZN2MP6N7uCRjWzI8ASN0e5oAWmZuC
	0VeMVisOUCyyFBwYOgVPxTG2Hu2jQBANxbHmg/Kb04umZ9/nQuhYgtQ7KQXtki6cCaeap4NA3mAA1
	gce4/DEg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eKQ-0000000122C-1fuz
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 11:35:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0eKP-0005p1-Ux; Thu, 12 Mar 2026 12:35:45 +0100
Message-ID: <72112a498a5384c80a556b364ce63885e1fe7a8e.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Mar 2026 12:35:45 +0100
In-Reply-To: <20260312-v2026-01-0-topic-tqma8mpxs-v3-0-3a3fb245ce8d@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v3-0-3a3fb245ce8d@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_113546_493263_7D19DA1D 
X-CRM114-Status: GOOD (  14.22  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/2] ARM: boards: add support for tqma8mpxs boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

VGhpcyBoYXMgYmVlbiBtYWRlIG9ic29sZXRlIGJ5IHY0LiBTb3JyeSBmb3IgdGhlIG5vaXNlLgoK
T24gVGh1LCAyMDI2LTAzLTEyIGF0IDExOjM2ICswMTAwLCBGYWJpYW4gUGZsdWcgd3JvdGU6Cj4g
RXh0ZW5kaW5nIHRoZSBUUU1BOE1QeEwgYm9hcmQgY29kZSB3aXRoIHN1cHBvcnQgZm9yIFRRTUE4
TVB4UywgYXMgdGhleQo+IHNoYXJlIHRoZSBzYW1lIHByb2Nlc3NvciBhbmQgYSBsb3Qgb2YgdGhl
IHNhbWUgY29kZWJhc2lzLCBidXQgZGlmZmVyIGluCj4gc21hbGwgY2hhbmdlcy4KPiAKPiBCb3Ro
IG5vdyBoYXZlIHN1cHBvcnQgZm9yIHRoZSBkaWZmZXJlbnQgUkFNIGNvbmZpZ3VyYXRpb25zLCBi
dXQgbm8gRUNDCj4gc3VwcG9ydCB5ZXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRmFiaWFuIFBmbHVn
IDxmLnBmbHVnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IENoYW5nZXMgaW4gdjM6Cj4gLSBhcHBl
bmQgIi11cHN0cmVhbSIgdG8gZHRzIGZyb20gdXBzdHJlYW0sIHdoaWNoIGFyZSBub3QgeWV0IGlu
IGxpbnV4Lgo+IC0gc3F1YXNoZWQgY29tbWl0cyAxIGFuZCAyIHRvIGhhdmUgdGhlIHVwc3RyZWFt
IGR0cyBpbiB0aGUgc2FtZSBjb21taXQKPiDCoCBhcyB0aGUgYm9hcmQgY2hhbmdlcy4KPiAtIExp
bmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5iYXJlYm94Lm9yZy9iYXJlYm94LzIwMjYwMzA2LXYyMDI2
LTAxLTAtdG9waWMtdHFtYThtcHhzLXYyLTAtMGFjYzgxN2U1ZmU0QHBlbmd1dHJvbml4LmRlCj4g
Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIE1vdmVkIGR0cyB0byBhcmNoL2FybS9kdHMsIHNpbmNlIHRo
ZXkgYXJlIG5vdCB1cHN0cmVhbS4gKHRoYW5rcyBBaG1hZCkKPiAtIExpbmsgdG8gdjE6IGh0dHBz
Oi8vbG9yZS5iYXJlYm94Lm9yZy9iYXJlYm94LzIwMjYwMjEzLXYyMDI2LTAxLTAtdG9waWMtdHFt
YThtcHhzLXYxLTAtNDRmMmNjMDdjZmVmQHBlbmd1dHJvbml4LmRlCj4gCj4gLS0tCj4gRmFiaWFu
IFBmbHVnICgyKToKPiDCoMKgwqDCoMKgIEFSTTogYm9hcmRzOiB0cW1hOG1weGw6IGV4dGVuZCB3
aXRoIHN1cHBvcnQgZm9yIHhzCj4gwqDCoMKgwqDCoCBBUk06IGJvYXJkczogdHFtYThtcHh4OiBh
ZGQgbm9fZWNjIHJhbSB0aW1pbmdzCj4gCj4gwqBEb2N1bWVudGF0aW9uL21pZ3JhdGlvbi1ndWlk
ZXMvbWlncmF0aW9uLW1hc3Rlci5tZCB8wqDCoCAxMCArCj4gwqBhcmNoL2FybS9ib2FyZHMvTWFr
ZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgwqAgMiArLQo+IMKgYXJjaC9hcm0vYm9hcmRzL3RxbWE4bXB4bC9sb3dsZXZlbC5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTEzIC0tCj4gwqBhcmNoL2FybS9ib2FyZHMv
e3RxbWE4bXB4bCA9PiB0cW1hOG1weHh9L01ha2VmaWxlwqAgfMKgwqDCoCAwCj4gwqBhcmNoL2Fy
bS9ib2FyZHMve3RxbWE4bXB4bCA9PiB0cW1hOG1weHh9L2JvYXJkLmPCoMKgIHzCoMKgIDE3ICst
Cj4gwqAuLi4vZmxhc2gtaGVhZGVyLXRxbWE4bXB4eC5pbXhjZmd9wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAwCj4gwqBhcmNoL2FybS9ib2FyZHMvdHFtYThtcHh4L2xv
d2xldmVsLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxOTYgKysrKwo+IMKgLi4u
L3t0cW1hOG1weGwgPT4gdHFtYThtcHh4fS9scGRkcjQtdGltaW5nLmPCoMKgwqDCoMKgwqAgfMKg
IDc2MyArKysrKysrKysrKysrLQo+IMKgYXJjaC9hcm0vY29uZmlncy9pbXhfdjhfZGVmY29uZmln
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDIgKy0KPiDCoGFyY2gv
YXJtL2NvbmZpZ3MvbXVsdGlfdjhfZGVmY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgwqAgMiArLQo+IMKgYXJjaC9hcm0vZHRzL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDIgKy0K
PiDCoC4uLi9kdHMvaW14OG1wLXRxbWE4bXBxcy1tYi1zbWFyYy0yLXVwc3RyZWFtLmR0c8KgwqAg
fMKgIDQwMiArKysrKysrKwo+IMKgYXJjaC9hcm0vZHRzL2lteDhtcC10cW1hOG1wcXMtbWJhOG1w
eHMuZHRzwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxNSArCj4gwqBhcmNoL2FybS9kdHMvaW14OG1w
LXRxbWE4bXBxcy11cHN0cmVhbS5kdHNpwqDCoMKgwqDCoMKgwqAgfCAxMDc1ICsrKysrKysrKysr
KysrKysrKysrCj4gwqBhcmNoL2FybS9tYWNoLWlteC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCA1ICstCj4gwqBpbWFnZXMv
TWFrZWZpbGUuaW14wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAyICstCj4gwqAxNiBmaWxlcyBjaGFuZ2VkLCAyNDY1
IGluc2VydGlvbnMoKyksIDE0MSBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogMDAy
NDkyMTM2NGViNGM4YmM4MDg5ZmRjMTk4NDQwYjBkNjdhMjM5Zgo+IGNoYW5nZS1pZDogMjAyNjAy
MTMtdjIwMjYtMDEtMC10b3BpYy10cW1hOG1weHMtYmYzMmExYTNlY2I1Cj4gCj4gQmVzdCByZWdh
cmRzLAo=



