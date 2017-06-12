Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKXyf-0005dJ-7r
 for barebox@lists.infradead.org; Mon, 12 Jun 2017 22:38:30 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 13 Jun 2017 00:37:49 +0200
Message-Id: <20170612223749.13780-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ARM: mvebu: fix size mask for RAM window
To: barebox@lists.infradead.org

VGhlIHNpemUgZmllbGQgaW4gdGhlIHdpbmRvdyBjb250cm9sIHJlZ2lzdGVyIG9jY3VwaWVzIGJp
dHMgMzE6MTYuIFNvCmFkYXB0IEFSTUFEQV8zNzBfWFBfRERSX1NJWkVfTUFTSyBhY2NvcmRpbmds
eS4gVGhpcyBmaXhlcyBkZXRlY3Rpb24gb2YKUkFNIGNoaXBzIHNtYWxsZXIgdGhhbiAzMiBNaUIg
YW5kIHNvIHByb2JhYmx5IGRvZXNuJ3QgYWZmZWN0IGFueQpzdXBwb3J0ZWQgbWFjaGluZS4KClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogYXJjaC9hcm0vbWFjaC1tdmVidS9jb21tb24uYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL21hY2gtbXZlYnUvY29tbW9uLmMgYi9hcmNoL2FybS9tYWNoLW12ZWJ1L2NvbW1vbi5jCmlu
ZGV4IDA2YmZiNzI2MTU0NC4uZmE5NzFkYTExZTc1IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNo
LW12ZWJ1L2NvbW1vbi5jCisrKyBiL2FyY2gvYXJtL21hY2gtbXZlYnUvY29tbW9uLmMKQEAgLTQ3
LDcgKzQ3LDcgQEAKICNkZWZpbmUgQVJNQURBXzM3MF9YUF9TRFJBTV9CQVNFCShJT01FTShNVkVC
VV9SRU1BUF9JTlRfUkVHX0JBU0UpICsgMHgyMDAwMCkKICNkZWZpbmUgQVJNQURBXzM3MF9YUF9E
RFJfU0laRV9DU24obikJKDB4MTg0ICsgKChuKSAqIDB4OCkpCiAjZGVmaW5lIEFSTUFEQV8zNzBf
WFBfRERSX1NJWkVfRU5BQkxFRAlCSVQoMCkKLSNkZWZpbmUgQVJNQURBXzM3MF9YUF9ERFJfU0la
RV9NQVNLCTB4ZmYwMDAwMDAKKyNkZWZpbmUgQVJNQURBXzM3MF9YUF9ERFJfU0laRV9NQVNLCTB4
ZmZmZjAwMDAKIAogLyoKICAqIE1hcnZlbGwgTVZFQlUgU29DIGlkIGFuZCByZXZpc2lvbiBjYW4g
YmUgcmVhZCBmcm9tIGFueSBQQ0llCi0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
