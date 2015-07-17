Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG5ww-0000Ci-Nu
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 13:45:15 +0000
Message-ID: <55A906D1.3040901@phytec.de>
Date: Fri, 17 Jul 2015 15:44:49 +0200
From: Daniel Schultz <d.schultz@phytec.de>
MIME-Version: 1.0
References: <1437036707-48320-1-git-send-email-d.schultz@phytec.de>
 <1437124574.3498.73.camel@pengutronix.de>
In-Reply-To: <1437124574.3498.73.camel@pengutronix.de>
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
Subject: Re: [PATCH v2 2/2] ARM: am335x: Changed timer
To: =?UTF-8?B?SmFuIEzDvGJiZQ==?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

QW0gMTcuMDcuMjAxNSB1bSAxMToxNiBzY2hyaWViIEphbiBMw7xiYmU6Cj4gT24gRG8sIDIwMTUt
MDctMTYgYXQgMTA6NTEgKzAyMDAsIERhbmllbCBTY2h1bHR6IHdyb3RlOgo+PiBUaGUgZG10aW1l
cjAgaXMgdG9vIGluYWNjdXJhdGUgdG8gYmUgdXNlZCBmb3IgbWVhc3VyZW1lbnRzLgo+PiBXZSBz
d2l0Y2ggdG8gdGhlIG1vcmUgYWNjdXJhdGUgZG10aW1lcjIuCj4KPiBXaGF0IGFyZSB5b3UgdHJ5
aW5nIHRvIG1lYXN1cmU/IElzIHRoZSByZXNvbHV0aW9uIG9yIHRoZSBhY2N1cmFjeSB0b28KPiBs
b3c/CldoaWxlIHRlc3Rpbmcgd2l0aCBkaHJ5c3RvbmUgb24gb3VyIGJvYXJkcywgSSBmaWd1cmVk
IG91dCB0aGF0IHRoZSAKdGltZXN0YW1wcyBmcm9tIGRtdGltZXIwIHJ1biAyMCUgdG9vIHF1aWNr
LgoKWW91IGNhbiBhbHNvIG1ha2UgYSBxdWljayB0ZXN0IG9uIGEgYW0zMzV4IGJvYXJkIHdpdGgK
c2xlZXAgMTAKCllvdSB3aWxsIG5vdGljZSB0aGF0IHRoZSBzbGVlcCBvbmx5IHRha2VzIDggc2Vj
b25kcy4gVGhpcyBxdWl0ZSB0b28gCmluYWNjdXJhdGUuCgo+Cj4+ICsjZGVmaW5lIENMS19NX09T
QwkyNTAwMDAwMAo+Cj4+ICtzdGF0aWMgaW50IGRtdGltZXJfaW5pdCh2b2lkKQo+PiArewo+PiAr
CWRtdGltZXJfY3MubXVsdCA9IGNsb2Nrc291cmNlX2h6Mm11bHQoQ0xLX01fT1NDLCBkbXRpbWVy
X2NzLnNoaWZ0KTsKPj4gKwkvKiBFbmFibGUgY291bnRlciAqLwo+PiArCXdyaXRlbCgweDMsIGJh
c2UgKyBUQ0xSKTsKPj4gKwo+PiArCXJldHVybiBpbml0X2Nsb2NrKCZkbXRpbWVyX2NzKTsKPgo+
IFlvdSB1c2UgYSBmaXhlZCBNX09TQyBvZiAyNSBNSHosIGJ1dCB0aGlzIHZhbHVlIGFjdHVhbGx5
IGRlcGVuZHMgb24gdGhlCj4gdGhlIGJvYXJkLiBUaGUgQU0zMzV4IHN1cHBvcnRzIDE5LjIsIDI0
IGFuZCAyNiBNSHogaW4gYWRkaXRpb24gdG8gMjUKPiBNSHouCnNlZSBuZXcgcGF0Y2guCj4gVGhl
IGFkdmFudGFnZSBvZiB1c2luZyBkbXRpbWVyMCBpcyB0aGF0IGl0IGlzIGFsd2F5cyBhdmFpbGFi
bGUgYW5kIHJ1bnMKPiBhdCAzMktpSHogb24gZXZlcnkgYm9hcmQuCj4KPiBSZWdhcmRzLAo+IEph
bgo+CgpLaW5kIHJlZ2FyZHMsCkRhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
