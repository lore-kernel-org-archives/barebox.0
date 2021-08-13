Delivery-date: Fri, 13 Aug 2021 21:29:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEcsB-0001SC-Ay
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 21:29:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mEcs6-0004rl-R7
	for lore@pengutronix.de; Fri, 13 Aug 2021 21:29:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IvGJNhkzCmuaPugx2+XPuK/N2e4v9ZmnLO9hXPyTXno=; b=tm5vgK57MEhMbME0XIK/SWhHnW
	+rmmTHODAi4OAqfwD4Gb7GMdgek2E4h+eQYJ25pTjKJ+9+MaZNwmImR8bzR1o0RIVKicOudw4vWGJ
	5Qo0B5udn+bKuK0AmK/ImTKiVLq23u0UWBZ8aW2Q/iKWamrbZG8Laoq1NUI7P/87878VKoMygjEUZ
	Z/gFm+oJ7v3s23JJikIkQfMj83k3IDARnNSTiAkkuzXTZPqJ4fMWURIdtjVIK27EI8F644BQi0k5b
	NNviJCEkAJJl1fu1mBRM7TLBzFlQMMXX/n36t13B/qMLN3haEOu4ey/Pwr+sKTYiZXjFaVPJACMEF
	Nfb2PLfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEcpY-00DStx-3L; Fri, 13 Aug 2021 19:27:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEcpQ-00DSsM-8M
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 19:26:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mEcpL-0004nn-Rg; Fri, 13 Aug 2021 21:26:47 +0200
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org, Rouven Czerwinski <rcz@pengutronix.de>
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
 <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <af0950b3-33fc-b36a-ad70-055e9af7acf2@pengutronix.de>
Date: Fri, 13 Aug 2021 21:26:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_122652_346262_52393C0C 
X-CRM114-Status: GOOD (  27.14  )
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

