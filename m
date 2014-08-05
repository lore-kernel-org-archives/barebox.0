Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEap3-0004Hb-AF
 for barebox@lists.infradead.org; Tue, 05 Aug 2014 09:14:27 +0000
Received: by mail-wg0-f45.google.com with SMTP id x12so654298wgg.28
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 02:13:49 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Tue,  5 Aug 2014 11:14:47 +0200
Message-Id: <1407230089-26948-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1407230089-26948-1-git-send-email-poggi.raph@gmail.com>
References: <1407230089-26948-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 3/5] mtd: atmel_nand: retrieve ecc_mode from pdata
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

QnkgcmV0cmlldmluZyB0aGUgZWNjX21vZGUgZnJvbSBwZGF0YSB3ZSBjYW4gdXNlIHRoZSBzYW1l
IGNvZGUgZm9yIGRldmljZSB0cmVlIGFuZApub24gZGV2aWNlIHRyZWUgcHJvYmluZy4gV2hpY2gg
d2FzIG5vdCBwb3NzaWJsZSBiZWZvcmUsIGJlY2F1c2UgZWNjX21vZGUgd2FzIGFyYml0cmFyaWx5
IHNldCB0bwpOQU5EX0VDQ19TT0ZULgoKU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBv
Z2dpLnJhcGhAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jIHwg
ICAgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMgYi9kcml2ZXJzL210ZC9u
YW5kL2F0bWVsX25hbmQuYwppbmRleCAzZWM2NDUwLi43ODBkMjY2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25h
bmQuYwpAQCAtMTE1Nyw3ICsxMTU3LDcgQEAgc3RhdGljIGludCBfX2luaXQgYXRtZWxfbmFuZF9w
cm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAkJfQogCX0KIAotCW5hbmRfY2hpcC0+ZWNjLm1v
ZGUgPSBOQU5EX0VDQ19TT0ZUOworCW5hbmRfY2hpcC0+ZWNjLm1vZGUgPSBwZGF0YS0+ZWNjX21v
ZGU7CiAKIAlpZiAoSVNfRU5BQkxFRChDT05GSUdfTkFORF9FQ0NfSFcpICYmCiAJICAgIHBkYXRh
LT5lY2NfbW9kZSA9PSBOQU5EX0VDQ19IVykgewotLSAKMS43LjkuNQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
