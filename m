Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2fI-0003hj-6A
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:20:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Mar 2017 14:20:07 +0100
Message-Id: <20170323132007.26629-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: fix reading data from page that needs cleanup
To: Barebox List <barebox@lists.infradead.org>

bXRkX3JlYWTCtCgpIHJldHVybnMgLUVVQ0xFQU4gdG8gaW5kaWNhdGUgdGhhdCBhIHBhZ2UgbmVl
ZHMgY2xlYW51cC4KVGhpcyB2YWx1ZSBzaG91bGRuJ3QgYmUgcmV0dXJuZWQgZnJvbSB0aGUgbXRk
IHJlYWQgZmlsZSBvcGVyYXRpb24Kc2luY2UgdGhpcyBzaG91bGQgcmV0dXJuIHRoZSBudW1iZXIg
b2YgYnl0ZXMgcmVhZC4KClNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL210ZC9jb3JlLmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvY29yZS5jIGIvZHJpdmVycy9tdGQvY29yZS5jCmluZGV4IDkwYjgwMGM3YjIuLjRl
N2JmZGIzZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL2NvcmUuYworKysgYi9kcml2ZXJzL210
ZC9jb3JlLmMKQEAgLTEwNSwxMSArMTA1LDEwIEBAIHN0YXRpYyBzc2l6ZV90IG10ZF9vcF9yZWFk
KHN0cnVjdCBjZGV2ICpjZGV2LCB2b2lkKiBidWYsIHNpemVfdCBjb3VudCwKIAkJCW9mZnNldCwg
Y291bnQpOwogCiAJcmV0ID0gbXRkX3JlYWQobXRkLCBvZmZzZXQsIGNvdW50LCAmcmV0bGVuLCBi
dWYpOwotCWlmIChyZXQgPCAwKQorCWlmIChyZXQgPCAwICYmIHJldCAhPSAtRVVDTEVBTikKIAkJ
cmV0dXJuIHJldDsKLQlpZiAobXRkLT5lY2Nfc3RyZW5ndGggPT0gMCkKLQkJcmV0dXJuIHJldGxl
bjsJLyogZGV2aWNlIGxhY2tzIGVjYyAqLwotCXJldHVybiByZXQgPj0gbXRkLT5iaXRmbGlwX3Ro
cmVzaG9sZCA/IC1FVUNMRUFOIDogcmV0bGVuOworCisJcmV0dXJuIHJldGxlbjsKIH0KIAogI2Rl
ZmluZSBOT1RBTElHTkVEKHgpICh4ICYgKG10ZC0+d3JpdGVzaXplIC0gMSkpICE9IDAKLS0gCjIu
MTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
