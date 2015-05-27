Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from secure10.t-systems.com ([217.150.155.12])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YxUli-0007Bu-H5
 for barebox@lists.infradead.org; Wed, 27 May 2015 06:24:47 +0000
From: Alexander Richter <Alexander.Richter@ATSonline.de>
Date: Wed, 27 May 2015 06:24:17 +0000
Message-ID: <97BF8529-638A-49F5-BF3A-51D52D57B774@atsonline.de>
References: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
 <D72B6FFF-645F-41CC-9B99-2ACE13B05BFC@atsonline.de>
In-Reply-To: <D72B6FFF-645F-41CC-9B99-2ACE13B05BFC@atsonline.de>
Content-Language: de-DE
Content-ID: <CE753D0148660D45BABFA01E6A0FEFF7@ATSonline.de>
MIME-Version: 1.0
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
Subject: Re: Programatically write in a file in the environnent with a hush
 command
To: Jean-Christophe BEGUE <begue.jc@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

DQo+IEFtIDI3LjA1LjIwMTUgdW0gMDg6MTAgc2NocmllYiBBbGV4YW5kZXIgUmljaHRlciA8YWxl
eGFuZGVyLnJpY2h0ZXJAYXRzb25saW5lLmRlPjoNCj4gDQo+IEhlbGxvLA0KPj4gQW0gMjYuMDUu
MjAxNSB1bSAxNzo0MiBzY2hyaWViIEplYW4tQ2hyaXN0b3BoZSBCRUdVRSA8YmVndWUuamNAZ21h
aWwuY29tPjoNCj4+IA0KPj4gSGVsbG8sDQo+PiANCj4+IEknbSB0cnlpbmcgdG8gcGFzcyBhIHZh
bHVlIGZyb20gQmFyZWJveCB0byB0aGUgb3BlcmF0aW5nIHN5c3RlbSwgdXNpbmcNCj4+IHRoZSB1
c3JlbGFuZCBjb21tYW5kIGJhcmVib3hlbnYgLWwuDQo+PiANCj4+IE15IHByb2JsZW0gaXMgOiBI
b3cgc2hvdWxkIEkgd3JpdGUgdGhhdCBzdGF0dXMgZnJvbSBteSBodXNoIGJhcmVib3ggc2NyaXB0
Pw0KPj4gDQo+PiBlY2hvICRteXN0YXR1cyA+IC9lbnYvZGF0YS9teV9zdGF0dXNfZmlsZQ0KPiBZ
b3UgY2FuIHVzZSB0aGUgY29tbWFuZCBudiB0byBjcmVhdGUgbm9uIHZvbGF0aWxlIHNoZWxsIHZh
cmlhYmxlcy4gRG9u4oCZdCBmb3JnZXQgdG8gc2F2ZSB0aGUgRW52aXJvbm1lbnQuDQpBZGRpdGlv
bmFsbHksIGEgZWNobyAtYSAvIC1vIG1pZ2h0IGJlIHVzZWZ1bCBpbiB5b3VyIGNhc2UuDQotYSA8
ZmlsZT4iLCAgImluc3RlYWQgb2Ygb3V0cHV0dGluZyB0byBzdGRvdXQgYXBwZW5kIHRvIDxmaWxl
Pg0KLW8gPGZpbGU+IiwgICJpbnN0ZWFkIG9mIG91dHB1dHRpbmcgdG8gc3Rkb3V0IG92ZXJ3cml0
ZSA8ZmlsZT4NCj4+IA0KPj4gVGhlIGFib3ZlIGNvbW1hbmQgZG9lc24ndCB3b3JrIGFzICc+JyBp
cyBub3QgaW1wbGVtZW50ZWQuDQo+PiANCj4+IEkndmUgdGhlIGZlZWxpbmcgdGhhdCBJJ20gbWlz
c2luZyBzb21ldGhpbmc/DQo+PiANCj4gVG8gYWNjZXNzIHRoZSBuZXcgdmFyaWFibGUgKC9lbnYv
bnYvZm9vLmJhcikgZnJvbSB1c2Vyc3BhY2UsIHlvdSBjYW4gdXNlIHRoZSDigJ5iYXJlYm94ZW52
4oCcIHRvb2wNCj4gDQo+IEFsZXhhbmRlciBSaWNodGVyDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IGJhcmVib3ggbWFpbGluZyBsaXN0DQo+IGJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
