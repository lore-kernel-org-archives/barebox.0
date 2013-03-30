Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULttU-0004mr-SC
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 11:24:21 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
Date: Sat, 30 Mar 2013 12:24:18 +0100
In-Reply-To: <m3r4ixgmok.fsf@intrepid.localdomain> (Krzysztof Halasa's message
 of "Sat, 30 Mar 2013 12:19:07 +0100")
Message-ID: <m3mwtlgmfx.fsf@intrepid.localdomain>
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
Subject: [PATCH] ARM: XScale processors don't support "clean+invalidate D
 entry" operation.
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoY0BwbS53YXcucGw+CgotLS0gYS9h
cmNoL2FybS9jcHUvY2FjaGUtYXJtdjQuUworKysgYi9hcmNoL2FybS9jcHUvY2FjaGUtYXJtdjQu
UwpAQCAtMTMyLDExICsxMzIsMTUgQEAgRU5UUlkodjRfZG1hX2NsZWFuX3JhbmdlKQogICoKICAq
CS0gc3RhcnQJLSB2aXJ0dWFsIHN0YXJ0IGFkZHJlc3MKICAqCS0gZW5kCS0gdmlydHVhbCBlbmQg
YWRkcmVzcworICoKKyAqCVhTY2FsZSBwcm9jZXNzb3JzIGRvbid0IHN1cHBvcnQgImNsZWFuK2lu
dmFsaWRhdGUgRCBlbnRyeSIKKyAqCShtY3IgcDE1LCAwLCByMCwgYzcsIGMxNCwgMSkuCiAgKi8K
IC5zZWN0aW9uIC50ZXh0LnY0X2RtYV9mbHVzaF9yYW5nZQogRU5UUlkodjRfZG1hX2ZsdXNoX3Jh
bmdlKQogCWJpYwlyMCwgcjAsICNDQUNIRV9ETElORVNJWkUgLSAxCi0xOgltY3IJcDE1LCAwLCBy
MCwgYzcsIGMxNCwgMQkJQCBjbGVhbitpbnZhbGlkYXRlIEQgZW50cnkKKzE6CW1jcglwMTUsIDAs
IHIwLCBjNywgYzEwLCAxCQlAIGNsZWFuIEQgZW50cnkKKwltY3IJcDE1LCAwLCByMCwgYzcsIGM2
LCAxCQlAIGludmFsaWRhdGUgRCBlbnRyeQogCWFkZAlyMCwgcjAsICNDQUNIRV9ETElORVNJWkUK
IAljbXAJcjAsIHIxCiAJYmxvCTFiCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
