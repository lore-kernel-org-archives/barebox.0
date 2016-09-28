Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpJwV-0004Pl-9U
 for barebox@lists.infradead.org; Wed, 28 Sep 2016 18:50:56 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 28 Sep 2016 20:50:12 +0200
Message-Id: <20160928185017.25002-3-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/7] scripts: kwboot: flush input and output only once
To: barebox@lists.infradead.org

V2hlbiBmbHVzaGluZyBpbnB1dCBiZWZvcmUgc2VuZGluZyBvZiBhIGJvb3QgbWVzc2FnZSB0aGUg
YWNrbm93bGVkZ2luZwpyZXBseSBmb3IgdGhlIHByZXZpb3VzIG1lc3NhZ2UgZnJvbSB0aGUgQ1BV
IG1pZ2h0IGJlIGRpc2NhcmRlZCBhbmQgc28KbWlzc2VkLgoKU28gb25seSBmbHVzaCBvbmNlIGJl
Zm9yZSBzZW5kaW5nIGJvb3QgbWVzc2FnZXMgaW4gYSBsb29wLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBzY3Jp
cHRzL2t3Ym9vdC5jIHwgMTYgKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2t3Ym9vdC5j
IGIvc2NyaXB0cy9rd2Jvb3QuYwppbmRleCA5ZDY4MGRjNTc2YTcuLjlkZmFmNGE4ZGZiMCAxMDA2
NDQKLS0tIGEvc2NyaXB0cy9rd2Jvb3QuYworKysgYi9zY3JpcHRzL2t3Ym9vdC5jCkBAIC0yNzMs
MTEgKzI3MywxMSBAQCBrd2Jvb3RfYm9vdG1zZyhpbnQgdHR5LCB2b2lkICptc2cpCiAJZWxzZQog
CQlrd2Jvb3RfcHJpbnR2KCJTZW5kaW5nIGJvb3QgbWVzc2FnZS4gUGxlYXNlIHJlYm9vdCB0aGUg
dGFyZ2V0Li4uIik7CiAKLQlkbyB7Ci0JCXJjID0gdGNmbHVzaCh0dHksIFRDSU9GTFVTSCk7Ci0J
CWlmIChyYykKLQkJCWJyZWFrOworCXJjID0gdGNmbHVzaCh0dHksIFRDSU9GTFVTSCk7CisJaWYg
KHJjKQorCQlyZXR1cm4gcmM7CiAKKwlkbyB7CiAJCXJjID0ga3dib290X3R0eV9zZW5kKHR0eSwg
bXNnLCA4KTsKIAkJaWYgKHJjKSB7CiAJCQl1c2xlZXAoS1dCT09UX01TR19SRVFfREVMQVkgKiAx
MDAwKTsKQEAgLTMwMiwxMyArMzAyLDEzIEBAIGt3Ym9vdF9kZWJ1Z21zZyhpbnQgdHR5LCB2b2lk
ICptc2cpCiAKIAlrd2Jvb3RfcHJpbnR2KCJTZW5kaW5nIGRlYnVnIG1lc3NhZ2UuIFBsZWFzZSBy
ZWJvb3QgdGhlIHRhcmdldC4uLiIpOwogCisJcmMgPSB0Y2ZsdXNoKHR0eSwgVENJT0ZMVVNIKTsK
KwlpZiAocmMpCisJCXJldHVybiByYzsKKwogCWRvIHsKIAkJY2hhciBidWZbMTZdOwogCi0JCXJj
ID0gdGNmbHVzaCh0dHksIFRDSU9GTFVTSCk7Ci0JCWlmIChyYykKLQkJCWJyZWFrOwotCiAJCXJj
ID0ga3dib290X3R0eV9zZW5kKHR0eSwgbXNnLCA4KTsKIAkJaWYgKHJjKSB7CiAJCQl1c2xlZXAo
S1dCT09UX01TR19SRVFfREVMQVkgKiAxMDAwKTsKLS0gCjIuOS4zCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
