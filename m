Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYTI-00058H-O8
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:52:41 +0000
Message-ID: <52458D90.3040309@phytec.de>
Date: Fri, 27 Sep 2013 15:52:16 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
 <20130927133807.GI32444@ns203013.ovh.net> <20130927134038.GA25753@omega>
 <20130927134500.GA25840@omega>
In-Reply-To: <20130927134500.GA25840@omega>
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
Subject: Re: [PATCH] mci: omap: Fix default value of mci.f_max
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

QW0gMjcuMDkuMjAxMyAxNTo0NSwgc2NocmllYiBBbGV4YW5kZXIgQXJpbmc6Cj4gT24gRnJpLCBT
ZXAgMjcsIDIwMTMgYXQgMDM6NDA6MzhQTSArMDIwMCwgQWxleGFuZGVyIEFyaW5nIHdyb3RlOgo+
PiBIaSwKPj4KPj4gT24gRnJpLCBTZXAgMjcsIDIwMTMgYXQgMDM6Mzg6MDdQTSArMDIwMCwgSmVh
bi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQgd3JvdGU6Cj4+PiBPbiAxNDoxMyBGcmkgMjcg
U2VwICAgICAsIFRlcmVzYSBHPz9tZXogd3JvdGU6Cj4+Pj4gU2V0IGRlZmF1bHQgdmFsdWUgb2Yg
bWNpLmZfbWF4IGV2ZW4gd2hlbiBubyBwZGF0YQo+Pj4+IGlzIGF2YWlsYWJsZS4KPj4+Pgo+Pj4+
IFNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgo+Pj4+IC0t
LQo+Pj4+ICAgZHJpdmVycy9tY2kvb21hcF9oc21tYy5jIHwgICAgNCArKy0tCj4+Pj4gICAxIGZp
bGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMgYi9kcml2ZXJzL21jaS9vbWFwX2hz
bW1jLmMKPj4+PiBpbmRleCBhMmNkM2ZlLi5mNjM2OTdmIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZl
cnMvbWNpL29tYXBfaHNtbWMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwo+
Pj4+IEBAIC02MTQsMTEgKzYxNCwxMSBAQCBzdGF0aWMgaW50IG9tYXBfbW1jX3Byb2JlKHN0cnVj
dCBkZXZpY2VfZCAqZGV2KQo+Pj4+ICAgCWlmIChwZGF0YSkgewo+Pj4+ICAgCQlpZiAocGRhdGEt
PmZfbWF4KQo+Pj4+ICAgCQkJaHNtbWMtPm1jaS5mX21heCA9IHBkYXRhLT5mX21heDsKPj4+PiAt
CQllbHNlCj4+Pj4gLQkJCWhzbW1jLT5tY2kuZl9tYXggPSA1MjAwMDAwMDsKPj4+PiAgIAo+Pj4+
ICAgCQlpZiAocGRhdGEtPmRldm5hbWUpCj4+Pj4gICAJCQloc21tYy0+bWNpLmRldm5hbWUgPSBw
ZGF0YS0+ZGV2bmFtZTsKPj4+PiArCX0gZWxzZSB7Cj4+Pj4gKwkJaHNtbWMtPm1jaS5mX21heCA9
IDUyMDAwMDAwOwo+Pj4+ICAgCX0KPj4+IHNvIGRvIHRoaXMKPj4+Cj4+PiAJaWYgKCFoc21tYy0+
bWNpLmZfbWFpeCkKPj4+IAkJaHNtbWMtPm1jaS5mX21heCA9IDUyMDAwMDAwOwo+PiBwZXJmZWN0
IDotKQo+Pgo+IG9oIG5vLCBpdCBpc24ndCBwZXJmZWN0IHMvZl9tYWl4L2ZfbWF4LyA7KQo+Cj4g
LSBBbGV4CgpJIGp1c3QgcmV3cm90ZSB0aGUgcGF0Y2ggZG9pbmcgdGhpcyA6CgogICAgICAgICBo
c21tYy0+bWNpLmZfbWluID0gNDAwMDAwOworICAgICAgIGhzbW1jLT5tY2kuZl9tYXggPSA1MjAw
MDAwMDsKCiAgICAgICAgIHBkYXRhID0gKHN0cnVjdCBvbWFwX2hzbW1jX3BsYXRmb3JtX2RhdGEg
KilkZXYtPnBsYXRmb3JtX2RhdGE7CiAgICAgICAgIGlmIChwZGF0YSkgewogICAgICAgICAgICAg
ICAgIGlmIChwZGF0YS0+Zl9tYXgpCiAgICAgICAgICAgICAgICAgICAgICAgICBoc21tYy0+bWNp
LmZfbWF4ID0gcGRhdGEtPmZfbWF4OwotICAgICAgICAgICAgICAgZWxzZQotICAgICAgICAgICAg
ICAgICAgICAgICBoc21tYy0+bWNpLmZfbWF4ID0gNTIwMDAwMDA7CgpJJ20gbm90IHNodXJlIHdo
aWNoIGlzIHRoZSBiZXR0ZXIgd2F5IG5vdyA6KS4KClJlZ2FyZHMsClRlcmVzYQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
