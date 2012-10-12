Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMdLz-0003Rm-N1
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 11:24:33 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 44E18105005F
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 13:30:58 +0200 (CEST)
Date: Fri, 12 Oct 2012 13:22:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121012112207.GK13639@game.jcrosoft.org>
References: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
 <20121012092408.GE13639@game.jcrosoft.org>
 <1350040608.82613350@f361.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350040608.82613350@f361.mail.ru>
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
Subject: Re: [PATCH 1/2] defaultenv-2: Select CMD_ECHO & CMD_ECHO_E by default
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gMTU6MTYgRnJpIDEyIE9jdCAgICAgLCBBbGV4YW5kZXIgU2hpeWFuIHdyb3RlOgo+IEZyaSwg
MTIgT2N0IDIwMTIgMTE6MjQ6MDggKzAyMDAg0L7RgiBKZWFuLUNocmlzdG9waGUgUExBR05JT0wt
VklMTEFSRCA8cGxhZ25pb2pAamNyb3NvZnQuY29tPjoKPiA+IE9uIDEwOjUwIEZyaSAxMiBPY3Qg
ICAgICwgQWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiA+ID4gQ29tbWFuZCBpcyB1c2VkIGluIHRo
ZSBzY3JpcHRzIGFuZCBpdCBzaG91bGQgYmUgY29tcGlsZWQgaW4uCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU2hpeWFuIDxzaGNfd29ya0BtYWlsLnJ1Pgo+ID4gPiAtLS0K
PiA+ID4gIGNvbW1vbi9LY29uZmlnIHwgICAgMiArKwo+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEv
Y29tbW9uL0tjb25maWcgYi9jb21tb24vS2NvbmZpZwo+ID4gPiBpbmRleCA5MjEwNzM5Li4yNzgz
NDA1IDEwMDY0NAo+ID4gPiAtLS0gYS9jb21tb24vS2NvbmZpZwo+ID4gPiArKysgYi9jb21tb24v
S2NvbmZpZwo+ID4gPiBAQCAtNTY0LDYgKzU2NCw4IEBAIGNvbmZpZyBERUZBVUxUX0VOVklST05N
RU5UX0dFTkVSSUNfTkVXCj4gPiA+ICAJc2VsZWN0IENNRF9HTE9CQUwKPiA+ID4gIAlzZWxlY3Qg
Q01EX0FVVE9NT1VOVAo+ID4gPiAgCXNlbGVjdCBDTURfQkFTRU5BTUUKPiA+ID4gKwlzZWxlY3Qg
Q01EX0VDSE8KPiA+ID4gKwlzZWxlY3QgQ01EX0VDSE9fRQo+ID4gRUNIT19FIG5lZWQgdG8gYmUg
b3B0aW9ubmFsIGFzIHlvdSBtYXkgbm90IHdhbnQgdGhlIGNvbG9yIHN1cHBvcnQKPiAKPiBGb3Ig
ZXhhbXBsZSwgY29tbWFuZCBiZWxvdyBpcyBub3Qgd29yayBwcm9wZXJseSB3aXRob3V0IHRoaXMg
b3B0aW9uOgo+IGVjaG8gLWUgLW4gIlxuSGl0IGFueSBrZXkgdG8gc3RvcCBhdXRvYm9vdDogIgo+
IHNob3dzIGFzOgo+IAo+IHJ1bm5pbmcgL2Vudi9iaW4vaW5pdC4uLgo+IFxuSGl0IGFueSBrZXkg
dG8gc3RvcCBhdXRvYm9vdDrCoCAwCj4gXl4KPiAKPiBhbmQgd2l0aCBDTURfRUNIT19FIG9wdGlv
biByZXN1bHQgaXMgbm9ybWFsOgpubyAtZSBpcyBpZ25vcmVkIGlmIENNRF9FQ0hPX0UgaXMgbm90
IGVuYWJsZWQgSSBwdXQgdGhpcwoKYXNuIG5lZWQgdG8gYmUga2VlcCB0aGF0IHdheQoKc28gZml4
IGhpdCB3aXRoIGFuIGVtcHR5IGVjaG8gbm90IGJ5IGZvcmNpbmcgLWUKCkJlc3QgUmVnYXJkcywK
Si4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
