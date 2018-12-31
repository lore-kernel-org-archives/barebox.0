Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbp-00009B-9n
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id b20so17925602lfa.12
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:36 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:21 +0100
Message-Id: <20181231080725.2141-2-sam@ravnborg.org>
In-Reply-To: <20181231080725.2141-1-sam@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH v1 1/5] 2d-primitives: fix no previous prototype warning
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Rml4IHRoZSBmb2xsb3dpbmcgd2FybmluZ3M6CgpsaWIvZ3VpLzJkLXByaW1pdGl2ZXMuYzo4ODo2
OiB3YXJuaW5nOiBubwpwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGd1X2RyYXdfbGluZeKAmSBb
LVdtaXNzaW5nLXByb3RvdHlwZXNdCiB2b2lkIGd1X2RyYXdfbGluZShzdHJ1Y3Qgc2NyZWVuICpz
YywKICAgICAgXn5+fn5+fn5+fn5+CmxpYi9ndWkvMmQtcHJpbWl0aXZlcy5jOjE3NDo2OiB3YXJu
aW5nOiBubwpwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGd1X2RyYXdfY2lyY2xl4oCZIFstV21p
c3NpbmctcHJvdG90eXBlc10KIHZvaWQgZ3VfZHJhd19jaXJjbGUoc3RydWN0IHNjcmVlbiAqc2Ms
CiAgICAgIF5+fn5+fn5+fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+Ci0tLQogbGliL2d1aS8yZC1wcmltaXRpdmVzLmMgfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbGliL2d1aS8yZC1wcmltaXRp
dmVzLmMgYi9saWIvZ3VpLzJkLXByaW1pdGl2ZXMuYwppbmRleCA4MmU1OWQ5YTYuLjk0MGU4MmI3
ZCAxMDA2NDQKLS0tIGEvbGliL2d1aS8yZC1wcmltaXRpdmVzLmMKKysrIGIvbGliL2d1aS8yZC1w
cmltaXRpdmVzLmMKQEAgLTcsNiArNyw4IEBACiAjaW5jbHVkZSA8ZnMuaD4KICNpbmNsdWRlIDxt
YWxsb2MuaD4KIAorI2luY2x1ZGUgPGd1aS8yZC1wcmltaXRpdmVzLmg+CisKIHN0YXRpYyB2b2lk
IF9faWxsdW1pbmF0ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywKIAkJCSBpbnQgeCwgaW50IHksCiAJ
CQkgdTggciwgdTggZywgdTggYiwgdTggYSkKLS0gCjIuMTIuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
