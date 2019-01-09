Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghKP1-0003ou-Rw
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 20:24:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id z13so6619367lfe.11
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 12:24:39 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jan 2019 23:24:27 +0300
Message-Id: <20190109202427.29535-4-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] net: ks8851_mll: fix "no previous prototype for
 'ks_enable_qmu'" warning
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgY29tcGlsZXIncyB3YXJuaW5nOgoKZHJpdmVy
cy9uZXQva3M4ODUxX21sbC5jOjQzODo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUg
Zm9yIOKAmGtzX2VuYWJsZV9xbXXigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQogdm9pZCBrc19l
bmFibGVfcW11KHN0cnVjdCBrc19uZXQgKmtzKQogICAgICBefn5+fn5+fn5+fn5+CgpTaWduZWQt
b2ZmLWJ5OiBBbnRvbnkgUGF2bG92IDxhbnRvbnlucGF2bG92QGdtYWlsLmNvbT4KLS0tCiBkcml2
ZXJzL25ldC9rczg4NTFfbWxsLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9rczg4NTFfbWxsLmMg
Yi9kcml2ZXJzL25ldC9rczg4NTFfbWxsLmMKaW5kZXggYzA2MDgxMTJkNS4uYjAzN2UxOTYzMyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9uZXQva3M4ODUxX21sbC5jCisrKyBiL2RyaXZlcnMvbmV0L2tz
ODg1MV9tbGwuYwpAQCAtNDM1LDcgKzQzNSw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBrc19vdXRi
bGsoc3RydWN0IGtzX25ldCAqa3MsIHUxNiAqd3B0ciwgdTMyIGxlbikKIAkJd3JpdGV3KCp3cHRy
KyssIGtzLT5od19hZGRyKTsKIH0KIAotdm9pZCBrc19lbmFibGVfcW11KHN0cnVjdCBrc19uZXQg
KmtzKQorc3RhdGljIHZvaWQga3NfZW5hYmxlX3FtdShzdHJ1Y3Qga3NfbmV0ICprcykKIHsKIAl1
MTYgdzsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
