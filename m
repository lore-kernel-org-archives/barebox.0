Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbq-00009S-Kq
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id k19-v6so23136372lji.11
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:38 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:23 +0100
Message-Id: <20181231080725.2141-4-sam@ravnborg.org>
In-Reply-To: <20181231080725.2141-1-sam@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH v1 3/5] arm: fix no prototype for barebox_arm_reset_vector()
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Rml4IHRoZSBmb2xsb3dpbmcgd2FybmluZzoKClBCTENDICAgYXJjaC9hcm0vYm9hcmRzL2F0OTFz
YW05MjYxZWsvcGJsLWxvd2xldmVsX2luaXQubwphcmNoL2FybS9ib2FyZHMvYXQ5MXNhbTkyNjFl
ay9sb3dsZXZlbF9pbml0LmM6MTIwOjI2Ogp3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUg
Zm9yIOKAmGJhcmVib3hfYXJtX3Jlc2V0X3ZlY3RvcuKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNd
CgpQcm90b3R5cGUgYWRkZWQgc28gaXQgY292ZXJzIG1hY2hzIHdpdGggdGhlaXIgb3duCmRlZmlu
aXRpb24gYW5kIHRoZSBtYWNocyB1c2luZyB0aGUgYXJtIGdlbmVyYWwgdmFyaWFudAoKU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgotLS0KIGFyY2gvYXJtL2lu
Y2x1ZGUvYXNtL2JhcmVib3gtYXJtLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYmFyZWJveC1hcm0uaCBi
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2JhcmVib3gtYXJtLmgKaW5kZXggZTA2NWI0NzllLi4zMTI2
ODU0ODYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2JhcmVib3gtYXJtLmgKKysr
IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYmFyZWJveC1hcm0uaApAQCAtMjUsNiArMjUsNyBAQAog
I2lmbmRlZiBfQkFSRUJPWF9BUk1fSF8KICNkZWZpbmUgX0JBUkVCT1hfQVJNX0hfCiAKKyNpbmNs
dWRlIDxpbml0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2l6ZXMuaD4KICNpbmNsdWRlIDxhc20tZ2Vu
ZXJpYy9tZW1vcnlfbGF5b3V0Lmg+CiAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+CkBAIC01OCw2
ICs1OSw3IEBAIHZvaWQgc2V0dXBfYyh2b2lkKTsKIHZvaWQgcmVsb2NhdGVfdG9fY3VycmVudF9h
ZHIodm9pZCk7CiB2b2lkIHJlbG9jYXRlX3RvX2Fkcih1bnNpZ25lZCBsb25nIHRhcmdldCk7CiB2
b2lkIF9fbm9yZXR1cm4gYmFyZWJveF9hcm1fZW50cnkodW5zaWduZWQgbG9uZyBtZW1iYXNlLCB1
bnNpZ25lZCBsb25nIG1lbXNpemUsIHZvaWQgKmJvYXJkZGF0YSk7Cit2b2lkIF9fbmFrZWQgX19i
YXJlX2luaXQgYmFyZWJveF9hcm1fcmVzZXRfdmVjdG9yKHZvaWQpOwogCiBzdHJ1Y3QgYmFyZWJv
eF9hcm1fYm9hcmRkYXRhIHsKICNkZWZpbmUgQkFSRUJPWF9BUk1fQk9BUkREQVRBX01BR0lDCTB4
YWJlNzQyYzMKLS0gCjIuMTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
