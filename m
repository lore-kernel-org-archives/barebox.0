Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbPeP-0008PM-7V
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 05:48:38 +0000
Received: from mail187.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8194A1050AD7
 for <barebox@lists.infradead.org>; Thu, 22 Nov 2012 06:56:23 +0100 (CET)
Date: Thu, 22 Nov 2012 06:46:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121122054638.GQ8327@game.jcrosoft.org>
References: <1353548896-5506-1-git-send-email-zzs213@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353548896-5506-1-git-send-email-zzs213@126.com>
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
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: barebox@lists.infradead.org

T24gMDk6NDggVGh1IDIyIE5vdiAgICAgLCDlvKDlv6DlsbEgd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTog5byg5b+g5bGxIDx6enMyMTNAMTI2LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ub3IvY2ZpX2Zs
YXNoX2FtZC5jIHwgICAyMiArKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZXMgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jIGIvZHJpdmVycy9ub3IvY2ZpX2ZsYXNoX2FtZC5jCj4g
aW5kZXggNDVjNTliOS4uODM4NGY0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25vci9jZmlfZmxh
c2hfYW1kLmMKPiArKysgYi9kcml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMKPiBAQCAtNjIsMTUg
KzYyLDE5IEBAIHN0YXRpYyB2b2lkIGFtZF9yZWFkX2plZGVjX2lkcyAoc3RydWN0IGZsYXNoX2lu
Zm8gKmluZm8pCj4gIAl1ZGVsYXkoMTAwMCk7IC8qIHNvbWUgZmxhc2ggYXJlIHNsb3cgdG8gcmVz
cG9uZCAqLwo+ICAKPiAgCWluZm8tPm1hbnVmYWN0dXJlcl9pZCA9IGplZGVjX3JlYWRfbWZyKGlu
Zm8pOwo+IC0JaW5mby0+ZGV2aWNlX2lkID0gZmxhc2hfcmVhZF91Y2hhciAoaW5mbywKPiAtCQkJ
CQlGTEFTSF9PRkZTRVRfREVWSUNFX0lEKTsKPiAtCWlmIChpbmZvLT5kZXZpY2VfaWQgPT0gMHg3
RSkgewo+IC0JCS8qIEFNRCAzLWJ5dGUgKGV4cGFuZGVkKSBkZXZpY2UgaWRzICovCj4gLQkJaW5m
by0+ZGV2aWNlX2lkMiA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8sCj4gLQkJCQkJRkxBU0hfT0ZG
U0VUX0RFVklDRV9JRDIpOwo+IC0JCWluZm8tPmRldmljZV9pZDIgPDw9IDg7Cj4gLQkJaW5mby0+
ZGV2aWNlX2lkMiB8PSBmbGFzaF9yZWFkX3VjaGFyIChpbmZvLAo+IC0JCQkJCUZMQVNIX09GRlNF
VF9ERVZJQ0VfSUQzKTsKPiArCWlmKGluZm8tPmNoaXB3aWR0aCA9PSBGTEFTSF9DRklfQlkxNikg
ewo+ICsJCWluZm8tPmRldmljZV9pZCA9IGZsYXNoX3JlYWQxNihmbGFzaF9tYWtlX2FkZHIoaW5m
bywgMCwgRkxBU0hfT0ZGU0VUX0RFVklDRV9JRCkpOwo+ICsJfSBlbHNlIHsKPiArCQlpbmZvLT5k
ZXZpY2VfaWQgPSBmbGFzaF9yZWFkX3VjaGFyIChpbmZvLAo+ICsJCQkJCQlGTEFTSF9PRkZTRVRf
REVWSUNFX0lEKTsKPiArCQlpZiAoaW5mby0+ZGV2aWNlX2lkID09IDB4N0UpIHsKPiArCQkJLyog
QU1EIDMtYnl0ZSAoZXhwYW5kZWQpIGRldmljZSBpZHMgKi8KPiArCQkJaW5mby0+ZGV2aWNlX2lk
MiA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8sCj4gKwkJCQkJCUZMQVNIX09GRlNFVF9ERVZJQ0Vf
SUQyKTsKPiArCQkJaW5mby0+ZGV2aWNlX2lkMiA8PD0gODsKPiArCQkJaW5mby0+ZGV2aWNlX2lk
MiB8PSBmbGFzaF9yZWFkX3VjaGFyIChpbmZvLAo+ICsJCQkJCQlGTEFTSF9PRkZTRVRfREVWSUNF
X0lEMyk7Cj4gKwkJfQppZDIgaXMgcHJlc2VudCBub20gbWF0dGVyIHRoZSBidXMgd2lkdGgKCkJl
c3QgUmVnYXJkcywKSi4KPiAgCX0KPiAgCWZsYXNoX3dyaXRlX2NtZChpbmZvLCAwLCAwLCBpbmZv
LT5jbWRfcmVzZXQpOwo+ICB9Cj4gLS0gCj4gMS43LjQuNAo+IAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxp
c3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
