Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8JV0-00062r-6V
 for barebox@lists.infradead.org; Wed, 10 May 2017 04:45:19 +0000
Received: by mail-lf0-x243.google.com with SMTP id q70so1670295lfi.0
 for <barebox@lists.infradead.org>; Tue, 09 May 2017 21:44:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 May 2017 07:44:50 +0300
Message-Id: <20170510044450.1373-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] rtc-lib: drop unused rtc_ydays
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoaXMgY29tcGlsZXIncyB3YXJuaW5nOgoKICAgIGRyaXZlcnMvcnRj
L3J0Yy1saWIuYzoyMzoyOTogd2FybmluZzog4oCYcnRjX3lkYXlz4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiAgICAgc3RhdGljIGNvbnN0IHVuc2ln
bmVkIHNob3J0IHJ0Y195ZGF5c1syXVsxM10gPSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fgoKU2lnbmVkLW9mZi1ieTogQW50b255IFBhdmxvdiA8YW50b255bnBh
dmxvdkBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ydGMvcnRjLWxpYi5jIHwgNyAtLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3J0Yy9y
dGMtbGliLmMgYi9kcml2ZXJzL3J0Yy9ydGMtbGliLmMKaW5kZXggODNkODA0NTVkLi40YTJkMzRm
Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1saWIuYworKysgYi9kcml2ZXJzL3J0Yy9y
dGMtbGliLmMKQEAgLTIwLDEzICsyMCw2IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBjaGFyIHJ0
Y19kYXlzX2luX21vbnRoW10gPSB7CiAJMzEsIDI4LCAzMSwgMzAsIDMxLCAzMCwgMzEsIDMxLCAz
MCwgMzEsIDMwLCAzMQogfTsKIAotc3RhdGljIGNvbnN0IHVuc2lnbmVkIHNob3J0IHJ0Y195ZGF5
c1syXVsxM10gPSB7Ci0JLyogTm9ybWFsIHllYXJzICovCi0JeyAwLCAzMSwgNTksIDkwLCAxMjAs
IDE1MSwgMTgxLCAyMTIsIDI0MywgMjczLCAzMDQsIDMzNCwgMzY1IH0sCi0JLyogTGVhcCB5ZWFy
cyAqLwotCXsgMCwgMzEsIDYwLCA5MSwgMTIxLCAxNTIsIDE4MiwgMjEzLCAyNDQsIDI3NCwgMzA1
LCAzMzUsIDM2NiB9Ci19OwotCiAjZGVmaW5lIExFQVBTX1RIUlVfRU5EX09GKHkpICgoeSkvNCAt
ICh5KS8xMDAgKyAoeSkvNDAwKQogCiAvKgotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
