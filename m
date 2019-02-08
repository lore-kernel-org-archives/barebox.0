Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gs0O9-0005jW-T7
 for barebox@lists.infradead.org; Fri, 08 Feb 2019 07:15:57 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Fri,  8 Feb 2019 08:15:24 +0100
Message-Id: <20190208071526.19150-6-u.oelmann@pengutronix.de>
In-Reply-To: <20190208071526.19150-1-u.oelmann@pengutronix.de>
References: <20190208071526.19150-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 5/7] common: state: harmonize code with dt-utils
To: Barebox List <barebox@lists.infradead.org>

TGludXggdXNlcnNwYWNlIG5lZWRzIHN5cy9wYXJhbS5oIHRvIGhhdmUgdGhlIGRlZmluaXRpb24g
b2Ygcm91bmR1cCgpLgoKU2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBw
ZW5ndXRyb25peC5kZT4KLS0tCiBjb21tb24vc3RhdGUvYmFja2VuZF9idWNrZXRfY2lyY3VsYXIu
YyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jIGIvY29tbW9uL3N0YXRlL2Jh
Y2tlbmRfYnVja2V0X2NpcmN1bGFyLmMKaW5kZXggMDU5YTUzMWFhNGIzLi5kYTdjODQyMWFlOTMg
MTAwNjQ0Ci0tLSBhL2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jCisrKyBi
L2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jCkBAIC0yMyw2ICsyMywxMCBA
QAogI2luY2x1ZGUgPG10ZC9tdGQtcGViLmg+CiAjaW5jbHVkZSA8c3RyaW5nLmg+CiAKKyNpZm5k
ZWYgX19CQVJFQk9YX18KKyNpbmNsdWRlIDxzeXMvcGFyYW0uaD4KKyNlbmRpZgorCiAjaW5jbHVk
ZSAic3RhdGUuaCIKIAogLyoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
