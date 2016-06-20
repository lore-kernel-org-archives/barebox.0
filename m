Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEubS-00088m-DD
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 08:30:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 20 Jun 2016 10:30:17 +0200
Message-Id: <1466411417-25636-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mtd: nand: simplify nand_block_checkbad
To: barebox@lists.infradead.org

CWlmIChBKSB7CgkJaWYgKCFCKQoJCQlyZXR1cm4gQzsKCQlyZXR1cm4gRDsKCX0KCglyZXR1cm4g
QzsKCmNhbiBiZSBzaW1wbGlmaWVkIHRvOgoKCWlmIChBICYmIEIpCgkJcmV0dXJuIEQ7CgoJcmV0
dXJuIEM7CgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNlLmMgfCA1ICst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9uYW5kX2Jhc2UuYyBiL2RyaXZlcnMvbXRkL25hbmQv
bmFuZF9iYXNlLmMKaW5kZXggNjcwNzIwYTI4NDQ3Li40MjZhZDliZjhiMzAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNlLmMKKysrIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5k
X2Jhc2UuYwpAQCAtNDQ1LDEwICs0NDUsNyBAQCBzdGF0aWMgaW50IG5hbmRfYmxvY2tfY2hlY2ti
YWQoc3RydWN0IG10ZF9pbmZvICptdGQsIGxvZmZfdCBvZnMsIGludCBnZXRjaGlwLAogewogCXN0
cnVjdCBuYW5kX2NoaXAgKmNoaXAgPSBtdGQtPnByaXY7CiAKLQlpZiAoSVNfRU5BQkxFRChDT05G
SUdfTkFORF9CQlQpKSB7Ci0JCWlmICghY2hpcC0+YmJ0KQotCQkJcmV0dXJuIGNoaXAtPmJsb2Nr
X2JhZChtdGQsIG9mcywgZ2V0Y2hpcCk7Ci0KKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfTkFORF9C
QlQpICYmIGNoaXAtPmJidCkgewogCQkvKiBSZXR1cm4gaW5mbyBmcm9tIHRoZSB0YWJsZSAqLwog
CQlyZXR1cm4gbmFuZF9pc2JhZF9iYnQobXRkLCBvZnMsIGFsbG93YmJ0KTsKIAl9Ci0tIAoyLjgu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
