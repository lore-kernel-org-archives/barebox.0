Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw3xz-0003Ks-7t
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 09:44:37 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  6 Apr 2017 11:44:09 +0200
Message-Id: <20170406094409.26525-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] new make helper to decode binaries using base64
To: barebox@lists.infradead.org

VGhpcyBpcyBoZWxwZnVsIHRvIHByb3ZpZGUgbXZlYnUgYmluYXJ5LjAgaW1hZ2VzIHdpdGggYSBw
YXRjaC4gV2hlbgphZGRlZCBkaXJlY3RseSBhIGJpbmFyeSBwYXRjaCBpcyBuZWVkZWQgd2hpY2gg
aXNuJ3QgdW5kZXJzdG9vZCBieQpwYXRjaCgxKS4KCkFzIGl0J3MgKGF0IGxlYXN0KSB1bmNsZWFy
IGlmIHRoZXNlIGltYWdlcyBhcmUgZGlzdHJpYnV0YWJsZSBpbiBnZW5lcmFsCkkgZG9uJ3QgcHJv
dmlkZSBhIHBhdGNoIG1ha2luZyB1c2Ugb2YgdGhpcywgYnV0IHRoZSBwYXR0ZXJuIGlzIGFzCmZv
bGxvd3M6IEFkZAoKCSQob2JqKS9zdGFydF9uZXRnZWFyX3JuMjEyMC5wYmx4Lmt3YmltZzogJChi
b2FyZCkvbmV0Z2Vhci1ybjIxMjAvYmluYXJ5LjAKCnRvIGltYWdlcy9NYWtlZmlsZS5tdmVidSBh
bmQgdGhlbiBwdXQgYSBiaW5hcnkuMC5iYXNlNjQgaW50byB0aGUgYm9hcmQKZm9sZGVyLgoKU2ln
bmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZT4KLS0tCiBzY3JpcHRzL01ha2VmaWxlLmxpYiB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9NYWtlZmlsZS5saWIgYi9z
Y3JpcHRzL01ha2VmaWxlLmxpYgppbmRleCBlNzk5OThjMWI5YWUuLmIwODRiYWNhYmU4NCAxMDA2
NDQKLS0tIGEvc2NyaXB0cy9NYWtlZmlsZS5saWIKKysrIGIvc2NyaXB0cy9NYWtlZmlsZS5saWIK
QEAgLTQ0OCwzICs0NDgsOSBAQCBxdWlldF9jbWRfY2Jvb3RfYmN0ID0gQkNUICAgICAkQAogCiAk
KG9iaikvJS5iY3Q6ICQob2JqKS8lLmJjdC5jZmcKIAkkKGNhbGwgY21kLGNib290X2JjdCkKKwor
cXVpZXRfY21kX2I2NGRlYyA9IEI2NERFQyAgJEAKKyAgICAgIGNtZF9iNjRkZWMgPSBiYXNlNjQg
LWQgJDwgPiAkQAorCislOiAlLmJhc2U2NAorCSQoY2FsbCBjbWQsYjY0ZGVjKQotLSAKMi4xMS4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
