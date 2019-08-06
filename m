Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huudy-0006Is-Kn
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 08:16:32 +0000
Message-ID: <1565079389.2323.20.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 06 Aug 2019 10:16:29 +0200
In-Reply-To: <95c1fb0aa5ab2d3d81fb7405537f7d8b34dd939d.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
 <95c1fb0aa5ab2d3d81fb7405537f7d8b34dd939d.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v3 10/16] pbl: add sha256 and piggy verification to PBL
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAwNi4wOC4yMDE5LCAwNzoxMSArMDIwMCBzY2hyaWViIFJvdXZlbiBD
emVyd2luc2tpOgo+IEV4dHJhY3QgdGhlIG5lY2Vzc2FyeSBmdW5jdGlvbnMgZnJvbSBzaGEyNTYg
aW50byBhIFBCTCBoZWFkZGVyIGFuZCBhZGQgYQo+IHZlcmlmaWNhdGlvbiBmdW5jdGlvbiB0byB0
aGUgUEJMLiBUaGUgZnVuY3Rpb24gd2lsbCBiZSBjYWxsZWQgYmVmb3JlIHRoZQo+IGluZGl2aWR1
YWwgYXJjaGl0ZWN0dXJlcyBkZWNvbXByZXNzIGZ1bmN0aW9ucyBpcyBydW4uCj4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBSb3V2ZW4gQ3plcndpbnNraSA8ci5jemVyd2luc2tpQHBlbmd1dHJvbml4LmRl
Pgo+IC0tLQo+IMKgY3J5cHRvL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqB8wqDCoDIgKysK
PiDCoGNyeXB0by9zaGEyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8IDExICsrKysrKystLS0t
Cj4gwqBpbmNsdWRlL2NyeXB0by9wYmwtc2hhLmggfCAxMyArKysrKysrKysrKysrCj4gwqBpbmNs
dWRlL3BibC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfMKgwqAyICsrCj4gwqBwYmwvS2NvbmZp
Z8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8wqDCoDkgKysrKysrKysrCj4gwqBwYmwvZGVj
b21wLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHwgMzkgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gwqA2IGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9jcnlwdG8vcGJs
LXNoYS5oCgpbLi4uXQoKPiArY29uZmlnIFBCTF9WRVJJRllfUElHR1kKPiA+ICsJZGVwZW5kcyBv
biBBUk0KPiA+ICsJYm9vbAo+ID4gKwloZWxwCj4gPiArCcKgwqBVc2UgYSBQQkwgYnVpbHRpbiBz
aGEyNTZzdW0gdG8gdmVyaWZ5IHRoZSBwaWdneWRhdGEgYmVmb3JlIGRlY29tcHJlc3Npb24uCj4g
PiArCcKgwqBXQVJOSU5HOiB5b3VyIGJvYXJkIHdpbGwgbm90IGJvb3QgaWYgYSBtaXNtYXRjaCBp
cyBkZXRlY3RlZCwgZW5hYmxlIERFQlVHX0xMCj4gPiArCcKgwqB0byBzZWUgdGhlIGJ1aWx0aW4g
YW5kIGNhbGN1bGF0ZWQgaGFzaC4KPiA+ICsJwqDCoFRoaXMgZWZmZWN0aXZlbHkgbG9ja3MgYSBn
aXZlbiBQQkwgdG8gdGhlIG1hdGNoaW5nIG1haW4gYmFyZWJveC4KCkhhdmluZyBhIGhlbHAgdGV4
dCBmb3IgYW4gaW52aXNpYmxlIG9wdGlvbiBkb2Vzbid0IG1ha2UgdG9vIG11Y2ggc2Vuc2UuCgpS
ZWdhcmRzLApMdWNhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
