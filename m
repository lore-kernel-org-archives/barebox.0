Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccRB-0004F3-9X
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:07:43 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Thu, 07 Jun 2012 15:03:15 +0200
Message-ID: <m3ehprl1f0.fsf@intrepid.localdomain>
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
Subject: [PATCH] Fix sha224sum panic by registering SHA224 hash name.
To: barebox@lists.infradead.org

YmFyZWJveDovIHNoYTIyNHN1bQpCVUc6IGZhaWx1cmUgYXQgY29tbWFuZHMvZGlnZXN0LmM6NDAv
ZG9fZGlnZXN0KCkhCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hjQHBtLndh
dy5wbD4KCmRpZmYgLS1naXQgYS9jcnlwdG8vc2hhMi5jIGIvY3J5cHRvL3NoYTIuYwppbmRleCAx
NzMwM2U2Li4zMDk2ZWZlIDEwMDY0NAotLS0gYS9jcnlwdG8vc2hhMi5jCisrKyBiL2NyeXB0by9z
aGEyLmMKQEAgLTMxMyw2ICszMTMsNyBAQCBzdGF0aWMgaW50IGRpZ2VzdF9zaGEyMjRfaW5pdChz
dHJ1Y3QgZGlnZXN0ICpkKQogCiBzdGF0aWMgc3RydWN0IHNoYTIgbTIyNCA9IHsKIAkuZCA9IHsK
KwkJLm5hbWUgPSAic2hhMjI0IiwKIAkJLmluaXQgPSBkaWdlc3Rfc2hhMjI0X2luaXQsCiAJCS51
cGRhdGUgPSBkaWdlc3Rfc2hhMl91cGRhdGUsCiAJCS5maW5hbCA9IGRpZ2VzdF9zaGEyX2ZpbmFs
LAoKLS0gCktyenlzenRvZiBIYWxhc2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
