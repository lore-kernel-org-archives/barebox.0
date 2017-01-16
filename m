Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT2Ei-0003pO-Lh
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 08:01:54 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 16 Jan 2017 09:01:25 +0100
Message-Id: <20170116080126.392-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/2] of: provice for_each_matching_node_from
To: barebox@lists.infradead.org

VGhpcyBpcyBmb3JfZWFjaF9tYXRjaGluZ19ub2RlIGZvciBhIGdpdmVuIHJvb3Qgc2ltaWxhciB0
byB0aGUgb3RoZXIKLi4uX2Zyb20gZnVuY3Rpb25zLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWlu
ZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBpbmNsdWRlL29m
LmggfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL29mLmggYi9pbmNsdWRlL29mLmgKaW5kZXggZWQ2
ZTg3MDQ3MzUwLi5lM2JiNDUyYjg2ZmEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvb2YuaAorKysgYi9p
bmNsdWRlL29mLmgKQEAgLTY2NSw5ICs2NjUsMTEgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZGV2
aWNlX25vZGUgKm9mX2ZpbmRfbWF0Y2hpbmdfbm9kZSgKIHsKIAlyZXR1cm4gb2ZfZmluZF9tYXRj
aGluZ19ub2RlX2FuZF9tYXRjaChmcm9tLCBtYXRjaGVzLCBOVUxMKTsKIH0KLSNkZWZpbmUgZm9y
X2VhY2hfbWF0Y2hpbmdfbm9kZShkbiwgbWF0Y2hlcykgXAotCWZvciAoZG4gPSBvZl9maW5kX21h
dGNoaW5nX25vZGUoTlVMTCwgbWF0Y2hlcyk7IGRuOyBcCisjZGVmaW5lIGZvcl9lYWNoX21hdGNo
aW5nX25vZGVfZnJvbShkbiwgcm9vdCwgbWF0Y2hlcykgXAorCWZvciAoZG4gPSBvZl9maW5kX21h
dGNoaW5nX25vZGUocm9vdCwgbWF0Y2hlcyk7IGRuOyBcCiAJICAgICBkbiA9IG9mX2ZpbmRfbWF0
Y2hpbmdfbm9kZShkbiwgbWF0Y2hlcykpCisjZGVmaW5lIGZvcl9lYWNoX21hdGNoaW5nX25vZGUo
ZG4sIG1hdGNoZXMpIFwKKwlmb3JfZWFjaF9tYXRjaGluZ19ub2RlX2Zyb20oZG4sIE5VTEwsIG1h
dGNoZXMpCiAjZGVmaW5lIGZvcl9lYWNoX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKGRuLCBtYXRj
aGVzLCBtYXRjaCkgXAogCWZvciAoZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNo
KE5VTEwsIG1hdGNoZXMsIG1hdGNoKTsgXAogCSAgICAgZG47IGRuID0gb2ZfZmluZF9tYXRjaGlu
Z19ub2RlX2FuZF9tYXRjaChkbiwgbWF0Y2hlcywgbWF0Y2gpKQotLSAKMi4xMS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
