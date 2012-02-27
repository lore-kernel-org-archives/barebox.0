Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S1vow-0007GK-Or
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 08:20:36 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 862CAA6219
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2012 09:20:29 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 27 Feb 2012 09:20:11 +0100
Message-Id: <1330330813-21605-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1330330813-21605-1-git-send-email-eric@eukrea.com>
References: <20120222073359.GL3852@pengutronix.de>
 <1330330813-21605-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 5/7] mx53-loco: add i2c support
To: barebox@lists.infradead.org

YW5kIHJlZ2lzdGVyIG1jMzQ3MDggd2hpY2ggaXMgcHJlc2VudCBvbiBNQ0lNWDUzLVNUQVJULVIg
Ym9hcmQKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0K
IGFyY2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUtbXg1My1sb2NvL2JvYXJkLmMgfCAgIDE1ICsrKysr
KysrKysrKysrKwogMSBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUtbXg1My1sb2NvL2Jv
YXJkLmMgYi9hcmNoL2FybS9ib2FyZHMvZnJlZXNjYWxlLW14NTMtbG9jby9ib2FyZC5jCmluZGV4
IGRjOTMwYjYuLjY2ZmYwNDAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUt
bXg1My1sb2NvL2JvYXJkLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL2ZyZWVzY2FsZS1teDUzLWxv
Y28vYm9hcmQuYwpAQCAtMzYsNiArMzYsOSBAQAogI2luY2x1ZGUgPG1hY2gvaWltLmg+CiAjaW5j
bHVkZSA8bWFjaC9pbXg1Lmg+CiAKKyNpbmNsdWRlIDxpMmMvaTJjLmg+CisjaW5jbHVkZSA8bWZk
L21jMzQ3MDguaD4KKwogI2luY2x1ZGUgPGFzbS9hcm1saW51eC5oPgogI2luY2x1ZGUgPGlvLmg+
CiAjaW5jbHVkZSA8YXNtL21tdS5oPgpAQCAtODgsNiArOTEsMTYgQEAgc3RhdGljIHN0cnVjdCBw
YWRfZGVzYyBsb2NvX3BhZHNbXSA9IHsKIAlNWDUzX1BBRF9FSU1fREExMV9fR1BJTzNfMTEsCiAJ
LyogU0QzX1dQICovCiAJTVg1M19QQURfRUlNX0RBMTJfX0dQSU8zXzEyLAorCisJLyogSTJDMCAq
LworCU1YNTNfUEFEX0NTSTBfREFUOF9fSTJDMV9TREEsCisJTVg1M19QQURfQ1NJMF9EQVQ5X19J
MkMxX1NDTCwKK307CisKK3N0YXRpYyBzdHJ1Y3QgaTJjX2JvYXJkX2luZm8gaTJjX2RldmljZXNb
XSA9IHsKKwl7CisJCUkyQ19CT0FSRF9JTkZPKCJtYzM0NzA4LWkyYyIsIDB4MDgpLAorCX0sCiB9
OwogCiBzdGF0aWMgaW50IGxvY29fbWVtX2luaXQodm9pZCkKQEAgLTEzMSw2ICsxNDQsOCBAQCBz
dGF0aWMgaW50IGxvY29fZGV2aWNlc19pbml0KHZvaWQpCiAJaW14NTNfYWRkX2ZlYygmZmVjX2lu
Zm8pOwogCWlteDUzX2FkZF9tbWMwKCZsb2NvX3NkMV9kYXRhKTsKIAlpbXg1M19hZGRfbW1jMigm
bG9jb19zZDNfZGF0YSk7CisJaTJjX3JlZ2lzdGVyX2JvYXJkX2luZm8oMCwgaTJjX2RldmljZXMs
IEFSUkFZX1NJWkUoaTJjX2RldmljZXMpKTsKKwlpbXg1M19hZGRfaTJjMChOVUxMKTsKIAogCWxv
Y29fZmVjX3Jlc2V0KCk7CiAKLS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