T24gMTMuMDguMjEgMTc6MjIsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgoKUy1vLWIgbWlzc2lu
Zy4KCj4gLS0tCj4gIGFyY2gvYXJtL2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jIHwg
MjcgKysrKysrKysrKysrKysrKysrKysrKysKPiAgYXJjaC9hcm0vbWFjaC1pbXgvYm9vdC5jICAg
ICAgICAgICAgICAgICAgfCAgNCArKystCj4gIGluY2x1ZGUvYXNtLWdlbmVyaWMvc2VjdGlvbnMu
aCAgICAgICAgICAgIHwgIDEgKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL254cC1pbXg4
bXAtZXZrL2xvd2xldmVsLmMgYi9hcmNoL2FybS9ib2FyZHMvbnhwLWlteDhtcC1ldmsvbG93bGV2
ZWwuYwo+IGluZGV4IDMyOThkZWQ1ODY2ZC4uMWZiNzg5OTE5OGQ2IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jCj4gKysrIGIvYXJjaC9hcm0v
Ym9hcmRzL254cC1pbXg4bXAtZXZrL2xvd2xldmVsLmMKPiBAQCAtOTksNiArOTksMzAgQEAgc3Rh
dGljIGludCBwb3dlcl9pbml0X2JvYXJkKHZvaWQpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiAr
LyogcmVhZCBwaWdneWRhdGEgdmlhIGEgYm9vdHJvbSBjYWxsYmFjayBhbmQgcGxhY2UgaXQgYmVo
aW5kIG91ciBjb3B5IGluIFNEUkFNICovCj4gK3N0YXRpYyBpbnQgaW14OG1fYm9vdHJvbV9sb2Fk
X2ltYWdlKHZvaWQpCj4gK3sKPiArCWludCAoKmRvd25sb2FkX2ltYWdlKSh1OCAqZGVzdCwgdTMy
IG9mZnNldCwgdTMyIHNpemUsIHUzMiB4b3IpID0gKih2b2lkICoqKTB4OTg4OwoKV291bGQgYmUg
bmljZSB0byBoYXZlIHRoaXMgaW4gYSBoZWFkZXIsIGUuZy4KCmV4dGVybiBzdHJ1Y3QgaW14OG1w
X2Jvb3Ryb21fb3BzIHsKCS8qIC4uLiAqLwoJaW50ICgqZG93bmxvYWRfaW1hZ2UpKHU4ICpkZXN0
LCB1MzIgb2Zmc2V0LCB1MzIgc2l6ZSwgdTMyIHhvcik7Cn0gKmlteDhtcF9ib290cm9tX29wcyA9
ICh2b2lkICopMHg5ODg7Cgo+ICsJc2l6ZV90IGNvdW50ID0gX19waWdneWRhdGFfZW5kIC0gX19w
aWdneWRhdGFfc3RhcnQ7Cj4gKwljaGFyICpwID0gKGNoYXIgKilNWDhNX0FURl9CTDMzX0JBU0Vf
QUREUiArIChfX3BpZ2d5ZGF0YV9zdGFydCAtIF9faW1hZ2Vfc3RhcnQpOwo+ICsKPiArCXdoaWxl
IChjb3VudCkgewo+ICsJCXNpemVfdCBjaHVua3NpemUgPSBtaW4oY291bnQsIChzaXplX3QpMTAy
NCk7Cj4gKwkJaW50IHJldDsKPiArCj4gKwkJcmV0ID0gZG93bmxvYWRfaW1hZ2UocCwgMCwgY2h1
bmtzaXplLCAodWludHB0cl90KXAgXiBjaHVua3NpemUpOwo+ICsJCWlmIChyZXQgIT0gMHhmMCkg
ewo+ICsJCQlwcl9lcnIoIkZhaWxlZCB0byBsb2FkIHBpZ2d5IGRhdGEgKHJldCA9ICV4KVxuIiwg
cmV0KTsKPiArCQkJcmV0dXJuIC1FSU87Cj4gKwkJfQo+ICsKPiArCQlwICs9IGNodW5rc2l6ZTsK
PiArCQljb3VudCAtPSBjaHVua3NpemU7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAr
Cj4gIGV4dGVybiBzdHJ1Y3QgZHJhbV90aW1pbmdfaW5mbyBpbXg4bXBfZXZrX2RyYW1fdGltaW5n
Owo+ICAKPiAgc3RhdGljIHZvaWQgc3RhcnRfYXRmKHZvaWQpCj4gQEAgLTEyNSw2ICsxNDksOSBA
QCBzdGF0aWMgdm9pZCBzdGFydF9hdGYodm9pZCkKPiAgCWNhc2UgQk9PVFNPVVJDRV9NTUM6Cj4g
IAkJaW14OG1wX2VzZGhjX2xvYWRfaW1hZ2UoaW5zdGFuY2UsIGZhbHNlKTsKPiAgCQlicmVhazsK
PiArCWNhc2UgQk9PVFNPVVJDRV9TRVJJQUw6Cj4gKwkJaW14OG1fYm9vdHJvbV9sb2FkX2ltYWdl
KCk7Cj4gKwkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+ICAJCXByaW50ZigiVW5oYW5kbGVkIGJvb3Rz
b3VyY2UgQk9PVFNPVVJDRV8lZFxuIiwgc3JjKTsKPiAgCQloYW5nKCk7Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+IGlu
ZGV4IDJiNjZiYmY3MWViMS4uN2MxZDQ5MjkxMDQ1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21h
Y2gtaW14L2Jvb3QuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+IEBAIC00OTUs
MTAgKzQ5NSwxMiBAQCBzdGF0aWMgdm9pZCBfX2lteDdfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9v
dHNvdXJjZSAqc3JjLCBpbnQgKmluc3RhbmNlLAo+ICAJY2FzZSA1Ogo+ICAJCSpzcmMgPSBCT09U
U09VUkNFX05PUjsKPiAgCQlicmVhazsKPiAtCWNhc2UgMTU6Cj4gKwljYXNlIDE0OiAvKiBvYnNl
cnZlZCBvbiBpLk1YOE1QIGZvciBVU0IgInNlcmlhbCIgYm9vdGluZyAqLwo+ICsJY2FzZSAxNTog
Lyogb2JzZXJ2ZWQgb24gaS5NWDhNTSBmb3IgVVNCICJzZXJpYWwiIGJvb3RpbmcgKi8KPiAgCQkq
c3JjID0gQk9PVFNPVVJDRV9TRVJJQUw7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+ICsJCSpz
cmMgPSBCT09UU09VUkNFX1VOS05PV047Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIH0KPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oIGIvaW5jbHVkZS9hc20tZ2VuZXJp
Yy9zZWN0aW9ucy5oCj4gaW5kZXggODcwYmZmMjFmNjY4Li41OTdjNDk1MWVhNWUgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4gKysrIGIvaW5jbHVkZS9hc20t
Z2VuZXJpYy9zZWN0aW9ucy5oCj4gQEAgLTksNiArOSw3IEBAIGV4dGVybiBjaGFyIF9lbmRbXTsK
PiAgZXh0ZXJuIGNoYXIgX19pbWFnZV9zdGFydFtdOwo+ICBleHRlcm4gY2hhciBfX2ltYWdlX2Vu
ZFtdOwo+ICBleHRlcm4gY2hhciBfX3BpZ2d5ZGF0YV9zdGFydFtdOwo+ICtleHRlcm4gY2hhciBf
X3BpZ2d5ZGF0YV9lbmRbXTsKCk90aGVyIGNvZGUgbm9ybWFsbHkgdXNlcyBfX2ltYWdlX2VuZCwg
YnV0IGl0IHNlZW1zIF9fcGlnZ3lkYXRhX2VuZCBzaG91bGQgYmUKZXF1YWwgdG8gaXQuIEknZCBw
cmVmZXIgX19pbWFnZV9lbmQsIGJlY2F1c2UgY29uY2VwdHVhbGx5LCB5b3Ugd2FudCB0byBjb3B5
Cm9mZiB0aGUgcmVzdCBvZiB0aGUgaW1hZ2UgKHdoaWNoIGhhcHBlbnMgdG8gYmUganVzdCB0aGUg
cGlnZ3kgZGF0YSkKCkBSb3V2ZW4sIFRoZSBzaGEgc3VtIGlzIGF0IHRoZSBlbmQgb2YgdGhlIGlt
YWdlLCByaWdodD8KV291bGQgdGhpcyBiZSBpbmNsdWRlZCB0aGlzIHdheT8KCj4gIGV4dGVybiB2
b2lkICpfYmFyZWJveF9pbWFnZV9zaXplOwo+ICBleHRlcm4gdm9pZCAqX2JhcmVib3hfYmFyZV9p
bml0X3NpemU7Cj4gIGV4dGVybiB2b2lkICpfYmFyZWJveF9wYmxfc2l6ZTsKPiAKCgotLSAKUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

