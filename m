Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlXbc-0003hI-PE
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 07:33:13 +0000
Received: by wicge5 with SMTP id ge5so138449727wic.0
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 00:32:51 -0700 (PDT)
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-10-git-send-email-sebastian.hesselbarth@gmail.com>
 <87h9lx6sx3.fsf@belgarion.home> <20151012062858.GM7858@pengutronix.de>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <561B6220.7080805@gmail.com>
Date: Mon, 12 Oct 2015 09:32:48 +0200
In-Reply-To: <20151012062858.GM7858@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 09/17] mtd: nand_mrvl_nfc: Get ecc parameters from DT
To: Sascha Hauer <s.hauer@pengutronix.de>, Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

T24gMTIuMTAuMjAxNSAwODoyOCwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFN1biwgT2N0IDEx
LCAyMDE1IGF0IDEwOjM5OjUyUE0gKzAyMDAsIFJvYmVydCBKYXJ6bWlrIHdyb3RlOgo+PiBTZWJh
c3RpYW4gSGVzc2VsYmFydGggPHNlYmFzdGlhbi5oZXNzZWxiYXJ0aEBnbWFpbC5jb20+IHdyaXRl
czoKPj4KPj4+IFdpdGggRFQgaGVscGVycyBmb3IgRUNDIHN0ZXAgc2l6ZSBhbmQgc3RyZW5ndGgs
IG5vdyB1c2UgdGhlbSBvbgo+Pj4gTWFydmVsbCBOQU5EIGRyaXZlci4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBTZWJhc3RpYW4gSGVzc2VsYmFydGggPHNlYmFzdGlhbi5oZXNzZWxiYXJ0aEBnbWFp
bC5jb20+Cj4+IFRoaXMgb25lIGJyZWFrIHRoZSBweGEgKHp5bG9uaXRlMzEwX2RlZmNvbmZpZykg
YnVpbGQgOgo+PiBkcml2ZXJzL210ZC9uYW5kL25hbmRfbXJ2bF9uZmMuYzogSW4gZnVuY3Rpb24g
4oCYbXJ2bF9uYW5kX3Byb2JlX2R04oCZOgo+PiBkcml2ZXJzL210ZC9uYW5kL25hbmRfbXJ2bF9u
ZmMuYzoxMTYzOjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhv
Zl9nZXRfbmFuZF9lY2Nfc3RyZW5ndGjigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVj
bGFyYXRpb25dCj4+ICAgIGhvc3QtPmVjY19zdHJlbmd0aCA9IG9mX2dldF9uYW5kX2VjY19zdHJl
bmd0aChucCk7Cj4+ICAgIF4KPj4gZHJpdmVycy9tdGQvbmFuZC9uYW5kX21ydmxfbmZjLmM6MTE2
NzoyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYb2ZfZ2V0X25h
bmRfZWNjX3N0ZXBfc2l6ZeKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlv
bl0KPj4gICAgaG9zdC0+ZWNjX3N0ZXAgPSBvZl9nZXRfbmFuZF9lY2Nfc3RlcF9zaXplKG5wKTsK
Pj4gICAgXgo+PiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKPgo+
IFllcywgd2UgY3VycmVudGx5IGRvIG5vdCBoYXZlIHRoZXNlIGZ1bmN0aW9ucyBpbiBiYXJlYm94
LgoKU29ycnksIEkgc2ltcGx5IGZhaWxlZCB0byBhZGQgdGhpcyBwYXRjaCB0byB0aGUgc2VyaWVz
LiBJJ2xsCnNlbmQgdGhlIG1pc3NpbmcgcGF0Y2ggbGF0ZXIgdG9kYXkgYW5kIG1ha2Ugc3VyZSBp
dCdsbCBiZQppbmNsdWRlZCBpbiB2MiBvbmNlIGFsbCBpc3N1ZXMgaGF2ZSBiZWVuIHdvcmtlZCBv
dXQuCgpTZWJhc3RpYW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
