Delivery-date: Mon, 03 Jan 2022 17:52:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4QZL-00A1hY-96
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 17:52:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4QZJ-0003hx-W7
	for lore@pengutronix.de; Mon, 03 Jan 2022 17:52:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ac1CLL4lRX0SjXdynzfGawgow5zu6Lku9U+rEUh+pgs=; b=xRs1MgDbhjoCZ2
	fHhmoqUb2AOquKqYYHgCKMKgUZD2uwXvMc8eSvIakEArVqWpiQE/CMEA4W5vs2GhsoG39Ito/giuV
	clY5sZrTSZMS4c9OM0dVSnvXKGpVEh5GS4lNfqzLgMRmTO1QaV0Xr9tLjw7oRWa170XYjTnRvihom
	r4m2UKGWxDs3fKbS1VNuijU9+lJDmhrdD1x2P8taFT1WuPLuKgU2ZvKgvp9sXFwYp5u0clm+RY0jN
	8hk8Dy+bZgh5wf2bT6WdQifKDdeg7UqiYOysH0+69itiUpERoGJ0ny3L14VFcOme+5p/If/YzuQf+
	xjT382wuHUUQEch8Ad7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4QXn-009YKW-7s; Mon, 03 Jan 2022 16:50:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4QXh-009YJ4-Mr
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 16:50:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1n4QXf-0003Xi-VP; Mon, 03 Jan 2022 17:50:39 +0100
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1n4QXf-0007lA-Ma; Mon, 03 Jan 2022 17:50:39 +0100
Date: Mon, 3 Jan 2022 17:50:39 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220103165039.p5cqln44got6ybrg@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
 <20220103120539.1730644-12-a.fatoum@pengutronix.de>
 <20220103122053.ry32inulqtx2wwsj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103122053.ry32inulqtx2wwsj@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_085041_770776_8C81049E 
X-CRM114-Status: GOOD (  16.58  )
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
Subject: Re: [PATCH 11/11] treewide: add SPDX-License-Identifier for files
 without explicit license
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gTW9uLCBKYW4gMDMsIDIwMjIgYXQgMDE6MjA6NTNQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gTW9uLCBKYW4gMDMsIDIwMjIgYXQgMDE6MDU6MzlQTSArMDEwMCwgQWht
YWQgRmF0b3VtIHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL3Rvb2xzL2dlbi1tYWNo
LXR5cGVzIGIvYXJjaC9hcm0vdG9vbHMvZ2VuLW1hY2gtdHlwZXMKPiA+IGluZGV4IDA0ZmVmNzFk
N2JlOS4uZmNmYzBlZDE5MmUxIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vdG9vbHMvZ2VuLW1h
Y2gtdHlwZXMKPiA+ICsrKyBiL2FyY2gvYXJtL3Rvb2xzL2dlbi1tYWNoLXR5cGVzCj4gPiBAQCAt
MSw1ICsxLDcgQEAKPiA+ICAjIS9iaW4vYXdrCj4gPiAgIwo+ID4gKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ID4gKyMKPiAKPiBJIHdvdWxkIHByZWZlciB0byBoYXZl
IHRoZSBsaWNlbnNlIGlkZW50aWZpZXIgaW4gdGhlIDJuZCBsaW5lLiBOb3Qgc3VyZQo+IHdoYXQg
dGhlIHN0YW5kYXJkIHRlbGxzLCBidXQgSVNUUiB0aGF0IGluIExpbnV4IHRoZSBpcyBubyAiZW1w
dHkiIGxpbmUsCj4gdG9vLgoKSSB3YXMgc3R1bWJsaW5nIG92ZXIgdGhpcyBvbmUgdG9vLCBidXQg
dGhlIHN0YW5kYXJkIHNheXMgImF0IG9yIG5lYXIgdGhlCnRvcCBvZiB0aGUgZmlsZSIgWzFdLCBz
byBJIHRoaW5rLCB0aGlzIGlzIG9rYXkuCgpPdGhlcndpc2UgZGlkbid0IG5vdGljZSBhbnl0aGlu
ZyBzdHJhbmdlIHdoaWxlIHNjcm9sbGluZyB0aHJvdWdoIHRoaXMKc2VyaWVzLCBleGNlcHQgYSBm
ZXcgbmV3bGluZSBjaGFuZ2VzIGF0IGVuZHMgb2YgZmlsZXMgaGVyZSBhbmQgdGhlcmUsCmJ1dCBJ
IHRoaW5rIHRob3NlIGFyZSBva2F5IHRvby4KClsxXTogaHR0cHM6Ly9zcGR4LmdpdGh1Yi5pby9z
cGR4LXNwZWMvdXNpbmctU1BEWC1zaG9ydC1pZGVudGlmaWVycy1pbi1zb3VyY2UtZmlsZXMvI2Uy
LWZvcm1hdC1mb3Itc3BkeC1saWNlbnNlLWlkZW50aWZpZXIKCj4gT3RoZXJ3aXNlIHRoYW5rcyBm
b3IgeW91ciBlZmZvcnQsCgpZZXMsIHRoYW5rIHlvdSEKCiAtIFJvbGFuZAoKLS0gClJvbGFuZCBI
aWViZXIsIFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgfCByLmhpZWJlckBwZW5ndXRyb25peC5k
ZSAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgIHwgaHR0cHM6
Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2ICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

