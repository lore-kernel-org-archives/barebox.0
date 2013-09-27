Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYI7-0004jE-2t
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:41:07 +0000
Received: by mail-ee0-f48.google.com with SMTP id l10so1223315eei.21
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 06:40:45 -0700 (PDT)
Date: Fri, 27 Sep 2013 15:40:38 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130927134038.GA25753@omega>
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
 <20130927133807.GI32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927133807.GI32444@ns203013.ovh.net>
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
Subject: Re: [PATCH] mci: omap: Fix default value of mci.f_max
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

SGksCgpPbiBGcmksIFNlcCAyNywgMjAxMyBhdCAwMzozODowN1BNICswMjAwLCBKZWFuLUNocmlz
dG9waGUgUExBR05JT0wtVklMTEFSRCB3cm90ZToKPiBPbiAxNDoxMyBGcmkgMjcgU2VwICAgICAs
IFRlcmVzYSBHPz9tZXogd3JvdGU6Cj4gPiBTZXQgZGVmYXVsdCB2YWx1ZSBvZiBtY2kuZl9tYXgg
ZXZlbiB3aGVuIG5vIHBkYXRhCj4gPiBpcyBhdmFpbGFibGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9tY2kvb21hcF9oc21tYy5jIHwgICAgNCArKy0tCj4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21jaS9vbWFwX2hzbW1jLmMgYi9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMKPiA+IGluZGV4IGEy
Y2QzZmUuLmY2MzY5N2YgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMK
PiA+ICsrKyBiL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwo+ID4gQEAgLTYxNCwxMSArNjE0LDEx
IEBAIHN0YXRpYyBpbnQgb21hcF9tbWNfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gPiAg
CWlmIChwZGF0YSkgewo+ID4gIAkJaWYgKHBkYXRhLT5mX21heCkKPiA+ICAJCQloc21tYy0+bWNp
LmZfbWF4ID0gcGRhdGEtPmZfbWF4Owo+ID4gLQkJZWxzZQo+ID4gLQkJCWhzbW1jLT5tY2kuZl9t
YXggPSA1MjAwMDAwMDsKPiA+ICAKPiA+ICAJCWlmIChwZGF0YS0+ZGV2bmFtZSkKPiA+ICAJCQlo
c21tYy0+bWNpLmRldm5hbWUgPSBwZGF0YS0+ZGV2bmFtZTsKPiA+ICsJfSBlbHNlIHsKPiA+ICsJ
CWhzbW1jLT5tY2kuZl9tYXggPSA1MjAwMDAwMDsKPiA+ICAJfQo+IAo+IHNvIGRvIHRoaXMKPiAK
PiAJaWYgKCFoc21tYy0+bWNpLmZfbWFpeCkKPiAJCWhzbW1jLT5tY2kuZl9tYXggPSA1MjAwMDAw
MDsKCnBlcmZlY3QgOi0pCgotIEFsZXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
