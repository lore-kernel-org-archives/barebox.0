Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwoiU-0004Fi-6e
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 07:21:35 +0000
Message-ID: <51DD0B5C.3010002@phytec.de>
Date: Wed, 10 Jul 2013 09:21:00 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
 <1373361802-31080-8-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1373361802-31080-8-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 08/12] PCM051: Add first stage support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

QW0gMDkuMDcuMjAxMyAxMToyMywgc2NocmllYiBUZXJlc2EgR8OhbWV6OgoKSGVsbG8gU2FzY2hh
LAoKPiBGcm9tOiBTaHJhdmFuIGt1bWFyIDxzaHJhdmFuLmtAcGh5dGVjLmluPgo+Cj4gVGhpcyBw
YXRjaCBhZGRzIGZpcnN0IHN0YWdlIHN1cHBvcnQgZm9yIFBDTTA1MS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IFNocmF2YW4ga3VtYXIgPHNocmF2YW4ua0BwaHl0ZWMuaW4+Cj4gU2lnbmVkLW9mZi1ieTog
VGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoK
PiAtIGZpeGVkIGFsaWdtZW50IGFuZCByZWdpc3RlciBhZHJlc3MKPiAgICBvcmRlciBpbiBtYWNo
L2FtMzN4eC1zaWxpY29uLmgKPgo+ICAgYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9ib2FyZC5jICAg
ICAgICAgICAgICAgICAgIHwgICAgMSArCj4gICBhcmNoL2FybS9ib2FyZHMvcGNtMDUxL2Vudi9i
b290L3NkICAgICAgICAgICAgICAgfCAgICAyICstCj4gICBhcmNoL2FybS9ib2FyZHMvcGNtMDUx
L2xvd2xldmVsLmMgICAgICAgICAgICAgICAgfCAgMjA2ICsrKysrKysrKysrKysrKysrKysrKysK
PiAgIGFyY2gvYXJtL2NvbmZpZ3MvcGNtMDUxX21sb19kZWZjb25maWcgICAgICAgICAgICB8ICAg
MzMgKysrKwo+ICAgYXJjaC9hcm0vbWFjaC1vbWFwL2luY2x1ZGUvbWFjaC9hbTMzeHgtc2lsaWNv
bi5oIHwgICAxMyArKwo+ICAgc2NyaXB0cy9tay1hbTM1eHgtc3BpLWltYWdlLmMgICAgICAgICAg
ICAgICAgICAgIHwgICAgMiArLQo+ICAgNiBmaWxlcyBjaGFuZ2VkLCAyNTUgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9jb25maWdz
L3BjbTA1MV9tbG9fZGVmY29uZmlnCj4KPgo+ICAgCj4gICAvKiBFdGhlcm5ldCBNQUMgSUQgZnJv
bSBFRnVzZSAqLwo+IGRpZmYgLS1naXQgYS9zY3JpcHRzL21rLWFtMzV4eC1zcGktaW1hZ2UuYyBi
L3NjcmlwdHMvbWstYW0zNXh4LXNwaS1pbWFnZS5jCj4gaW5kZXggNzRlNzlkYi4uYjEzNTY4YSAx
MDA2NDQKPiAtLS0gYS9zY3JpcHRzL21rLWFtMzV4eC1zcGktaW1hZ2UuYwo+ICsrKyBiL3Njcmlw
dHMvbWstYW0zNXh4LXNwaS1pbWFnZS5jCj4gQEAgLTYzLDcgKzYzLDcgQEAgaW50IG1haW4oaW50
IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiAgIAlpbnQgb3B0Owo+ICAgCW9mZl90IHBvczsKPiAgIAlz
aXplX3Qgc2l6ZTsKPiAtCXVpbnQzMl90IGFkZHIgPSAweDQwMjAwMDAwOwo+ICsJdWludDMyX3Qg
YWRkciA9IDB4NDAyRjA0MDA7Cj4gICAJdWludDMyX3QgdGVtcDsKPiAgIAo+ICAgCXdoaWxlKChv
cHQgPSBnZXRvcHQoYXJnYywgYXJndiwgImE6IikpICE9IC0xKSB7CgpUaGlzIGxhc3QgaHVuayBo
YXMgYWNjaWRlbnRhbGx5IHNsaXBwZWQgaW4gaGVyZS4KQ291bGQgeW91IHJlbW92ZSBpdD8KClRo
YW5rcwpUZXJlc2EKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
