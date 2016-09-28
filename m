Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpJwf-0004Uk-V2
 for barebox@lists.infradead.org; Wed, 28 Sep 2016 18:51:07 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 28 Sep 2016 20:50:13 +0200
Message-Id: <20160928185017.25002-4-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/7] scripts: kwboot: improve diagnostic output
To: barebox@lists.infradead.org

QWZ0ZXIgZW50ZXJpbmcgdWFydCBib290IG1vZGUgdGhlIENQVSBwcmludHMgc29tZSBkaWFnbm9z
dGljIG1lc3NhZ2VzLgpTaG93aW5nIHRoZW0gdG8gdGhlIHVzZXIgaGVscHMgaGVyIHRvIG5vdGlj
ZSB3aGVuIHRoZSBtZXNzYWdlIHdpbmRvdyB3YXMKbWlzc2VkIG9yIHRoZXJlIGlzIGFuIG90aGVy
IHByb2JsZW0uCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIHNjcmlwdHMva3dib290LmMgfCAxNSArKysrKysrKysr
KystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NjcmlwdHMva3dib290LmMgYi9zY3JpcHRzL2t3Ym9vdC5jCmluZGV4IDlk
ZmFmNGE4ZGZiMC4uMGEwODliNTkzNjI1IDEwMDY0NAotLS0gYS9zY3JpcHRzL2t3Ym9vdC5jCisr
KyBiL3NjcmlwdHMva3dib290LmMKQEAgLTksNiArOSw3IEBACiAgKiAgIDIwMDguIENoYXB0ZXIg
MjQuMiAiQm9vdFJPTSBGaXJtd2FyZSIuCiAgKi8KIAorI2luY2x1ZGUgPGN0eXBlLmg+CiAjaW5j
bHVkZSA8c3RkbGliLmg+CiAjaW5jbHVkZSA8c3RkaW8uaD4KICNpbmNsdWRlIDxzdHJpbmcuaD4K
QEAgLTI4NSwxMiArMjg2LDIwIEBAIGt3Ym9vdF9ib290bXNnKGludCB0dHksIHZvaWQgKm1zZykK
IAkJfQogCiAJCXJjID0ga3dib290X3R0eV9yZWN2KHR0eSwgJmMsIDEsIEtXQk9PVF9NU0dfUlNQ
X1RJTUVPKTsKLQotCQlrd2Jvb3Rfc3Bpbm5lcigpOworCQl3aGlsZSAoIXJjICYmIGMgIT0gTkFL
KSB7CisJCQlpZiAoYyA9PSAnXFwnKQorCQkJCWt3Ym9vdF9wcmludHYoIlxcXFwiLCBjKTsKKwkJ
CWVsc2UgaWYgKGlzcHJpbnQoYykgfHwgYyA9PSAnXHInIHx8IGMgPT0gJ1xuJykKKwkJCQlrd2Jv
b3RfcHJpbnR2KCIlYyIsIGMpOworCQkJZWxzZQorCQkJCWt3Ym9vdF9wcmludHYoIlxceCUwMmho
eCIsIGMpOworCisJCQlyYyA9IGt3Ym9vdF90dHlfcmVjdih0dHksICZjLCAxLCBLV0JPT1RfTVNH
X1JTUF9USU1FTyk7CisJCX0KIAogCX0gd2hpbGUgKHJjIHx8IGMgIT0gTkFLKTsKIAotCWt3Ym9v
dF9wcmludHYoIlxuIik7CisJa3dib290X3ByaW50digiXG5Hb3QgZXhwZWN0ZWQgTkFLXG4iKTsK
IAogCXJldHVybiByYzsKIH0KLS0gCjIuOS4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
