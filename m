Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG3EX-0006JR-ME
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 14:37:07 +0000
Message-ID: <1540564611.2245.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Oct 2018 16:36:51 +0200
In-Reply-To: <20181026162525.1c7685bd@yaise-pc1>
References: <20181026120558.1ef80a86@yaise-pc1>
 <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
 <20181026123807.3f980f28@yaise-pc1>
 <20181026112438.i4gq2p4q7v4ca6es@pengutronix.de>
 <20181026162525.1c7685bd@yaise-pc1>
Mime-Version: 1.0
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
Subject: Re: IMX6UL: Booting kernel with initramfs blocks
To: Patrick Boettcher <patrick.boettcher@posteo.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Mikael Pann <Mikael.pann@stimio.fr>

QW0gRnJlaXRhZywgZGVuIDI2LjEwLjIwMTgsIDE2OjI1ICswMjAwIHNjaHJpZWIgUGF0cmljayBC
b2V0dGNoZXI6Cj4gT24gRnJpLCAyNiBPY3QgMjAxOCAxMzoyNDozOCArMDIwMAo+ID4gU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gwqAgU3RhcnRpbmcg
a2VybmVsIGF0IDB4ODg4ZTEwMDAsIG9mdHJlZSBhdCAweDhhNTQyMDAwLi4uCj4gPiAKPiA+IEZy
b20gd2hhdCBJIGNhbiBzZWUgdGhlc2UgYWRkcmVzc2VzIGxvb2sgZmluZS4gWW91IGhhdmUgYW4g
aW1hZ2UKPiA+IHRoYXQncyAyOE1pQiBpbiBzaXplLCB3ZSBwdXQgaXQgdG8gcm91Z2hseSA1eCBz
aXplIGludG8gbWVtb3J5IGFuZCB0aGUKPiA+IGRldmljZXRyZWUgYmVoaW5kIGl0LiBUaGUga2Vy
bmVsIHNob3VsZCB0aGVuIHVucGFjayBpdHNlbGYgdG8gdGhlCj4gPiBzdGFydCBvZiBTRFJBTS4g
TG9va3MgZ29vZCBhbmQgSXQgc2VlbXMgYmFyZWJveCBhY3R1YWxseSBqdW1wcyB0byB0aGUKPiA+
IEtlcm5lbC4KPiA+IAo+ID4gTmV4dCB0aGluZyB0byB0cnkgd291bGQgYmUgZW5hYmxpbmcgQ09O
RklHX0RFQlVHX0xMLAo+ID4gQ09ORklHX0RFQlVHX1VOQ09NUFJFU1MgYW5kIENPTkZJR19FQVJM
WV9QUklOVEsgaW4gdGhlIEtlcm5lbC4gUGFzcwo+ID4gImVhcmx5cHJpbnRrIiBhcyBrZXJuZWwg
b3B0aW9uIGFuZCBsZXQncyBzZWUgd2hhdCBoYXBwZW5zIHRoZW4uCj4gCj4gKGVhcmx5cHJpbnRr
IHlldCB0byBiZSB0cmllZCkKPiAKPiBXZSBtYWRlIGEgc3RlcCBmb3J3YXJkOiBSZWR1Y2luZyB0
aGUgc2l6ZSBvZiB0aGUgaW1hZ2UgKGZyb20gMjggZG93biB0bwo+IDE3IE1pQikgbWFrZXMgaXQg
Ym9vdCBjb3JyZWN0bHkuCj4gCj4gTm90IHN1cmUgd2hlcmUgdGhlIGxpbWl0YXRpb24gY2FuIGNv
bWUgZnJvbSwgaWYgeW91IGhhdmUgYW4gaWRlYS4KPiAKPiBUaGFua3MgYWdhaW4gZm9yIHRoZSBo
ZWxwIHNvIGZhciwgSSB3aWxsIHBvc3QgYSBmb2xsb3ctdXAgaWYgdGhlCj4gcm9vdC1jYXVzZSBp
cyBkaXNjb3ZlcmVkLgoKTXkgZ3Vlc3MgaXMgdGhhdCB0aGUga2VybmVsIGlzIGp1c3Qgbm90IGFi
bGUgdG8gZmluZCB0aGUgc3RhcnQgb2YgUkFNCmZvciByZWxvY2F0aW9uIGluIHRoYXQgY2FzZS4g
V2l0aCBzdWNoIGEgZmF0IGltYWdlIGFuZCBvdXIgcGVzc2ltaXN0aWMKcGxhY2VtZW50IGF0IDUg
dGltZXMgdGhhdCBzaXplLCB0aGUga2VybmVsIGVuZHMgdXAgaW4gYSByZWdpb24gYWJvdmUKdGhl
IGZpcnN0IDEyOE1CIG9mIG1lbW9yeS4KVGhlIGtlcm5lbCBuZWVkcyB0byBiZSBwbGFjZWQgaW4g
dGhlIGxvdyAxMjhNQiwgYXMgdGhpcyBpcyB0aGUgYWRkcmVzcwpyYW5nZSB0aGF0IGdldHMgbWFz
a2VkIG9mZiBmcm9tIHRoZSBsb2NhdGlvbiBpbiBvcmRlciB0byBmaW5kIHRoZSBzdGFydApvZiBS
QU0uCgpSZWdhcmRzLApMdWNhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
