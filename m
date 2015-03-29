Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yc890-0003UE-Ku
 for barebox@lists.infradead.org; Sun, 29 Mar 2015 08:00:31 +0000
Received: by labto5 with SMTP id to5so97620267lab.0
 for <barebox@lists.infradead.org>; Sun, 29 Mar 2015 01:00:07 -0700 (PDT)
Date: Sun, 29 Mar 2015 11:04:27 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150329110427.24206daaf84c5fff0d668ae2@gmail.com>
In-Reply-To: <B98B8DDF-B83C-42E7-A8CD-E90DE16DE567@jcrosoft.com>
References: <1427473384-30472-1-git-send-email-antonynpavlov@gmail.com>
 <B98B8DDF-B83C-42E7-A8CD-E90DE16DE567@jcrosoft.com>
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
Subject: Re: [PATCH] fixup! command: add hmac sum supportfor md5, sha1,
 sha224, sha256, sha384, sha512
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gU3VuLCAyOSBNYXIgMjAxNSAwNDowNzoyMyArMDgwMApKZWFuLUNocmlzdG9waGUgUExBR05J
T0wtVklMTEFSRCA8cGxhZ25pb2pAamNyb3NvZnQuY29tPiB3cm90ZToKCj4gcGxlYXNlIHdyaXRl
IGEgYmV0dGVyIGNvbW1pdAoKVGhlIGNvbW1pdCBpcyBtYWRlIHdpdGggJ2dpdCBjb21taXQgLS1m
aXh1cCcsIHNvIGNvbW1pdCBtZXNzYWdlIGlzIGF1dG9nZW5lcmF0ZWQuClRoZSBwYXRjaCBpcyBz
ZW5kIHdpdGggYXV0b3NxdWFzaGluZyBpbiBtaW5kLgoKUGxlYXNlIHJlYWQgIGh0dHA6Ly9mbGUu
Z2l0aHViLmlvL2dpdC10aXAta2VlcC15b3VyLWJyYW5jaC1jbGVhbi13aXRoLWZpeHVwLWFuZC1h
dXRvc3F1YXNoLmh0bWwKZm9yIGRldGFpbHMuCgo+IAo+IGl04oCZcyBhIGNvZGluZyBzdHlsZSBp
c3N1ZSBub3QgYSBmaXh1cAo+IGFuZCBoZXJlIG1vcmUgYSB0eXBvCj4gCj4gRml4dXAgbWVhbnMg
YSBCVUcKPiAKPiBCZXN0IFJlZ2FyZHMsCj4gSi4KPiA+IE9uIE1hciAyOCwgMjAxNSwgYXQgMTI6
MjMgQU0sIEFudG9ueSBQYXZsb3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPiB3cm90ZToKPiA+
IAo+ID4gLS0tCj4gPiBjb21tYW5kcy9oYXNoc3VtLmMgfCAyICstCj4gPiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2Nv
bW1hbmRzL2hhc2hzdW0uYyBiL2NvbW1hbmRzL2hhc2hzdW0uYwo+ID4gaW5kZXggZTJkYzcwZS4u
OGQzNjk0ZiAxMDA2NDQKPiA+IC0tLSBhL2NvbW1hbmRzL2hhc2hzdW0uYwo+ID4gKysrIGIvY29t
bWFuZHMvaGFzaHN1bS5jCj4gPiBAQCAtMzYsNyArMzYsNyBAQCBzdGF0aWMgaW50IGRvX2hhc2go
Y2hhciAqYWxnbywgaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiA+IAlzaXplX3Qga2V5bGVuID0g
MDsKPiA+IAlpbnQgb3B0LCByZXQ7Cj4gPiAKPiA+IC0Jd2hpbGUoKG9wdCA9IGdldG9wdChhcmdj
LCBhcmd2LCAiaDoiKSkgPiAwKSB7Cj4gPiArCXdoaWxlICgob3B0ID0gZ2V0b3B0KGFyZ2MsIGFy
Z3YsICJoOiIpKSA+IDApIHsKPiA+IAkJc3dpdGNoKG9wdCkgewo+ID4gCQljYXNlICdoJzoKPiA+
IAkJCWtleSA9IG9wdGFyZzsKPiA+IC0tIAo+ID4gMi4xLjQKPiA+IAo+ID4gCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gYmFyZWJveCBtYWls
aW5nIGxpc3QKPiA+IGJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cj4gCgoKLS0gCi0twqAKQmVz
dCByZWdhcmRzLArCoCBBbnRvbnkgUGF2bG92CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
