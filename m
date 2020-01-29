Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlQw-0007iw-Ua
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 11:23:00 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 29 Jan 2020 12:22:51 +0100
Message-Id: <20200129112251.11515-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ubsan: use a big if block in Kconfig
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

QSBzaWRlIGVmZmVjdCAod2hpY2ggd2FzIHRoZSBtb3RpdmF0aW9uIGZvciB0aGlzIGNoYW5nZSkg
aXMgdGhhdCB0aGUKY29uZmlnIGl0ZW0gQ09ORklHX1VCU0FOX0FMSUdOTUVOVCBkb2Vzbid0IGFw
cGVhciBpbiBjb25maWd1cmF0aW9ucyB0aGF0CmhhdmUgQ09ORklHX1VCU0FOIGRpc2FibGVkLgoK
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBsaWIvS2NvbmZpZy51YnNhbiB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi9LY29u
ZmlnLnVic2FuIGIvbGliL0tjb25maWcudWJzYW4KaW5kZXggMDlmNGEwYWI4YWI4Li4yMjk1OGY0
ODAxMWUgMTAwNjQ0Ci0tLSBhL2xpYi9LY29uZmlnLnVic2FuCisrKyBiL2xpYi9LY29uZmlnLnVi
c2FuCkBAIC05LDkgKzksMTAgQEAgY29uZmlnIFVCU0FOCiAJICBDb21waWxlLXRpbWUgaW5zdHJ1
bWVudGF0aW9uIGlzIHVzZWQgdG8gZGV0ZWN0IHZhcmlvdXMgdW5kZWZpbmVkCiAJICBiZWhhdmlv
dXJzIGluIHJ1bnRpbWUuCiAKK2lmIFVCU0FOCisKIGNvbmZpZyBVQlNBTl9TQU5JVElaRV9BTEwK
IAlib29sICJFbmFibGUgaW5zdHJ1bWVudGF0aW9uIGZvciBhbGwgb2YgYmFyZWJveCIKLQlkZXBl
bmRzIG9uIFVCU0FOCiAJZGVwZW5kcyBvbiBBUkNIX0hBU19VQlNBTl9TQU5JVElaRV9BTEwKIAlk
ZWZhdWx0IHkKIAloZWxwCkBAIC0yMyw3ICsyNCw2IEBAIGNvbmZpZyBVQlNBTl9TQU5JVElaRV9B
TEwKIAogY29uZmlnIFVCU0FOX05PX0FMSUdOTUVOVAogCWJvb2wgIkRpc2FibGUgY2hlY2tpbmcg
b2YgcG9pbnRlcnMgYWxpZ25tZW50IgotCWRlcGVuZHMgb24gVUJTQU4KIAlkZWZhdWx0IHkgaWYg
SEFWRV9FRkZJQ0lFTlRfVU5BTElHTkVEX0FDQ0VTUwogCWhlbHAKIAkgIFRoaXMgb3B0aW9uIGRp
c2FibGVzIHRoZSBjaGVjayBvZiB1bmFsaWduZWQgbWVtb3J5IGFjY2Vzc2VzLgpAQCAtMzMsMyAr
MzMsNSBAQCBjb25maWcgVUJTQU5fTk9fQUxJR05NRU5UCiAKIGNvbmZpZyBVQlNBTl9BTElHTk1F
TlQKIAlkZWZfYm9vbCAhVUJTQU5fTk9fQUxJR05NRU5UCisKK2VuZGlmCi0tIAoyLjI0LjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
