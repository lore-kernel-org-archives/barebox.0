Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7hPh-00040O-B3
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 08:51:41 +0000
Received: by mail-wi0-f169.google.com with SMTP id n3so6992772wiv.0
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 01:51:14 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 10:51:34 +0200
Message-Id: <1405587095-23308-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
References: <1405587095-23308-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 1/2] mtd: atmel_nand: increase chip_delay
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

U29tZSBuYW5kIGxpa2UgTWljcm9uIE1UMjlGMzJHMDhBQkFBQVdQIG5lZWQgbW9yZSB0aGFuIDIw
dXMuCgpTaWduZWQtb2ZmLWJ5OiBSYXBoYcOrbCBQb2dnaSA8cG9nZ2kucmFwaEBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMgfCAgICAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L210ZC9uYW5kL2F0bWVsX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCmlu
ZGV4IDMxNjFlODkuLmEwMmYzOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxf
bmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCkBAIC0xMTYyLDcgKzEx
NjIsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBhdG1lbF9uYW5kX3Byb2JlKHN0cnVjdCBkZXZpY2Vf
ZCAqZGV2KQogCQluYW5kX2NoaXAtPmVjYy5tb2RlID0gTkFORF9FQ0NfSFc7CiAJfQogCi0JbmFu
ZF9jaGlwLT5jaGlwX2RlbGF5ID0gMjA7CQkvKiAyMHVzIGNvbW1hbmQgZGVsYXkgdGltZSAqLwor
CW5hbmRfY2hpcC0+Y2hpcF9kZWxheSA9IDQwOwkJLyogNDB1cyBjb21tYW5kIGRlbGF5IHRpbWUg
Ki8KIAogCWlmIChJU19FTkFCTEVEKENPTkZJR19OQU5EX0VDQ19CQ0gpICYmCiAJCQlwZGF0YS0+
ZWNjX21vZGUgPT0gTkFORF9FQ0NfU09GVF9CQ0gpIHsKLS0gCjEuNy45LjUKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
