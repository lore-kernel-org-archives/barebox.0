Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpJwf-0004Ul-Uu
 for barebox@lists.infradead.org; Wed, 28 Sep 2016 18:51:07 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 28 Sep 2016 20:50:15 +0200
Message-Id: <20160928185017.25002-6-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20160928185017.25002-1-u.kleine-koenig@pengutronix.de>
References: <20160928185017.25002-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 5/7] scripts: kwboot: simplify kwboot_mmap_image
To: barebox@lists.infradead.org

VGhlcmUgd2FzIG9ubHkgYSBzaW5nbGUgY2FsbGVyIHdobyBwYXNzZXMgcHJvdD1QUk9UX1JFQUQg
dW5jb25kaXRpb25hbGx5LgpTbyBkcm9wIHRoaXMgcGFyYW1ldGVyIGFuZCBzaW1wbGlmeSBhY2Nv
cmRpbmdseS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc2NyaXB0cy9rd2Jvb3QuYyB8IDEwICsrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvc2NyaXB0cy9rd2Jvb3QuYyBiL3NjcmlwdHMva3dib290LmMKaW5kZXggNThlYTFhZDdh
N2IzLi4xZmNiNDliN2FjZGEgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMva3dib290LmMKKysrIGIvc2Ny
aXB0cy9rd2Jvb3QuYwpAQCAtNjU3LDkgKzY1Nyw5IEBAIGt3Ym9vdF9jaGVja19pbWFnZShjb25z
dCB1bnNpZ25lZCBjaGFyICppbWcsIHNpemVfdCBzaXplKQogfQogCiBzdGF0aWMgdm9pZCAqCi1r
d2Jvb3RfbW1hcF9pbWFnZShjb25zdCBjaGFyICpwYXRoLCBzaXplX3QgKnNpemUsIGludCBwcm90
KQora3dib290X21tYXBfaW1hZ2UoY29uc3QgY2hhciAqcGF0aCwgc2l6ZV90ICpzaXplKQogewot
CWludCByYywgZmQsIGZsYWdzOworCWludCByYywgZmQ7CiAJc3RydWN0IHN0YXQgc3Q7CiAJdm9p
ZCAqaW1nOwogCkBAIC02NzQsOSArNjc0LDcgQEAga3dib290X21tYXBfaW1hZ2UoY29uc3QgY2hh
ciAqcGF0aCwgc2l6ZV90ICpzaXplLCBpbnQgcHJvdCkKIAlpZiAocmMpCiAJCWdvdG8gb3V0Owog
Ci0JZmxhZ3MgPSAocHJvdCAmIFBST1RfV1JJVEUpID8gTUFQX1BSSVZBVEUgOiBNQVBfU0hBUkVE
OwotCi0JaW1nID0gbW1hcChOVUxMLCBzdC5zdF9zaXplLCBwcm90LCBmbGFncywgZmQsIDApOwor
CWltZyA9IG1tYXAoTlVMTCwgc3Quc3Rfc2l6ZSwgUFJPVF9SRUFELCBNQVBfU0hBUkVELCBmZCwg
MCk7CiAJaWYgKGltZyA9PSBNQVBfRkFJTEVEKSB7CiAJCWltZyA9IE5VTEw7CiAJCWdvdG8gb3V0
OwpAQCAtNzkzLDcgKzc5MSw3IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogCX0KIAog
CWlmIChpbWdwYXRoKSB7Ci0JCWltZyA9IGt3Ym9vdF9tbWFwX2ltYWdlKGltZ3BhdGgsICZzaXpl
LCBQUk9UX1JFQUQpOworCQlpbWcgPSBrd2Jvb3RfbW1hcF9pbWFnZShpbWdwYXRoLCAmc2l6ZSk7
CiAJCWlmICghaW1nKSB7CiAJCQlwZXJyb3IoaW1ncGF0aCk7CiAJCQlnb3RvIG91dDsKLS0gCjIu
OS4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
