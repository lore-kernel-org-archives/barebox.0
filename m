Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1UUM-0003Bz-QY
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 09:36:45 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  9 Oct 2017 11:36:13 +0200
Message-Id: <20171009093616.12686-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 0/3] e1000: access to flash on i210
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

SGVsbG8sCgp0aGlzIHNlcmllcyBhbGxvd3MgbWUgdG8gcmVhZCB0aGUgZmxhc2ggY2hpcCBjb25u
ZWN0ZWQgdG8gYW4gaTIxMCBuZXR3b3JrCmFkYXB0ZXIuIEkgZGlkbid0IHRlc3QgbXVjaCB5ZXQg
KGUuZy4gd3JpdGluZykgYnV0IEkgdGhpbmsgdGhlIGZpcnN0IHR3bwpwYXRjaGVzIGFyZSBPSyBh
bnlob3cuIE1heWJlIEFuZHJleSBjYW4gY29tbWVudCBhYm91dCB0aGUgdGhpcmQgcGF0Y2ggd2hp
bGUgSSdtCm91dCBmb3IgbHVuY2ggOi0pCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5lLUvD
tm5pZyAoMyk6CiAgZTEwMDA6IGltcGxlbWVudCByZWdpc3RlciBtYXBwaW5nIGZvciBFMTAwMF97
RUVSRCxGTFNXe0NUTCxEQVRBLENOVH19CiAgZTEwMDA6IGltcGxlbWVudCBzdXBwb3J0IGZvciBz
bWFsbGVyIGZsYXNoIGNoaXBzCiAgSEFDSzogZTEwMDA6IGRvbid0IGNoZWNrIGZvciBGTFNXQ1RM
LkdMRE9ORSB3aGVuIHdhaXRpbmcgZm9yIGlkbGUKCiBkcml2ZXJzL25ldC9lMTAwMC9lMTAwMC5o
ICB8IDEyICsrKysrLS0tLS0tLQogZHJpdmVycy9uZXQvZTEwMDAvZWVwcm9tLmMgfCAxOCArKysr
Ky0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2UxMDAwL3JlZ2lvLmMgIHwgMTIgKysrKysrKysr
KysrCiAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQoK
LS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
