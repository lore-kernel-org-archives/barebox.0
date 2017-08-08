Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dezJI-00020r-MZ
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 07:52:18 +0000
Message-ID: <1502178714.2934.21.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 08 Aug 2017 09:51:54 +0200
In-Reply-To: <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
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
Subject: Re: [PATCH 1/2] readline_simple: return -1 if getc fails
To: =?ISO-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

QW0gTW9udGFnLCBkZW4gMDcuMDguMjAxNywgMTg6MTAgLTA0MDAgc2NocmllYiBHYcOrbCBQT1JU
QVk6Cj4gVGhlIGdldGMgZnVuY3Rpb24gbWF5IHJldHVybiBhbiBlcnJubyBjb2RlIGlmIGFuIGVy
cm9yIGhhcHBlbnMuCj4gCj4gVGhpcyBwYXRjaCBwcmV2ZW50cyByZWFkbGluZSBmcm9tIHByaW50
aW5nIGEgbm9uIHByaW50YWJsZSBjaGFyYWN0ZXIgYW5kCj4gZnJvbSBsb29waW5nIHRvIGluZmlu
aXR5IGFuZCBiZXlvbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBv
cnRheUBzYXZvaXJmYWlyZWxpbnV4LmNvbT4KPiAtLS0KPiAgbGliL3JlYWRsaW5lX3NpbXBsZS5j
IHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2xpYi9yZWFkbGluZV9zaW1wbGUuYyBiL2xpYi9yZWFkbGluZV9zaW1wbGUuYwo+IGluZGV4
IGM0ZDNkMjQwZS4uMTI4M2M5NjAyIDEwMDY0NAo+IC0tLSBhL2xpYi9yZWFkbGluZV9zaW1wbGUu
Ywo+ICsrKyBiL2xpYi9yZWFkbGluZV9zaW1wbGUuYwo+IEBAIC01OCw2ICs1OCw4IEBAIGludCBy
ZWFkbGluZSAoY29uc3QgY2hhciAqcHJvbXB0LCBjaGFyICpsaW5lLCBpbnQgbGVuKQo+ICAKPiAg
CWZvciAoOzspIHsKPiAgCQljID0gZ2V0Y2hhcigpOwo+ICsJCWlmIChjIDwgMCkKPiArCQkJcmV0
dXJuICgtMSk7CgpJIGRvbid0IGxpa2UgbWFkZSB1cCBlcnJvciBjb2Rlcy4gSXMgdGhlcmUgYW55
IHJlYXNvbiB3aHkgd2UgY291bGRuJ3QKanVzdCBwYXNzIHRocm91Z2ggdGhlIG5lZ2F0aXZlIGVy
cm9yIGNvZGUgZnJvbSBnZXRjaGFyPwoKUmVnYXJkcywKTHVjYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
