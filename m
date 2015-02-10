Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YL9yi-0001QH-S0
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 12:31:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4D853A003A9
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 13:32:06 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 10 Feb 2015 13:29:49 +0100
Message-Id: <1423571389-42849-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423571389-42849-1-git-send-email-w.egorov@phytec.de>
References: <1423571389-42849-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH: For next 2/2] ARM: phyCORE-AM335x-SOM: Update NAND partition
 table
To: barebox@lists.infradead.org

RnJvbTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+CgpXZSBkb3VibGUgdGhlIHBh
cnRpdGlvbiBzaXplIGZvciBiYXJlYm94LWVudiBhbmQgb2Z0cmVlIHRvIGJlCm1vcmUgcm9idXN0
IGFnYWluc3QgYmFkIGJsb2NrIGlzc3Vlcy4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXog
PHQuZ2FtZXpAcGh5dGVjLmRlPgpTaWduZWQtb2ZmLWJ5OiBXYWRpbSBFZ29yb3YgPHcuZWdvcm92
QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLXNvbS5k
dHNpIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3Jl
LXNvbS5kdHNpIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaQpp
bmRleCA3ZDBlM2M1Li5lZDhlMjU3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBo
eXRlYy1waHljb3JlLXNvbS5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBo
eWNvcmUtc29tLmR0c2kKQEAgLTI5MSwxNyArMjkxLDE3IEBACiAKIAkJcGFydGl0aW9uQDUgewog
CQkJbGFiZWwgPSAiYmFyZWJveGVudiI7Ci0JCQlyZWcgPSA8MHgxMDAwMDAgMHgyMDAwMD47CisJ
CQlyZWcgPSA8MHgxMDAwMDAgMHg0MDAwMD47CiAJCX07CiAKIAkJcGFydGl0aW9uQDYgewogCQkJ
bGFiZWwgPSAib2Z0cmVlIjsKLQkJCXJlZyA9IDwweDEyMDAwMCAweDIwMDAwPjsKKwkJCXJlZyA9
IDwweDE0MDAwMCAweDQwMDAwPjsKIAkJfTsKIAogCQlwYXJ0aXRpb25ANyB7CiAJCQlsYWJlbCA9
ICJrZXJuZWwiOwotCQkJcmVnID0gPDB4MTQwMDAwIDB4ODAwMDAwPjsKKwkJCXJlZyA9IDwweDE4
MDAwMCAweDgwMDAwMD47CiAJCX07CiAKIAkJcGFydGl0aW9uQDggewpAQCAtMzEwLDcgKzMxMCw3
IEBACiAJCQkgKiBTaXplIDB4MCBleHRlbmRzIHBhcnRpdGlvbiB0bwogCQkJICogZW5kIG9mIG5h
bmQgZmxhc2guCiAJCQkgKi8KLQkJCXJlZyA9IDwweDk0MDAwMCAweDA+OworCQkJcmVnID0gPDB4
OTgwMDAwIDB4MD47CiAJCX07CiAJfTsKIH07Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
