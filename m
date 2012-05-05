Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQmjT-0006sa-Hs
 for barebox@lists.infradead.org; Sat, 05 May 2012 21:41:40 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sat, 05 May 2012 23:38:15 +0200
Message-ID: <m3fwbemhq0.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Shutdown barebox (MMU) before setting ATAGS to avoid
 page #0 fault.
To: barebox@lists.infradead.org

VGhpcyBkb2Vzbid0IGZpeCB0aGUgIm1kIiBpc3N1ZS4KClNpZ25lZC1vZmYtYnk6IEtyenlzenRv
ZiBIYcWCYXNhIDxraGNAcG0ud2F3LnBsPgoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2xpYi9hcm1s
aW51eC5jIGIvYXJjaC9hcm0vbGliL2FybWxpbnV4LmMKaW5kZXggYTE2NzAzNi4uODQ3ZmVmYSAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vbGliL2FybWxpbnV4LmMKKysrIGIvYXJjaC9hcm0vbGliL2Fy
bWxpbnV4LmMKQEAgLTI2MCwxMiArMjYwLDE1IEBAIHZvaWQgc3RhcnRfbGludXgodm9pZCAqYWRy
LCBpbnQgc3dhcCwgdW5zaWduZWQgbG9uZyBpbml0cmRfYWRkcmVzcywKIAlpZiAob2Z0cmVlKSB7
CiAJCXByaW50ZigiYm9vdGluZyBMaW51eCBrZXJuZWwgd2l0aCBkZXZpY2V0cmVlXG4iKTsKIAkJ
cGFyYW1zID0gb2Z0cmVlOwotCX0gZWxzZSB7CisJfQorCisJc2h1dGRvd25fYmFyZWJveCgpOwor
CisJaWYgKCFvZnRyZWUpIHsKIAkJc2V0dXBfdGFncyhpbml0cmRfYWRkcmVzcywgaW5pdHJkX3Np
emUsIHN3YXApOwogCQlwYXJhbXMgPSBhcm1saW51eF9ib290cGFyYW1zOwogCX0KIAotCXNodXRk
b3duX2JhcmVib3goKTsKIAlpZiAoc3dhcCkgewogCQl1MzIgcmVnOwogCQlfX2FzbV9fIF9fdm9s
YXRpbGVfXygibXJjIHAxNSwgMCwgJTAsIGMxLCBjMCIgOiAiPXIiIChyZWcpKTsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
