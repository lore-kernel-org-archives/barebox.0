Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbQSY-0003rn-O4
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 06:40:28 +0000
Received: from mail187.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E4FBF1054BC3
 for <barebox@lists.infradead.org>; Thu, 22 Nov 2012 07:48:12 +0100 (CET)
Date: Thu, 22 Nov 2012 07:38:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121122063826.GS8327@game.jcrosoft.org>
References: <1353564096-18861-1-git-send-email-zzs213@126.com>
 <20121122061438.GR8327@game.jcrosoft.org>
 <20121122062616.GD3022@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121122062616.GD3022@greatfirst.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] read cfi device id according the bus width
To: barebox <barebox@lists.infradead.org>

T24gMTQ6MjYgVGh1IDIyIE5vdiAgICAgLCDlvKDlv6DlsbEgd3JvdGU6Cj4gSW4gbWVzc2FnZSA8
MjAxMjExMjIwNjE0MzguR1I4MzI3QGdhbWUuamNyb3NvZnQub3JnPiBKZWFuLUNocmlzdG9waGUg
UExBR05JT0wtVklMTEFSRCB3cm90ZToKPiA+IE9uIDE0OjAxIFRodSAyMiBOb3YgICAgICwg5byg
5b+g5bGxIHdyb3RlOgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiDlvKDlv6DlsbEgPHp6czIxM0AxMjYu
Y29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvbm9yL2NmaV9mbGFzaF9hbWQuYyB8ICAgIDcg
KysrKystLQo+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25vci9jZmlfZmxhc2hfYW1k
LmMgYi9kcml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMKPiA+ID4gaW5kZXggNDVjNTliOS4uM2Fi
NGJlMCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jCj4gPiA+
ICsrKyBiL2RyaXZlcnMvbm9yL2NmaV9mbGFzaF9hbWQuYwo+ID4gPiBAQCAtNjIsOCArNjIsMTEg
QEAgc3RhdGljIHZvaWQgYW1kX3JlYWRfamVkZWNfaWRzIChzdHJ1Y3QgZmxhc2hfaW5mbyAqaW5m
bykKPiA+ID4gIAl1ZGVsYXkoMTAwMCk7IC8qIHNvbWUgZmxhc2ggYXJlIHNsb3cgdG8gcmVzcG9u
ZCAqLwo+ID4gPgo+ID4gPiAgCWluZm8tPm1hbnVmYWN0dXJlcl9pZCA9IGplZGVjX3JlYWRfbWZy
KGluZm8pOwo+ID4gPiAtCWluZm8tPmRldmljZV9pZCA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8s
Cj4gPiA+IC0JCQkJCUZMQVNIX09GRlNFVF9ERVZJQ0VfSUQpOwo+ID4gPiArCWlmKGluZm8tPmNo
aXB3aWR0aCA9PSBGTEFTSF9DRklfQlkxNikKPiA+ID4gKwkJaW5mby0+ZGV2aWNlX2lkID0gZmxh
c2hfcmVhZDE2KGZsYXNoX21ha2VfYWRkcihpbmZvLCAwLCBGTEFTSF9PRkZTRVRfREVWSUNFX0lE
KSk7Cj4gPiA+ICsJZWxzZQo+ID4gPiArCQlpbmZvLT5kZXZpY2VfaWQgPSBmbGFzaF9yZWFkX3Vj
aGFyIChpbmZvLAo+ID4gPiArCQkJCQkJRkxBU0hfT0ZGU0VUX0RFVklDRV9JRCk7Cj4gPgo+ID4g
bWFrZSB0aGlzIGdsb2JhbCB3aXRoIGFsbCB3aXRoIHN1cHBvcnQKPiA+IGFzIGRvbiBpbiBsaW51
eAo+ID4KPiA+IGFzIHRoaXMgaXMgdmFsaWQgZm9yIGFtZCBhbmQgaW50ZWwgYW5kIHN0Cj4gPgo+
IERvZXMgdGhpcyBtZWFuIGNwIHRoaXMgY29kZSB0byB0aGUgZnVuY3Rpb24KPiBkcml2ZXJzL25v
ci9jZmlfZmxhc2hfaW50ZWwuYzppbnRlbF9yZWFkX2plZGVjX2lkcygpID8KeW91IGNhbiBub3Qg
YXMgdGhlIHJlc2V0IGlzIGZsYXNoIGRlcGVkZW50CgpqdXN0IGZhY3RvcmlzZSB0ZWggZGV2aWNl
X2lkIHJlYWQKCkJlc3QgUmVnYXJkcywKSi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
