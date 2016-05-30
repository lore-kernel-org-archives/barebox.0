Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7JgT-00042p-Le
 for barebox@lists.infradead.org; Mon, 30 May 2016 09:40:30 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 30 May 2016 11:39:52 +0200
Message-Id: <1464601193-20832-2-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1464601193-20832-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1464601193-20832-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/3] eeprom: at24: check return value of devfs_create and fix
 error path
To: barebox@lists.infradead.org

aWYgZGV2ZnNfY3JlYXRlIGZhaWxlZCBiZWNhdXNlICJlZXByb20wIiBhbHJlYWR5IGV4aXN0cwpv
Zl9wYXJzZV9wYXJ0aXRpb25zIG11c3Qgbm90IGJlIGNhbGxlZCwgb3RoZXJ3aXNlIHRoZSBhbHJl
YWR5IGV4aXN0aW5nCmVlcHJvbSBnZXRzIGFzc2lnbmVkIHBhcnRpdGlvbnMgdGhhdCBkb24ndCBi
ZWxvZyB0aGVyZS4KCkFsc28gZnJlZSBkdW1teSBjbGllbnRzIGluIHRoZSBlcnJvciBwYXRoIGFu
ZCB0aGUgd3JpdGUgcHJvdGVjdCBncGlvCm9ubHkgaWYgaXQgaXMgYWN0dWFsbHkgdmFsaWQuCgpT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPgotLS0KIGRyaXZlcnMvZWVwcm9tL2F0MjQuYyB8IDExICsrKysrKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZWVwcm9tL2F0MjQuYyBiL2RyaXZlcnMvZWVwcm9tL2F0MjQuYwppbmRleCBhMzIz
ZDI1ZGQ0OTQuLjBmNTRkMWI2ZGU1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9lZXByb20vYXQyNC5j
CisrKyBiL2RyaXZlcnMvZWVwcm9tL2F0MjQuYwpAQCAtNDgwLDE0ICs0ODAsMjEgQEAgc3RhdGlj
IGludCBhdDI0X3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQl9CiAJfQogCi0JZGV2ZnNf
Y3JlYXRlKCZhdDI0LT5jZGV2KTsKKwllcnIgPSBkZXZmc19jcmVhdGUoJmF0MjQtPmNkZXYpOwor
CWlmIChlcnIpCisJCWdvdG8gZXJyX2RldmZzX2NyZWF0ZTsKIAogCW9mX3BhcnNlX3BhcnRpdGlv
bnMoJmF0MjQtPmNkZXYsIGRldi0+ZGV2aWNlX25vZGUpOwogCiAJcmV0dXJuIDA7CiAKK2Vycl9k
ZXZmc19jcmVhdGU6CiBlcnJfY2xpZW50czoKLQlncGlvX2ZyZWUoYXQyNC0+d3BfZ3Bpbyk7CisJ
Zm9yIChpID0gMTsgaSA8IG51bV9hZGRyZXNzZXM7IGkrKykKKwkJa2ZyZWUoYXQyNC0+Y2xpZW50
W2ldKTsKKworCWlmIChncGlvX2lzX3ZhbGlkKGF0MjQtPndwX2dwaW8pKQorCQlncGlvX2ZyZWUo
YXQyNC0+d3BfZ3Bpbyk7CiAJa2ZyZWUoYXQyNC0+d3JpdGVidWYpOwogCWtmcmVlKGF0MjQpOwog
ZXJyX291dDoKLS0gCjIuOC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
