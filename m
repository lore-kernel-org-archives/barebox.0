Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YQAKF-0005fM-Rs
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 07:54:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 68F2FA002A3
 for <barebox@lists.infradead.org>; Tue, 24 Feb 2015 08:55:05 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 24 Feb 2015 08:52:14 +0100
Message-Id: <1424764334-39730-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1424764334-39730-1-git-send-email-t.gamez@phytec.de>
References: <1424764334-39730-1-git-send-email-t.gamez@phytec.de>
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
Subject: [For next PATCH 3/3] ARM: phytec-som-am335x: Update sd-card rootfs to
 ext4
To: barebox@lists.infradead.org

VXBkYXRlIHJvb3RmcyB0byBleHQ0LiBleHQzIGZpbGVzeXN0ZW1zIGFyZSBzdGlsbCBnZXR0aW5n
IG1vdW50ZWQuCgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5k
ZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvcGh5dGVjLXNvbS1hbTMzNXgvZGVmYXVsdGVudi1waHlz
b20tYW0zMzV4L2Jvb3QvbW1jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20t
YW0zMzV4L2RlZmF1bHRlbnYtcGh5c29tLWFtMzM1eC9ib290L21tYyBiL2FyY2gvYXJtL2JvYXJk
cy9waHl0ZWMtc29tLWFtMzM1eC9kZWZhdWx0ZW52LXBoeXNvbS1hbTMzNXgvYm9vdC9tbWMKaW5k
ZXggMWE2NDJmOS4uNDQ3ZTQ3MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1z
b20tYW0zMzV4L2RlZmF1bHRlbnYtcGh5c29tLWFtMzM1eC9ib290L21tYworKysgYi9hcmNoL2Fy
bS9ib2FyZHMvcGh5dGVjLXNvbS1hbTMzNXgvZGVmYXVsdGVudi1waHlzb20tYW0zMzV4L2Jvb3Qv
bW1jCkBAIC01LDQgKzUsNCBAQCBnbG9iYWwuYm9vdG0ub2Z0cmVlPS9ib290L29mdHJlZQogCiBi
b290YXJncy1pcAogCi1nbG9iYWwubGludXguYm9vdGFyZ3MuZHluLnJvb3Q9InJvb3Q9L2Rldi9t
bWNibGswcDIgcm9vdGZzdHlwZT1leHQzIHJ3IHJvb3R3YWl0IgorZ2xvYmFsLmxpbnV4LmJvb3Rh
cmdzLmR5bi5yb290PSJyb290PS9kZXYvbW1jYmxrMHAyIHJvb3Rmc3R5cGU9ZXh0NCBydyByb290
d2FpdCIKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
