Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pm7bg-0001NW-Ey
	for barebox@lists.infradead.org; Sun, 06 Feb 2011 16:37:02 +0000
Received: by vws5 with SMTP id 5so2430902vws.36
	for <barebox@lists.infradead.org>; Sun, 06 Feb 2011 08:36:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20110206143440.GA26377@tarshish>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
	<20110206143440.GA26377@tarshish>
Date: Sun, 6 Feb 2011 17:36:57 +0100
Message-ID: <AANLkTimsb2yaVC6Jun75xLZvkkNVAoKjovdVe3bGna7n@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Manipulating boot environment from user-space
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

T24gU3VuLCBGZWIgNiwgMjAxMSBhdCAzOjM0IFBNLCBCYXJ1Y2ggU2lhY2ggPGJhcnVjaEB0a29z
LmNvLmlsPiB3cm90ZToKPiBIaSBCb2F6LAo+Cj4gT24gU3VuLCBGZWIgMDYsIDIwMTEgYXQgMDQ6
MDY6NTZQTSArMDIwMCwgQm9heiBCZW4tRGF2aWQgd3JvdGU6Cj4+IElzIHRoZXJlIGEgd2F5IHRv
IGNoYW5nZSB2YWx1ZXMgaW4gdGhlIGVudmlyb25tZW50IHVzZWQgYnkgYmFyZWJveAo+PiBhZnRl
ciBib290aW5nPyBlLmcuIGFscmVhZHkgaW4gdGhlIGxpbnV4IHVzZXIgc3BhY2Ugb2YgZGV2aWNl
IGJvb3RlZD8KPgo+IFVzZSB0aGUgYmFyZWJveGVudiB1dGlsaXR5LiBTZWUgc2NyaXB0cy9iYXJl
Ym94ZW52LmMuClNob3VsZG4ndCBtYWtlIHNlbnNlIGFkZCB0aGlzIHV0aWxpdHkgdG8gYnVzeWJv
eD8+Cj4gYmFydWNoCj4KPiAtLQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIH4uIC5+IMKgIFRrIE9w
ZW4gU3lzdGVtcwo+ID19LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tb29PLS1VLS1Pb28tLS0tLS0tLS0tLS17PQo+IMKgIC0gYmFydWNoQHRrb3MuY28uaWwg
LSB0ZWw6ICs5NzIuMi42NzkuNTM2NCwgaHR0cDovL3d3dy50a29zLmNvLmlsIC0KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWls
aW5nIGxpc3QKPiBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPgoKdGhhbmtzLAoKbWFyZWsKCi0t
IAphcyBzaW1wbGUgYW5kIHByaW1pdGl2ZSBhcyBwb3NzaWJsZQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCk1hcmVrIEJlbGlza28gLSBPUEVOLU5BTkRS
QQpGcmVlbGFuY2UgRGV2ZWxvcGVyCgpSdXNrYSBOb3ZhIFZlcyAyMTkgfCBQcmVzb3YsIDA4MDA1
IFNsb3ZhayBSZXB1YmxpYwpUZWw6ICs0MjEgOTE1IDA1MiAxODQKc2t5cGU6IG1hcmVrd2hpdGUK
aWNxOiAyOTA1NTEwODYKd2ViOiBodHRwOi8vb3Blbi1uYW5kcmEuY29tCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
