Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBsyi-000053-A1
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 21:28:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  7 Feb 2014 22:28:10 +0100
Message-Id: <1391808493-27328-8-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 08/11] net: provide alternatives to {ntoh,
 hton}[sl] funtions with cleaner semantics
To: barebox@lists.infradead.org

bnRvaGwgYWx3YXlzIGNvbnZlcnRzIDMyIGJpdHMgZXZlbiBvbiBhcmNocyB3aGVyZSBzaXplb2Yo
bG9uZykgPT0gOC4KIm50b2gzMiIgaXMgYSBtdWNoIG1vcmUgaW50dWl0aXZlIG5hbWUgaGVyZS4g
QWxzbyB0aGUgbmFtZSBvZiB0aGUgNjQgYml0CnZhcmlhbnQgdGhhdCBpcyBhbHNvIGFkZGVkIGlz
bid0IHF1ZXN0aW9uYWJsZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQoKTm90ZXM6CiAgICBuZXcgaW4gdjIKCiBp
bmNsdWRlL2J5dGVvcmRlci5oIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvYnl0
ZW9yZGVyLmgKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2J5dGVvcmRlci5oIGIvaW5jbHVkZS9ieXRl
b3JkZXIuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjRiMjU1YTVm
YWI5YgotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvYnl0ZW9yZGVyLmgKQEAgLTAsMCArMSwy
NCBAQAorI2lmbmRlZiBfX0JZVEVPUkRFUl9IX18KKyNkZWZpbmUgX19CWVRFT1JERVJfSF9fCisK
Ky8qCisgKiBUaGUgc3RhbmRhcmQgbWFjcm9zIGZvciBjb252ZXJ0aW5nIGJldHdlZW4gaG9zdCBh
bmQgbmV0d29yayBieXRlIG9yZGVyIGFyZQorICogYmFkbHkgbmFtZWQuIFNvIG50b2hsIGNvbnZl
cnRzIDMyIGJpdHMgZXZlbiBvbiBhcmNoaXRlY3R1cmVzIHdoZXJlIGEgbG9uZyBpcworICogNjQg
Yml0IHdpZGUgYWx0aG91Z2ggdGhlICdsJyBzdWZmaXggc3VnZ2VzdHMgdGhhdCBpdCdzIHdvcmtp
bmcgb24gbG9uZ3MuCisgKgorICogU28gdGhpcyBmaWxlIGludHJvZHVjZXMgdmFyaWFudHMgdGhh
dCB1c2UgdGhlIGJpdGNvdW50IGFzIHN1ZmZpeCBpbnN0ZWFkIG9mCisgKiAncycgb3IgJ2wnLgor
ICovCisKKyNpbmNsdWRlIDxhc20vYnl0ZW9yZGVyLmg+CisKKyNkZWZpbmUgbnRvaDE2KHgpCV9f
YmUxNl90b19jcHUoeCkKKyNkZWZpbmUgaHRvbjE2KHgpCV9fY3B1X3RvX2JlMTYoeCkKKworI2Rl
ZmluZSBudG9oMzIoeCkJX19iZTMyX3RvX2NwdSh4KQorI2RlZmluZSBodG9uMzIoeCkJX19jcHVf
dG9fYmUzMih4KQorCisjZGVmaW5lIG50b2g2NCh4KQlfX2JlNjRfdG9fY3B1KHgpCisjZGVmaW5l
IGh0b242NCh4KQlfX2NwdV90b19iZTY0KHgpCisKKyNlbmRpZiAvKiBfX0JZVEVPUkRFUl9IX18g
Ki8KLS0gCjEuOC41LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
