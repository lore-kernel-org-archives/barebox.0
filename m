Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjnNK-0000di-DM
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 08:13:23 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 27 Jun 2012 10:13:13 +0200
Message-Id: <1340784793-22100-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] commands/crc: add a trailing newline after output of checksum
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

V2l0aG91dCB0aGlzIHBhdGNoIHRoZSBuZXh0IGNvbW1hbmQgcHJvbXB0IHN0YXJ0cyBkaXJlY3Rs
eSBhZnRlciB0aGUKY2FsY3VsYXRlZCBjaGVjayBzdW0uIFdoaWxlIGF0IGl0IGFsc28gZml4IHRo
ZSBjb2Rpbmcgc3R5bGUuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1hbmRzL2NyYy5jIHwgICAgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvY29tbWFuZHMvY3JjLmMgYi9jb21tYW5kcy9jcmMuYwppbmRleCBkZjIyOTQxLi44MWFhMzQw
IDEwMDY0NAotLS0gYS9jb21tYW5kcy9jcmMuYworKysgYi9jb21tYW5kcy9jcmMuYwpAQCAtNzEs
NyArNzEsNyBAQCBzdGF0aWMgaW50IGZpbGVfY3JjKGNoYXIqIGZpbGVuYW1lLCB1bG9uZyBzdGFy
dCwgdWxvbmcgc2l6ZSwgdWxvbmcgKmNyYywKIAkJKnRvdGFsICs9IG5vdzsKIAl9CiAKLQlwcmlu
dGYgKCJDUkMzMiBmb3IgJXMgMHglMDhseCAuLi4gMHglMDhseCA9PT4gMHglMDhseCIsCisJcHJp
bnRmKCJDUkMzMiBmb3IgJXMgMHglMDhseCAuLi4gMHglMDhseCA9PT4gMHglMDhseFxuIiwKIAkJ
CWZpbGVuYW1lLCBzdGFydCwgc3RhcnQgKyAqdG90YWwgLSAxLCAqY3JjKTsKIAogb3V0X2ZyZWU6
Ci0tIAoxLjcuMTAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
