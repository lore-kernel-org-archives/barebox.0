Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRX5a-00027K-2I
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 08:20:07 +0000
Date: Thu, 23 Apr 2020 10:20:04 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <2053652965.16952554.1587630004198.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200423081712.4022-8-cleger@kalray.eu>
References: <20200423081712.4022-1-cleger@kalray.eu>
 <20200423081712.4022-8-cleger@kalray.eu>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 6/6] mips: lib: bootm: use new data->elf member
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

SGksCgotLS0tLSBPbiAyMyBBcHIsIDIwMjAsIGF0IDEwOjE3LCBDbMOpbWVudCBMZWdlciBjbGVn
ZXJAa2FscmF5LmV1IHdyb3RlOgoKPiBOb3cgdGhhdCB0aGUgZWxmIGZpbGUgaXMgbG9hZGVkIGJ5
IHRoZSBib290bSBjb3JlLCB1c2UgdGhpcyBmaWVsZAo+IGRpcmVjdGx5IGluc3RlYWQgb2YgbWFu
dWFsbHkgbG9hZGluZyB0aGUgZWxmIGZpbGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2xlbWVudCBM
ZWdlciA8Y2xlZ2VyQGthbHJheS5ldT4KPiAtLS0KPiBhcmNoL21pcHMvbGliL2Jvb3RtLmMgfCAx
MyArKy0tLS0tLS0tLS0tCj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9saWIvYm9vdG0uYyBiL2FyY2gv
bWlwcy9saWIvYm9vdG0uYwo+IGluZGV4IDViYjA5Y2MyZC4uMWU1ZmRkNGFlIDEwMDY0NAo+IC0t
LSBhL2FyY2gvbWlwcy9saWIvYm9vdG0uYwo+ICsrKyBiL2FyY2gvbWlwcy9saWIvYm9vdG0uYwo+
IEBAIC00NiwxOCArNDYsMTAgQEAgc3RhdGljIHN0cnVjdCBiaW5mbXRfaG9vayBiaW5mbXRfYmFy
ZWJveF9ob29rID0gewo+IHN0YXRpYyBpbnQgZG9fYm9vdG1fZWxmKHN0cnVjdCBpbWFnZV9kYXRh
ICpkYXRhKQo+IHsKPiAJdm9pZCAoKmVudHJ5KShpbnQsIHZvaWQgKik7Cj4gLQlzdHJ1Y3QgZWxm
X2ltYWdlICplbGY7Cj4gLQl2b2lkICpmZHQsICpidWY7Cj4gKwlzdHJ1Y3QgZWxmX2ltYWdlICpl
bGYgPSBkYXRhLT5lbGY7Cj4gKwl2b2lkICpmZHQ7Cj4gCWludCByZXQgPSAwOwo+IAo+IC0JYnVm
ID0gcmVhZF9maWxlKGRhdGEtPm9zX2ZpbGUsIE5VTEwpOwo+IC0JaWYgKCFidWYpCj4gLQkJcmV0
dXJuIC1FSU5WQUw7Cj4gLQo+IC0JZWxmID0gZWxmX2xvYWRfaW1hZ2UoYnVmKTsKPiAtCWlmIChJ
U19FUlIoZWxmKSkKPiAtCQlyZXR1cm4gUFRSX0VSUihlbGYpOwo+IC0KPiAJZmR0ID0gYm9vdG1f
Z2V0X2RldmljZXRyZWUoZGF0YSk7Cj4gCWlmIChJU19FUlIoZmR0KSkgewo+IAkJcmV0ID0gUFRS
X0VSUihmZHQpOwo+IEBAIC04Miw3ICs3NCw2IEBAIHN0YXRpYyBpbnQgZG9fYm9vdG1fZWxmKHN0
cnVjdCBpbWFnZV9kYXRhICpkYXRhKQo+IGJvb3RtX2VsZl9kb25lOgo+IAllbGZfcmVsZWFzZV9p
bWFnZShlbGYpOwo+IAlmcmVlKGZkdCk7Cj4gLQlmcmVlKGJ1Zik7Cj4gCj4gCXJldHVybiByZXQ7
Cj4gfQoKSSdtIHNvcnJ5LCBUaGlzIHBhdGNoIGlzIGEgbGVmdG92ZXIgZnJvbSBteSBwcmV2aW91
cyBzZXJpZSBhbmQgYXMgc3VjaCBzaG91bGQgYmUgZHJvcHBlZC4KVGhlIG90aGVyIG1pcHMgcGF0
Y2ggY2xlYW5zIHRoZSBNSVBTIGVsZiBsb2FkaW5nIGNvZGUgbW9yZSB0aG9yb3VnaGx5LgoKPiAt
LQo+IDIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
