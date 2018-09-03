Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmz8-0003O0-Po
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:25:36 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:23:57 +0200
Message-Id: <20180903112408.2086-8-m.niestroj@grinn-global.com>
In-Reply-To: <20180903112408.2086-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 07/18] crypto: caam - trivial code clean-up
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

UGljayBjb21taXQgNGNhN2M3ZDhmZWExZmZkYzM2ZGYzMzU3OGMxZTY4ZDBkNjM2N2IwYyBmcm9t
IExpbnV4CnVwc3RyZWFtLgoKICAgIGNyeXB0bzogY2FhbSAtIHRyaXZpYWwgY29kZSBjbGVhbi11
cAoKICAgIC1yZXBsYWNlIG9mZnNldG9mIHdpdGggY29udGFpbmVyX29mCiAgICAtcmVtb3ZlIHVu
dXNlZCAiYXNzb2NfbmVudHMiLCAiaXZfZG1hIiBmcm9tIGFlYWRfZWRlc2MKICAgIGFuZCBmaXgg
Y29tbWVudHMKICAgIC1yZW1vdmUgdW51c2VkIENBQU1fTUFYX0lWX0xFTkdUSCAjZGVmaW5lCgog
ICAgU2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+CiAg
ICBTaWduZWQtb2ZmLWJ5OiBIZXJiZXJ0IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5vcmcuYXU+
CgpTaWduZWQtb2ZmLWJ5OiBNYXJjaW4gTmllc3Ryb2ogPG0ubmllc3Ryb2pAZ3Jpbm4tZ2xvYmFs
LmNvbT4KLS0tCiBkcml2ZXJzL2NyeXB0by9jYWFtL2NhYW1ybmcuYyB8IDMgKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jcnlwdG8vY2FhbS9jYWFtcm5nLmMgYi9kcml2ZXJzL2NyeXB0by9jYWFtL2NhYW1ybmcu
YwppbmRleCA1MWMyNjdlM2QuLmI2MmUzZWI3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jcnlwdG8v
Y2FhbS9jYWFtcm5nLmMKKysrIGIvZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtcm5nLmMKQEAgLTgx
LDggKzgxLDcgQEAgc3RhdGljIHZvaWQgcm5nX2RvbmUoc3RydWN0IGRldmljZV9kICpqcmRldiwg
dTMyICpkZXNjLCB1MzIgZXJyLCB2b2lkICpjb250ZXh0KQogewogCXN0cnVjdCBidWZfZGF0YSAq
YmQ7CiAKLQliZCA9IChzdHJ1Y3QgYnVmX2RhdGEgKikoKGNoYXIgKilkZXNjIC0KLQkgICAgICBv
ZmZzZXRvZihzdHJ1Y3QgYnVmX2RhdGEsIGh3X2Rlc2MpKTsKKwliZCA9IGNvbnRhaW5lcl9vZihk
ZXNjLCBzdHJ1Y3QgYnVmX2RhdGEsIGh3X2Rlc2NbMF0pOwogCiAJaWYgKGVycikKIAkJY2FhbV9q
cl9zdHJzdGF0dXMoanJkZXYsIGVycik7Ci0tIAoyLjE4LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
