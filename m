Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueKc-0006y1-IN
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:33:19 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  6 Nov 2015 11:32:48 +0100
Message-Id: <1446805968-13337-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] usb: mx25: fix bit position of "Host power mask"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

VGhlIGJpdCBNWDI1X0gxX1BNX0JJVCB2YWx1ZSBpcyBoYW5kbGVkIGZvciBwb3J0IDEgYXMgTVgy
NV9PVEdfUE1fQklUIGlzCmZvciBwb3J0IDAuIFRoZSBsYXR0ZXIgaXMgY2FsbGVkICJPUE06IE9U
RyBwb3dlciBtYXNrIiBpbiB0aGUgaS5NWDI1CnJlZmVyZW5jZSBtYW51YWwuIEl0cyBkZXNjcmlw
dGlvbiBtYXRjaGVzIHRoZSBkZXNjcmlwdGlvbiBvZiAiSFBNOiBIb3N0CnBvd2VyIG1hc2siIGZv
ciB0aGUgaG9zdCBwb3J0IHdoaWNoIGlzIGJpdCAxNiwgbm90IDguCgpUaGUgTGludXgga2VybmVs
IChhcyBvZiA0LjMpIGFsc28gaGFzCgoJI2RlZmluZSBNWDI1X0gxX1BNX0JJVCAgICAgICAgICAg
ICAgICAgIEJJVCgxNikKCi4KCkZpeGVzOiBhNDA3NmRkZjY1NzcgKCJVU0IgaS5NWDogQWRkIGNo
aXBpZGVhIGRyaXZlciBzdXBwb3J0IikKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3VzYi9pbXgvaW14
LXVzYi1taXNjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9pbXgvaW14LXVzYi1taXNjLmMgYi9k
cml2ZXJzL3VzYi9pbXgvaW14LXVzYi1taXNjLmMKaW5kZXggYmU5NWI4OWFmZjI0Li5hZjFhMzIx
MTBjOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2lteC9pbXgtdXNiLW1pc2MuYworKysgYi9k
cml2ZXJzL3VzYi9pbXgvaW14LXVzYi1taXNjLmMKQEAgLTMxLDcgKzMxLDcgQEAKICNkZWZpbmUg
TVgyNV9IMV9TSUNfU0hJRlQJMjEKICNkZWZpbmUgTVgyNV9IMV9TSUNfTUFTSwkoMHgzIDw8IE1Y
MjVfSDFfU0lDX1NISUZUKQogI2RlZmluZSBNWDI1X0gxX1BQX0JJVAkJKDEgPDwgMTgpCi0jZGVm
aW5lIE1YMjVfSDFfUE1fQklUCQkoMSA8PCA4KQorI2RlZmluZSBNWDI1X0gxX1BNX0JJVAkJKDEg
PDwgMTYpCiAjZGVmaW5lIE1YMjVfSDFfSVBQVUVfVVBfQklUCSgxIDw8IDcpCiAjZGVmaW5lIE1Y
MjVfSDFfSVBQVUVfRE9XTl9CSVQJKDEgPDwgNikKICNkZWZpbmUgTVgyNV9IMV9UTExfQklUCQko
MSA8PCA1KQotLSAKMi42LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
