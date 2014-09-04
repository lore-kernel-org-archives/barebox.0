Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f172.google.com ([74.125.82.172])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPREa-00084X-7R
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 07:13:32 +0000
Received: by mail-we0-f172.google.com with SMTP id q59so9720483wes.17
 for <barebox@lists.infradead.org>; Thu, 04 Sep 2014 00:13:06 -0700 (PDT)
Date: Thu, 4 Sep 2014 09:13:00 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140904071258.GA13432@omega>
References: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
 <1409813440-9512-5-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409813440-9512-5-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 5/5] ARM: phyCORE-AM335x: Update partition table
To: Teresa =?utf-8?B?R8OhbWV6?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

SGkgVGVyZXNhLAoKT24gVGh1LCBTZXAgMDQsIDIwMTQgYXQgMDg6NTA6NDBBTSArMDIwMCwgVGVy
ZXNhIEfDoW1leiB3cm90ZToKPiBBZGRlZCBkZXZpY2UgdHJlZSBwYXJ0aXRpb24gYW5kIG1hZGUg
cm9vdGZzIHBhcnRpdGlvbgo+IHZhcmlhYmxlIHNpemUgZGVwZW5kaW5nIG9uIG5hbmQgZmxhc2gg
c2l6ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5k
ZT4KPiAtLS0KPiAgYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29yZS5kdHMgfCAgIDIy
ICsrKysrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvYW0zMzV4
LXBoeXRlYy1waHljb3JlLmR0cyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUu
ZHRzCj4gaW5kZXggMTZmZWJkMy4uMDQ3ZGMxNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMv
YW0zMzV4LXBoeXRlYy1waHljb3JlLmR0cwo+ICsrKyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5
dGVjLXBoeWNvcmUuZHRzCj4gQEAgLTE5NCw4ICsxOTQsMTMgQEAKPiAgCQl9Owo+ICAKPiAgCQlw
YXJ0aXRpb25AMyB7Cj4gKwkJCWxhYmVsID0gIm9mdHJlZSI7Cj4gKwkJCXJlZyA9IDwweGMwMDAw
IDB4MjAwMDA+Owo+ICsJCX07Cj4gKwo+ICsJCXBhcnRpdGlvbkA0IHsKPiAgCQkJbGFiZWwgPSAi
a2VybmVsIjsKPiAtCQkJcmVnID0gPDB4YzAwMDAgMHg0MDAwMDA+Owo+ICsJCQlyZWcgPSA8MHhl
MDAwMCAweDQwMDAwMD47Cj4gIAkJfTsKPiAgCX07Cj4gIH07Cj4gQEAgLTMwNSwxMyArMzEwLDIy
IEBACj4gIAkJfTsKPiAgCj4gIAkJcGFydGl0aW9uQDYgewo+IC0JCQlsYWJlbCA9ICJrZXJuZWwi
Owo+IC0JCQlyZWcgPSA8MHgxMjAwMDAgMHg4MDAwMDA+Owo+ICsJCQlsYWJlbCA9ICJvZnRyZWUi
Owo+ICsJCQlyZWcgPSA8MHgxMjAwMDAgMHgyMDAwMD47Cj4gIAkJfTsKPiAgCj4gIAkJcGFydGl0
aW9uQDcgewo+ICsJCQlsYWJlbCA9ICJrZXJuZWwiOwo+ICsJCQlyZWcgPSA8MHgxNDAwMDAgMHg4
MDAwMDA+Owo+ICsJCX07Cj4gKwo+ICsJCXBhcnRpdGlvbkA4IHsKPiAgCQkJbGFiZWwgPSAicm9v
dCI7Cj4gLQkJCXJlZyA9IDwweDkyMDAwMCAweDFmNmUwMDAwPjsKPiArCQkJLyoKPiArCQkJICog
U2l6ZSAweDAgZXh0ZW5kcyBwYXJ0aXRpb24gdG8KPiArCQkJICogZW5kIG9mIG5hbmQgZmxhc2gu
Cj4gKwkJCSAqLwo+ICsJCQlyZWcgPSA8MHg5MjAwMDAgMHgwPjsKCkkgdGhpbmsgdGhpcyBzaG91
bGQgYmUgMHg5NDAwMDAgaW5zZWFkIDB4OTIwMDAwLgoKRnJvbSBwYXJ0aXRpb243IDcgImtlcm5l
bCIgeW91IGhhdmUgMHgxNDAwMDAgKyAweDgwMDAwMCA9IDB4OTQwMDAwLgoKSSBzaW1wbGUgdXNl
IHRoZSBnbm9tZS1jYWxjdWxhdG9yIGluIGhleCBtb2RlIHRvIGNoZWNrIGl0LgoKLSBBbGV4Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
