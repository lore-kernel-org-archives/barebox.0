Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ybx1U-0005RR-OT
 for barebox@lists.infradead.org; Sat, 28 Mar 2015 20:08:01 +0000
Received: from mail628.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id ABFDB10040CA
 for <barebox@lists.infradead.org>; Sat, 28 Mar 2015 21:07:32 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1427473384-30472-1-git-send-email-antonynpavlov@gmail.com>
Date: Sun, 29 Mar 2015 04:07:23 +0800
Message-Id: <B98B8DDF-B83C-42E7-A8CD-E90DE16DE567@jcrosoft.com>
References: <1427473384-30472-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fixup! command: add hmac sum supportfor md5, sha1, sha224,
 sha256, sha384, sha512
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

cGxlYXNlIHdyaXRlIGEgYmV0dGVyIGNvbW1pdAoKaXTigJlzIGEgY29kaW5nIHN0eWxlIGlzc3Vl
IG5vdCBhIGZpeHVwCmFuZCBoZXJlIG1vcmUgYSB0eXBvCgpGaXh1cCBtZWFucyBhIEJVRwoKQmVz
dCBSZWdhcmRzLApKLgo+IE9uIE1hciAyOCwgMjAxNSwgYXQgMTI6MjMgQU0sIEFudG9ueSBQYXZs
b3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPiB3cm90ZToKPiAKPiAtLS0KPiBjb21tYW5kcy9o
YXNoc3VtLmMgfCAyICstCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2NvbW1hbmRzL2hhc2hzdW0uYyBiL2NvbW1hbmRzL2hh
c2hzdW0uYwo+IGluZGV4IGUyZGM3MGUuLjhkMzY5NGYgMTAwNjQ0Cj4gLS0tIGEvY29tbWFuZHMv
aGFzaHN1bS5jCj4gKysrIGIvY29tbWFuZHMvaGFzaHN1bS5jCj4gQEAgLTM2LDcgKzM2LDcgQEAg
c3RhdGljIGludCBkb19oYXNoKGNoYXIgKmFsZ28sIGludCBhcmdjLCBjaGFyICphcmd2W10pCj4g
CXNpemVfdCBrZXlsZW4gPSAwOwo+IAlpbnQgb3B0LCByZXQ7Cj4gCj4gLQl3aGlsZSgob3B0ID0g
Z2V0b3B0KGFyZ2MsIGFyZ3YsICJoOiIpKSA+IDApIHsKPiArCXdoaWxlICgob3B0ID0gZ2V0b3B0
KGFyZ2MsIGFyZ3YsICJoOiIpKSA+IDApIHsKPiAJCXN3aXRjaChvcHQpIHsKPiAJCWNhc2UgJ2gn
Ogo+IAkJCWtleSA9IG9wdGFyZzsKPiAtLSAKPiAyLjEuNAo+IAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QK
PiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
