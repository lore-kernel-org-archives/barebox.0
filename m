Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xxv8L-0001EN-W6
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 10:01:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E016CA004FA
 for <barebox@lists.infradead.org>; Mon,  8 Dec 2014 11:01:34 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 8 Dec 2014 10:59:49 +0100
Message-Id: <1418032791-35329-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/3] ARM: dts: am335x-phytec-phyflex: Increase kernel
 partition on SPI NOR
To: barebox@lists.infradead.org

SW5jcmVhc2Uga2VybmVsIHBhcnRpdGlvbiB0byBlbmQgb2YgU1BJIE5PUi4KClNpZ25lZC1vZmYt
Ynk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL2R0cy9h
bTMzNXgtcGh5dGVjLXBoeWZsZXguZHRzIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2FtMzM1eC1w
aHl0ZWMtcGh5ZmxleC5kdHMgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlmbGV4LmR0
cwppbmRleCBjNDQ4MWY1Li4wZGU3ZTg3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4
LXBoeXRlYy1waHlmbGV4LmR0cworKysgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlm
bGV4LmR0cwpAQCAtMTg3LDcgKzE4Nyw3IEBACiAKIAkJcGFydGl0aW9uQDQgewogCQkJbGFiZWwg
PSAia2VybmVsIjsKLQkJCXJlZyA9IDwweGUwMDAwIDB4NDAwMDAwPjsKKwkJCXJlZyA9IDwweGUw
MDAwIDB4MD47CiAJCX07CiAJfTsKIH07Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
