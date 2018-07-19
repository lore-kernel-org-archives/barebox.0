Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x244.google.com ([2607:f8b0:4003:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fg5rs-00022P-40
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 10:09:08 +0000
Received: by mail-oi0-x244.google.com with SMTP id i12-v6so14502235oik.2
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 03:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
 <16d74981-28c9-d637-c7de-f1902529ab30@rempel-privat.de>
 <35db1bb9-cb13-26b3-09b7-30f583585155@pengutronix.de>
 <1531925793.3511.128.camel@pengutronix.de>
 <CAEp+FuAsDL9msTeiC=2+bbKHkrEObdKKdctN_G3RdVX8uP=ZsQ@mail.gmail.com>
 <c1c3be93-c29e-7e65-c09b-86edbd0adb1e@rempel-privat.de>
 <CAEp+FuA2+n-zFRxsxUkiroDcosO78jPt4dp69t-Z=t+pt26_6A@mail.gmail.com>
 <0520cae6-02f5-349f-50ad-947079618d33@pengutronix.de>
 <1531993986.3511.144.camel@pengutronix.de>
In-Reply-To: <1531993986.3511.144.camel@pengutronix.de>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Thu, 19 Jul 2018 12:08:41 +0200
Message-ID: <CAEp+FuBpbv=xVAijE+jOB2fQjofVgHoVC-zksvNe9sKCNqNBfA@mail.gmail.com>
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
Subject: Re: MFGtools support in barebox
To: jlu@pengutronix.de
Cc: o.rempel@pengutronix.de, barebox@lists.infradead.org, bst@pengutronix.de, linux@rempel-privat.de

SGksCgogICAgIFllcywgdGhhbmtzIGZvciB5b3VyIGFuc3dlci4gVGhhdCBpcyB0cnVlLiBBbHNv
IEkgdGhpbmsgbXRkLXV0aWxzCmZyb20gd2l0aGluZyBMaW51eCB3aWxsIG5vdCB3b3JrIGFsc28g
dG8gdXBkYXRlIGJhcmVib3ggbXRkIHBhcnRpdGlvbj8KICAgICBJIGhhdmUgdHJpZWQgdXNpbmcg
a29icy1uZyBpbml0IGNvbW1hbmQgZnJvbSB3aXRoIExpbnV4KGFzIGFuCmFsdGVybmF0aXZlIHRv
IGJhcmVib3hfdXBkYXRlKSBhbmQgaXQgZGlkIHNlZW0gaXQgd3JpdGVzIGFkZGl0aW9uYWwKQkJV
IGFuZCBvdGhlciB0YWJsZXMgYnV0IHVuZm9ydHVuYXRlbHkgd291bGQgc3R1Y2sgYXQgc29tZSBw
b2ludCBhbmQKbm90IGNvbXBsZXRlIHRoZSB1cGRhdGUuCgpCZXN0IHJlZ2FyZHMsCiAgICAgICAg
IE1paGFpdGEKT24gVGh1LCBKdWwgMTksIDIwMTggYXQgMTE6NTMgQU0gSmFuIEzDvGJiZSA8amx1
QHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIFRodSwgMjAxOC0wNy0xOSBhdCAwNzowOCAr
MDIwMCwgT2xla3NpaiBSZW1wZWwgd3JvdGU6Cj4gPiA+ICAgICAgICAgICBBc2lkZSBmcm9tIHRo
aXMgaXNzdWUsIGFyZSB5b3UgYXdhcmUgb2YgYW55IG1ldGhvZCBvZgo+ID4gPiBmbGFzaGluZyB0
aGUgYmFyZWJveCAgb24gTkFORCBmcm9tIExpbnV4KGFmdGVyIHRoZSBrZXJuZWwgd2FzIGxvYWRl
ZAo+ID4gPiBzdWNjZXNzZnVsbHkgb24gdGhlIHRhcmdldCkgPwo+ID4gPiBiYXJlYm94X3VwZGF0
ZSBkb2VzIG5vdCBleGlzdCBpbiBMaW51eCBvYnZpb3VzbHkgYW5kIHBvcnRpbmcgaXQgaXMgbm90
Cj4gPiA+IHNvIHRyaXZpYWwsIG9uIHRvcCBvZiB0aGF0IEkgZG9uJ3QgdGhpbmsgSSBhbSBhYmxl
IHRvIGFjY2VzcyB0aGUgbmFuZAo+ID4gPiBkZXZpY2UgZnJvbSBMaW51eCwgYnV0IG9ubHkgTVRE
IHBhcnRpdGlvbnMgLgo+ID4gPiBJIGhhdmUgdHJpZWQgIG5hbmR3cml0ZSBhbmQga29icy1uZyBj
b21tYW5kcyBidXQgSSB3YXMgbm90IHN1Y2Nlc3NmdWwuCj4gPgo+ID4gYmFyZWJveF91cGRhdGUg
aXMgYSB3cmFwcGVyIHRvOiB0YWtlIGEgaW1hZ2UgYW5kIHdyaXRlIGl0IHRvIHByZWRlZmluZWQK
PiA+IHByb2plY3Qgb3IgYm9hcmQgc3BlY2lmaWMgbG9jYXRpb24uCj4gPiBJZiB5b3UgaGF2ZSBh
Y2Nlc3MgdG8gdGhpcyBsb2NhdGlvbiBmcm9tIGxpbnV4LCB5b3UgY2FuIGRvIGl0IGZyb20gbGlu
dXgKPiA+IGFzIHdlbGwuCj4KPiBOb3RlIHRoYXQgaS5NWDYsIGJhcmVib3hfdXBkYXRlIGFsc28g
Z2VuZXJhdGVzIGFkZGl0aW9uYWwgaGVhZGVycyBmb3IKPiB0aGUgUk9NIGxvYWRlciAoc3VjaCBh
cyBhIHNtYWxsIGJhZCBibG9jayB0YWJsZSkuIEEgcmF3IGJhcmVib3ggaW1hZ2UKPiB3aXRob3V0
IHRoZXNlIGhlYWRlcnMgY2Fubm90IGJlIGJvb3RlZCBieSB0aGUgUk9NIGZyb20gTkFORC4gVGhp
cyBpcwo+IHRoZSByZWFzb24gd2h5IHNpbXBsZSBuYW5kd3JpdGUgZG9lc24ndCB3b3JrLgo+Cj4g
UmVnYXJkcywKPiBKYW4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51
eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8g
IHwKPiBQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTog
KzQ5LTUxMjEtMjA2OTE3LTAgICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
