Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIUs-0005EY-5L
 for barebox@lists.infradead.org; Thu, 14 May 2020 18:22:21 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id DD52D5FDEE
 for <barebox@lists.infradead.org>; Thu, 14 May 2020 20:22:12 +0200 (CEST)
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Thu, 14 May 2020 20:21:51 +0200
Message-Id: <ad9a853ded1aeec8e82ddbbe838fda7f3c63985d.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
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
Subject: [PATCH v2 03/10] poller: adapt remaining users to API change
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

cG9sbGVyX3JlZ2lzdGVyIG5vdyBoYXMgYSBzZWNvbmQgcGFyYW1ldGVyLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIEdsw7Zja25lciA8ZGdAZW1saXguY29tPgotLS0KIGFyY2gvYXJtL2JvYXJkcy9t
aW9hNzAxL2dwaW8wX3Bvd2Vyb2ZmLmMgfCAyICstCiBhcmNoL2FybS9ib2FyZHMvc2FtYTVkM3hl
ay9pbml0LmMgICAgICAgIHwgMiArLQogZHJpdmVycy9uZXQvdXNiL2F4ODgxNzlfMTc4YS5jICAg
ICAgICAgICB8IDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9taW9hNzAxL2dwaW8wX3Bvd2Vy
b2ZmLmMgYi9hcmNoL2FybS9ib2FyZHMvbWlvYTcwMS9ncGlvMF9wb3dlcm9mZi5jCmluZGV4IDAx
YTVkMGNjNi4uMjc5ZGE1ZTBhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvbWlvYTcwMS9n
cGlvMF9wb3dlcm9mZi5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9taW9hNzAxL2dwaW8wX3Bvd2Vy
b2ZmLmMKQEAgLTc2LDcgKzc2LDcgQEAgc3RhdGljIHN0cnVjdCBwb2xsZXJfc3RydWN0IGdwaW8w
X3BvbGxlciA9IHsKIAogc3RhdGljIGludCBncGlvMF9wb3dlcm9mZl9wcm9iZSh2b2lkKQogewot
CXJldHVybiBwb2xsZXJfcmVnaXN0ZXIoJmdwaW8wX3BvbGxlcik7CisJcmV0dXJuIHBvbGxlcl9y
ZWdpc3RlcigmZ3BpbzBfcG9sbGVyLCAicG93ZXItYnV0dG9uIik7CiB9CiAKIGRldmljZV9pbml0
Y2FsbChncGlvMF9wb3dlcm9mZl9wcm9iZSk7CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMv
c2FtYTVkM3hlay9pbml0LmMgYi9hcmNoL2FybS9ib2FyZHMvc2FtYTVkM3hlay9pbml0LmMKaW5k
ZXggYzc2OGU5OGQyLi5kOWJlNGM1ZjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9zYW1h
NWQzeGVrL2luaXQuYworKysgYi9hcmNoL2FybS9ib2FyZHMvc2FtYTVkM3hlay9pbml0LmMKQEAg
LTQwOCw3ICs0MDgsNyBAQCBzdGF0aWMgdm9pZCBla19hZGRfZGV2aWNlX2hkbWkodm9pZCkKIAlo
ZG1pX3Jlc2V0X3N0YXJ0ID0gZ2V0X3RpbWVfbnMoKTsKIAloZG1pX3BvbGxlci5mdW5jID0gaGRt
aV9vZmZfcG9sbGVyOwogCi0JcG9sbGVyX3JlZ2lzdGVyKCZoZG1pX3BvbGxlcik7CisJcG9sbGVy
X3JlZ2lzdGVyKCZoZG1pX3BvbGxlciwgImhkbWktcmVzZXQiKTsKIH0KICNlbHNlCiBzdGF0aWMg
dm9pZCBla19hZGRfZGV2aWNlX2hkbWkodm9pZCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Vz
Yi9heDg4MTc5XzE3OGEuYyBiL2RyaXZlcnMvbmV0L3VzYi9heDg4MTc5XzE3OGEuYwppbmRleCA2
ZmVhNWE3YjEuLmZkZGIxODcxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvdXNiL2F4ODgxNzlf
MTc4YS5jCisrKyBiL2RyaXZlcnMvbmV0L3VzYi9heDg4MTc5XzE3OGEuYwpAQCAtNDA5LDcgKzQw
OSw3IEBAIHN0YXRpYyBpbnQgYXg4ODE3OV9iaW5kKHN0cnVjdCB1c2JuZXQgKmRldikKIAogCXBy
aXYtPmxhc3QgPSBnZXRfdGltZV9ucygpOwogCXByaXYtPnBvbGxlci5mdW5jID0gYXg4ODE3OV9w
b2xsZXI7Ci0JcG9sbGVyX3JlZ2lzdGVyKCZwcml2LT5wb2xsZXIpOworCXBvbGxlcl9yZWdpc3Rl
cigmcHJpdi0+cG9sbGVyLCBkZXZfbmFtZSgmZGV2LT51ZGV2LT5kZXYpKTsKIAogCXJldHVybiAw
OwogfQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
