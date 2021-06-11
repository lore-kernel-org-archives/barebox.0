Delivery-date: Fri, 11 Jun 2021 13:02:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrevo-0004w4-Rh
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrevn-0004wF-Kr
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G2oVxMq2BIpBcJ6n6tfNPRnqT6FnlSaAyfv4VS3cO/A=; b=Ad/psXAYgB3XRXI8jJtK3/PUkg
	rkKOEi1g/dDT4UJtie303NnQhQxYUr6iEXHbpqF9txrRetvqV5mvZtz30AGZ5ZI501swRnwMcGh2D
	PTrAtscSfFjSsoGWkw9BKwjNz8SWxub2mt62o5sx+AJwUDFt1P1s34FV6g4jfkaSuxNrsN/MEBihT
	9Vay19dQzVm8/kEeMm1jQ39riXSYshYyWQ0mzjFjwCE62MOhm55TBUlep1Gn6w1qluP/rffW32EKk
	SKP7Q8HupTPB7C8vZUEJY/diWY4sJLJj9qWn9tHFKWrLwNUV66c15dPDLVMJRayhIULnxdmL7oKKc
	dqtnOYLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lreuF-004sEn-Va; Fri, 11 Jun 2021 11:00:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrepD-004ovP-4w
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:55:45 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrepB-0003eu-RR; Fri, 11 Jun 2021 12:55:41 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 barebox@lists.infradead.org
References: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e61ce67f-57ba-a593-d624-97ab7d28fb73@pengutronix.de>
Date: Fri, 11 Jun 2021 12:55:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <97CB9693-C624-4014-8E73-6FDCA035BD62@inside-m2m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_035543_235759_57FADCA8 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Beaglebone Black defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksCgpPbiAxMS4wNi4yMSAxMjowNSwgS29uc3RhbnRpbiBLbGV0c2Noa2Ugd3JvdGU6Cj4gSGVs
bG8sCj4gCj4gSSBhbSBjdXJyZW50bHkgdHJ5aW5nIHRvIGJyaW5nIHVwIGJhcmVib3ggZm9yIG15
IEJlYWdsZWJvbmUgQmxhY2sgZGV2aWNlcy4KPiAKPiBJIGRpZCBhbiAiQVJDSD1hcm0gQ1JPU1Nf
Q09NUElMRT1hcm0tYnVpbGRyb290LWxpbnV4LWdudWVhYmloZi0gbWFrZSBhbTMzNXhfbWxvX2Rl
ZmNvbmZpZ+KAnSwgbWFrZSBhbmQKPiBjb3BpZWQgcmVzdWx0aW5nIGJhcmVib3gtYW0zM3h4LWJl
YWdsZWJvbmUtbWxvLmltZyB0byBNTE8gaW50byBteSBGQVQgYm9vdCBwYXJ0aXRpb24uCj4gCj4g
VGhlbiBJIGRpZCAiQVJDSD1hcm0gQ1JPU1NfQ09NUElMRT1hcm0tYnVpbGRyb290LWxpbnV4LWdu
dWVhYmloZi0gbWFrZSBvbWFwMzUzMF9iZWFnbGVfZGVmY29uZmln4oCdLCBtYWtlIAo+IGFuZCBj
b3BpZWQgcmVzdWx0aW5nIGJhcmVib3gtYmVhZ2xlYm9hcmQuaW1nIHRvIGJhcmVib3guYmluIGlu
dG8gbXkgYm9vdCBGQVQuCgpUaGUgZG9jcyAoaHR0cHM6Ly93d3cuYmFyZWJveC5vcmcvZG9jL2xh
dGVzdC9ib2FyZHMvYW0zMzV4Lmh0bWwpIHNheSB0aGUgc2Vjb25kIHN0YWdlCmRlZmNvbmZpZyBp
cyBvbWFwX2RlZmNvbmZpZy4KIAo+IElzIHRoZSB0aGUgZGlmZmVyZW50IHByZWZpeCBpbiB0aGUg
ZGVmY29uZmlncyAoYW0zM+KApiB2cy4gb21hcDM14oCmKSByZWFzb25hYmxlPwoKU2Vjb25kIHN0
YWdlIGlzIG11Y2ggbGVzcyBzaXplIGxpbWl0ZWQsIGJlY2F1c2UgaXQgcnVucyBmcm9tIGV4dGVy
bmFsIFNEUkFNLiBUaGlzIGFsbG93cwpoYXZpbmcgYSBjb25maWcgdGhhdCBidWlsZHMgaW1hZ2Vz
IGZvciBtdWx0aXBsZSBkaWZmZXJlbnQgYm9hcmRzIGFuZCBTb0NzLgoKRmlyc3Qgc3RhZ2UgcnVu
cyBmcm9tIHNtYWxsIFNSQU0sIHNvIGltYWdlcyB1c3VhbGx5IGNvbnRhaW4gb25seSBjb2RlIGZv
ciBhIHNpbmdsZQpTb0MuIEkgaGF2ZW4ndCBjaGVja2VkLCBidXQgdGhpcyBtYXkgZXhwbGFpbiB0
aGUgZGlmZmVyZW50IG5hbWluZy4KCj4gSXMgdGhpcyBhcHByb2FjaCBnZW5lcmFsbHkgcmVhc29u
YWJsZT8KPiAKPiBNYW55IHJlZmVyZW5jZXMgaW4gaW50ZXJuZXQgdG8gbWF0Y2hpbmcKPiBkZWZj
b25maWdzIEkgZm91bmQgcmVmZXIgdG8gbm9uIGV4aXN0aW5nIG9uZXMsIHRoZXJlIHNlZW1zIHRv
IGhhcHBlbiBncmVhdCBvdmVyaGF1bCBtZWFud2hpbGUuCgpJIGhhdmVuJ3QgYmVlbiB1c2luZyBi
YXJlYm94IGxvbmcgZW5vdWdoLCBidXQgSSBhc3N1bWUgeW91IGZvdW5kIHJlZmVyZW5jZXMKdG8g
b2xkIG5vbi1tdWx0aS1pbWFnZSBlbmFibGVkIE9NQVAgc3VwcG9ydC4gTW9kZXJuIGJhcmVib3gg
cGxhdGZvcm1zIGJ1aWxkCm11bHRpcGxlIGltYWdlcyBmb3IgZGlmZmVyZW50IGJvYXJkcyBpbiBv
bmUgZ28gYW5kIHRodXMgdGhlcmUgYXJlIGxlc3MKZGVmY29uZmlncy4KCj4gSSBhbSBhbHNvIGFz
a2luZyBiZWNhdXNlLCB3ZWxsLCBpdCBkb2VzIG5vdCB3b3JrOgo+IAo+IGJhcmVib3ggMjAyMS4w
NS4wLTAwMDkzLWc3Njg5MDU1YTggIzIgRnJpIEp1biAxMSAwOTowMTozNiBDRVNUIDIwMjEKPiAK
PiAKPiBCb2FyZDogVEkgQU0zMzV4IEJlYWdsZUJvbmUKPiBkZXRlY3RlZCAnQmVhZ2xlQm9uZSBC
bGFjaycKPiBvbWFwLWhzbW1jIDQ4MDYwMDAwLm1tY0AwLm9mOiByZWdpc3RlcmVkIGFzIG1tYzAK
PiBvbWFwLWhzbW1jIDQ4MWQ4MDAwLm1tY0AwLm9mOiByZWdpc3RlcmVkIGFzIG1tYzEKPiBib290
aW5nIGZyb20gTU1DCj4gbW1jMTogZGV0ZWN0ZWQgTU1DIGNhcmQgdmVyc2lvbiA1LjEKPiBtbWMx
OiByZWdpc3RlcmVkIG1tYzEKPiB1bmFibGUgdG8gaGFuZGxlIHBhZ2luZyByZXF1ZXN0IGF0IGFk
ZHJlc3MgMHg0MDIwZjAxMAo+IHBjIDogWzw4ZmZiYmQ1YT5dICAgIGxyIDogWzw4ZmZiYmQ4OT5d
Cj4gc3AgOiA5ZmZlZmZiMCAgaXAgOiAwMDAwMDAwMCAgZnAgOiAwMDAxNGUyYwo+IHIxMDogMDAx
MjU5MjAgIHI5IDogOGZmYmJjZTUgIHI4IDogOWZmZTQwMDAKPiByNyA6IDgwMDAwMDAwICByNiA6
IDlmZTFhNDZlICByNSA6IDQwMmYwNDAwICByNCA6IDhmZmJiY2RjCj4gcjMgOiAwMDAwMDYwYSAg
cjIgOiA0MDIwZjAxMCAgcjEgOiBhYmU3NDJjMyAgcjAgOiA4MDAwMDAwMAo+IEZsYWdzOiBuekN2
ICBJUlFzIG9mZiAgRklRcyBvbiAgTW9kZSBTVkNfMzIKPiAKPiBubyBzdGFjayBkYXRhIGF2YWls
YWJsZQo+IAo+IFRoaXMgcmVwZWF0cyBlbmRsZXNzbHkuIEkgaW52ZXN0aWdhdGVkIHRoZSBkYXRh
IHNoZWV0IGFuZCBpZiBJIGFtIGNvcnJlY3QgMHg0MDIwZjAxMCBzZWVtcyB0byBiZSBhIHJlc2Vy
dmVkPiBhcmVhIGluIEwzIG1lbW9yeSBtYXAuCgpDb21waWxpbmcgYmFyZWJveCBmb3Igb25lIFNv
QyBhbmQgcnVubmluZyBpdCBvbiBhbm90aGVyIGNhbiBsZWFkCnRvIGZ1bm55IGVmZmVjdHMuCgpD
aGVlcnMsCkFobWFkCgo+IAo+IEtpbmQgUmVnYXJkcwo+IEtvbnN0aQo+IAo+IElOU0lERSBNMk0g
R21iSAo+IEtvbnN0YW50aW4gS2xldHNjaGtlCj4gQmVyZW5ib3N0ZWxlciBTdHJhw59lIDc2IEIK
PiAzMDgyMyBHYXJic2VuCj4gCj4gVGVsZWZvbjogKzQ5ICgwKSA1MTM3IDkwOTUwMTM2Cj4gTW9i
aWw6ICs0OSAoMCkgMTUxIDE1MjU2MjM4Cj4gRmF4OiArNDkgKDApIDUxMzcgOTA5NTAxMAo+IAo+
IGtvbnN0YW50aW4ua2xldHNjaGtlQGluc2lkZS1tMm0uZGUKPiBodHRwOi8vd3d3Lmluc2lkZS1t
Mm0uZGUgCj4gCj4gR2VzY2jDpGZ0c2bDvGhydW5nOiBNaWNoYWVsIEVtbWVydCwgSW5nbyBIYWFz
ZSwgRHIuIEZyZWQgS8O2bmVtYW5uLCBEZXJlayBVaGxpZwo+IEhSQjogMTExMjA0LCBBRyBIYW5u
b3Zlcgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiAK
Ci0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAg
ICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWlt
LCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAg
fApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5
LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

