Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQbC-0006Iw-Tw
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 13:08:12 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 28 Jan 2020 14:07:58 +0100
Message-Id: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 0/3] commands/test: some improvements
To: barebox@lists.infradead.org

SGVsbG8sCgpteSBtYWluIGludGVudGlvbiB3YXMgdG8gaW1wbGVtZW50IC1iIGFuZCAtYywgdGhl
IG90aGVyIHR3byBwYXRjaGVzIGp1c3QKZml4IHNvbWUgc3R1ZmYgSSBub3RpY2VkIHdoaWxlIGRv
aW5nIHNvLgoKT25lIHRoaW5nIEkgbm90aWNlZCBpcyB0aGF0IHRoZSBjaGVjayBmb3IKCglzdHJs
ZW4oYXBbMV0pCgppbiB0aGUgaGFuZGxpbmcgb2YgLWUgYW5kIG90aGVycyBpcyB3cm9uZy4KClRo
aXMgbWFrZXMKCgl0ZXN0IC1lICcnCgpyZXR1cm4gc3VjY2VzcywgYnV0CgoJdGVzdCAteiBzb21l
dGhpbmcgLW8gLWUgJycKCmZhaWxzLiBJIGRvbid0IGtub3cgZm9yIHN1cmUgaG93IHRvIGZpeCB0
aGlzIGFzIHRoZSBlbXB0eSBzdHJpbmcgbWlnaHQKbWVhbiAiLiIgc29tZXRpbWVzPwoKQmVzdCBy
ZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcgKDMpOgogIGNvbW1hbmRzL3Rlc3Q6IEJhaWwg
b3V0IG9uIGluY29tcGxldGUgY29tbWFuZCBsaW5lIG9wdGlvbnMKICBjb21tYW5kcy90ZXN0OiBJ
bXByb3ZlIG9wdGlvbiBwYXJzaW5nIHRvIGhhbmRsZSAiXSIgbGVzcyBzcGVjaWFsCiAgY29tbWFu
ZHMvdGVzdDogSW1wbGVtZW50IC1iIGFuZCAtYyB0byB0ZXN0IGZvciBjaGFyYWN0ZXIgYW5kIGJs
b2NrCiAgICBkZXZpY2VzCgogY29tbWFuZHMvdGVzdC5jIHwgMzIgKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
