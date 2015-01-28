Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGcBN-0005xI-HU
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 23:38:02 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 29 Jan 2015 00:37:32 +0100
Message-Id: <1422488254-18414-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/3] dhcp: fix request packet's requested IP option
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

SW4gdGhlIHJlcXVlc3QgcGFja2V0LCB3ZSBhcmUgc3VwcG9zZWQgdG8gY29weSB0aGUgSVAgdGhh
dCB0aGUgREhDUCBzZXJ2ZXIKcHJvdmlkZWQgaW4gdGhlIG9mZmVyIHBhY2tldCBzbyB0aGF0IGRo
Y3BfZXh0ZW5kZWQgY2FuIGZpbGwgdGhlIG9wdGlvbiA1MC4KVGhlcmUgaXMgYWN0dWFsbHkgYW4g
ZXJyb3IgaW4gYmFyZWJveCBhcyB0aGUgcG9pbnRlciB0byB0aGUgcGFja2V0IGN1cnJlbnRseQpi
dWlsdCBpcyB1c2VkIGFzIHRoZSBzb3VyY2UgaW5zdGVhZCBvZiB0aGUgcG9pbnRlciB0byB0aGUg
b2ZmZXIgcGFja2V0LgpXaXRoIHRoaXMgcGF0Y2gsIGJhcmVib3ggbm93IHNlbmRzIGEgcmVxdWVz
dCBwYWNrZXQgd2hpY2ggaW5jbHVkZXMgdGhlIHJpZ2h0CnJlcXVlc3RlZCBJUCBpbiBvcHRpb24g
NTAuCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBu
ZXQvZGhjcC5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L2RoY3AuYyBiL25ldC9kaGNwLmMKaW5kZXggOTU1
MWQ2MC4uNzg0NDBkZCAxMDA2NDQKLS0tIGEvbmV0L2RoY3AuYworKysgYi9uZXQvZGhjcC5jCkBA
IC01NzksNyArNTc5LDcgQEAgc3RhdGljIHZvaWQgZGhjcF9zZW5kX3JlcXVlc3RfcGFja2V0KHN0
cnVjdCBib290cCAqYnBfb2ZmZXIpCiAJLyoKIAkgKiBDb3B5IG9wdGlvbnMgZnJvbSBPRkZFUiBw
YWNrZXQgaWYgcHJlc2VudAogCSAqLwotCW5ldF9jb3B5X2lwKCZPZmZlcmVkSVAsICZicC0+YnBf
eWlhZGRyKTsKKwluZXRfY29weV9pcCgmT2ZmZXJlZElQLCAmYnBfb2ZmZXItPmJwX3lpYWRkcik7
CiAJZXh0bGVuID0gZGhjcF9leHRlbmRlZCgodTggKilicC0+YnBfdmVuZCwgREhDUF9SRVFVRVNU
LCBuZXRfZGhjcF9zZXJ2ZXJfaXAsCiAJCQkJT2ZmZXJlZElQKTsKIApAQCAtNzQ1LDkgKzc0NSw3
IEBAIHN0YXRpYyBpbnQgZG9fZGhjcChpbnQgYXJnYywgY2hhciAqYXJndltdKQogCXJldCA9IG5l
dF91ZHBfYmluZChkaGNwX2NvbiwgUE9SVF9CT09UUEMpOwogCWlmIChyZXQpCiAJCWdvdG8gb3V0
MTsKLQogCW5ldF9zZXRfaXAoMCk7Ci0KIAlkaGNwX3N0YXJ0ID0gZ2V0X3RpbWVfbnMoKTsKIAly
ZXQgPSBib290cF9yZXF1ZXN0KCk7IC8qIEJhc2ljYWxseSBzYW1lIGFzIEJPT1RQICovCiAJaWYg
KHJldCkKLS0gCjEuOS4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
