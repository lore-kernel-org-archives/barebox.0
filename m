Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1epFdT-0003R4-A6
 for barebox@lists.infradead.org; Fri, 23 Feb 2018 15:51:48 +0000
References: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
 <1517231051-12129-3-git-send-email-d.schultz@phytec.de>
 <20180130071158.urvefxgjl3lvmfwd@pengutronix.de>
 <21faa0a6-6514-0020-cec6-6f8af09a9c4c@phytec.de>
 <20180216075639.yenwl6sdlhqgvwqj@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <ebf7fb0b-4737-1196-3143-9683ace912dc@phytec.de>
Date: Fri, 23 Feb 2018 16:53:00 +0100
MIME-Version: 1.0
In-Reply-To: <20180216075639.yenwl6sdlhqgvwqj@pengutronix.de>
Content-Language: de-DE
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
Subject: Re: [PATCH 3/3] drivers: mtd: nand: omap: Return stat value
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Ck9uIDAyLzE2LzIwMTggMDg6NTYgQU0sIFNhc2NoYSBIYXVlciB3cm90ZToKPiBPbiBUaHUsIEZl
YiAxNSwgMjAxOCBhdCAwMTo1MToyNlBNICswMTAwLCBEYW5pZWwgU2NodWx0eiB3cm90ZToKPj4g
SGkgU2FzY2hhLAo+Pgo+Pgo+PiBPbiAwMS8zMC8yMDE4IDA4OjExIEFNLCBTYXNjaGEgSGF1ZXIg
d3JvdGU6Cj4+PiBPbiBNb24sIEphbiAyOSwgMjAxOCBhdCAwMjowNDoxMVBNICswMTAwLCBEYW5p
ZWwgU2NodWx0eiB3cm90ZToKPj4+PiBUaGUgcmVhZCBwYWdlIGZ1bmN0aW9uIHNob3VsZCByZXR1
cm4gdGhlIHRvdGFsIGNvdW50IG9mIGZsaXBwZWQgYml0cywKPj4+PiBvdGhlcndpc2UgdGhlIGNh
bGxlciBhbHdheXMgdGhpbmtzIG5vIGJpdGZsaXAgb2NjdXJlZC4KPj4+Pgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbCBTY2h1bHR6IDxkLnNjaHVsdHpAcGh5dGVjLmRlPgo+Pj4+IC0tLQo+Pj4+
ICAgIGRyaXZlcnMvbXRkL25hbmQvbmFuZF9vbWFwX2dwbWMuYyB8IDIgKy0KPj4+PiAgICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfb21hcF9ncG1jLmMgYi9kcml2ZXJzL210ZC9u
YW5kL25hbmRfb21hcF9ncG1jLmMKPj4+PiBpbmRleCBlMThjZTYzLi4zOGY0OTYwIDEwMDY0NAo+
Pj4+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9vbWFwX2dwbWMuYwo+Pj4+ICsrKyBiL2Ry
aXZlcnMvbXRkL25hbmQvbmFuZF9vbWFwX2dwbWMuYwo+Pj4+IEBAIC03MTIsNyArNzEyLDcgQEAg
c3RhdGljIGludCBvbWFwX2dwbWNfcmVhZF9wYWdlX2JjaF9yb21fbW9kZShzdHJ1Y3QgbXRkX2lu
Zm8gKm10ZCwKPj4+PiAgICAJZWxzZQo+Pj4+ICAgIAkJbXRkLT5lY2Nfc3RhdHMuY29ycmVjdGVk
ICs9IHN0YXQ7Cj4+Pj4gLQlyZXR1cm4gMDsKPj4+PiArCXJldHVybiBzdGF0Owo+Pj4+ICAgIH0K
Pj4+IEknbSBhZnJhaWQgdGhpcyBpcyBub3QgZW5vdWdoLiByZWFkX3BhZ2Ugc2hvdWxkIHJldHVy
biB0aGUgbWF4aW11bQo+Pj4gbnVtYmVyIG9mIGJpdGZsaXBzIGluIGFueSBFQ0Mgc3RlcC4gWW91
IGZpcnN0IGhhdmUgdG8gY2hhbmdlCj4+PiBvbWFwX2NvcnJlY3RfYmNoKCkgc28gdGhhdCBpdCBy
ZXR1cm5zIHRoaXMgbnVtYmVyLgo+PiBhaGgsIHdlIHdvcmtlZCBvbiB0aGlzIHByb2JsZW0gYSBo
YWxmIHllYXIgYWdvIGFuZCBpdCBzZWVtcyBsaWtlIHRocmVlCj4+IHBhdGNoZXMgYXJlIG1pc3Np
bmcgdXBzdHJlYW06Cj4+Cj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9i
YXJlYm94LzIwMTctSnVuZS8wMzAzODUuaHRtbAo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9waXBlcm1haWwvYmFyZWJveC8yMDE3LUp1bmUvMDMwMzg0Lmh0bWwKPj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2JhcmVib3gvMjAxNy1KdW5lLzAzMDM1NS5odG1sCj4g
T2gsIEkgc2VlLiBJdCBzZWVtcyBJIGhhdmUgZWl0aGVyIGZvcmdvdHRlbiB0byBtZXJnZSB0aGVt
IG9yIEkgaGF2ZQo+IHdhaXRlZCBmb3IgZmVlZGJhY2suIENvdWxkIHlvdSBjcmVhdGUgYSBzZXJp
ZXMgZm9yIGFsbCBtaXNzaW5nIHBhdGNoZXMKPiBpbmNsdWRpbmcgeW91ciBuZXcgcGF0Y2ggYW5k
IHJlc2VuZCBpdCwgcHJvdmlkZWQgaXQgd29ya3MgYXMgZXhwZWN0ZWQgb2YKPiBjb3Vyc2U/Clll
cywgSSB3aWxsIGRvIHRoaXMgYXMgc29vbiBhcyBJIGhhdmUgdGltZSBmb3IgaXQuCgoKLS0gCk1p
dCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4sCldpdGggYmVzdCByZWdhcmRzLAogICBEYW5pZWwgU2No
dWx0egoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
