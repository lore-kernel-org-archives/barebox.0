Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCnPN-0003CI-8r
 for barebox@lists.infradead.org; Mon, 22 May 2017 13:30:03 +0000
Received: by mail-lf0-x241.google.com with SMTP id m18so5485145lfj.0
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 06:29:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 22 May 2017 16:29:34 +0300
Message-Id: <20170522132934.9079-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] i2c: mv64xxx: fix indentation
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

VGhlIHBhdGNoIGZpeGVzIHRoaXMgY29tcGlsZXIncyB3YXJuaW5nOgoKICAgIGRyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtbXY2NHh4eC5jOiBJbiBmdW5jdGlvbiDigJhtdjY0eHh4X2kyY19mc23igJk6
CiAgICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW12NjR4eHguYzozMDM6Mzogd2FybmluZzogdGhp
cyDigJhpZuKAmSBjbGF1c2UgZG9lcwogICAgbm90IGd1YXJkLi4uIFstV21pc2xlYWRpbmctaW5k
ZW50YXRpb25dCiAgICAgICBpZiAoZHJ2X2RhdGEtPmJ5dGVzX2xlZnQgPT0gMSkKICAgICAgIF5+
CiAgICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLW12NjR4eHguYzozMDU6NDogbm90ZTogLi4udGhp
cyBzdGF0ZW1lbnQsIGJ1dCB0aGUKICAgIGxhdHRlciBpcyBtaXNsZWFkaW5nbHkgaW5kZW50ZWQg
YXMgaWYgaXQgaXMgZ3VhcmRlZCBieSB0aGUg4oCYaWbigJkKICAgICAgICB1ZGVsYXkoMik7CiAg
ICAgICAgXn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBBbnRvbnkgUGF2bG92IDxhbnRvbnlucGF2bG92
QGdtYWlsLmNvbT4KQ2M6IEJhc3RpYW4gU3RlbmRlciA8YnN0QHBlbmd1dHJvbml4LmRlPgotLS0K
IGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtbXY2NHh4eC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy1tdjY0eHh4LmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLW12NjR4eHguYwpp
bmRleCAxYTVkNWVmOWIuLjI4NWVkZTg0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9pMmMvYnVzc2Vz
L2kyYy1tdjY0eHh4LmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1tdjY0eHh4LmMKQEAg
LTMwMiw3ICszMDIsNyBAQCBtdjY0eHh4X2kyY19mc20oc3RydWN0IG12NjR4eHhfaTJjX2RhdGEg
KmRydl9kYXRhLCB1MzIgc3RhdHVzKQogCiAJCWlmIChkcnZfZGF0YS0+Ynl0ZXNfbGVmdCA9PSAx
KQogCQkJZHJ2X2RhdGEtPmNudGxfYml0cyAmPSB+UkVHX0NPTlRST0xfQUNLOwotCQkJdWRlbGF5
KDIpOworCQl1ZGVsYXkoMik7CiAJCWJyZWFrOwogCiAJY2FzZSBTVEFUVVNfTUFTVF9SRF9EQVRB
X05PX0FDSzogLyogMHg1OCAqLwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
