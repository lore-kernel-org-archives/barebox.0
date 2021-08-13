Delivery-date: Fri, 13 Aug 2021 22:50:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEe8e-0003o0-FR
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 22:50:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEe8Z-0004ky-Vs
	for lore@pengutronix.de; Fri, 13 Aug 2021 22:50:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=imUlEupG5yai936ZhvOfj2+gKXY4TYsA5ANWZwQi8g4=; b=FZLWsiYnmmFVY0rjejpVmoSAm7
	RvXOTKsFbwRXkI5cHrJOihK18I5V6MZY7F9iciX9G3RD1AgB2X/9mM9G63Si3Sk6m5eQzyCN3svS0
	kgyfWzP5qZTlIpYrZJG7AgASc2Fm5GkN2Sm6YFtbo7L/hPq6c9awVpZGlhrIY2DLpiimXZut7BU2K
	Ye/UWLYo6prRPZxXWsUL8kLuoZBKnNGniCooiUIvIQeUDCvAZdccN3o40/mqB138AOSm41KOUWBUS
	mEeP/vabJ8rj+9htzgVgWJVa0Hz2nRdOYVQXuxXaXQpHh2uxYBSALhsqoEqIEWf6Zed1jz+Kh/CmF
	LQLb9U3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEe6K-00DZhX-MH; Fri, 13 Aug 2021 20:48:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEe6D-00DZh5-7t
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 20:48:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mEe6B-0004Mw-Ai; Fri, 13 Aug 2021 22:48:15 +0200
To: Lucas Stach <l.stach@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org, Rouven Czerwinski <rcz@pengutronix.de>
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
 <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
 <af0950b3-33fc-b36a-ad70-055e9af7acf2@pengutronix.de>
 <d4c6f3b9bf69d4a220e9f2dc7a266eb98226398d.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <52f51db6-252b-ff94-ec0e-3c79b7785158@pengutronix.de>
