Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghKOz-0003oM-Gg
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 20:24:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id k15-v6so7616171ljc.8
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 12:24:37 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jan 2019 23:24:25 +0300
Message-Id: <20190109202427.29535-2-antonynpavlov@gmail.com>
In-Reply-To: <20190109202427.29535-1-antonynpavlov@gmail.com>
References: <20190109202427.29535-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] w1: fix "no previous prototype for 'w1_found'" warning
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgY29tcGlsZXIncyB3YXJuaW5nOgoKZHJpdmVy
cy93MS93MS5jOjQ1OTo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHcx
X2ZvdW5k4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KIHZvaWQgdzFfZm91bmQoc3RydWN0IHcx
X2J1cyAqYnVzLCB1NjQgcm4pCiAgICAgIF5+fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBBbnRvbnkg
UGF2bG92IDxhbnRvbnlucGF2bG92QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3cxL3cxLmMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3cxL3cxLmMgYi9kcml2ZXJzL3cxL3cxLmMKaW5kZXggNjk0ZmZhODUz
ZS4uZjc0MDQ2YzBiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy93MS93MS5jCisrKyBiL2RyaXZlcnMv
dzEvdzEuYwpAQCAtNDU2LDcgKzQ1Niw3IEBAIGludCB3MV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0
IHcxX2RyaXZlciAqZHJ2KQogCXJldHVybiByZWdpc3Rlcl9kcml2ZXIoJmRydi0+ZHJ2KTsKIH0K
IAotdm9pZCB3MV9mb3VuZChzdHJ1Y3QgdzFfYnVzICpidXMsIHU2NCBybikKK3N0YXRpYyB2b2lk
IHcxX2ZvdW5kKHN0cnVjdCB3MV9idXMgKmJ1cywgdTY0IHJuKQogewogCXN0cnVjdCB3MV9kZXZp
Y2UgKmRldjsKIAl1NjQgdG1wID0gYmU2NF90b19jcHUocm4pOwotLSAKMi4yMC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
