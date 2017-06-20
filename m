Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dNLR0-0006fI-57
 for barebox@lists.infradead.org; Tue, 20 Jun 2017 15:51:19 +0000
References: <1497361020-33828-1-git-send-email-d.schultz@phytec.de>
 <20170619073427.oja6l4ebvqjc3fp7@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <661a7f8c-9ba8-bd25-7eb9-da77e6fb7ed4@phytec.de>
Date: Tue, 20 Jun 2017 17:50:56 +0200
MIME-Version: 1.0
In-Reply-To: <20170619073427.oja6l4ebvqjc3fp7@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] defaultenv: bin: init: Add sourcing of config-expansions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGksCgpBbSAxOS4wNi4yMDE3IHVtIDA5OjM0IHNjaHJpZWIgU2FzY2hhIEhhdWVyOgo+IE9uIFR1
ZSwgSnVuIDEzLCAyMDE3IGF0IDAzOjM3OjAwUE0gKzAyMDAsIERhbmllbCBTY2h1bHR6IHdyb3Rl
Ogo+PiBUaGlzIHBhdGNoIGFkZHMgYSBmdXJ0aGVyIGxheWVyIHRvIHRoZSBjb25maWcgaGllcmFy
Y2h5LiBJdCBhbGxvd3MgYQo+PiBkeW5hbWljIGNvbmZpZ3VyYXRpb24gb2YgZXhwYW5zaW9ucy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjaHVsdHogPGQuc2NodWx0ekBwaHl0ZWMuZGU+
Cj4+IC0tLQo+PiAgIGRlZmF1bHRlbnYvZGVmYXVsdGVudi0yLWJhc2UvYmluL2luaXQgfCAxICsK
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Rl
ZmF1bHRlbnYvZGVmYXVsdGVudi0yLWJhc2UvYmluL2luaXQgYi9kZWZhdWx0ZW52L2RlZmF1bHRl
bnYtMi1iYXNlL2Jpbi9pbml0Cj4+IGluZGV4IDdhZjNjN2QuLmE5M2VhNTggMTAwNjQ0Cj4+IC0t
LSBhL2RlZmF1bHRlbnYvZGVmYXVsdGVudi0yLWJhc2UvYmluL2luaXQKPj4gKysrIGIvZGVmYXVs
dGVudi9kZWZhdWx0ZW52LTItYmFzZS9iaW4vaW5pdAo+PiBAQCAtMjUsNiArMjUsNyBAQCBtYWdp
Y3ZhciAtYSBnbG9iYWwuYWxsb3dfY29sb3IgIkFsbG93IGNvbG9yIG9uIHRoZSBjb25zb2xlIChi
b29sZWFuKSIKPj4gICBbIC16ICIke2dsb2JhbC5lZGl0Y21kfSIgXSAmJiBnbG9iYWwuZWRpdGNt
ZD1zZWRpdAo+PiAgIAo+PiAgIFsgLWUgL2Vudi9jb25maWctYm9hcmQgXSAmJiAvZW52L2NvbmZp
Zy1ib2FyZAo+PiArWyAtZSAvZW52L2NvbmZpZy1leHBhbnNpb25zIF0gJiYgL2Vudi9jb25maWct
ZXhwYW5zaW9ucwo+IAo+IEkgcmVhZCB0aGUgbGFzdCB0aHJlYWQgYWdhaW4gYW5kIEkgdGhpbmsg
bXkgcXVlc3Rpb24gcmVtYWlucwo+IHVuYW5zd2VyZWQuIFdoeSBjYW4ndCB5b3UgcHV0IHRoZSBj
b25maWctZXhwYW5zaW9ucyB0byAvZW52L2luaXQvIGFuZAo+IGxldCBpdCBiZSBleGVjdXRlZCBh
dXRvbWF0aWNhbGx5IHdpdGhvdXQgY2hhbmdpbmcgL2Jpbi9pbml0Pwo+IApJIGNhbiBjaGFuZ2Ug
dGhlIHBhdGggb2YgdGhlIGNvbmZpZy1leHBhbmlvbnMgZmlsZSB3aXRob3V0IHByb2JsZW1zLCBi
dXQgCkkgdGhvdWdodCB0aGVyZSBjb3VsZCBiZSBtb3JlIHdobyBuZWVkIGEgY29uZmlnIGZvciBl
eHBhbnNpb25zLiBTbywgdGhleSAKaGF2ZSBjb25maWcgZmlsZXMgd2l0aCBhIHNhbWUgYmVoYXZp
b3IgaW4gZGlmZmVyZW50IGRpcnMuCgotLSAKTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiwKV2l0
aCBiZXN0IHJlZ2FyZHMsCiAgIERhbmllbCBTY2h1bHR6CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
