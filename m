Delivery-date: Tue, 26 Oct 2021 18:33:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfPNk-0002ma-UU
	for lore@lore.pengutronix.de; Tue, 26 Oct 2021 18:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfPNj-0004Ib-Ok
	for lore@pengutronix.de; Tue, 26 Oct 2021 18:33:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyDXcQm5Cm+DeZ5AyQcmCG2vYxc/I3JCrAdce33rVeo=; b=y5CSSl6Xr4rF+B
	FNZQVW3Htu1EuMC4aLy0fXboDEA1ZSePFgIzvQFT4DFeUX5OVNiWnE+AWTfTbjzpCevCMKfYdljix
	tBV46QspATA+iTZZfDIFZU93Gb0Ikmqoiaz4QLVDm+TyFGbc1feHiUiQAkb+bhI3NtbT67+XbEgiH
	Zv54sWuu2OgZMRkTeL+k1fZTJ++P+XPMMchDKS7Jpb4/s104pskM/pkcRuvNdpk9ORKFbDprGp20K
	sq3FDvRtOV0zeFn8CJ+/XZwO+WaF86UNUB6TlV8XGk1bHjxX2Mu5EXXmkNF2H4Qk4tzR6uFNOYAdB
	wMNLRYwykpp0bdZ+FIHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfPLz-002UfN-Ou; Tue, 26 Oct 2021 16:31:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfPLt-002Udb-4n
 for barebox@lists.infradead.org; Tue, 26 Oct 2021 16:31:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mfPLn-00043G-Qd; Tue, 26 Oct 2021 18:30:59 +0200
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210813152245.15841-1-u.kleine-koenig@pengutronix.de>
 <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c9540fec-d9cb-66a6-db20-a6fc69151399@pengutronix.de>
Date: Tue, 26 Oct 2021 18:30:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210813152245.15841-2-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_093105_215250_4C39831E 
X-CRM114-Status: GOOD (  24.50  )
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
Cc: rcz@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] imx8mp-evk: Add support for booting via USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

