Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMJa1-00021R-Tb
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 14:17:43 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B2A80DC1C42
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 16:24:07 +0200 (CEST)
Date: Thu, 11 Oct 2012 16:15:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121011141517.GC13639@game.jcrosoft.org>
References: <n> <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
 <1349734061-32339-6-git-send-email-carlo.caione@gmail.com>
 <20121009113142.GD26553@game.jcrosoft.org>
 <19A97966-0AF1-4D37-BC6F-CA6D47F59B50@gmail.com>
 <20121011071735.GE27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121011071735.GE27665@pengutronix.de>
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
Subject: Re: [PATCH 5/5] Add support for GPIO (BCM2835/Raspberry-Pi)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

T24gMDk6MTcgVGh1IDExIE9jdCAgICAgLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gT24gV2VkLCBP
Y3QgMTAsIDIwMTIgYXQgMTA6MzY6NTlQTSArMDIwMCwgQ2FybG8gQ2Fpb25lIHdyb3RlOgo+ID4g
Cj4gPiBPbiBPY3QgOSwgMjAxMiwgYXQgMTozMSBQTSwgSmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9M
LVZJTExBUkQgPHBsYWduaW9qQGpjcm9zb2Z0LmNvbT4gd3JvdGU6Cj4gPiBbY3V0XQo+ID4gCj4g
PiA+IHlvdSBzaG91bGQgYWRkIG9uZSBiYW5rIHByZSBncGlvX2NoaXAgCj4gPiA+PiArCXN0cnVj
dCBiY20yODM1X2dwaW9fY2hpcCAqYmNtZ3BpbyA9IGNvbnRhaW5lcl9vZihjaGlwLCBzdHJ1Y3Qg
YmNtMjgzNV9ncGlvX2NoaXAsIGNoaXApOwo+ID4gPj4gKwl2b2lkIF9faW9tZW0gKmJhc2UgPSBi
Y21ncGlvLT5iYXNlOwo+ID4gPj4gKwl1bnNpZ25lZCBncGlvZGlyOwo+ID4gPj4gKwl1bnNpZ25l
ZCBncGlvX2JhbmsgPSBncGlvIC8gMTA7Cj4gPiA+PiArCXVuc2lnbmVkIGdwaW9fZmllbGRfb2Zm
c2V0ID0gKGdwaW8gLSAxMCAqIGdwaW9fYmFuaykgKiAzOwo+ID4gPiBzbyB0aGlzIHdpbGwgYmUg
ZHJvcHBlZAo+ID4gPj4gKwo+ID4gPj4gKwlncGlvZGlyID0gcmVhZGwoYmFzZSArIEdQSU9GU0VM
KGdwaW9fYmFuaykpOwo+ID4gPj4gKwlncGlvZGlyICY9IH4oNyA8PCBncGlvX2ZpZWxkX29mZnNl
dCk7Cj4gPiA+PiArCWdwaW9kaXIgfD0gZnVuY3Rpb24gPDwgZ3Bpb19maWVsZF9vZmZzZXQ7Cj4g
PiA+PiArCXdyaXRlbChncGlvZGlyLCBiYXNlICsgR1BJT0ZTRUwoZ3Bpb19iYW5rKSk7Cj4gPiA+
PiArCWdwaW9kaXIgPSByZWFkbChiYXNlICsgR1BJT0ZTRUwoZ3Bpb19iYW5rKSk7Cj4gPiA+PiAr
Cj4gPiA+PiArCXJldHVybiAwOwo+ID4gPj4gK30KPiA+ID4+ICsKPiA+IAo+ID4gVWhtLCB0aGlz
IGNvdWxkIGJlIG5vdCBjb252ZW5pZW50IHNpbmNlIHRoZSB0d28gYmFua3MgaW4gQkNNMjgzNSBh
cmUKPiA+IG5vdCByZWFsbHkgc2VwYXJhdGVkLCB0aGVyZSBhcmUgbm90IGV4Y2x1c2l2ZSByZWdp
c3RlcnMgZm9yIG9uZSBiYW5rCj4gPiBvciBmb3IgdGhlIG90aGVyLiBUaGUgcmVnaXN0ZXJzIHVz
ZWQgZm9yIEdQSU9zIGNvbmZpZ3VyYXRpb24gbWFuYWdlCj4gPiBib3RoIHRoZSB0d28gYmFua3Mg
KHNlZSBmb3IgZXhhbXBsZSBHUEZTRUx4KS4gIElmIEkgYWRkIG9uZSBiYW5rIEkgY2FuCj4gPiBh
dm9pZCBjYWxjdWxhdGluZyB0aGUgYmFuayBvZmZzZXQgZm9yIEdQQ0xSeCBhbmQgR1BTRVR4IGJ1
dCBub3QgZm9yCj4gPiBHUEZTRUx4IGFuZCB2aWNldmVyc2EgKGluIGZhY3QgaW4gdGhlIGNvZGUg
SSBzZWxlY3QgdGhlIGJhbmsgZm9yCj4gPiBHUENMUnggYW5kIEdQU0VUeCB3aXRoIGdwaW9fYmFu
ayA9IGdwaW8gLyAzMiB3aGVyZWFzIGZvciBHUElPRlNFTCB3aXRoCj4gPiBncGlvX2JhbmsgPSBn
cGlvIC8gMTApLiAgWWF5LCBjb25mdXNpbmcg4oCmCj4gCj4gSSBzb21ldGltZXMgd29uZGVyIGlm
IGhhcmR3YXJlIGRlc2lnbmVycyBrbm93IHdoYXQgcGFpbnMgdGhleSBjYXVzZS4uLgpUaGV5IHRo
aW5rIHNvZnR3YXJlIGlzIGhlcmUgdG8gc2VydmUgdGhlIGh3IHdoZXJlIGl0IHdhcyB0cnVlIDIw
IG9yIDMwIHllYXJzCmFnbyBidXQgbm93IGl0J3MgdGhlIGludmVydAoKQmVzdCBSZWdhcmRzLApK
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
