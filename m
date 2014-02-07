Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBsyZ-00004u-OD
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 21:28:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  7 Feb 2014 22:28:03 +0100
Message-Id: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 01/11] net: net_read_uint32: assert that only 32 bit are
 read
To: barebox@lists.infradead.org

T24gc29tZSBhcmNoaXRlY3R1cmVzIChlLmcuIGFscGhhLCBhbWQ2NCwgYXJtNjQsIGlhNjQsIHMz
OTB4LCBtaXBzNjQpCnNpemVvZih1bG9uZykgaXMgOCB3aGljaCBtYWRlIG5ldF9yZWFkX3VpbnQz
MiBhY3R1YWxseSByZWFkIHRvbyBtdWNoIGFuZApldmVuIHJldHVybmVkIHRoZSB3cm9uZyB2YWx1
ZSBvbiBiaWcgZW5kaWFuIG1hY2hpbmVzLgooTm90ZSB0aGUgc2Vjb25kIGlzc3VlIGlzbid0IHRo
YXQgY3JpdGljYWwgdGhvdWdoLCBiZWNhdXNlIHRoZSBvbmx5CmFyY2hpdGVjdHVyZSBmcm9tIHRo
ZSBsaXN0IGFib3ZlIHRoYXQgdXNlcyBiaWcgZW5kaWFuIGJ5dGUgb3JkZXIgaXMgczM5MHgKLi4u
KQoKQWxzbyBjaGFuZ2UgdGhlIGFyZ3VtZW50IHRvIHZvaWQgKiBiZWNhdXNlIHRoZSBwb2ludGVy
IGlzIG5vdCBuZWNlc3NhcmlseQpwcm9wZXJseSBhbGlnbmVkLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBpbmNs
dWRlL25ldC5oIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC5oIGIvaW5jbHVkZS9uZXQu
aAppbmRleCBhNGNmZWM3MTIzNzQuLjgzODhlMmYxMmViZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9u
ZXQuaAorKysgYi9pbmNsdWRlL25ldC5oCkBAIC0yNjksMTEgKzI2OSwxMSBAQCBzdGF0aWMgaW5s
aW5lIElQYWRkcl90IG5ldF9yZWFkX2lwKHZvaWQgKmZyb20pCiB9CiAKIC8qIHJldHVybiB1aW50
MzIgKmluIG5ldHdvcmsgYnl0ZW9yZGVyKiAqLwotc3RhdGljIGlubGluZSB1aW50MzJfdCBuZXRf
cmVhZF91aW50MzIodWludDMyX3QgKmZyb20pCitzdGF0aWMgaW5saW5lIHVpbnQzMl90IG5ldF9y
ZWFkX3VpbnQzMih2b2lkICpmcm9tKQogewotCXVsb25nIGw7Ci0JbWVtY3B5KCh2b2lkKikmbCwg
KHZvaWQqKWZyb20sIHNpemVvZihsKSk7Ci0JcmV0dXJuIGw7CisJdWludDMyX3QgdG1wOworCW1l
bWNweSgmdG1wLCBmcm9tLCBzaXplb2YodG1wKSk7CisJcmV0dXJuIHRtcDsKIH0KIAogLyogd3Jp
dGUgSVAgKmluIG5ldHdvcmsgYnl0ZW9yZGVyKiAqLwotLSAKMS44LjUuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
