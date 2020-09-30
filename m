Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXBI-0008PV-FH
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:09:45 +0000
Message-ID: <5ad7abf6ca49d58b928acceb49bac2225a0629f4.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
Date: Wed, 30 Sep 2020 10:09:41 +0200
In-Reply-To: <20200930073946.GG11648@pengutronix.de>
References: <af59b1cfcfbb69990ddc84d9d454f44e@protonic.nl>
 <20200930073946.GG11648@pengutronix.de>
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
Subject: Re: Using bootspec with RAUC and redundant partitions
To: robin <robin@protonic.nl>
Cc: barebox@lists.infradead.org, david@protonic.nl

SGkgUm9iaW4sCgpBbSBNaXR0d29jaCwgZGVuIDMwLjA5LjIwMjAsIDA5OjM5ICswMjAwIHNjaHJp
ZWIgU2FzY2hhIEhhdWVyOgo+ID4gSXMgdGhlcmUgYSBkb29yIG51bWJlciAzIG9yIGFtIEkgbWlz
c2luZyBzb21ldGhpbmcgaGVyZT8KPiAKPiBXaGF0J3MgdGhlIHJlYXNvbiBmb3IgYWRkaXRpb25h
bCBrZXJuZWwgcGFydGl0aW9ucz8gVGhpbmdzIHdvdWxkIGJlCj4gZWFzaWVyIGlmIHlvdSBwdXQg
dGhlIGtlcm5lbCBpbWFnZXMgaW50byB0aGUgcm9vdGZzIHBhcnRpdGlvbnMgYWxvbmcKPiB3aXRo
IHRoZSBib290c3BlYyBlbnRyaWVzLgoKdGhlIHJvYWQgdG8gc3VjY2VzcyBoZXJlIGlzIHRvIG5v
dCBlbmNvZGUgYW55IHNsb3QtL3BhcnRpdGlvbi1zcGVjaWZpYwppbmZvcm1hdGlvbiBpbiB0aGUg
Ym9vdHNwZWMgZW50cmllcy4KCldoeSB0aGlzIHdvdWxkIHdvcmsgYW55d2F5IGlzIGJlY2F1c2Ug
YmFyZWJveCBleHRlbmRzIHRoZSBrZXJuZWwKY29tbWFuZGxpbmUgd2l0aCB0aGUgcm9vdD0gZW50
cmllcyByZXF1aXJlZCB0byBib290IHRoZSBrZXJuZWwgZnJvbQp0aGF0IHNwZWNpZmljIHBhcnRp
dGlvbiB3aGVyZSBpdCBkaWQgcmVhZCB0aGUgZW50cnkgZnJvbS4KClRoaXMgd2F5IGl0IHNob3Vs
ZCB3b3JrIGhhdmluZyBhbiBBK0Igc2V0dXAgd2l0aCBvbmx5IHR3byByb290ZnMKcGFydGl0aW9u
cyB0aGF0IGluY2x1ZGUgdGhlIGtlcm5lbCwgdGhlIChnZW5lcmljKSBib290c3BlYyBlbnRyeSBh
bmQKdGhlIHJvb3RmcyBpdHNlbGYgKGFzIFNhc2NoYSBhbHJlYWR5IHBvaW50ZWQgb3V0KS4KCkJl
c3QgcmVnYXJkcywgRW5yaWNvCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgRW5yaWNvIErDtnJucyAgICAgICAgICAgICAgICB8CkVtYmVkZGVkIExpbnV4
IENvbnN1bHRpbmcgJiBTdXBwb3J0ICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRl
LyB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IFBob25lOiAr
NDktNTEyMS0yMDY5MTctMTgwICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAg
ICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctOSAgICB8CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
