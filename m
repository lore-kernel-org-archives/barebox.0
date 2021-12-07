Delivery-date: Tue, 07 Dec 2021 09:55:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWFz-0006wL-Kw
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 09:55:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muVhs-0002Do-G6
	for lore@pengutronix.de; Tue, 07 Dec 2021 09:20:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=55kINNXLT2m3iDVCTQTbzBpWJakTwS7V3dhPNKJ7nP4=; b=Wfqsq6d+tcKehdv00RF0m4Sj+6
	hIZPuZpugY34SFqf/lu5ww8lekSTz6iyiMuJ36wdZssWc+aMfAj1uCmzwaQDjZb/27N+JVVjDbnfK
	uyJhtKK2oBFRZthib/dqnqj5kiI28bVaFyS1au25eB1Y5fCMd467rYOs11rDVeTWFjgWC4dKkeYhb
	iyGvgcFscHAu2LiLQv/IqIqNs/AzGAGEnQEoPeGXWZ0x3KHEP5oMfs6Jv8/YyYZqVF/f6B8IRGi7u
	ziazGcCRyJl8NhY2WvT+gxDbTCf5JmHvrWprPx1y593cBBt+NJeTsHUSUxODdOnULv2lvyHchBnE6
	nFxEGPzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muVgW-007SqY-25; Tue, 07 Dec 2021 08:18:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muVgP-007Soj-BN
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 08:18:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muVgN-00024b-UF; Tue, 07 Dec 2021 09:18:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muVgN-0008Ns-LN; Tue, 07 Dec 2021 09:18:39 +0100
Date: Tue, 7 Dec 2021 09:18:39 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207081839.GD28260@pengutronix.de>
References: <20211203185154.388145-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211203185154.388145-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:52 up 292 days, 11:41, 141 users,  load average: 0.10, 0.13,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_001841_423906_2267F954 
X-CRM114-Status: GOOD (  25.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Revert "ARM: beaglebone: init MPU speed to 800Mhz"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gRnJpLCBEZWMgMDMsIDIwMjEgYXQgMDc6NTE6NTRQTSArMDEwMCwgQWhtYWQgRmF0b3VtIHdy
b3RlOgo+IENvbW1pdCAxMzBjN2Q2NzE1ZTkgKCJBUk06IGJlYWdsZWJvbmU6IGluaXQgTVBVIHNw
ZWVkIHRvIDgwME1oeiIpIGNhdXNlcwo+IHdhcm0gcmVib290IGZyb20gd2l0aGluIExpbnV4IHY1
LjE0LjAgdG8gbm8gbG9uZ2VyIHN1Y2NlZWQuCj4gYmFyZWJveCBNTE8gaXMgZW50ZXJlZCwgYnV0
IGhhbmdzLiBSZXNldCBmcm9tIHdpdGhpbiBiYXJlYm94IGlzCj4gdW5hZmZlY3RlZC4KPiBUaGlz
IGNhbiBiZSByZXByb2R1Y2VkIHVzaW5nIERpc3Ryb0tpdCA5NDljNWVmMmI5YTYgKCJ2N2E6IGJh
cmVib3g6Cj4gdmVyc2lvbiBidW1wIHYyMDIxLjA4LjAg4oaSIHYyMDIxLjExLjAiKSBvbiBhIEJl
YWdsZWJvbmUgQmxhY2suCj4gVW50aWwgdGhhdCdzIGZpZ3VyZWQgb3V0LCByZXZlcnQgdGhlIGNv
bW1pdDsgZnVuY3Rpb25hbCByZWJvb3QgaXMgbW9yZQo+IGltcG9ydGFudCB0aGFuIHRoZSBxdWlj
a2VyIGJvb3QgdXAuCj4gCj4gVGhpcyByZXZlcnRzIGNvbW1pdCAxMzBjN2Q2NzE1ZTkzMmExZTBi
M2UwMjZmZWE5N2Y3MDBhYjMzZWE5Lgo+IAo+IEZpeGVzOiAxMzBjN2Q2NzE1ZTkgKCJBUk06IGJl
YWdsZWJvbmU6IGluaXQgTVBVIHNwZWVkIHRvIDgwME1oeiIpCj4gUmVwb3J0ZWQtYnk6IGFyd2ll
ICMgSVJDCj4gQ2M6IE1hcmMgUmVpbGx5IDxtYXJjQGNwZGVzaWduLmNvbS5hdT4KPiBTaWduZWQt
b2ZmLWJ5OiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBh
cmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9uZS9sb3dsZXZlbC5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5rcwoKU2Fz
Y2hhCgo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9uZS9sb3dsZXZl
bC5jIGIvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZWJvbmUvbG93bGV2ZWwuYwo+IGluZGV4IDMxMjEx
NDQ4ZjVlOC4uOTFkMTQzZTQxNTBiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2JvYXJkcy9iZWFn
bGVib25lL2xvd2xldmVsLmMKPiArKysgYi9hcmNoL2FybS9ib2FyZHMvYmVhZ2xlYm9uZS9sb3ds
ZXZlbC5jCj4gQEAgLTEyNiw3ICsxMjYsNyBAQCBzdGF0aWMgbm9pbmxpbmUgaW50IGJlYWdsZWJv
bmVfc3JhbV9pbml0KHZvaWQpCj4gIAo+ICAJLyogU2V0dXAgdGhlIFBMTHMgYW5kIHRoZSBjbG9j
a3MgZm9yIHRoZSBwZXJpcGhlcmFscyAqLwo+ICAJaWYgKGlzX2JlYWdsZWJvbmVfYmxhY2soKSkg
ewo+IC0JCWFtMzN4eF9wbGxfaW5pdChNUFVQTExfTV84MDAsIEREUlBMTF9NXzQwMCk7Cj4gKwkJ
YW0zM3h4X3BsbF9pbml0KE1QVVBMTF9NXzUwMCwgRERSUExMX01fNDAwKTsKPiAgCQlhbTMzNXhf
c2RyYW1faW5pdCgweDE4QiwgJmRkcjNfY21kX2N0cmwsICZkZHIzX3JlZ3MsCj4gIAkJCQkmZGRy
M19kYXRhKTsKPiAgCX0gZWxzZSB7Cj4gLS0gCj4gMi4zMC4yCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJlYm94IG1haWxpbmcgbGlz
dAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVl
cndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8
IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhS
QSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

