Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBS17-0004gY-6a
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 16:41:34 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  6 Feb 2014 17:40:51 +0100
Message-Id: <1391704854-3141-7-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 6/9] net: new function net_read_uint64
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KClRoaXMgaXMg
bmVlZGVkIGZvciBuZnMzIHN1cHBvcnQgYXMgc29tZSB0eXBlcyBiZWNhbWUgYmlnZ2VyIGNvbXBh
cmVkIHRvCm5mczIuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWlu
ZS1rb2VuaWcub3JnPgotLS0KIGluY2x1ZGUvbmV0LmggfCA3ICsrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC5oIGIvaW5jbHVk
ZS9uZXQuaAppbmRleCA4Mzg4ZTJmMTJlYmUuLjZjODY5NDdkOWNhMyAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9uZXQuaAorKysgYi9pbmNsdWRlL25ldC5oCkBAIC0yNzYsNiArMjc2LDEzIEBAIHN0YXRp
YyBpbmxpbmUgdWludDMyX3QgbmV0X3JlYWRfdWludDMyKHZvaWQgKmZyb20pCiAJcmV0dXJuIHRt
cDsKIH0KIAorc3RhdGljIGlubGluZSB1aW50NjRfdCBuZXRfcmVhZF91aW50NjQodm9pZCAqZnJv
bSkKK3sKKwl1aW50NjRfdCB0bXA7CisJbWVtY3B5KCZ0bXAsIGZyb20sIHNpemVvZih0bXApKTsK
KwlyZXR1cm4gdG1wOworfQorCiAvKiB3cml0ZSBJUCAqaW4gbmV0d29yayBieXRlb3JkZXIqICov
CiBzdGF0aWMgaW5saW5lIHZvaWQgbmV0X3dyaXRlX2lwKHZvaWQgKnRvLCBJUGFkZHJfdCBpcCkK
IHsKLS0gCjEuOC41LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
