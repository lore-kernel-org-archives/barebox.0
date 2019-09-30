Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEpNQ-0001Ly-H0
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 06:41:46 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon, 30 Sep 2019 08:41:37 +0200
Message-Id: <20190930064137.2091-3-u.oelmann@pengutronix.de>
In-Reply-To: <20190930064137.2091-1-u.oelmann@pengutronix.de>
References: <20190930064137.2091-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 3/3] common: state: fix backward compatibility
To: Barebox List <barebox@lists.infradead.org>

VGhpcyByZXZlcnRzIFsxXSBhcyBpdCBhbm5paGlsYXRlZCBpdHMgY291bnRlcnBhcnQgb2YgY29t
bWl0IFsyXS4KClsxXSA1MDMzYjRmNThmNzEgKCJjb21tb246IHN0YXRlOiBoYXJtb25pemUgY29k
ZSB3aXRoIGR0LXV0aWxzIikKWzJdIDQ4MGNkZTFiMjI4MyAoInN0YXRlOiBrZWVwIGJhY2t3YXJk
IGNvbXBhdGliaWxpdHkiKQoKRml4ZXM6IDUwMzNiNGY1OGY3MSAoImNvbW1vbjogc3RhdGU6IGhh
cm1vbml6ZSBjb2RlIHdpdGggZHQtdXRpbHMiKQpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5ZsbWFu
biA8dS5vZWxtYW5uQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1
Y2tldF9kaXJlY3QuYyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9jb21tb24vc3RhdGUvYmFja2VuZF9idWNrZXRfZGlyZWN0LmMgYi9jb21tb24v
c3RhdGUvYmFja2VuZF9idWNrZXRfZGlyZWN0LmMKaW5kZXggMGRiZDMzNGRiODIxLi40NTIyZjAx
NzBmM2QgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9kaXJlY3QuYwor
KysgYi9jb21tb24vc3RhdGUvYmFja2VuZF9idWNrZXRfZGlyZWN0LmMKQEAgLTExNSw5ICsxMTUs
NiBAQCBzdGF0aWMgaW50IHN0YXRlX2JhY2tlbmRfYnVja2V0X2RpcmVjdF93cml0ZShzdHJ1Y3Qg
c3RhdGVfYmFja2VuZF9zdG9yYWdlX2J1Y2tldAogCWludCByZXQ7CiAJc3RydWN0IHN0YXRlX2Jh
Y2tlbmRfc3RvcmFnZV9idWNrZXRfZGlyZWN0X21ldGEgbWV0YTsKIAotCWlmIChsZW4gPiBkaXJl
Y3QtPm1heF9zaXplIC0gc2l6ZW9mKG1ldGEpKQotCQlyZXR1cm4gLUUyQklHOwotCiAJaWYgKGxz
ZWVrKGRpcmVjdC0+ZmQsIGRpcmVjdC0+b2Zmc2V0LCBTRUVLX1NFVCkgIT0gZGlyZWN0LT5vZmZz
ZXQpIHsKIAkJZGV2X2VycihkaXJlY3QtPmRldiwgIkZhaWxlZCB0byBzZWVrIGZpbGUsICVkXG4i
LCAtZXJybm8pOwogCQlyZXR1cm4gLWVycm5vOwotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
