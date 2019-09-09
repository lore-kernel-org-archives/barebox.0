Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7QNN-0003lI-IZ
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 20:35:06 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  9 Sep 2019 22:34:49 +0200
Message-Id: <20190909203451.13047-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v4 0/2] simplify setting enhanced area of mmc devices
To: barebox@lists.infradead.org

SGVsbG8sCgp2MyBvZiB0aGlzIHNlcmllcyBpcyB3YXMgc2VudCBpbiBPY3RvYmVyIDIwMTguIFRo
aXMgdjQgYWRkcmVzc2VzIHRoZQpmZWVkYmFjayBJIGdvdCB0aGVuIGJ5IFNhc2NoYTogYWRkIGEg
Y2FsbCB0byBmcmVlIHRoYXQgSSBtaXNzZWQgYW5kIHVzZQpnZXRvcHQgaW5zdGVhZCBvZiBwYXJz
aW5nIHRoZSBvcHRpb25zIGJ5IGhhbmQuIEkgYWxzbyBkcm9wcGVkIHRoZQptYW5kYXRvcnkgInNl
dG1heCIgc3ViY29tbWFuZC4gV2l0aCBvcHRpb24gcGFyc2luZyB0aGUgbmV3IGNvbW1hbmQgaXMK
ZmxleGlibGUgZW5vdWdoIHRvIGJlIGV4cGFuZGVkIGluIHRoZSBmdXR1cmUgZm9yIHNldHRpbmcg
b3RoZXIgc2l6ZXMKdGhhbiBtYXhpbWFsLgoKVGhlIGZpcnN0IHBhdGNoIGlzIGEgc21hbGwgY2xl
YW51cCBhbmQgdW5jaGFuZ2VkIHNpbmNlIHYzLgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWlu
ZS1Lw7ZuaWcgKDIpOgogIG1jaTogcHJvdmlkZSB3cmFwcGVyIGZvciBtY2lfZ2V0X2RldmljZV9i
eV9uYW1lIOKImCBkZXZwYXRoX3RvX25hbWUKICBtY2k6IGltcGxlbWVudCBjb21tYW5kIHRvIHN3
aXRjaCBhIG1tYyBkZXZpY2UgdG8gZW5oYW5jZWQgbW9kZQoKIGNvbW1hbmRzL0tjb25maWcgICAg
ICB8ICAxMSArKysKIGNvbW1hbmRzL01ha2VmaWxlICAgICB8ICAgMSArCiBjb21tYW5kcy9tbWMu
YyAgICAgICAgfCAyMDAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
CiBjb21tYW5kcy9tbWNfZXh0Y3NkLmMgfCAgIDYgKy0KIGluY2x1ZGUvbWNpLmggICAgICAgICB8
ICAxMyArKysKIDUgZmlsZXMgY2hhbmdlZCwgMjI4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgY29tbWFuZHMvbW1jLmMKCi0tIAoyLjIzLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
