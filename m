Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEhKX-0002fn-PT
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 14:02:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 91694BF0E7
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 16:02:05 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 20 Sep 2012 16:02:02 +0200
Message-Id: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/3] Add support for creating barebox.img file.
To: barebox@lists.infradead.org

VGhlIEFNMzM1eCBVLWJvb3QgU1BMIGV4cGVjdHMgdG8gbG9hZCBhIHUtYm9vdCBpbWFnZSB3aGVu
IGJvb3RpbmcKZnJvbSBTRC1DYXJkLgoKQmFzZWQgb24gY29kZSBvZiBKYW4gTHVlYmJlIDxqbHVA
cGVuZ3V0cm9uaXguZGU+CgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBo
eXRlYy5kZT4KLS0tCiAuZ2l0aWdub3JlIHwgICAgMSArCiBNYWtlZmlsZSAgIHwgICAgNSArKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvLmdpdGlnbm9yZSBiLy5naXRpZ25vcmUKaW5kZXggNDE1NGM3My4uZDE0Nzk5MiAx
MDA2NDQKLS0tIGEvLmdpdGlnbm9yZQorKysgYi8uZ2l0aWdub3JlCkBAIC0zMSw2ICszMSw3IEBA
IGNyb3NzX2NvbXBpbGUKIGJhcmVib3gKIGJhcmVib3guUwogYmFyZWJveC5iaW4KK2JhcmVib3gu
aW1nCiBiYXJlYm94LnNyZWMKIGJhcmVib3gubmV0eAogYmFyZWJveC5zNXAKZGlmZiAtLWdpdCBh
L01ha2VmaWxlIGIvTWFrZWZpbGUKaW5kZXggYzYyNjRkMy4uM2MzY2RlNCAxMDA2NDQKLS0tIGEv
TWFrZWZpbGUKKysrIGIvTWFrZWZpbGUKQEAgLTY4MCw2ICs2ODAsMTEgQEAgaWZuZGVmIENPTkZJ
R19QQkxfSU1BR0UKIAkkKGNhbGwgY21kLGNoZWNrX2ZpbGVfc2l6ZSwkKENPTkZJR19CQVJFQk9Y
X01BWF9JTUFHRV9TSVpFKSkKIGVuZGlmCiAKK2JhcmVib3guaW1nOiBiYXJlYm94LmJpbgorCSQo
c3JjdHJlZSkvc2NyaXB0cy9ta2ltYWdlIC1BICQoQVJDSCkgLVQgZmlybXdhcmUgLUMgbm9uZSBc
CisJLU8gYmFyZWJveCAtYSAkKENPTkZJR19URVhUX0JBU0UpIC1lICQoQ09ORklHX1RFWFRfQkFT
RSkgXAorCS1uICJiYXJlYm94ICQoS0VSTkVMUkVMRUFTRSkiIC1kICQ8ICRACisKIGlmZGVmIENP
TkZJR19YODYKIGJhcmVib3guUzogYmFyZWJveAogaWZkZWYgQ09ORklHX1g4Nl9IREJPT1QKLS0g
CjEuNy4wLjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
