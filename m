Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEl0F-0007ch-4a
 for barebox@lists.infradead.org; Tue, 05 Aug 2014 20:06:35 +0000
Received: by mail-wg0-f52.google.com with SMTP id a1so1524890wgh.23
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 13:06:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACqcpZDNfpYJkadn7iFbXor=UUVE-f_+TkcdY647V+hRZsoFDg@mail.gmail.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <53DF4E49.3040501@atmel.com>
 <CACqcpZDrqaMNRj5NVmLgvoP1UYwZf03iZsAX32qspwgeZiRhig@mail.gmail.com>
 <53DF5293.2010305@atmel.com> <53E07FE4.6070107@atmel.com>
 <CACqcpZDNfpYJkadn7iFbXor=UUVE-f_+TkcdY647V+hRZsoFDg@mail.gmail.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Tue, 5 Aug 2014 22:05:32 +0200
Message-ID: <CACqcpZBSryx6QP=f1MuSJn5QpQC68bMg48ScVY5Fjn3Mq8nupg@mail.gmail.com>
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
Subject: Re: [PATCH V2 0/2] Add device tree support of i2c Atmel driver
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

SSBhbSByZWFkeSB0byBzZW5kIGEgdjMuIEFyZSB5b3UgZ29pbmcgdG8gc2VuZCB5b3VyIGZpeCBv
ciB5b3Ugd2FudCBtZQp0byBzcXVhc2ggaXQgaW4gdjMgPwoKQmVzdCBSZWdhcmRzLApSYXBoYcOr
bCBQb2dnaQoKMjAxNC0wOC0wNSAxMDozMiBHTVQrMDI6MDAgUmFwaGHDq2wgUG9nZ2kgPHJhcGhp
bzk4QGdtYWlsLmNvbT46Cj4gSGVsbG8sCj4KPiBUaGUgcGF0Y2ggd29ya3MgZmluZSBmb3IgbWUu
IFRoYW5rcyBmb3IgeW91ciByZXZpZXcvaGVscC4KPgo+IEJlc3QgUmVnYXJkcywKPiBSYXBoYcOr
bCBQb2dnaQo+Cj4gMjAxNC0wOC0wNSA4OjU1IEdNVCswMjowMCBCbyBTaGVuIDx2b2ljZS5zaGVu
QGF0bWVsLmNvbT46Cj4+IEhpIFJhcGhhw6tsIFBvZ2dpLAo+Pgo+Pgo+PiBPbiAwOC8wNC8yMDE0
IDA1OjI5IFBNLCBCbyBTaGVuIHdyb3RlOgo+Pj4KPj4+IEhpIFJhcGhhw6tsIFBvZ2dpLAo+Pj4K
Pj4+IE9uIDA4LzA0LzIwMTQgMDU6MjIgUE0sIFJhcGhhw6tsIFBvZ2dpIHdyb3RlOgo+Pj4+Cj4+
Pj4gSGksCj4+Pj4KPj4+PiBJIGhhdmUgdGVzdGVkIGl0IG9uIGEgY3VzdG9tIGJvYXJkIHdoaWNo
IHVzZSBhIHNhbTltMTAgYW5kIGl0Cj4+Pj4gd29ya2VkLi4uIFRlbGwgbWUgbW9yZSB3aGVuIHdl
IGhhdmUgZm91bmQgc29tZXRoaW5nIHN1c3BpY2lvdXMuCj4+Pgo+Pj4KPj4+IEkgdGVzdGVkIG9u
IHNhbWE1ZDN4ZWsgd2l0aCBxdDEwNzAgY29ubmVjdCB0byBpMmMsIGFuZCB0aGUgaTJjIGhvc3QK
Pj4+IHJlZ2lzdGVyIHN1Y2Nlc3NmdWxseSwgaG93ZXZlciBjYW4gbm90IGFjY2VzcyBxdDEwNzAs
IGlmIEkgdXNlIGkyYy1ncGlvCj4+PiBkcml2ZXIsIGl0IHdvcmtzIHdlbGwuCj4+Pgo+Pj4gSSBh
bSBzdGlsbCB3b3JraW5nIG9uIGl0LCBpZiBhbnkgbmV3cywgSSB3aWxsIGxldCB5b3Uga25vdy4K
Pj4KPj4KPj4gSSBoYXZlIHJlLXdyaXRlIHRoZSBpbnRlcnJ1cHQgZnVuY3Rpb24gYXMgdGhlIGVu
Y2xvc2VkIHBhdGNoLiBUaGVuLCB0aGUgaTJjCj4+IGhvc3QgZHJpdmVyIHdvcmtzIHByb3Blcmx5
Lgo+Pgo+PiBDYW4geW91IGhlbHAgdGVzdCBpdCBhbHNvIG9uIHlvdXIgYm9hcmQ/Cj4+Cj4+IFRo
YW5rcy4KPj4KPj4KPj4+IEJlc3QgUmVnYXJkcywKPj4+IEJvIFNoZW4KPj4+Cj4+Pj4gVGhhbmtz
IGZvciB5b3VyIHRlc3QuCj4+Pj4KPj4+PiBSYXBoYcOrbCBQb2dnaQo+Pj4+Cj4+Cj4+IEJlc3Qg
UmVnYXJkcywKPj4gQm8gU2hlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
