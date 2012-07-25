Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Su2nd-0004qu-DV
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 14:43:33 +0000
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 25 Jul 2012 16:42:05 +0200
Message-Id: <1343227325-28925-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2] defaultenv-2: Add bootargs for booting from disk
To: barebox@lists.infradead.org

QWRkIHN1cHBvcnQgaW4gZGVmYXVsdGVudi0yIGZvciBib290aW5nIGZyb20gZGlzayAoU0QtQ2Fy
ZCwgVVNCLVN0aWNrKS4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5
dGVjLmRlPgotLS0KRml4ZWQgc2luY2UgdjE6CgktIHNwZWxsIGZpeAoJLSBhZGRlZCByZXR1cm4g
dmFsdWUgb24gZmFpbHVyZQoKIGRlZmF1bHRlbnYtMi9iYXNlL2Jpbi9ib290YXJncy1yb290LWRp
c2sgfCAgIDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGVzIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZGVmYXVs
dGVudi0yL2Jhc2UvYmluL2Jvb3RhcmdzLXJvb3QtZGlzawoKZGlmZiAtLWdpdCBhL2RlZmF1bHRl
bnYtMi9iYXNlL2Jpbi9ib290YXJncy1yb290LWRpc2sgYi9kZWZhdWx0ZW52LTIvYmFzZS9iaW4v
Ym9vdGFyZ3Mtcm9vdC1kaXNrCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmRm
ODc1MGUKLS0tIC9kZXYvbnVsbAorKysgYi9kZWZhdWx0ZW52LTIvYmFzZS9iaW4vYm9vdGFyZ3Mt
cm9vdC1kaXNrCkBAIC0wLDAgKzEsMjYgQEAKKyMhL2Jpbi9zaAorCit1c2FnZT0iJDAgW09QVElP
TlNdXG4gLXAgPHBhcnRpdGlvbj5cbiAtdCA8ZnN0eXBlPiIKKword2hpbGUgZ2V0b3B0ICJwOnQ6
aCIgb3B0OyBkbworCWlmIFsgJHtvcHR9ID0gcCBdOyB0aGVuCisJCXBhcnQ9JHtPUFRBUkd9CisJ
ZWxpZiBbICR7b3B0fSA9IHQgXTsgdGhlbgorCQlmc3R5cGU9JHtPUFRBUkd9CisJZWxpZiBbICR7
b3B0fSA9IGggXTsgdGhlbgorCQllY2hvIC1lICIkdXNhZ2UiCisJCWV4aXQgMAorCWZpCitkb25l
CisKK2lmIFsgLXogIiR7cGFydH0iIF07IHRoZW4KKwllY2hvICIkMDogbm8gcGFydGl0aW9uIGdp
dmVuIgorCWV4aXQgMQorZmkKKworaWYgWyAteiAiJHtmc3R5cGV9IiBdOyB0aGVuCisJZWNobyAi
JDA6IG5vIGZpbGVzeXN0ZW0gdHlwZSBnaXZlbiIKKwlleGl0IDEKK2ZpCisKK2dsb2JhbC5saW51
eC5ib290YXJncy5yb290PSJyb290PS9kZXYvJHBhcnQgcm9vdGZzdHlwZT0kZnN0eXBlIHJvb3R3
YWl0IgotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