Date: Fri, 13 Aug 2021 22:48:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <d4c6f3b9bf69d4a220e9f2dc7a266eb98226398d.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_134817_329012_CFA2A8CD 
X-CRM114-Status: GOOD (  27.76  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] imx8mp-evk: Add support for booting via USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTMuMDguMjEgMjI6MjAsIEx1Y2FzIFN0YWNoIHdyb3RlOgo+IEFtIEZyZWl0YWcsIGRlbSAx
My4wOC4yMDIxIHVtIDIxOjI2ICswMjAwIHNjaHJpZWIgQWhtYWQgRmF0b3VtOgo+PiBPbiAxMy4w
OC4yMSAxNzoyMiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+Cj4+IFMtby1iIG1pc3Npbmcu
Cj4+Cj4+PiAtLS0KPj4+ICBhcmNoL2FybS9ib2FyZHMvbnhwLWlteDhtcC1ldmsvbG93bGV2ZWwu
YyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrCj4+PiAgYXJjaC9hcm0vbWFjaC1pbXgvYm9v
dC5jICAgICAgICAgICAgICAgICAgfCAgNCArKystCj4+PiAgaW5jbHVkZS9hc20tZ2VuZXJpYy9z
ZWN0aW9ucy5oICAgICAgICAgICAgfCAgMSArCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
YXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jIGIvYXJjaC9hcm0vYm9hcmRzL254cC1pbXg4
bXAtZXZrL2xvd2xldmVsLmMKPj4+IGluZGV4IDMyOThkZWQ1ODY2ZC4uMWZiNzg5OTE5OGQ2IDEw
MDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm0vYm9hcmRzL254cC1pbXg4bXAtZXZrL2xvd2xldmVsLmMK
Pj4+ICsrKyBiL2FyY2gvYXJtL2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jCj4+PiBA
QCAtOTksNiArOTksMzAgQEAgc3RhdGljIGludCBwb3dlcl9pbml0X2JvYXJkKHZvaWQpCj4+PiAg
CXJldHVybiAwOwo+Pj4gIH0KPj4+ICAKPj4+ICsvKiByZWFkIHBpZ2d5ZGF0YSB2aWEgYSBib290
cm9tIGNhbGxiYWNrIGFuZCBwbGFjZSBpdCBiZWhpbmQgb3VyIGNvcHkgaW4gU0RSQU0gKi8KPj4+
ICtzdGF0aWMgaW50IGlteDhtX2Jvb3Ryb21fbG9hZF9pbWFnZSh2b2lkKQo+Pj4gK3sKPj4+ICsJ
aW50ICgqZG93bmxvYWRfaW1hZ2UpKHU4ICpkZXN0LCB1MzIgb2Zmc2V0LCB1MzIgc2l6ZSwgdTMy
IHhvcikgPSAqKHZvaWQgKiopMHg5ODg7Cj4+Cj4+IFdvdWxkIGJlIG5pY2UgdG8gaGF2ZSB0aGlz
IGluIGEgaGVhZGVyLCBlLmcuCj4+Cj4+IGV4dGVybiBzdHJ1Y3QgaW14OG1wX2Jvb3Ryb21fb3Bz
IHsKPj4gCS8qIC4uLiAqLwo+PiAJaW50ICgqZG93bmxvYWRfaW1hZ2UpKHU4ICpkZXN0LCB1MzIg
b2Zmc2V0LCB1MzIgc2l6ZSwgdTMyIHhvcik7Cj4+IH0gKmlteDhtcF9ib290cm9tX29wcyA9ICh2
b2lkICopMHg5ODg7Cj4+Cj4+PiArCXNpemVfdCBjb3VudCA9IF9fcGlnZ3lkYXRhX2VuZCAtIF9f
cGlnZ3lkYXRhX3N0YXJ0Owo+Pj4gKwljaGFyICpwID0gKGNoYXIgKilNWDhNX0FURl9CTDMzX0JB
U0VfQUREUiArIChfX3BpZ2d5ZGF0YV9zdGFydCAtIF9faW1hZ2Vfc3RhcnQpOwo+Pj4gKwo+Pj4g
Kwl3aGlsZSAoY291bnQpIHsKPj4+ICsJCXNpemVfdCBjaHVua3NpemUgPSBtaW4oY291bnQsIChz
aXplX3QpMTAyNCk7Cj4+PiArCQlpbnQgcmV0Owo+Pj4gKwo+Pj4gKwkJcmV0ID0gZG93bmxvYWRf
aW1hZ2UocCwgMCwgY2h1bmtzaXplLCAodWludHB0cl90KXAgXiBjaHVua3NpemUpOwo+Pj4gKwkJ
aWYgKHJldCAhPSAweGYwKSB7Cj4+PiArCQkJcHJfZXJyKCJGYWlsZWQgdG8gbG9hZCBwaWdneSBk
YXRhIChyZXQgPSAleClcbiIsIHJldCk7Cj4+PiArCQkJcmV0dXJuIC1FSU87Cj4+PiArCQl9Cj4+
PiArCj4+PiArCQlwICs9IGNodW5rc2l6ZTsKPj4+ICsJCWNvdW50IC09IGNodW5rc2l6ZTsKPj4+
ICsJfQo+Pj4gKwo+Pj4gKwlyZXR1cm4gMDsKPj4+ICt9Cj4+PiArCj4gVGhpcyBzaG91bGRuJ3Qg
YmUgaW4gYm9hcmQgY29kZSwgYnV0IGluIHNvbWUgbG9jYXRpb24gd2hlcmUgaXQgaXMKPiByZXVz
YWJsZSBieSBvdGhlciBpLk1YOE1QIGJvYXJkcy4KPiAKPj4+ICBleHRlcm4gc3RydWN0IGRyYW1f
dGltaW5nX2luZm8gaW14OG1wX2V2a19kcmFtX3RpbWluZzsKPj4+ICAKPj4+ICBzdGF0aWMgdm9p
ZCBzdGFydF9hdGYodm9pZCkKPj4+IEBAIC0xMjUsNiArMTQ5LDkgQEAgc3RhdGljIHZvaWQgc3Rh
cnRfYXRmKHZvaWQpCj4+PiAgCWNhc2UgQk9PVFNPVVJDRV9NTUM6Cj4+PiAgCQlpbXg4bXBfZXNk
aGNfbG9hZF9pbWFnZShpbnN0YW5jZSwgZmFsc2UpOwo+Pj4gIAkJYnJlYWs7Cj4+PiArCWNhc2Ug
Qk9PVFNPVVJDRV9TRVJJQUw6Cj4+PiArCQlpbXg4bV9ib290cm9tX2xvYWRfaW1hZ2UoKTsKPj4+
ICsJCWJyZWFrOwo+Pj4gIAlkZWZhdWx0Ogo+Pj4gIAkJcHJpbnRmKCJVbmhhbmRsZWQgYm9vdHNv
dXJjZSBCT09UU09VUkNFXyVkXG4iLCBzcmMpOwo+Pj4gIAkJaGFuZygpOwo+Pj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+
Pj4gaW5kZXggMmI2NmJiZjcxZWIxLi43YzFkNDkyOTEwNDUgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNo
L2FybS9tYWNoLWlteC9ib290LmMKPj4+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+
Pj4gQEAgLTQ5NSwxMCArNDk1LDEyIEBAIHN0YXRpYyB2b2lkIF9faW14N19nZXRfYm9vdF9zb3Vy
Y2UoZW51bSBib290c291cmNlICpzcmMsIGludCAqaW5zdGFuY2UsCj4+PiAgCWNhc2UgNToKPj4+
ICAJCSpzcmMgPSBCT09UU09VUkNFX05PUjsKPj4+ICAJCWJyZWFrOwo+Pj4gLQljYXNlIDE1Ogo+
Pj4gKwljYXNlIDE0OiAvKiBvYnNlcnZlZCBvbiBpLk1YOE1QIGZvciBVU0IgInNlcmlhbCIgYm9v
dGluZyAqLwo+Pj4gKwljYXNlIDE1OiAvKiBvYnNlcnZlZCBvbiBpLk1YOE1NIGZvciBVU0IgInNl
cmlhbCIgYm9vdGluZyAqLwo+Pj4gIAkJKnNyYyA9IEJPT1RTT1VSQ0VfU0VSSUFMOwo+Pj4gIAkJ
YnJlYWs7Cj4+PiAgCWRlZmF1bHQ6Cj4+PiArCQkqc3JjID0gQk9PVFNPVVJDRV9VTktOT1dOOwo+
Pj4gIAkJYnJlYWs7Cj4+PiAgCX0KPj4+ICB9Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hc20t
Z2VuZXJpYy9zZWN0aW9ucy5oIGIvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4+PiBp
bmRleCA4NzBiZmYyMWY2NjguLjU5N2M0OTUxZWE1ZSAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUv
YXNtLWdlbmVyaWMvc2VjdGlvbnMuaAo+Pj4gKysrIGIvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0
aW9ucy5oCj4+PiBAQCAtOSw2ICs5LDcgQEAgZXh0ZXJuIGNoYXIgX2VuZFtdOwo+Pj4gIGV4dGVy
biBjaGFyIF9faW1hZ2Vfc3RhcnRbXTsKPj4+ICBleHRlcm4gY2hhciBfX2ltYWdlX2VuZFtdOwo+
Pj4gIGV4dGVybiBjaGFyIF9fcGlnZ3lkYXRhX3N0YXJ0W107Cj4+PiArZXh0ZXJuIGNoYXIgX19w
aWdneWRhdGFfZW5kW107Cj4+Cj4+IE90aGVyIGNvZGUgbm9ybWFsbHkgdXNlcyBfX2ltYWdlX2Vu
ZCwgYnV0IGl0IHNlZW1zIF9fcGlnZ3lkYXRhX2VuZCBzaG91bGQgYmUKPj4gZXF1YWwgdG8gaXQu
IEknZCBwcmVmZXIgX19pbWFnZV9lbmQsIGJlY2F1c2UgY29uY2VwdHVhbGx5LCB5b3Ugd2FudCB0
byBjb3B5Cj4+IG9mZiB0aGUgcmVzdCBvZiB0aGUgaW1hZ2UgKHdoaWNoIGhhcHBlbnMgdG8gYmUg
anVzdCB0aGUgcGlnZ3kgZGF0YSkKPj4KPj4gQFJvdXZlbiwgVGhlIHNoYSBzdW0gaXMgYXQgdGhl
IGVuZCBvZiB0aGUgaW1hZ2UsIHJpZ2h0Pwo+PiBXb3VsZCB0aGlzIGJlIGluY2x1ZGVkIHRoaXMg
d2F5Pwo+IAo+IFRoZSBjaGVja3N1bSBpcyBidWlsdCBpbnRvIHRoZSBQQkwsIGFzIGl0IGlzIHVz
ZWQgdG8gYXV0aGVudGljYXRlIHRoZQo+IHBpZ2d5ZGF0YSwgYXMgdGhlIEJvb3RST00gd2lsbCBv
bmx5IGF1dGhlbnRpY2F0ZSB0aGUgaW5pdGlhbCBsb2FkZWQKPiBwYXJ0IG9mIHRoZSBpbWFnZSwg
aS5lLiB0aGUgUEJMLgoKT2YgY291cnNlLiBFeGN1c2UgdGhlIGJyYWluIGZhcnQuCgo+IAo+IFJl
Z2FyZHMsCj4gTHVjYXMKPiAKPiAKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVy
IFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5k
ZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6
ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYg
ICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK

