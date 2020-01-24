Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuwU8-0005SB-S6
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 10:46:45 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 24 Jan 2020 11:46:38 +0100
Message-Id: <20200124104638.29086-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] usb: udc: don't warn on unused gadget
To: barebox@lists.infradead.org

V2hlbmV2ZXIgYSBtYWNoaW5lIGJvb3RzIGJ1dCBkaWRuJ3QgbWFrZSB1c2Ugb2YgdGhlIHVkYyBk
ZXZpY2UKYW4gZXJyb3IgbWVzc2FnZSBpcyBlbWl0dGVkLiBUaGlzIGlzIGhhcmRseSB1c2VmdWws
IHNvIGRyb3AgdGhlCm1lc3NhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvdXNiL2dhZGdldC91
ZGMtY29yZS5jIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy1jb3JlLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQv
dWRjLWNvcmUuYwppbmRleCAwOTZmMDVlZDQ4ZGYuLjRkNWE5NWM2Y2JlZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy1jb3JlLmMKKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0L3Vk
Yy1jb3JlLmMKQEAgLTI4MCw4ICsyODAsNiBAQCB2b2lkIHVzYl9kZWxfZ2FkZ2V0X3VkYyhzdHJ1
Y3QgdXNiX2dhZGdldCAqZ2FkZ2V0KQogCQlpZiAodWRjLT5nYWRnZXQgPT0gZ2FkZ2V0KQogCQkJ
Z290byBmb3VuZDsKIAotCWRldl9lcnIoZ2FkZ2V0LT5kZXYucGFyZW50LCAiZ2FkZ2V0IG5vdCBy
ZWdpc3RlcmVkLlxuIik7Ci0KIAlyZXR1cm47CiAKIGZvdW5kOgotLSAKMi4yNC4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
