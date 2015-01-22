Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YE9Ul-0005dL-BT
 for barebox@lists.infradead.org; Thu, 22 Jan 2015 04:35:52 +0000
Received: from mail436.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 648EEFFA239
 for <barebox@lists.infradead.org>; Thu, 22 Jan 2015 05:35:26 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150121150729.GK12209@pengutronix.de>
Date: Thu, 22 Jan 2015 12:35:17 +0800
Message-Id: <7BD9F41A-FC1D-415B-A3C0-B0555B7B15CA@jcrosoft.com>
References: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
 <20150119113939.GD30554@ns203013.ovh.net>
 <20150121150729.GK12209@pengutronix.de>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let gmac auto detect phy id
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDIxLCAyMDE1LCBhdCAxMTowNyBQTSwgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBl
bmd1dHJvbml4LmRlPiB3cm90ZToKPiAKPiBPbiBNb24sIEphbiAxOSwgMjAxNSBhdCAxMjozOToz
OVBNICswMTAwLCBKZWFuLUNocmlzdG9waGUgUExBR05JT0wtVklMTEFSRCB3cm90ZToKPj4gT24g
MTc6NTQgTW9uIDE5IEphbiAgICAgLCBCbyBTaGVuIHdyb3RlOgo+Pj4gT24gdGhlIFNBTUE1RDMz
IGFuZCBTQU1BNUQzNSB0aGUgR01BQyBQSFkgSUQgaXMgMSB3aGlsZSBub3QgNy4KPj4+IFNvLCBs
ZXQgdGhlIEdNQUMgYXV0byBkZXRlY3QgcGh5IGlkLCBvciBlbHNlIGhhcmQgY29kZSB0byA3LAo+
Pj4gaXQgY2FuIG5vdCB3b3JrIG9uIHRoZXNlIHR3byBib2FyZHMuCj4+PiAKPj4+IFNpZ25lZC1v
ZmYtYnk6IEJvIFNoZW4gPHZvaWNlLnNoZW5AYXRtZWwuY29tPgo+Pj4gLS0tCj4+PiAKPj4+IGFy
Y2gvYXJtL2JvYXJkcy9zYW1hNWQzeGVrL2luaXQuYyB8IDIgKy0KPj4+IDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9hcmRzL3NhbWE1ZDN4ZWsvaW5pdC5jIGIvYXJjaC9hcm0vYm9hcmRzL3NhbWE1ZDN4
ZWsvaW5pdC5jCj4+PiBpbmRleCA0OWQyYjM3Li4wYjgzMTQ3IDEwMDY0NAo+Pj4gLS0tIGEvYXJj
aC9hcm0vYm9hcmRzL3NhbWE1ZDN4ZWsvaW5pdC5jCj4+PiArKysgYi9hcmNoL2FybS9ib2FyZHMv
c2FtYTVkM3hlay9pbml0LmMKPj4+IEBAIC0xMjMsNyArMTIzLDcgQEAgc3RhdGljIHZvaWQgZWtf
YWRkX2RldmljZV9uYW5kKHZvaWQpIHt9Cj4+PiAjaWYgZGVmaW5lZChDT05GSUdfRFJJVkVSX05F
VF9NQUNCKQo+Pj4gc3RhdGljIHN0cnVjdCBtYWNiX3BsYXRmb3JtX2RhdGEgZ21hY19wZGF0YSA9
IHsKPj4+IAkucGh5X2ludGVyZmFjZSA9IFBIWV9JTlRFUkZBQ0VfTU9ERV9SR01JSSwKPj4+IC0J
LnBoeV9hZGRyID0gNywKPj4+ICsJLnBoeV9hZGRyID0gLTEsCj4+IElJUkMgdGhlIGF1dG8gZGV0
ZWN0IGRvIG5vdCB3b3JrIG9uIGFsbCBib2FyZAo+PiBOQUNLCj4gCj4gUGxlYXNlIGdpdmUgdXMg
c29tZSBtb3JlIGluZm9ybWF0aW9uIHdoeSB0aGlzIGRvZXNuJ3Qgd29yayBvciBvbiB3aGljaAo+
IGJvYXJkcyB0aGlzIGRvZXNuJ3Qgd29yay4gUmVqZWN0aW5nIHBhdGNoZXMgd2l0aCAnSUlSQycg
anVzdCBibG9ja3MgdGhlCj4gcGF0Y2ggd2l0aG91dCBnaXZpbmcgYSBjbHVlIHdoYXQgZWxzZSBz
aG91bGQgYmUgZG9uZS4KClRoaXMgaXMgdGhlIHNhbWUgYm9hcmQgYnV0IGRpZmbDqXJlbnQgU29D
IE1vZHVsZQoKQm8gTVVTVCB0ZXN0IGl0IG9uIGFsbCBvZiB0aGVtIGJlZm9yZSBkbyBzdWNoIG1v
ZGlmaWNhdGlvbgoKSUlSQyB0aGUgcGh5IGlzIGRldGVjdCBvbiBhZGRyIDEgaW5zdGVhZCBvZiA3
IG9uIHNvbWUgQ1BVIE1vZHVsZQoKQmVzdCBSZWdhcmRzLApKLgo+IAo+IFNhc2NoYQo+IAo+IC0t
IAo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPiBQZWluZXIgU3RyLiA2
LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDog
ICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
