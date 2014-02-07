Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBsyd-000052-AM
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 21:28:49 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  7 Feb 2014 22:28:09 +0100
Message-Id: <1391808493-27328-7-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 07/11] net: new function net_read_uint64
To: barebox@lists.infradead.org

VGhpcyBpcyBuZWVkZWQgZm9yIG5mczMgc3VwcG9ydCBhcyBzb21lIHR5cGVzIGJlY2FtZSBiaWdn
ZXIgY29tcGFyZWQgdG8KbmZzMi4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogaW5jbHVkZS9uZXQuaCB8IDcgKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbmV0LmggYi9pbmNsdWRlL25ldC5oCmluZGV4IDgzODhlMmYxMmViZS4uNmM4Njk0N2Q5Y2Ez
IDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC5oCisrKyBiL2luY2x1ZGUvbmV0LmgKQEAgLTI3Niw2
ICsyNzYsMTMgQEAgc3RhdGljIGlubGluZSB1aW50MzJfdCBuZXRfcmVhZF91aW50MzIodm9pZCAq
ZnJvbSkKIAlyZXR1cm4gdG1wOwogfQogCitzdGF0aWMgaW5saW5lIHVpbnQ2NF90IG5ldF9yZWFk
X3VpbnQ2NCh2b2lkICpmcm9tKQoreworCXVpbnQ2NF90IHRtcDsKKwltZW1jcHkoJnRtcCwgZnJv
bSwgc2l6ZW9mKHRtcCkpOworCXJldHVybiB0bXA7Cit9CisKIC8qIHdyaXRlIElQICppbiBuZXR3
b3JrIGJ5dGVvcmRlciogKi8KIHN0YXRpYyBpbmxpbmUgdm9pZCBuZXRfd3JpdGVfaXAodm9pZCAq
dG8sIElQYWRkcl90IGlwKQogewotLSAKMS44LjUuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
