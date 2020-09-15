Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI7Ou-0000lD-Mb
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 09:37:25 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 15 Sep 2020 11:37:21 +0200
Message-Id: <20200915093721.25213-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] scripts/kwbimage: Fix a build warning
To: barebox@lists.infradead.org

VGhpcyBmaXhlczoKCglzY3JpcHRzL2t3YmltYWdlLmM6MjUzOjU6IHdhcm5pbmc6IG5vIHByZXZp
b3VzIHByb3RvdHlwZSBmb3Ig4oCYaW1hZ2VfbmFuZF9lY2NfbW9kZV9pZOKAmSBbLVdtaXNzaW5n
LXByb3RvdHlwZXNdCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIHNjcmlwdHMva3diaW1hZ2UuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3NjcmlwdHMva3diaW1hZ2UuYyBiL3NjcmlwdHMva3diaW1hZ2UuYwppbmRleCBkYjY2ZjcwNjBk
Y2IuLjI2ZWIwN2ZhODFiYyAxMDA2NDQKLS0tIGEvc2NyaXB0cy9rd2JpbWFnZS5jCisrKyBiL3Nj
cmlwdHMva3diaW1hZ2UuYwpAQCAtMjUwLDcgKzI1MCw3IEBAIHN0YXRpYyBjb25zdCBjaGFyICpp
bWFnZV9uYW5kX2VjY19tb2RlX25hbWUodW5zaWduZWQgaW50IGlkKQogCXJldHVybiBOVUxMOwog
fQogCi1pbnQgaW1hZ2VfbmFuZF9lY2NfbW9kZV9pZChjb25zdCBjaGFyICpuYW5kX2VjY19tb2Rl
X25hbWUpCitzdGF0aWMgaW50IGltYWdlX25hbmRfZWNjX21vZGVfaWQoY29uc3QgY2hhciAqbmFu
ZF9lY2NfbW9kZV9uYW1lKQogewogCWludCBpOwogCWZvciAoaSA9IDA7IG5hbmRfZWNjX21vZGVz
W2ldLm5hbWU7IGkrKykKLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
