Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghKP0-0003oa-Og
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 20:24:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id e26so6648362lfc.2
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 12:24:38 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jan 2019 23:24:26 +0300
Message-Id: <20190109202427.29535-3-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] serial: amba-pl011: fix "no previous prototype for
 'pl011_init_port'" warning
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgY29tcGlsZXIncyB3YXJuaW5nOgoKZHJpdmVy
cy9zZXJpYWwvYW1iYS1wbDAxMS5jOjE1MTo1OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5
cGUgZm9yIOKAmHBsMDExX2luaXRfcG9ydOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCiBpbnQg
cGwwMTFfaW5pdF9wb3J0IChzdHJ1Y3QgY29uc29sZV9kZXZpY2UgKmNkZXYpCiAgICAgXn5+fn5+
fn5+fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBBbnRvbnkgUGF2bG92IDxhbnRvbnlucGF2bG92QGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL3NlcmlhbC9hbWJhLXBsMDExLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3NlcmlhbC9hbWJhLXBsMDExLmMgYi9kcml2ZXJzL3NlcmlhbC9hbWJhLXBsMDExLmMKaW5k
ZXggY2U0MGY4NDBmNy4uOWI1NjdlM2NkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zZXJpYWwvYW1i
YS1wbDAxMS5jCisrKyBiL2RyaXZlcnMvc2VyaWFsL2FtYmEtcGwwMTEuYwpAQCAtMTQ4LDcgKzE0
OCw3IEBAIHN0YXRpYyB2b2lkIHBsMDExX3JsY3Ioc3RydWN0IGFtYmFfdWFydF9wb3J0ICp1YXJ0
LCB1MzIgbGNyKQogCX0KIH0KIAotaW50IHBsMDExX2luaXRfcG9ydCAoc3RydWN0IGNvbnNvbGVf
ZGV2aWNlICpjZGV2KQorc3RhdGljIGludCBwbDAxMV9pbml0X3BvcnQoc3RydWN0IGNvbnNvbGVf
ZGV2aWNlICpjZGV2KQogewogCXN0cnVjdCBhbWJhX3VhcnRfcG9ydCAqdWFydCA9IHRvX2FtYmFf
dWFydF9wb3J0KGNkZXYpOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
