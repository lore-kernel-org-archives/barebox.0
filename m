Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbQ5V-0002lH-1z
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 06:16:38 +0000
Received: from mail187.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 553BA1054991
 for <barebox@lists.infradead.org>; Thu, 22 Nov 2012 07:24:24 +0100 (CET)
Date: Thu, 22 Nov 2012 07:14:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121122061438.GR8327@game.jcrosoft.org>
References: <1353564096-18861-1-git-send-email-zzs213@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353564096-18861-1-git-send-email-zzs213@126.com>
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

T24gMTQ6MDEgVGh1IDIyIE5vdiAgICAgLCDlvKDlv6DlsbEgd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTog5byg5b+g5bGxIDx6enMyMTNAMTI2LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ub3IvY2ZpX2Zs
YXNoX2FtZC5jIHwgICAgNyArKysrKy0tCj4gIDEgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25vci9jZmlfZmxh
c2hfYW1kLmMgYi9kcml2ZXJzL25vci9jZmlfZmxhc2hfYW1kLmMKPiBpbmRleCA0NWM1OWI5Li4z
YWI0YmUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbm9yL2NmaV9mbGFzaF9hbWQuYwo+ICsrKyBi
L2RyaXZlcnMvbm9yL2NmaV9mbGFzaF9hbWQuYwo+IEBAIC02Miw4ICs2MiwxMSBAQCBzdGF0aWMg
dm9pZCBhbWRfcmVhZF9qZWRlY19pZHMgKHN0cnVjdCBmbGFzaF9pbmZvICppbmZvKQo+ICAJdWRl
bGF5KDEwMDApOyAvKiBzb21lIGZsYXNoIGFyZSBzbG93IHRvIHJlc3BvbmQgKi8KPiAgCj4gIAlp
bmZvLT5tYW51ZmFjdHVyZXJfaWQgPSBqZWRlY19yZWFkX21mcihpbmZvKTsKPiAtCWluZm8tPmRl
dmljZV9pZCA9IGZsYXNoX3JlYWRfdWNoYXIgKGluZm8sCj4gLQkJCQkJRkxBU0hfT0ZGU0VUX0RF
VklDRV9JRCk7Cj4gKwlpZihpbmZvLT5jaGlwd2lkdGggPT0gRkxBU0hfQ0ZJX0JZMTYpCj4gKwkJ
aW5mby0+ZGV2aWNlX2lkID0gZmxhc2hfcmVhZDE2KGZsYXNoX21ha2VfYWRkcihpbmZvLCAwLCBG
TEFTSF9PRkZTRVRfREVWSUNFX0lEKSk7Cj4gKwllbHNlCj4gKwkJaW5mby0+ZGV2aWNlX2lkID0g
Zmxhc2hfcmVhZF91Y2hhciAoaW5mbywKPiArCQkJCQkJRkxBU0hfT0ZGU0VUX0RFVklDRV9JRCk7
CgptYWtlIHRoaXMgZ2xvYmFsIHdpdGggYWxsIHdpdGggc3VwcG9ydAphcyBkb24gaW4gbGludXgK
CmFzIHRoaXMgaXMgdmFsaWQgZm9yIGFtZCBhbmQgaW50ZWwgYW5kIHN0CgpCZXN0IFJlZ2FyZHMu
CkouCj4gIAlpZiAoaW5mby0+ZGV2aWNlX2lkID09IDB4N0UpIHsKPiAgCQkvKiBBTUQgMy1ieXRl
IChleHBhbmRlZCkgZGV2aWNlIGlkcyAqLwo+ICAJCWluZm8tPmRldmljZV9pZDIgPSBmbGFzaF9y
ZWFkX3VjaGFyIChpbmZvLAo+IC0tIAo+IDEuNy40LjQKPiAKPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0
Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
