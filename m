Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWti0-0001uW-9B
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 22:07:16 +0000
Received: by laeb10 with SMTP id b10so9536969lae.1
 for <barebox@lists.infradead.org>; Tue, 01 Sep 2015 15:06:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Sep 2015 01:06:45 +0300
Message-Id: <1441145205-28626-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] mtd: spi-nor: add Spansion S25FL204K support
To: barebox@lists.infradead.org
Cc: Brian Norris <computersforpeace@gmail.com>

U3BhbnNpb24gUzI1RkwyMDRLIGlzIGEgNC1NYml0IDMuMFYgU2VyaWFsIEZsYXNoIE1lbW9yeQp3
aXRoIFVuaWZvcm0gNCBrQiBTZWN0b3JzLgoKU2lnbmVkLW9mZi1ieTogQW50b255IFBhdmxvdiA8
YW50b255bnBhdmxvdkBnbWFpbC5jb20+CkFja2VkLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHphamVj
NUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8Y29tcHV0ZXJzZm9ycGVh
Y2VAZ21haWwuY29tPgotLS0KVGhpcyBiYXJlYm94IHBhdGNoIGlzIGJhc2VkIG9uIHRoZSBsaW51
eCBrZXJuZWwgcGF0Y2gKZnJvbSBnaXQ6Ly9naXQuaW5mcmFkZWFkLm9yZy9sMi1tdGQuZ2l0IChu
ZXh0IGJyYW5jaCkuCgogZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3NwaS1u
b3Ivc3BpLW5vci5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMKaW5kZXggYjM1N2U1
YS4uMjdmNGFiYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMKKysr
IGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMKQEAgLTU0MSw2ICs1NDEsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHNwaV9kZXZpY2VfaWQgc3BpX25vcl9pZHNbXSA9IHsKIAl7ICJzMjVm
bDAxNmsiLCAgSU5GTygweGVmNDAxNSwgICAgICAwLCAgNjQgKiAxMDI0LCAgMzIsIFNFQ1RfNEsp
IH0sCiAJeyAiczI1ZmwwNjRrIiwgIElORk8oMHhlZjQwMTcsICAgICAgMCwgIDY0ICogMTAyNCwg
MTI4LCBTRUNUXzRLKSB9LAogCXsgInMyNWZsMTMyayIsICBJTkZPKDB4MDE0MDE2LCAgICAgIDAs
ICA2NCAqIDEwMjQsICA2NCwgMCkgfSwKKwl7ICJzMjVmbDIwNGsiLCAgSU5GTygweDAxNDAxMywg
ICAgICAwLCAgNjQgKiAxMDI0LCAgIDgsIFNFQ1RfNEspIH0sCiAKIAkvKiBTU1QgLS0gbGFyZ2Ug
ZXJhc2Ugc2l6ZXMgYXJlICJvdmVybGF5cyIsICJzZWN0b3JzIiBhcmUgNEsgKi8KIAl7ICJzc3Qy
NXZmMDQwYiIsIElORk8oMHhiZjI1OGQsIDAsIDY0ICogMTAyNCwgIDgsIFNFQ1RfNEsgfCBTU1Rf
V1JJVEUpIH0sCi0tIAoyLjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
