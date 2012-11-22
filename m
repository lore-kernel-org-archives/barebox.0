Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbQGX-0002tS-Mu
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 06:28:04 +0000
Date: Thu, 22 Nov 2012 14:26:17 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121122062616.GD3022@greatfirst.com>
References: <1353564096-18861-1-git-send-email-zzs213@126.com>
 <20121122061438.GR8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121122061438.GR8327@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

SW4gbWVzc2FnZSA8MjAxMjExMjIwNjE0MzguR1I4MzI3QGdhbWUuamNyb3NvZnQub3JnPiBKZWFu
LUNocmlzdG9waGUgUExBR05JT0wtVklMTEFSRCB3cm90ZToKPiBPbiAxNDowMSBUaHUgMjIgTm92
ICAgICAsIOW8oOW/oOWxsSB3cm90ZToKPiA+IFNpZ25lZC1vZmYtYnk6IOW8oOW/oOWxsSA8enpz
MjEzQDEyNi5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMgfCAg
ICA3ICsrKysrLS0KPiA+ICAxIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5j
IGIvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jCj4gPiBpbmRleCA0NWM1OWI5Li4zYWI0YmUw
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jCj4gPiArKysgYi9k
cml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMKPiA+IEBAIC02Miw4ICs2MiwxMSBAQCBzdGF0aWMg
dm9pZCBhbWRfcmVhZF9qZWRlY19pZHMgKHN0cnVjdCBmbGFzaF9pbmZvICppbmZvKQo+ID4gIAl1
ZGVsYXkoMTAwMCk7IC8qIHNvbWUgZmxhc2ggYXJlIHNsb3cgdG8gcmVzcG9uZCAqLwo+ID4KPiA+
ICAJaW5mby0+bWFudWZhY3R1cmVyX2lkID0gamVkZWNfcmVhZF9tZnIoaW5mbyk7Cj4gPiAtCWlu
Zm8tPmRldmljZV9pZCA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8sCj4gPiAtCQkJCQlGTEFTSF9P
RkZTRVRfREVWSUNFX0lEKTsKPiA+ICsJaWYoaW5mby0+Y2hpcHdpZHRoID09IEZMQVNIX0NGSV9C
WTE2KQo+ID4gKwkJaW5mby0+ZGV2aWNlX2lkID0gZmxhc2hfcmVhZDE2KGZsYXNoX21ha2VfYWRk
cihpbmZvLCAwLCBGTEFTSF9PRkZTRVRfREVWSUNFX0lEKSk7Cj4gPiArCWVsc2UKPiA+ICsJCWlu
Zm8tPmRldmljZV9pZCA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8sCj4gPiArCQkJCQkJRkxBU0hf
T0ZGU0VUX0RFVklDRV9JRCk7Cj4KPiBtYWtlIHRoaXMgZ2xvYmFsIHdpdGggYWxsIHdpdGggc3Vw
cG9ydAo+IGFzIGRvbiBpbiBsaW51eAo+Cj4gYXMgdGhpcyBpcyB2YWxpZCBmb3IgYW1kIGFuZCBp
bnRlbCBhbmQgc3QKPgpEb2VzIHRoaXMgbWVhbiBjcCB0aGlzIGNvZGUgdG8gdGhlIGZ1bmN0aW9u
CmRyaXZlcnMvbm9yL2NmaV9mbGFzaF9pbnRlbC5jOmludGVsX3JlYWRfamVkZWNfaWRzKCkgPwot
LSAKQmVzdCBSZWdhcmRzLAp6enMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
