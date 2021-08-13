Delivery-date: Fri, 13 Aug 2021 22:22:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEdhE-0002x6-Rf
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 22:22:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEdhA-0001ro-Kx
	for lore@pengutronix.de; Fri, 13 Aug 2021 22:22:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhwmqWDX7eyMbAJClw+TO6B5K+if9ry6a2bSXZscNfM=; b=BwA8DgvEixuUh3
	XtgsdJk4BCHRsYa8wBcDwiL4rqVJPiZkTOz9mCKLIiWBZbLmkn7HLFnPoMeWc6DK0wFQMqKJJO3Iw
	dECwILvrDOldlA/WJ1ipCAVIH/m0MZ3Hz/Wg5ZgbjmynfnCe9VigjnypAwpSpwlVU+n0OZtaarvkD
	0/AyL3uaohW1qC099JIL+Oa7sCHv5//3RCiMYpkLmLW9Ps7XR5J2ZspcBYP9EhBqEtrK84Ggnl2FN
	AnPjXUrXt1QNAUEevCUhO3GYd04JclKIIMOFmC7nlrPNpflMCj04PUJgReaK1V8NLDk1Onc57/l63
	hcuTGte9WiCHlj2dG/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEdfQ-00DY43-Bl; Fri, 13 Aug 2021 20:20:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEdfL-00DY3Z-Hx
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 20:20:33 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mEdfH-0001f3-Qp; Fri, 13 Aug 2021 22:20:27 +0200
Message-ID: <d4c6f3b9bf69d4a220e9f2dc7a266eb98226398d.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=
 <u.kleine-koenig@pengutronix.de>, barebox@lists.infradead.org, Rouven
 Czerwinski <rcz@pengutronix.de>
Date: Fri, 13 Aug 2021 22:20:27 +0200
In-Reply-To: <af0950b3-33fc-b36a-ad70-055e9af7acf2@pengutronix.de>
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
 <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
 <af0950b3-33fc-b36a-ad70-055e9af7acf2@pengutronix.de>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_132031_643991_50CE1745 
