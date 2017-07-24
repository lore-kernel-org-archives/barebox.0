Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZZnw-0001lW-8r
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 09:37:34 +0000
Date: Mon, 24 Jul 2017 11:37:07 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20170724093707.nu7wlklphp6hidzb@pengutronix.de>
References: <20170724091559.7777-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724091559.7777-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX7: provide DDR register definitions
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

T24gTW9uLCBKdWwgMjQsIDIwMTcgYXQgMTE6MTU6NThBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gVGhpcyB3YXMgY3JlYXRlZCB1c2luZyBjdXQnbidwYXN0ZSBmcm9tIHRoZSBp
Lk1YN0QgcmVmZXJlbmNlIG1hbnVhbAo+IChyZXYgMC4xLCAwOC8yMDE2KS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRl
Pgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14Ny1kZHItcmVncy5o
IHwgMTc0ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE3NCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLWlteC9pbmNs
dWRlL21hY2gvaW14Ny1kZHItcmVncy5oCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
aW14L2luY2x1ZGUvbWFjaC9pbXg3LWRkci1yZWdzLmggYi9hcmNoL2FybS9tYWNoLWlteC9pbmNs
dWRlL21hY2gvaW14Ny1kZHItcmVncy5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwMDAwMDAuLmU2NmIyZGExMWVkZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2Fy
bS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14Ny1kZHItcmVncy5oCj4gQEAgLTAsMCArMSwxNzQg
QEAKPiArLyoKPiArICogQ29weXJpZ2h0IChDKSAyMDE3IFBlbmd1dHJvbml4LCBGcmlkb2xpbiBU
dXggPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KClN1cmU/Cgpyc2MKLS0gClBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93
d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
