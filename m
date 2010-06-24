Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORnxT-00054T-G2
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 15:03:16 +0000
From: =?utf-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 24 Jun 2010 17:03:05 +0200
Message-Id: <1277391785-15380-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1277391785-15380-1-git-send-email-eric@eukrea.com>
References: <1277391785-15380-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] imx-ipu-fb: do not enable framebuffer on startup
To: barebox@lists.infradead.org

VGhlIGJvYXJkIGNvZGUgb3Igc3RhcnR1cCBzY3JpcHQgc2hvdWxkIGVuYWJsZSBpdCB3aGVuCml0
IGFjdHVhbGx5IHdhbnRzIHRvLgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1
a3JlYS5jb20+Ci0tLQogZHJpdmVycy92aWRlby9pbXgtaXB1LWZiLmMgfCAgICAyIC0tCiAxIGZp
bGVzIGNoYW5nZWQsIDAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3ZpZGVvL2lteC1pcHUtZmIuYyBiL2RyaXZlcnMvdmlkZW8vaW14LWlwdS1mYi5j
CmluZGV4IDg5OTRkYTQuLjQ1ZjIyMTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vaW14LWlw
dS1mYi5jCisrKyBiL2RyaXZlcnMvdmlkZW8vaW14LWlwdS1mYi5jCkBAIC04OTUsOCArODk1LDYg
QEAgc3RhdGljIGludCBpbXhmYl9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAkJcmV0dXJu
IHJldDsKIAl9CiAKLQlpcHVfZmJfZW5hYmxlKGluZm8pOwotCiAJcmV0dXJuIDA7CiB9CiAKLS0g
CjEuNi4zLjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
