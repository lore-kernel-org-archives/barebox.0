Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT2I4-00049Q-R4
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 08:05:26 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 16 Jan 2017 09:04:57 +0100
Message-Id: <20170116080457.2416-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170116080126.392-1-u.kleine-koenig@pengutronix.de>
References: <20170116080126.392-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 1/2] of: provide for_each_matching_node_from
To: barebox@lists.infradead.org

VGhpcyBpcyBmb3JfZWFjaF9tYXRjaGluZ19ub2RlIGZvciBhIGdpdmVuIHJvb3Qgc2ltaWxhciB0
byB0aGUgb3RoZXIKLi4uX2Zyb20gZnVuY3Rpb25zLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWlu
ZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCkNoYW5nZXMgc2lu
Y2UgdjE6CiAtIGZpeCB0eXBvIGluIFN1YmplY3QKCiBpbmNsdWRlL29mLmggfCA2ICsrKystLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9pbmNsdWRlL29mLmggYi9pbmNsdWRlL29mLmgKaW5kZXggZWQ2ZTg3MDQ3MzUwLi5lM2Ji
NDUyYjg2ZmEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvb2YuaAorKysgYi9pbmNsdWRlL29mLmgKQEAg
LTY2NSw5ICs2NjUsMTEgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX2Zp
bmRfbWF0Y2hpbmdfbm9kZSgKIHsKIAlyZXR1cm4gb2ZfZmluZF9tYXRjaGluZ19ub2RlX2FuZF9t
YXRjaChmcm9tLCBtYXRjaGVzLCBOVUxMKTsKIH0KLSNkZWZpbmUgZm9yX2VhY2hfbWF0Y2hpbmdf
bm9kZShkbiwgbWF0Y2hlcykgXAotCWZvciAoZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGUoTlVM
TCwgbWF0Y2hlcyk7IGRuOyBcCisjZGVmaW5lIGZvcl9lYWNoX21hdGNoaW5nX25vZGVfZnJvbShk
biwgcm9vdCwgbWF0Y2hlcykgXAorCWZvciAoZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGUocm9v
dCwgbWF0Y2hlcyk7IGRuOyBcCiAJICAgICBkbiA9IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZShkbiwg
bWF0Y2hlcykpCisjZGVmaW5lIGZvcl9lYWNoX21hdGNoaW5nX25vZGUoZG4sIG1hdGNoZXMpIFwK
Kwlmb3JfZWFjaF9tYXRjaGluZ19ub2RlX2Zyb20oZG4sIE5VTEwsIG1hdGNoZXMpCiAjZGVmaW5l
IGZvcl9lYWNoX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKGRuLCBtYXRjaGVzLCBtYXRjaCkgXAog
CWZvciAoZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIG1hdGNoZXMs
IG1hdGNoKTsgXAogCSAgICAgZG47IGRuID0gb2ZfZmluZF9tYXRjaGluZ19ub2RlX2FuZF9tYXRj
aChkbiwgbWF0Y2hlcywgbWF0Y2gpKQotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
