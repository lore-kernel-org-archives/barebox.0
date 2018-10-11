Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAV9u-0006qK-FH
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 07:13:24 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Thu, 11 Oct 2018 09:13:02 +0200
Message-Id: <20181011071302.6366-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH] common: state: use of_property_write_string() where
 appropriate
To: Barebox List <barebox@lists.infradead.org>

U2VlIGNvbW1pdCBiNjA4OTE4MjMxNmQgKCJ0cmVld2lkZTogVXNlIG9mX3Byb3BlcnR5X3dyaXRl
X3N0cmluZygpIHdoZXJlCmFwcHJvcHJpYXRlIikuCgpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5Zs
bWFubiA8dS5vZWxtYW5uQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1vbi9zdGF0ZS9zdGF0ZV92
YXJpYWJsZXMuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9zdGF0ZS9zdGF0ZV92YXJpYWJsZXMu
YyBiL2NvbW1vbi9zdGF0ZS9zdGF0ZV92YXJpYWJsZXMuYwppbmRleCBkZTliYTRhYjYxYWMuLmFi
ZDcxNGNlZGExZSAxMDA2NDQKLS0tIGEvY29tbW9uL3N0YXRlL3N0YXRlX3ZhcmlhYmxlcy5jCisr
KyBiL2NvbW1vbi9zdGF0ZS9zdGF0ZV92YXJpYWJsZXMuYwpAQCAtMzM5LDggKzMzOSw3IEBAIHN0
YXRpYyBpbnQgc3RhdGVfc3RyaW5nX2V4cG9ydChzdHJ1Y3Qgc3RhdGVfdmFyaWFibGUgKnZhciwK
IAlpbnQgcmV0ID0gMDsKIAogCWlmIChzdHJpbmctPnZhbHVlX2RlZmF1bHQpIHsKLQkJcmV0ID0g
b2Zfc2V0X3Byb3BlcnR5KG5vZGUsICJkZWZhdWx0Iiwgc3RyaW5nLT52YWx1ZV9kZWZhdWx0LAot
CQkJCSAgICAgIHN0cmxlbihzdHJpbmctPnZhbHVlX2RlZmF1bHQpICsgMSwgMSk7CisJCXJldCA9
IG9mX3Byb3BlcnR5X3dyaXRlX3N0cmluZyhub2RlLCAiZGVmYXVsdCIsIHN0cmluZy0+dmFsdWVf
ZGVmYXVsdCk7CiAKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CkBAIC0zNTAsOCArMzQ5LDcg
QEAgc3RhdGljIGludCBzdGF0ZV9zdHJpbmdfZXhwb3J0KHN0cnVjdCBzdGF0ZV92YXJpYWJsZSAq
dmFyLAogCQlyZXR1cm4gMDsKIAogCWlmIChzdHJpbmctPnZhbHVlKQotCQlyZXQgPSBvZl9zZXRf
cHJvcGVydHkobm9kZSwgInZhbHVlIiwgc3RyaW5nLT52YWx1ZSwKLQkJCQkgICAgICBzdHJsZW4o
c3RyaW5nLT52YWx1ZSkgKyAxLCAxKTsKKwkJcmV0ID0gb2ZfcHJvcGVydHlfd3JpdGVfc3RyaW5n
KG5vZGUsICJ2YWx1ZSIsIHN0cmluZy0+dmFsdWUpOwogCiAJcmV0dXJuIHJldDsKIH0KLS0gCjIu
MTkuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
