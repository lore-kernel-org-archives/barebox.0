Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Su18Q-0001FA-Gv
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 12:56:16 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 12C32BF0E7
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 14:55:08 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 25 Jul 2012 14:55:07 +0200
Message-Id: <1343220907-28336-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] defaultenv-2: Add bootargs for booting from disk
To: barebox@lists.infradead.org

QWRkIHN1cHBvcnQgaW4gZGVmYXVsdGVudi0yIGZvciBib290aW5nIGZyb20gZGlzayAoU0QtQ2Fy
ZCwgVVNCLVN0aWNrKS4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5
dGVjLmRlPgotLS0KIGRlZmF1bHRlbnYtMi9iYXNlL2Jpbi9ib290YXJncy1yb290LWRpc2sgfCAg
IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGVzIGNoYW5nZWQsIDI2IGluc2Vy
dGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZGVmYXVsdGVudi0y
L2Jhc2UvYmluL2Jvb3RhcmdzLXJvb3QtZGlzawoKZGlmZiAtLWdpdCBhL2RlZmF1bHRlbnYtMi9i
YXNlL2Jpbi9ib290YXJncy1yb290LWRpc2sgYi9kZWZhdWx0ZW52LTIvYmFzZS9iaW4vYm9vdGFy
Z3Mtcm9vdC1kaXNrCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjA3NmFmZGYK
LS0tIC9kZXYvbnVsbAorKysgYi9kZWZhdWx0ZW52LTIvYmFzZS9iaW4vYm9vdGFyZ3Mtcm9vdC1k
aXNrCkBAIC0wLDAgKzEsMjYgQEAKKyMhL2Jpbi9zaAorCit1c2FnZT0iJDAgW09QVElPTlNdXG4g
LXAgPHBhcnRpdGlvbj5cbiAtdCA8ZnN0eXBlPiIKKword2hpbGUgZ2V0b3B0ICJwOnQ6aCIgb3B0
OyBkbworCWlmIFsgJHtvcHR9ID0gcCBdOyB0aGVuCisJCXBhcnQ9JHtPUFRBUkd9CisJZWxpZiBb
ICR7b3B0fSA9IHQgXTsgdGhlbgorCQlmc3R5cGU9JHtPUFRBUkd9CisJZWxpZiBbICR7b3B0fSA9
IGggXTsgdGhlbgorCQllY2hvIC1lICIkdXNhZ2UiCisJCWV4aXQgMAorCWZpCitkb25lCisKK2lm
IFsgLXogIiR7cGFydH0iIF07IHRoZW4KKwllY2hvICIkMDogbm8gcGFydGl0b24gZ2l2ZW4iCisJ
ZXhpdAorZmkKKworaWYgWyAteiAiJHtmc3R5cGV9IiBdOyB0aGVuCisJZWNobyAiJDA6IG5vIGZp
bGVzeXN0ZW0gdHlwZSBnaXZlbiIKKwlleGl0CitmaQorCitnbG9iYWwubGludXguYm9vdGFyZ3Mu
cm9vdD0icm9vdD0vZGV2LyRwYXJ0IHJvb3Rmc3R5cGU9JGZzdHlwZSByb290d2FpdCIKLS0gCjEu
Ny4wLjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
