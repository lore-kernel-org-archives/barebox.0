Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiNHN-0007in-Kg
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:37:07 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 617CA4B023D
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:37:00 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed,  4 Jan 2012 10:36:48 +0100
Message-Id: <1325669809-32637-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1325669809-32637-1-git-send-email-eric@eukrea.com>
References: <1325669809-32637-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v4 4/5] timeout: add poller_call
To: barebox@lists.infradead.org

d2l0aG91dCB0aGlzLCB1c2IgZ2FkZ2V0IGNhbid0IGVudW1lcmF0ZSBkdXJpbmcgYm9vdCBvbmNl
IHRoZQp0aW1lb3V0IGNvbW1hbmQgaXMgbGF1bmNoZWQgKHRodXMgcHJldmVudGluZyB1c2JzZXJp
YWwgY29uc29sZQphY2Nlc3MgdG8gdGFrZSBjb250cm9sIG9mIHRoZSBib2FyZCBiZWZvcmUgYXV0
b2Jvb3QpCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0t
CiBjb21tYW5kcy90aW1lb3V0LmMgfCAgICAyICsrCiAxIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9jb21tYW5kcy90aW1lb3V0LmMg
Yi9jb21tYW5kcy90aW1lb3V0LmMKaW5kZXggNWYyYWI5YS4uNzBiNDFlMyAxMDA2NDQKLS0tIGEv
Y29tbWFuZHMvdGltZW91dC5jCisrKyBiL2NvbW1hbmRzL3RpbWVvdXQuYwpAQCAtMjUsNiArMjUs
NyBAQAogI2luY2x1ZGUgPGVycm5vLmg+CiAjaW5jbHVkZSA8Z2V0b3B0Lmg+CiAjaW5jbHVkZSA8
Y2xvY2suaD4KKyNpbmNsdWRlIDxwb2xsZXIuaD4KIAogI2RlZmluZSBUSU1FT1VUX1JFVFVSTgko
MSA8PCAwKQogI2RlZmluZSBUSU1FT1VUX0NUUkxDCSgxIDw8IDEpCkBAIC03MCw2ICs3MSw3IEBA
IHN0YXRpYyBpbnQgZG9fdGltZW91dChzdHJ1Y3QgY29tbWFuZCAqY21kdHAsIGludCBhcmdjLCBj
aGFyICphcmd2W10pCiAJCXByaW50ZigiJTJkIiwgY291bnRkb3duLS0pOwogCiAJZG8geworCQlw
b2xsZXJfY2FsbCgpOwogCQlpZiAodHN0YygpKSB7CiAJCQlpbnQga2V5ID0gZ2V0YygpOwogCQkJ
aWYgKGZsYWdzICYgVElNRU9VVF9DVFJMQyAmJiBrZXkgPT0gMykKLS0gCjEuNy43LjUKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
