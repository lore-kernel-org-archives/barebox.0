Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7k8W-0005jf-VY
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 11:46:09 +0000
Received: by mail-we0-f181.google.com with SMTP id k48so1361487wev.26
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 04:45:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53C79FDD.1070901@atmel.com>
References: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
 <1405587095-23308-3-git-send-email-poggi.raph@gmail.com>
 <53C79FDD.1070901@atmel.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Thu, 17 Jul 2014 13:45:05 +0200
Message-ID: <CACqcpZAPA6OQL=sZoz0pRosWT6=0yPwTZ8_a0aPYGrvYcNGNAQ@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] mtd: atmel_nand: enable PMECC for 8k page nand
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

VGhhbmtzIGZvciB5b3VyIEFja2VkLgoKWWVzIHlvdSdyZSByaWdodCwgc28gSSBzcGxpdCB0aGlz
IGludG8gMiBjb21taXRzIGFuZCBzZW5kIGEgdjIuCgpCZXN0IHJlZ2FyZHMsClJhcGhhw6tsIFBv
Z2dpCgoyMDE0LTA3LTE3IDEyOjA1IEdNVCswMjowMCBCbyBTaGVuIDx2b2ljZS5zaGVuQGF0bWVs
LmNvbT46Cj4gSGkgUmFwaGFlbCwKPgo+Cj4gT24gMDcvMTcvMjAxNCAwNDo1MSBQTSwgUmFwaGFl
bCBQb2dnaSB3cm90ZToKPj4KPj4gRW5hYmxlIHRoZSBQTUVDQyB0byBzdXBwb3J0IDhrIHBhZ2Uu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNv
bT4KPgo+Cj4gQWNrZWQtYnk6IEJvIFNoZW4gPHZvaWNlLnNoZW5AYXRtZWwuY29tPgo+Cj4KPj4g
LS0tCj4+ICAgZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMgfCAgICA0ICsrKy0KPj4gICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQv
YXRtZWxfbmFuZC5jCj4+IGluZGV4IGZhNTk2ZWQuLjM2YTYwZDEgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCj4+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvYXRt
ZWxfbmFuZC5jCj4+IEBAIC03OTYsNyArNzk2LDkgQEAgc3RhdGljIGludCBfX2luaXQgYXRtZWxf
cG1lY2NfbmFuZF9pbml0X3BhcmFtcyhzdHJ1Y3QKPj4gZGV2aWNlX2QgKmRldiwKPj4gICAgICAg
ICBzd2l0Y2ggKG10ZC0+d3JpdGVzaXplKSB7Cj4+ICAgICAgICAgY2FzZSAyMDQ4Ogo+PiAgICAg
ICAgIGNhc2UgNDA5NjoKPj4gLSAgICAgICAgICAgICAgIGhvc3QtPnBtZWNjX2RlZ3JlZSA9IFBN
RUNDX0dGX0RJTUVOU0lPTl8xMzsKPj4gKyAgICAgICBjYXNlIDgxOTI6Cj4+ICsgICAgICAgICAg
ICAgICBob3N0LT5wbWVjY19kZWdyZWUgPSAoc2VjdG9yX3NpemUgPT0gNTEyKSA/Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQTUVDQ19HRl9ESU1FTlNJT05fMTMg
Ogo+PiBQTUVDQ19HRl9ESU1FTlNJT05fMTQ7Cj4KPgo+IEFjdHVhbGx5LCB0aGlzIGlzIGEgZml4
ICsgOEsgcGFnZSBzdXBwb3J0Lgo+IElmIHNvbWUgY29tbWl0IG1lc3NhZ2Ugb3Igc3BsaXQgaW50
byB0d28gcGF0Y2hlcyB3aWxsIGJlIGJldHRlci4KPgo+Cj4+ICAgICAgICAgICAgICAgICBob3N0
LT5wbWVjY19jd19sZW4gPSAoMSA8PCBob3N0LT5wbWVjY19kZWdyZWUpIC0gMTsKPj4gICAgICAg
ICAgICAgICAgIGhvc3QtPnBtZWNjX3NlY3Rvcl9udW1iZXIgPSBtdGQtPndyaXRlc2l6ZSAvIHNl
Y3Rvcl9zaXplOwo+PiAgICAgICAgICAgICAgICAgaG9zdC0+cG1lY2NfYnl0ZXNfcGVyX3NlY3Rv
ciA9IHBtZWNjX2dldF9lY2NfYnl0ZXMoCj4+Cj4KPiBCZXN0IFJlZ2FyZHMsCj4gQm8gU2hlbgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBiYXJl
Ym94IG1haWxpbmcgbGlzdAo+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
