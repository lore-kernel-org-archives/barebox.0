Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4SkR-0005lZ-8X
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 18:07:29 +0000
Received: by mail-oi1-x22d.google.com with SMTP id p5so19409785oif.7
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2021 10:07:26 -0800 (PST)
MIME-Version: 1.0
References: <CAEuS4-0HDxrsvQ_2ONfXiLdVn8=xaxR=erz5vtH=km44+HpLTA@mail.gmail.com>
 <8fd72cdd-9d34-f6e3-6e80-46b00d11cb5d@pengutronix.de>
In-Reply-To: <8fd72cdd-9d34-f6e3-6e80-46b00d11cb5d@pengutronix.de>
From: "DEMIRDJIAN, Antoine" <antoine.demirdjian@airliquide.com>
Date: Tue, 26 Jan 2021 19:06:48 +0100
Message-ID: <CAEuS4-0yFUOwkfkMbuwc=VSdEux94y8CVv6V7Gv-tzOt6hX3bA@mail.gmail.com>
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
Subject: Re: MAC address set in OCOTP but not visible from ETH0 - i.MX6
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

SGksCgpMZSBtYXIuIDI2IGphbnYuIDIwMjEgw6AgMTg6MjUsIEFobWFkIEZhdG91bSA8YS5mYXRv
dW1AcGVuZ3V0cm9uaXguZGU+IGEgw6ljcml0IDoKPgo+IEhpLAo+Cj4gT24gMjYuMDEuMjEgMTg6
MDYsIERFTUlSREpJQU4sIEFudG9pbmUgd3JvdGU6Cj4gPiBEZWFyIGFsbCwKPiA+Cj4gPiBJJ20g
d29ya2luZyBvbiBhIGN1c3RvbSBib2FyZCBiYXNlZCBvbiBhbiBpLk1YNiBEdWFsIExpdGUuCj4g
PiBJJ3ZlIHNldCBhIE1BQyBhZGRyZXNzIG9uIE9DT1RQLCBhbmQgSSBjYW4gc2VlIGl0IDoKPiA+
Cj4gPiBiYXJlYm94QE1haW4gQm9hcmQ6LyBkZXZpbmZvIG9jb3RwMAo+ID4gUGFyYW1ldGVyczoK
PiA+ICAgbWFjX2FkZHI6IDcwOjgyOjBlOjEyOjczOjZmICh0eXBlOiBNQUMpCj4gPiAgIG1hY19h
ZGRyMDogNzA6ODI6MGU6MTI6NzM6NmYgKHR5cGU6IE1BQykKPiA+ICAgcGVybWFuZW50X3dyaXRl
X2VuYWJsZTogMCAodHlwZTogYm9vbCkKPiA+ICAgc2Vuc2VfZW5hYmxlOiAwICh0eXBlOiBib29s
KQo+ID4KPiA+IFRoZSBpc3N1ZSBpcyB0aGF0IEkgY2FuJ3QgZ2V0IGl0IGZyb20gZXRoMCA6Cj4g
Pgo+ID4gYmFyZWJveEBDaHJ5c2FsaXMgTWFpbiBCb2FyZDovIGRldmluZm8gZXRoMAo+ID4gUGFy
YW1ldGVyczoKPiA+ICAgZXRoYWRkcjogMDA6MDA6MDA6MDA6MDA6MDAgKHR5cGU6IE1BQykKPiA+
ICAgZ2F0ZXdheTogMTkyLjEuMS4xMDAgKHR5cGU6IGlwdjQpCj4gPiAgIGlwYWRkcjogMC4wLjAu
MCAodHlwZTogaXB2NCkKPiA+ICAgbGludXguYm9vdGFyZ3M6IGlwPTAuMC4wLjA6MTkyLjEuMS40
NjoxOTIuMS4xLjEwMDoyNTUuMjU1LjI1NS4wOjo6Cj4gPiAodHlwZTogc3RyaW5nKQo+ID4gICBs
aW51eC5kZXZuYW1lOiAgKHR5cGU6IHN0cmluZykKPiA+ICAgbW9kZTogc3RhdGljICh0eXBlOiBl
bnVtKSAodmFsdWVzOiAiZGhjcCIsICJzdGF0aWMiLCAiZGlzYWJsZWQiKQo+ID4gICBuZXRtYXNr
OiAyNTUuMjU1LjI1NS4wICh0eXBlOiBpcHY0KQo+ID4gICBzZXJ2ZXJpcDogMTkyLjEuMS40NiAo
dHlwZTogc3RyaW5nKQo+ID4KPiA+IE15IG9wZXJhdGluZyBzeXN0ZW0ncyBkcml2ZXIgZG9lcyBu
b3Qgc2VlIGl0IG5laXRoZXIgLi4uCj4gPgo+ID4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KPgo+
IFllczogaHR0cHM6Ly9iYXJlYm94Lm9yZy9kb2MvbGF0ZXN0L2RldmljZXRyZWUvYmluZGluZ3Mv
bWlzYy9mc2wsaW14LW9jb3RwLmh0bWwKPgo+IENoZWNrIHRoZSBvdGhlciBpLk1YIGJvYXJkIGlu
IGFyY2gvYXJtL2R0cyBmb3IgYW4gZXhhbXBsZS4KCk1hbnkgdGhhbmtzICEKClNvcnJ5IGZvciB0
aGUgbm9pc2UuLi4KCkJlc3QgcmVnYXJkcywKQW50b2luZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
