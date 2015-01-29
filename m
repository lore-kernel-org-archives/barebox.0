Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGpex-0000Qo-Jc
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 14:01:31 +0000
Date: Thu, 29 Jan 2015 15:01:03 +0100 (CET)
From: robert.jarzmik@free.fr
Message-ID: <201838670.425159504.1422540063764.JavaMail.root@zimbra1-e1.priv.proxad.net>
In-Reply-To: <20150129094720.GG12209@pengutronix.de>
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
Subject: Re: [PATCH 1/3] net: smc1111: allow platform specific accessors
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

LS0tLS0gTWFpbCBvcmlnaW5hbCAtLS0tLQpEZTogIlNhc2NoYSBIYXVlciIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+CsOAOiAiUm9iZXJ0IEphcnptaWsiIDxyb2JlcnQuamFyem1pa0BmcmVlLmZy
PgpDYzogYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCkVudm95w6k6IEpldWRpIDI5IEphbnZp
ZXIgMjAxNSAxMDo0NzoyMApPYmpldDogUmU6IFtQQVRDSCAxLzNdIG5ldDogc21jMTExMTogYWxs
b3cgcGxhdGZvcm0gc3BlY2lmaWMgYWNjZXNzb3JzCgo+IFllYWggSSBrbm93LCBjb25uZWN0aW5n
IHRoZSA5MWMxMTEgaW5zcGlyZWQgdGhlIGJvYXJkIGRlc2lnbmVycyB0byBtYW55Cj4gZnVubnkg
dGhpbmdzLiBQYXNzaW5nIGZ1bmN0aW9uIHBvaW50ZXJzIGluIHBsYXRmb3JtX2RhdGEgaXMgbm90
IHZlcnkKPiBmdXR1cmUgcHJvb2Ygc2luY2UgdGhpcyBkb2Vzbid0IHdvcmsgd2l0aCBkZXZpY2Ug
dHJlZS4gSSBzZWUgdGhhdCB0aGUKPiBMaW51eCBkcml2ZXIgaGFzIGRldmljZSB0cmVlIHN1cHBv
cnQuIERvZXMgdGhpcyBiaW5kaW5nIHdvcmsgZm9yIHlvdT8KCldlbGwsIGl0IGNhbid0LCBiZWNh
dXNlIGx1YmJvY2sgZG9lc24ndCBzdXBwb3J0IGRldmljZS10cmVlIHlldCwgaXQncyBvbgpteSB0
b2RvIGxpc3QgZm9yIHRoZSBrZXJuZWwgKGFuZCBiYXJlYm94IG9mIGNvdXJzZSkuIFRoYXQgbWVh
bnMgdGhlcmUgaXMKbm8gd2F5IHRvIGV2ZW4gYnVpbGQgYSBkZXZpY2UtdHJlZSBlbmFibGVkIGtl
cm5lbCBmb3IgbHViYm9jayAuLi4geWV0LgoKTm93IHRoZSBiaW5kaW5nIHdvdWxkIHdvcmsgd2l0
aCA6CiAtIHRoZSBhZGRyZXNzIHNoaWZ0IGJlaW5nIGRlY2xhcmVkIChhcyBpbiBrZXJuZWwgZHJp
dmVyKQogLSBhIHNldCBvZiAxNiBiaXQgYWNjZXNzb3JzIGJlaW5nIGRlY2xhcmVkIGluIGJhcmVi
b3gncyBzbWNzOTExMS5jCiAgIGRyaXZlciAoYW5kIG5vdCBpbiBwbGF0Zm9ybSBzcGVjaWZpYyBh
Y2Nlc3NvcnMpCgpXb3VsZCB5b3UgcmF0aGVyIGhhdmUgbWUgY2hhbmdlIHRoZSBhcHByb2FjaCB3
aXRoIGEgbmV3IHNldCBvZiBhY2Nlc3NvcgppbiBzbWNzOTExMS5jLCBhbmQgdGhlIHNoaWZ0IGFz
IGEgcGFyYW1ldGVyIChib3RoIHBsYXRmb3JtX2RhdGEgYW5kIGRldmljZS0KdHJlZSkgPwoKQ2hl
ZXJzLgoKLS0KUm9iZXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