T24gMTMuMDguMjEgMTc6MjIsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IC0tLQoKSSBjb3Bp
ZWQgdGhlc2UgY2hhbmdlcyB0byB0aGUgbnhwLWlteDhtbi1ldmssIHdoaWNoIGhhcyB0aGUgc2Ft
ZQpST00gQVBJIGFuZCBJIGNhbiBib290c3RyYXAgd2l0aCB1dXUsIHRoZXJlZm9yZToKClRlc3Rl
ZC1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT4KCj4gIGFyY2gvYXJt
L2JvYXJkcy9ueHAtaW14OG1wLWV2ay9sb3dsZXZlbC5jIHwgMjcgKysrKysrKysrKysrKysrKysr
KysrKysKPiAgYXJjaC9hcm0vbWFjaC1pbXgvYm9vdC5jICAgICAgICAgICAgICAgICAgfCAgNCAr
KystCj4gIGluY2x1ZGUvYXNtLWdlbmVyaWMvc2VjdGlvbnMuaCAgICAgICAgICAgIHwgIDEgKwo+
ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL254cC1pbXg4bXAtZXZrL2xvd2xldmVsLmMgYi9h
cmNoL2FybS9ib2FyZHMvbnhwLWlteDhtcC1ldmsvbG93bGV2ZWwuYwo+IGluZGV4IDMyOThkZWQ1
ODY2ZC4uMWZiNzg5OTE5OGQ2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2JvYXJkcy9ueHAtaW14
OG1wLWV2ay9sb3dsZXZlbC5jCj4gKysrIGIvYXJjaC9hcm0vYm9hcmRzL254cC1pbXg4bXAtZXZr
L2xvd2xldmVsLmMKPiBAQCAtOTksNiArOTksMzAgQEAgc3RhdGljIGludCBwb3dlcl9pbml0X2Jv
YXJkKHZvaWQpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArLyogcmVhZCBwaWdneWRhdGEgdmlh
IGEgYm9vdHJvbSBjYWxsYmFjayBhbmQgcGxhY2UgaXQgYmVoaW5kIG91ciBjb3B5IGluIFNEUkFN
ICovCj4gK3N0YXRpYyBpbnQgaW14OG1fYm9vdHJvbV9sb2FkX2ltYWdlKHZvaWQpCj4gK3sKPiAr
CWludCAoKmRvd25sb2FkX2ltYWdlKSh1OCAqZGVzdCwgdTMyIG9mZnNldCwgdTMyIHNpemUsIHUz
MiB4b3IpID0gKih2b2lkICoqKTB4OTg4Owo+ICsJc2l6ZV90IGNvdW50ID0gX19waWdneWRhdGFf
ZW5kIC0gX19waWdneWRhdGFfc3RhcnQ7Cj4gKwljaGFyICpwID0gKGNoYXIgKilNWDhNX0FURl9C
TDMzX0JBU0VfQUREUiArIChfX3BpZ2d5ZGF0YV9zdGFydCAtIF9faW1hZ2Vfc3RhcnQpOwo+ICsK
PiArCXdoaWxlIChjb3VudCkgewo+ICsJCXNpemVfdCBjaHVua3NpemUgPSBtaW4oY291bnQsIChz
aXplX3QpMTAyNCk7Cj4gKwkJaW50IHJldDsKPiArCj4gKwkJcmV0ID0gZG93bmxvYWRfaW1hZ2Uo
cCwgMCwgY2h1bmtzaXplLCAodWludHB0cl90KXAgXiBjaHVua3NpemUpOwo+ICsJCWlmIChyZXQg
IT0gMHhmMCkgewo+ICsJCQlwcl9lcnIoIkZhaWxlZCB0byBsb2FkIHBpZ2d5IGRhdGEgKHJldCA9
ICV4KVxuIiwgcmV0KTsKPiArCQkJcmV0dXJuIC1FSU87Cj4gKwkJfQo+ICsKPiArCQlwICs9IGNo
dW5rc2l6ZTsKPiArCQljb3VudCAtPSBjaHVua3NpemU7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7
Cj4gK30KPiArCj4gIGV4dGVybiBzdHJ1Y3QgZHJhbV90aW1pbmdfaW5mbyBpbXg4bXBfZXZrX2Ry
YW1fdGltaW5nOwo+ICAKPiAgc3RhdGljIHZvaWQgc3RhcnRfYXRmKHZvaWQpCj4gQEAgLTEyNSw2
ICsxNDksOSBAQCBzdGF0aWMgdm9pZCBzdGFydF9hdGYodm9pZCkKPiAgCWNhc2UgQk9PVFNPVVJD
RV9NTUM6Cj4gIAkJaW14OG1wX2VzZGhjX2xvYWRfaW1hZ2UoaW5zdGFuY2UsIGZhbHNlKTsKPiAg
CQlicmVhazsKPiArCWNhc2UgQk9PVFNPVVJDRV9TRVJJQUw6Cj4gKwkJaW14OG1fYm9vdHJvbV9s
b2FkX2ltYWdlKCk7Cj4gKwkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+ICAJCXByaW50ZigiVW5oYW5k
bGVkIGJvb3Rzb3VyY2UgQk9PVFNPVVJDRV8lZFxuIiwgc3JjKTsKPiAgCQloYW5nKCk7Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYyBiL2FyY2gvYXJtL21hY2gtaW14L2Jv
b3QuYwo+IGluZGV4IDJiNjZiYmY3MWViMS4uN2MxZDQ5MjkxMDQ1IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYwo+
IEBAIC00OTUsMTAgKzQ5NSwxMiBAQCBzdGF0aWMgdm9pZCBfX2lteDdfZ2V0X2Jvb3Rfc291cmNl
KGVudW0gYm9vdHNvdXJjZSAqc3JjLCBpbnQgKmluc3RhbmNlLAo+ICAJY2FzZSA1Ogo+ICAJCSpz
cmMgPSBCT09UU09VUkNFX05PUjsKPiAgCQlicmVhazsKPiAtCWNhc2UgMTU6Cj4gKwljYXNlIDE0
OiAvKiBvYnNlcnZlZCBvbiBpLk1YOE1QIGZvciBVU0IgInNlcmlhbCIgYm9vdGluZyAqLwo+ICsJ
Y2FzZSAxNTogLyogb2JzZXJ2ZWQgb24gaS5NWDhNTSBmb3IgVVNCICJzZXJpYWwiIGJvb3Rpbmcg
Ki8KPiAgCQkqc3JjID0gQk9PVFNPVVJDRV9TRVJJQUw7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZhdWx0
Ogo+ICsJCSpzcmMgPSBCT09UU09VUkNFX1VOS05PV047Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIH0K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oIGIvaW5jbHVkZS9h
c20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4gaW5kZXggODcwYmZmMjFmNjY4Li41OTdjNDk1MWVhNWUg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4gKysrIGIvaW5j
bHVkZS9hc20tZ2VuZXJpYy9zZWN0aW9ucy5oCj4gQEAgLTksNiArOSw3IEBAIGV4dGVybiBjaGFy
IF9lbmRbXTsKPiAgZXh0ZXJuIGNoYXIgX19pbWFnZV9zdGFydFtdOwo+ICBleHRlcm4gY2hhciBf
X2ltYWdlX2VuZFtdOwo+ICBleHRlcm4gY2hhciBfX3BpZ2d5ZGF0YV9zdGFydFtdOwo+ICtleHRl
cm4gY2hhciBfX3BpZ2d5ZGF0YV9lbmRbXTsKPiAgZXh0ZXJuIHZvaWQgKl9iYXJlYm94X2ltYWdl
X3NpemU7Cj4gIGV4dGVybiB2b2lkICpfYmFyZWJveF9iYXJlX2luaXRfc2l6ZTsKPiAgZXh0ZXJu
IHZvaWQgKl9iYXJlYm94X3BibF9zaXplOwo+IAoKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1
ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAg
fCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

