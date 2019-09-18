Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfaC-0000gw-TL
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 19:25:46 +0000
Date: Wed, 18 Sep 2019 21:25:40 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20190918192540.j7eeju6diit7ug3w@porty>
References: <20190915193114.3243-1-contact@stefanchrist.eu>
 <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
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
Subject: Re: [PATCH] docs: add python version in shebang
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMTA6MDE6MjZBTSArMDIwMCwgVXdlIEts
ZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8gU3RlZmFuLAo+IAo+IE9uIFN1biwgU2VwIDE1LCAy
MDE5IGF0IDA5OjMxOjE0UE0gKzAyMDAsIFN0ZWZhbiBMZW5nZmVsZCB3cm90ZToKPiA+IE9uIG15
IG1hY2hpbmUgJ21ha2UgZG9jcycgZmFpbHMgd2l0aAo+ID4gCj4gPiAgICAgVHJhY2ViYWNrICht
b3N0IHJlY2VudCBjYWxsIGxhc3QpOgo+ID4gICAgICAgRmlsZSAiL2hvbWUvc3RjL2dpdC9iYXJl
Ym94L0RvY3VtZW50YXRpb24vZ2VuX2NvbW1hbmRzLnB5IiwgbGluZSAxNTYsIGluIDxtb2R1bGU+
Cj4gPiAgICAgICAgIHBhcnNlX2Moc291cmNlKQo+ID4gICAgICAgRmlsZSAiL2hvbWUvc3RjL2dp
dC9iYXJlYm94L0RvY3VtZW50YXRpb24vZ2VuX2NvbW1hbmRzLnB5IiwgbGluZSAzNCwgaW4gcGFy
c2VfYwo+ID4gICAgICAgICBmb3IgbGluZSBpbiBmaWxlKG5hbWUsICdyJyk6Cj4gPiAgICAgTmFt
ZUVycm9yOiBuYW1lICdmaWxlJyBpcyBub3QgZGVmaW5lZAo+ID4gCj4gPiBiZWNhdXNlIC91c3Iv
YmluL3B5dGhvbiBwb2ludHMgdG8gcHl0aG9uMyBpbnN0ZWFkIG9mIHB5dGhvbjIuIEZpeCB0aGlz
Cj4gPiBieSBpbmNsdWRpbmcgdGhlIGxhbmd1YWdlIHZlcnNpb24gaW4gdGhlIHNoZWJhbmcgb2Yg
dGhlIHNjcmlwdC4KPiAKPiBJdCB3b3VsZCBiZSBtdWNoIHByZWZlcmFibGUgdG8gY29udmVydCB0
aGlzIGNvZGUgdG8gUHl0aG9uMy4gSSBsb29rZWQKPiBpbnRvIHRoYXQgYW5kIGl0IHdhc24ndCB0
aGF0IGhhcmQgdG8gZXZlbiBtYWtlIGl0IGNvbXBhdGlibGUgdG8gYm90aAo+IFB5dGhvbiAyIGFu
ZCBQeXRob24gMy4gKE9uZSBkb3duc2lkZSBpcyB0aGF0IFB5dGhvbiAzIGlzIG1vcmUgcGlja3kK
PiBhYm91dCBmaWxlIGVuY29kaW5ncywgc28gSSBoYXZlIHRvIGluc2VydCBhIHBhdGNoIHRoYXQg
Y29udmVydHMgdGhlIGZldwo+IGxhdGluMSBmaWxlIGxlZnQgaW4gdGhlIHRyZWUgdG8gdXRmLTgg
Zmlyc3QuIEJ1dCBhcyB0aGlzIGlzIGEgZ29vZCB0aGluZwo+IG9uIGl0cyBvd24gKElNSE8pIHRo
YXQncyBub3QgdG9vIGJhZC4pCj4gCj4gRmluZCB0aGUgdHdvIHBhdGNoZXMgaW4gcmVwbHkgdG8g
dGhpcyBtYWlsLgoKSW5kZWVkLCBjb252ZXJ0aW5nIHRoZSBzY3JpcHQgdG8gc3VwcG9ydCBQeXRo
b24gMiBhbmQgMyBhdCB0aGUgc2FtZSB0aW1lCmlzIHRoZSBiZXR0ZXIgZml4LgoKVGVzdGVkLUJ5
OiBTdGVmYW4gTGVuZ2ZlbGQgPGNvbnRhY3RAc3RlZmFuY2hyaXN0LmV1PgoKS2luZCByZWdhcmRz
LApTdGVmYW4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
