Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG4Zl-0003Xp-Mq
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 09:35:59 +0000
Message-ID: <1363253743.29331.49.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 14 Mar 2013 10:35:43 +0100
In-Reply-To: <20130314073040.GB1906@pengutronix.de>
References: <1363097053-25784-1-git-send-email-t.gamez@phytec.de>
 <20130314073040.GB1906@pengutronix.de>
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
Subject: Re: [RFC PATCH 1/2] AM33XX: Move muxing defines to header file
To: Sascha Hauer <s.hauer@pengutronix.de>, Teresa =?ISO-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

T24gVGh1LCAyMDEzLTAzLTE0IGF0IDA4OjMwICswMTAwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4g
SGkgVGVyZXNhLAo+IAo+IE9uIFR1ZSwgTWFyIDEyLCAyMDEzIGF0IDAzOjA0OjEyUE0gKzAxMDAs
IFRlcmVzYSBHw6FtZXogd3JvdGU6Cj4gPiBUaGUgbXV4aW5nIGluIHRoZSBhbTMzeHhfbXV4LmMg
ZmlsZSBpcyBub3QgZ2VuZXJpYyBhcyB0aGUgbXV4aW5nCj4gPiBzZXR1cCBkb2VzIG5vdCBmaXQg
Zm9yIGV2ZXJ5IGJvYXJkLiBNb3ZlIHRoZSBzdHJ1Y3RzIGFuZCBmdW5jdGlvbnMKPiA+IHRvIHRo
ZSBtYWNoL2FtMzN4eC1tdXguaCBzbyBib2FyZCBkZXBlbmRlbmQgbXV4IHNldHVwcyBjYW4gYmUK
PiA+IGNyZWF0ZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2Ft
ZXpAcGh5dGVjLmRlPgo+IAo+IExvb2tzIGdvb2QgdG8gbWUuIEphbiBpcyBtb3JlIGZhbWlsaWFy
IHdpdGggdGhlIGFtMzN4eC4gSmFuLAo+IGNvdWxkIHlvdSBoYXZlIGEgbG9vayBvbiBpdD8KCkkg
aGF2ZW4ndCB0ZXN0ZWQgaXQsIGJ1dCB0aGUgYXBwcm9hY2ggc2VlbXMgZ29vZC4gV2hlbiBhZGRp
bmcgYSBuZXcKYm9hcmQsIEkgd291bGQgcHJvYmFibHkgaGF2ZSBkb25lIHRoZSBzYW1lLgoKVGhl
IGN1cnJlbnQgUGluTXV4IGlzIHN0aWxsIGEgYml0IEJlYWdsZUJvbmUtc3BlY2lmaWMsIGJ1dCB0
aGF0IHNob3VsZApiZSBmaXhlZCBpbiBhIHNlcGFyYXRlIHBhdGNoLiAoT3IgaW5zdGVhZCB3cml0
ZSBhIHBpbmN0cmwtc2luZ2xlIGRyaXZlcgphbmQgY29uZmlndXJlIFBpbk11eCB2aWEgRFQpLgoK
UmVnYXJkcywKSmFuCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0
aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWlu
ZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEt
MjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAg
fCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
