Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XyGhr-00055l-K1
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 09:03:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AAD3FA0019D
 for <barebox@lists.infradead.org>; Tue,  9 Dec 2014 10:03:41 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Dec 2014 10:01:55 +0100
Message-Id: <1418115716-5735-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: Add missing gpmc setting for phyCORE-AM335x
To: barebox@lists.infradead.org

Y3ljbGUyY3ljbGUtZGlmZmNzZW4gbmVlZHMgdG8gYmUgZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6
IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL2R0cy9hbTMz
NXgtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUt
c29tLmR0c2kgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCmlu
ZGV4IGYxYmNiOGIuLmZiZDY3NjAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5
dGVjLXBoeWNvcmUtc29tLmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5
Y29yZS1zb20uZHRzaQpAQCAtMjI1LDYgKzIyNSw3IEBACiAJCWdwbWMsd2FpdC1vbi13cml0ZSA9
ICJ0cnVlIjsKIAkJZ3BtYyxidXMtdHVybmFyb3VuZC1ucyA9IDwwPjsKIAkJZ3BtYyxjeWNsZTJj
eWNsZS1kZWxheS1ucyA9IDw1MD47CisJCWdwbWMsY3ljbGUyY3ljbGUtZGlmZmNzZW47CiAJCWdw
bWMsY2xrLWFjdGl2YXRpb24tbnMgPSA8MD47CiAJCWdwbWMsd2FpdC1tb25pdG9yaW5nLW5zID0g
PDA+OwogCQlncG1jLHdyLWFjY2Vzcy1ucyA9IDwwPjsKLS0gCjEuOS4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
