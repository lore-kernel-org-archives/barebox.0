Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1gHw-0006nm-5H
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 22:12:42 +0000
Received: by mail-lf0-x244.google.com with SMTP id a132so2649086lfa.2
 for <barebox@lists.infradead.org>; Mon, 09 Oct 2017 15:12:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Oct 2017 01:12:12 +0300
Message-Id: <20171009221212.24377-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] eeprom: at24: fix 'assignment from incompatible pointer type'
 warning
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoaXMgY29tcGlsZXIncyB3YXJuaW5nOgoKICAgICAgQ0MgICAgICBk
cml2ZXJzL2VlcHJvbS9hdDI0Lm8KICAgIGRyaXZlcnMvZWVwcm9tL2F0MjQuYzogSW4gZnVuY3Rp
b24g4oCYYXQyNF9wcm9iZeKAmToKICAgIGRyaXZlcnMvZWVwcm9tL2F0MjQuYzo0NTM6MjE6IHdh
cm5pbmc6IGFzc2lnbm1lbnQgZnJvbSBpbmNvbXBhdGlibGUKICAgIHBvaW50ZXIgdHlwZSBbLVdp
bmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KICAgICAgYXQyNC0+Zm9wcy5wcm90ZWN0ID0gYXQy
NF9jZGV2X3Byb3RlY3QsCiAgICAgICAgICAgICAgICAgICAgICAgICBeCgpTaWduZWQtb2ZmLWJ5
OiBBbnRvbnkgUGF2bG92IDxhbnRvbnlucGF2bG92QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2Vl
cHJvbS9hdDI0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2VlcHJvbS9hdDI0LmMgYi9kcml2ZXJzL2Vl
cHJvbS9hdDI0LmMKaW5kZXggMDUwYTM1YWVkOC4uMTFmMjMzMTliNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9lZXByb20vYXQyNC5jCisrKyBiL2RyaXZlcnMvZWVwcm9tL2F0MjQuYwpAQCAtMzUyLDcg
KzM1Miw3IEBAIHN0YXRpYyBzc2l6ZV90IGF0MjRfY2Rldl93cml0ZShzdHJ1Y3QgY2RldiAqY2Rl
diwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgY291bnQsCiAJcmV0dXJuIGF0MjRfd3JpdGUoYXQy
NCwgYnVmLCBvZmYsIGNvdW50KTsKIH0KIAotc3RhdGljIHNzaXplX3QgYXQyNF9jZGV2X3Byb3Rl
Y3Qoc3RydWN0IGNkZXYgKmNkZXYsIHNpemVfdCBjb3VudCwgbG9mZl90IG9mZnNldCwKK3N0YXRp
YyBpbnQgYXQyNF9jZGV2X3Byb3RlY3Qoc3RydWN0IGNkZXYgKmNkZXYsIHNpemVfdCBjb3VudCwg
bG9mZl90IG9mZnNldCwKIAkJaW50IHByb3QpCiB7CiAJc3RydWN0IGF0MjRfZGF0YSAqYXQyNCA9
IGNkZXYtPnByaXY7Ci0tIAoyLjE0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
