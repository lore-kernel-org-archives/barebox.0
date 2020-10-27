Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXSxT-0001fY-VI
 for barebox@lists.infradead.org; Tue, 27 Oct 2020 17:40:32 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 27 Oct 2020 18:40:25 +0100
Message-Id: <20201027174025.23228-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] usb: i.MX: warn if vbus regulator isn't available
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>

SW5zdGVhZCBvZiBqdXN0IGlnbm9yaW5nIGVycm9ycyByZWxhdGVkIHRvIHJlZ3VsYXRvciB5aWVs
ZCBhdCBsZWFzdCBhCndhcm5pbmcgbWVzc2FnZS4KCkluIGNhc2UgdGhlcmUgaXMgbm8gcmVndWxh
dG9yIGluIHRoZSBkZXZpY2UgdHJlZSwgcmVndWxhdG9yX2dldCgpIHJldHVybnMKdGhlIGR1bW15
IHJlZ3VsYXRvciBhbmQgbm90IGFuIGVycm9yIGNvZGUuIFRoZSBhbHRlcm5hdGl2ZSB0byBlcnJv
ciBvdXQKd2Fzbid0IGFjY2VwdGVkIGJlY2F1c2UgdGhpcyBwcm9iYWJseSBjcmVhdGVzIHJlZ3Jl
c3Npb25zIGZvciByZWd1bGF0b3JzCnRoYXQgYXJlIGRlZmF1bHQtb24gYnV0IHdpdGhvdXQgYSBk
cml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvdXNiL2lteC9jaGlwaWRlYS1pbXguYyB8IDUg
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9pbXgvY2hpcGlkZWEtaW14LmMgYi9kcml2ZXJzL3VzYi9p
bXgvY2hpcGlkZWEtaW14LmMKaW5kZXggNzg2YmVlZGU2ZDg5Li5hZDNlYjlhYTM1YWEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvdXNiL2lteC9jaGlwaWRlYS1pbXguYworKysgYi9kcml2ZXJzL3VzYi9p
bXgvY2hpcGlkZWEtaW14LmMKQEAgLTI2Nyw4ICsyNjcsMTEgQEAgc3RhdGljIGludCBpbXhfY2hp
cGlkZWFfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJfQogCiAJY2ktPnZidXMgPSByZWd1
bGF0b3JfZ2V0KGRldiwgInZidXMiKTsKLQlpZiAoSVNfRVJSKGNpLT52YnVzKSkKKwlpZiAoSVNf
RVJSKGNpLT52YnVzKSkgeworCQlyZXQgPSBFUlJfUFRSKGNpLT52YnVzKTsKKwkJZGV2X3dhcm4o
ZGV2LCAiQ2Fubm90IGdldCB2YnVzIHJlZ3VsYXRvcjogJXMgKGlnbm9yaW5nKVxuIiwgc3RyZXJy
b3IoLXJldCkpOwogCQljaS0+dmJ1cyA9IE5VTEw7CisJfQogCiAJLyoKIAkgKiBTb21lIGRldmlj
ZXMgaGF2ZSBtb3JlIHRoYW4gb25lIGNsb2NrLCBpbiB0aGlzIGNhc2UgdGhleSBhcmUgZW5hYmxl
ZAotLSAKMi4yOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