X-CRM114-Status: GOOD (  25.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] imx8mp-evk: Add support for booting via USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRnJlaXRhZywgZGVtIDEzLjA4LjIwMjEgdW0gMjE6MjYgKzAyMDAgc2NocmllYiBBaG1hZCBG
YXRvdW06Cj4gT24gMTMuMDguMjEgMTc6MjIsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IAo+
IFMtby1iIG1pc3NpbmcuCj4gCj4gPiAtLS0KPiA+ICBhcmNoL2FybS9ib2FyZHMvbnhwLWlteDht
cC1ldmsvbG93bGV2ZWwuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgYXJjaC9h
cm0vbWFjaC1pbXgvYm9vdC5jICAgICAgICAgICAgICAgICAgfCAgNCArKystCj4gPiAgaW5jbHVk
ZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oICAgICAgICAgICAgfCAgMSArCj4gPiAgMyBmaWxlcyBj
aGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib2FyZHMvbnhwLWlteDhtcC1ldmsvbG93bGV2ZWwuYyBiL2FyY2gvYXJt
L2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jCj4gPiBpbmRleCAzMjk4ZGVkNTg2NmQu
LjFmYjc4OTkxOThkNiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2JvYXJkcy9ueHAtaW14OG1w
LWV2ay9sb3dsZXZlbC5jCj4gPiArKysgYi9hcmNoL2FybS9ib2FyZHMvbnhwLWlteDhtcC1ldmsv
bG93bGV2ZWwuYwo+ID4gQEAgLTk5LDYgKzk5LDMwIEBAIHN0YXRpYyBpbnQgcG93ZXJfaW5pdF9i
b2FyZCh2b2lkKQo+ID4gIAlyZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiArLyogcmVhZCBwaWdn
eWRhdGEgdmlhIGEgYm9vdHJvbSBjYWxsYmFjayBhbmQgcGxhY2UgaXQgYmVoaW5kIG91ciBjb3B5
IGluIFNEUkFNICovCj4gPiArc3RhdGljIGludCBpbXg4bV9ib290cm9tX2xvYWRfaW1hZ2Uodm9p
ZCkKPiA+ICt7Cj4gPiArCWludCAoKmRvd25sb2FkX2ltYWdlKSh1OCAqZGVzdCwgdTMyIG9mZnNl
dCwgdTMyIHNpemUsIHUzMiB4b3IpID0gKih2b2lkICoqKTB4OTg4Owo+IAo+IFdvdWxkIGJlIG5p
Y2UgdG8gaGF2ZSB0aGlzIGluIGEgaGVhZGVyLCBlLmcuCj4gCj4gZXh0ZXJuIHN0cnVjdCBpbXg4
bXBfYm9vdHJvbV9vcHMgewo+IAkvKiAuLi4gKi8KPiAJaW50ICgqZG93bmxvYWRfaW1hZ2UpKHU4
ICpkZXN0LCB1MzIgb2Zmc2V0LCB1MzIgc2l6ZSwgdTMyIHhvcik7Cj4gfSAqaW14OG1wX2Jvb3Ry
b21fb3BzID0gKHZvaWQgKikweDk4ODsKPiAKPiA+ICsJc2l6ZV90IGNvdW50ID0gX19waWdneWRh
dGFfZW5kIC0gX19waWdneWRhdGFfc3RhcnQ7Cj4gPiArCWNoYXIgKnAgPSAoY2hhciAqKU1YOE1f
QVRGX0JMMzNfQkFTRV9BRERSICsgKF9fcGlnZ3lkYXRhX3N0YXJ0IC0gX19pbWFnZV9zdGFydCk7
Cj4gPiArCj4gPiArCXdoaWxlIChjb3VudCkgewo+ID4gKwkJc2l6ZV90IGNodW5rc2l6ZSA9IG1p
bihjb3VudCwgKHNpemVfdCkxMDI0KTsKPiA+ICsJCWludCByZXQ7Cj4gPiArCj4gPiArCQlyZXQg
PSBkb3dubG9hZF9pbWFnZShwLCAwLCBjaHVua3NpemUsICh1aW50cHRyX3QpcCBeIGNodW5rc2l6
ZSk7Cj4gPiArCQlpZiAocmV0ICE9IDB4ZjApIHsKPiA+ICsJCQlwcl9lcnIoIkZhaWxlZCB0byBs
b2FkIHBpZ2d5IGRhdGEgKHJldCA9ICV4KVxuIiwgcmV0KTsKPiA+ICsJCQlyZXR1cm4gLUVJTzsK
PiA+ICsJCX0KPiA+ICsKPiA+ICsJCXAgKz0gY2h1bmtzaXplOwo+ID4gKwkJY291bnQgLT0gY2h1
bmtzaXplOwo+ID4gKwl9Cj4gPiArCj4gPiArCXJldHVybiAwOwo+ID4gK30KPiA+ICsKVGhpcyBz
aG91bGRuJ3QgYmUgaW4gYm9hcmQgY29kZSwgYnV0IGluIHNvbWUgbG9jYXRpb24gd2hlcmUgaXQg
aXMKcmV1c2FibGUgYnkgb3RoZXIgaS5NWDhNUCBib2FyZHMuCgo+ID4gIGV4dGVybiBzdHJ1Y3Qg
ZHJhbV90aW1pbmdfaW5mbyBpbXg4bXBfZXZrX2RyYW1fdGltaW5nOwo+ID4gIAo+ID4gIHN0YXRp
YyB2b2lkIHN0YXJ0X2F0Zih2b2lkKQo+ID4gQEAgLTEyNSw2ICsxNDksOSBAQCBzdGF0aWMgdm9p
ZCBzdGFydF9hdGYodm9pZCkKPiA+ICAJY2FzZSBCT09UU09VUkNFX01NQzoKPiA+ICAJCWlteDht
cF9lc2RoY19sb2FkX2ltYWdlKGluc3RhbmNlLCBmYWxzZSk7Cj4gPiAgCQlicmVhazsKPiA+ICsJ
Y2FzZSBCT09UU09VUkNFX1NFUklBTDoKPiA+ICsJCWlteDhtX2Jvb3Ryb21fbG9hZF9pbWFnZSgp
Owo+ID4gKwkJYnJlYWs7Cj4gPiAgCWRlZmF1bHQ6Cj4gPiAgCQlwcmludGYoIlVuaGFuZGxlZCBi
b290c291cmNlIEJPT1RTT1VSQ0VfJWRcbiIsIHNyYyk7Cj4gPiAgCQloYW5nKCk7Cj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvYm9vdC5jIGIvYXJjaC9hcm0vbWFjaC1pbXgvYm9v
dC5jCj4gPiBpbmRleCAyYjY2YmJmNzFlYjEuLjdjMWQ0OTI5MTA0NSAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+ID4gKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvYm9v
dC5jCj4gPiBAQCAtNDk1LDEwICs0OTUsMTIgQEAgc3RhdGljIHZvaWQgX19pbXg3X2dldF9ib290
X3NvdXJjZShlbnVtIGJvb3Rzb3VyY2UgKnNyYywgaW50ICppbnN0YW5jZSwKPiA+ICAJY2FzZSA1
Ogo+ID4gIAkJKnNyYyA9IEJPT1RTT1VSQ0VfTk9SOwo+ID4gIAkJYnJlYWs7Cj4gPiAtCWNhc2Ug
MTU6Cj4gPiArCWNhc2UgMTQ6IC8qIG9ic2VydmVkIG9uIGkuTVg4TVAgZm9yIFVTQiAic2VyaWFs
IiBib290aW5nICovCj4gPiArCWNhc2UgMTU6IC8qIG9ic2VydmVkIG9uIGkuTVg4TU0gZm9yIFVT
QiAic2VyaWFsIiBib290aW5nICovCj4gPiAgCQkqc3JjID0gQk9PVFNPVVJDRV9TRVJJQUw7Cj4g
PiAgCQlicmVhazsKPiA+ICAJZGVmYXVsdDoKPiA+ICsJCSpzcmMgPSBCT09UU09VUkNFX1VOS05P
V047Cj4gPiAgCQlicmVhazsKPiA+ICAJfQo+ID4gIH0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2FzbS1nZW5lcmljL3NlY3Rpb25zLmggYi9pbmNsdWRlL2FzbS1nZW5lcmljL3NlY3Rpb25zLmgK
PiA+IGluZGV4IDg3MGJmZjIxZjY2OC4uNTk3YzQ5NTFlYTVlIDEwMDY0NAo+ID4gLS0tIGEvaW5j
bHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4gPiArKysgYi9pbmNsdWRlL2FzbS1nZW5lcmlj
L3NlY3Rpb25zLmgKPiA+IEBAIC05LDYgKzksNyBAQCBleHRlcm4gY2hhciBfZW5kW107Cj4gPiAg
ZXh0ZXJuIGNoYXIgX19pbWFnZV9zdGFydFtdOwo+ID4gIGV4dGVybiBjaGFyIF9faW1hZ2VfZW5k
W107Cj4gPiAgZXh0ZXJuIGNoYXIgX19waWdneWRhdGFfc3RhcnRbXTsKPiA+ICtleHRlcm4gY2hh
ciBfX3BpZ2d5ZGF0YV9lbmRbXTsKPiAKPiBPdGhlciBjb2RlIG5vcm1hbGx5IHVzZXMgX19pbWFn
ZV9lbmQsIGJ1dCBpdCBzZWVtcyBfX3BpZ2d5ZGF0YV9lbmQgc2hvdWxkIGJlCj4gZXF1YWwgdG8g
aXQuIEknZCBwcmVmZXIgX19pbWFnZV9lbmQsIGJlY2F1c2UgY29uY2VwdHVhbGx5LCB5b3Ugd2Fu
dCB0byBjb3B5Cj4gb2ZmIHRoZSByZXN0IG9mIHRoZSBpbWFnZSAod2hpY2ggaGFwcGVucyB0byBi
ZSBqdXN0IHRoZSBwaWdneSBkYXRhKQo+IAo+IEBSb3V2ZW4sIFRoZSBzaGEgc3VtIGlzIGF0IHRo
ZSBlbmQgb2YgdGhlIGltYWdlLCByaWdodD8KPiBXb3VsZCB0aGlzIGJlIGluY2x1ZGVkIHRoaXMg
d2F5PwoKVGhlIGNoZWNrc3VtIGlzIGJ1aWx0IGludG8gdGhlIFBCTCwgYXMgaXQgaXMgdXNlZCB0
byBhdXRoZW50aWNhdGUgdGhlCnBpZ2d5ZGF0YSwgYXMgdGhlIEJvb3RST00gd2lsbCBvbmx5IGF1
dGhlbnRpY2F0ZSB0aGUgaW5pdGlhbCBsb2FkZWQKcGFydCBvZiB0aGUgaW1hZ2UsIGkuZS4gdGhl
IFBCTC4KClJlZ2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=

