Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U9wmS-0007n8-Hu
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 12:03:41 +0000
Received: from mail604.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C41BEFFB0B9
 for <barebox@lists.infradead.org>; Mon, 25 Feb 2013 13:14:31 +0100 (CET)
Date: Mon, 25 Feb 2013 13:02:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130225120236.GB10258@game.jcrosoft.org>
References: <1361435514-4474-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361435514-4474-1-git-send-email-fabio.porcedda@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fix compiler warnings: use puts() instead of printf()
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org, Vicente <vicencb@gmail.com>

T24gMDk6MzEgVGh1IDIxIEZlYiAgICAgLCBGYWJpbyBQb3JjZWRkYSB3cm90ZToKPiBVc2UgcHV0
cygpIGJlY2F1c2UgcHJpbnRmKCkgaXNuJ3QgbmVjZXNzYXJ5LAo+IHRvIGZpeCB0aGUgZm9sbG93
aW5nIGNvbXBpbGVyIHdhcm5pbmdzOgo+IAo+IC9iYXJlYm94L2NvbW1vbi9tZW51LmM6IEluIGZ1
bmN0aW9uIOKAmG1lbnVfc2hvd+KAmToKPiAvYmFyZWJveC9jb21tb24vbWVudS5jOjI3Nzo0OiB3
YXJuaW5nOiBmb3JtYXQgbm90IGEgc3RyaW5nIGxpdGVyYWwgYW5kIG5vIGZvcm1hdCBhcmd1bWVu
dHMgWy1XZm9ybWF0LXNlY3VyaXR5XQo+IAo+IC9iYXJlYm94L3NjcmlwdHMvb21hcDRfdXNiYm9v
dC5jOiBJbiBmdW5jdGlvbiDigJhyZWFkX2FzaWNfaWTigJk6Cj4gL2JhcmVib3gvc2NyaXB0cy9v
bWFwNF91c2Jib290LmM6MTAxOjM6IHdhcm5pbmc6IGZvcm1hdCBub3QgYSBzdHJpbmcgbGl0ZXJh
bCBhbmQgbm8gZm9ybWF0IGFyZ3VtZW50cyBbLVdmb3JtYXQtc2VjdXJpdHldCgpTYXNjaGEgcmV2
ZXJ0IHRoaXMgcGxlYXNlIHRoaXMgYWRkIGEgIlxuIiB0aGF0IHdlIGRvIG5vdCB3YW50CnNwZWNp
YWxseSBvbiB0aGUgbWVudQoKQmVzdCBSZWdhcmRzLApKLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZh
YmlvIFBvcmNlZGRhIDxmYWJpby5wb3JjZWRkYUBnbWFpbC5jb20+Cj4gQ2M6IEplYW4tQ2hyaXN0
b3BoZSBQTEFHTklPTC1WSUxMQVJEIDxwbGFnbmlvakBqY3Jvc29mdC5jb20+Cj4gQ2M6IFZpY2Vu
dGUgPHZpY2VuY2JAZ21haWwuY29tPgo+IC0tLQo+ICBjb21tb24vbWVudS5jICAgICAgICAgICB8
IDIgKy0KPiAgc2NyaXB0cy9vbWFwNF91c2Jib290LmMgfCAyICstCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9jb21t
b24vbWVudS5jIGIvY29tbW9uL21lbnUuYwo+IGluZGV4IGNlOTM4MzguLjMwZGNlZDcgMTAwNjQ0
Cj4gLS0tIGEvY29tbW9uL21lbnUuYwo+ICsrKyBiL2NvbW1vbi9tZW51LmMKPiBAQCAtMjc0LDcg
KzI3NCw3IEBAIGludCBtZW51X3Nob3coc3RydWN0IG1lbnUgKm0pCj4gIAkJCXByaW50ZigiQXV0
byBTZWxlY3QgaW4iKTsKPiAgCQl9IGVsc2Ugewo+ICAJCQlhdXRvX2Rpc3BsYXlfbGVuID0gc3Ry
bGVuKG0tPmF1dG9fZGlzcGxheSk7Cj4gLQkJCXByaW50ZihtLT5hdXRvX2Rpc3BsYXkpOwo+ICsJ
CQlwdXRzKG0tPmF1dG9fZGlzcGxheSk7Cj4gIAkJfQo+ICAJCXByaW50ZigiICUyZCIsIGNvdW50
ZG93bi0tKTsKPiAgCX0KPiBkaWZmIC0tZ2l0IGEvc2NyaXB0cy9vbWFwNF91c2Jib290LmMgYi9z
Y3JpcHRzL29tYXA0X3VzYmJvb3QuYwo+IGluZGV4IDhjNTc3NWQuLjM0ZTUzYzAgMTAwNjQ0Cj4g
LS0tIGEvc2NyaXB0cy9vbWFwNF91c2Jib290LmMKPiArKysgYi9zY3JpcHRzL29tYXA0X3VzYmJv
b3QuYwo+IEBAIC05OCw3ICs5OCw3IEBAIGludCByZWFkX2FzaWNfaWQoc3RydWN0IHVzYl9oYW5k
bGUgKnVzYikKPiAgCQkJc3ByaW50ZihsaW5lKzQraiozLCAiJTAyWCAiLCBpZFtpK2pdKTsKPiAg
CQlsaW5lWzQraiozKzBdID0gJ1xuJzsKPiAgCQlsaW5lWzQraiozKzFdID0gMDsKPiAtCQlwcmlu
dGYobGluZSk7Cj4gKwkJcHV0cyhsaW5lKTsKPiAgCX0KPiAgCXJldCA9IDA7Cj4gIAlmb3IgKGkg
PSAxLCBqID0gMDsgaSA8IHNpemVvZihpZCkgJiYgaiA8IGlkWzBdOyBpICs9IDIraWRbaSsxXSwg
aisrKSB7Cj4gLS0gCj4gMS44LjEuMQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
