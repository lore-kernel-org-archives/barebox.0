Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S8A7Y-0007Rm-W5
 for barebox@lists.infradead.org; Thu, 15 Mar 2012 12:49:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 08232BF0E7
 for <barebox@lists.infradead.org>; Wed, 14 Mar 2012 11:38:27 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 15 Mar 2012 13:49:25 +0100
Message-Id: <1331815767-16220-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1331815767-16220-1-git-send-email-t.gamez@phytec.de>
References: <1331815767-16220-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 3/5] pcm049: Update GPMC net conf
To: barebox@lists.infradead.org

VXBkYXRlZCBHUE1DIHNldHRpbmdzIGZvciBldGhlcm5ldCB0byBpbmNyZWFzZSBwZXJmb3JtYW5j
ZS4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0K
IGFyY2gvYXJtL2JvYXJkcy9wY20wNDkvYm9hcmQuYyB8ICAgMTIgKysrKysrLS0tLS0tCiAxIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib2FyZHMvcGNtMDQ5L2JvYXJkLmMgYi9hcmNoL2FybS9ib2FyZHMvcGNtMDQ5
L2JvYXJkLmMKaW5kZXggODI2ODU2Yy4uNGQ1MjE1NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9h
cmRzL3BjbTA0OS9ib2FyZC5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9wY20wNDkvYm9hcmQuYwpA
QCAtNjgsMTIgKzY4LDEyIEBAIG1lbV9pbml0Y2FsbChwY20wNDlfbWVtX2luaXQpOwogCiBzdGF0
aWMgc3RydWN0IGdwbWNfY29uZmlnIG5ldF9jZmcgPSB7CiAJLmNmZyA9IHsKLQkJMHgwMDAwMTAw
MCwJLyogQ09ORjEgKi8KLQkJMHgwMDFlMWUwMSwJLyogQ09ORjIgKi8KLQkJMHgwMDA4MDMwMCwJ
LyogQ09ORjMgKi8KLQkJMHgxYzA5MWMwOSwJLyogQ09ORjQgKi8KLQkJMHgwNDE4MWYxZiwJLyog
Q09ORjUgKi8KLQkJMHgwMDAwMEZDRiwJLyogQ09ORjYgKi8KKwkJMHhjMTAwMTAwMCwJLyogQ09O
RjEgKi8KKwkJMHgwMDA3MDcwMCwJLyogQ09ORjIgKi8KKwkJMHgwMDAwMDAwMCwJLyogQ09ORjMg
Ki8KKwkJMHgwNzAwMDcwMCwJLyogQ09ORjQgKi8KKwkJMHgwOTA2MDkwOSwJLyogQ09ORjUgKi8K
KwkJMHgwMDAwMDNjMiwJLyogQ09ORjYgKi8KIAl9LAogCS5iYXNlID0gMHgyQzAwMDAwMCwKIAku
c2l6ZSA9IEdQTUNfU0laRV8xNk0sCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
