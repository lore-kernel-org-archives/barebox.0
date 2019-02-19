Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw32T-0005XC-9J
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 10:54:14 +0000
References: <752e3df7-2d58-84c0-2966-7226c36a1802@phytec.de>
 <20190219102829.13432-1-u.kleine-koenig@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <98063d5d-7da8-0034-bb66-223318d1f1a2@phytec.de>
Date: Tue, 19 Feb 2019 11:54:07 +0100
MIME-Version: 1.0
In-Reply-To: <20190219102829.13432-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v2] ARM: dts: imx6*phytec*: switch to new partitioning
 scheme
To: barebox@lists.infradead.org
Cc: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>

SGkgVXdlLAoKT24gMTkuMDIuMTkgMTE6MjgsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEJv
dGggTGludXggYW5kIGJhcmVib3ggc3VwcG9ydCB0aGlzIG5ldyBzY2hlbWUgYW5kIGl0J3MgdGhl
IGFjdHVhbGx5Cj4gdGhlIHJlY29tbWVuZGVkIG9uZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2Ug
S2xlaW5lLUvDtm5pZzx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gT24g
VHVlLCBGZWIgMTksIDIwMTkgYXQgMTE6MDg6NTZBTSArMDEwMCwgU3RlZmFuIFJpZWRtw7xsbGVy
IHdyb3RlOgo+PiB0aGFua3MgZm9yIHRoZSBwYXRjaC4KPj4KPj4gSW4gYXJjaC9hcm0vZHRzL2lt
eDZxZGwtcGh5dGVjLXBmbGEwMi5kdHNpIGFuZAo+PiBhcmNoL2FybS9kdHMvaW14NnFkbC1waHl0
ZWMtcGh5Y29yZS1zb20uZHRzaSBhcmUgYWRkaXRpb25hbCBncG1pIHBhcnRpdGlvbnMuCj4+IERp
ZCB5b3UgbGVhdmUgdGhlbSBvdXQgZm9yIGEgcmVhc29uLiBJIHRoaW5rIHRoZXkgY2FuIGJlIG1h
dGNoZWQgdG8gdGhlIG5ldwo+PiBzY2hlbWUgdG9vLgo+IEkgZGlkbid0IHNraXAgc29tZXRoaW5n
IG9uIHB1cnBvc2UuIEkganVzdCBkaWRuJ3Qgbm90aWNlIHRoZXJlIGFyZSB0d28KPiBwYXJ0aXRp
b25lZCBkZXZpY2VzLiBGaXhlZCBoZXJlIGluIHYyLgoKU29ycnkgdG8gYm90aGVyIHlvdSBhZ2Fp
biwgYnV0IGl0IHNlZW1zIHRoZSBncG1pIHBhcnRpdGlvbnMgb24gdGhlIAphcmNoL2FybS9kdHMv
aW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSB3ZXJlIG1pc3NlZCBhZ2Fpbi4KCkJlc3Qg
cmVnYXJkcywKU3RlZmFuCgo+IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+IAo+ICAgLi4uL2R0cy9p
bXg2ZGwtcGh5dGVjLXBoeWNvcmUtc29tLWVtbWMuZHRzICAgIHwgMjEgKysrLS0tCj4gICAuLi4v
ZHRzL2lteDZkbC1waHl0ZWMtcGh5Y29yZS1zb20tbmFuZC5kdHMgICAgfCAyMSArKystLS0KPiAg
IGFyY2gvYXJtL2R0cy9pbXg2cS1waHl0ZWMtcGNhYXhsMy5kdHNpICAgICAgICB8IDMwICsrKyst
LS0tCj4gICAuLi4vYXJtL2R0cy9pbXg2cS1waHl0ZWMtcGh5Y29yZS1zb20tZW1tYy5kdHMgfCAy
MSArKystLS0KPiAgIC4uLi9hcm0vZHRzL2lteDZxLXBoeXRlYy1waHljb3JlLXNvbS1uYW5kLmR0
cyB8IDI1ICsrKystLS0KPiAgIGFyY2gvYXJtL2R0cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRz
aSAgICAgICB8IDc0ICsrKysrKysrKystLS0tLS0tLS0KPiAgIGFyY2gvYXJtL2R0cy9pbXg2cWRs
LXBoeXRlYy1waHljb3JlLXNvbS5kdHNpICB8IDQ1ICsrKysrLS0tLS0tCj4gICAuLi4vZHRzL2lt
eDZxcC1waHl0ZWMtcGh5Y29yZS1zb20tbmFuZC5kdHMgICAgfCAyMSArKystLS0KPiAgIGFyY2gv
YXJtL2R0cy9pbXg2dWwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kgICB8IDI5ICsrKystLS0tCj4g
ICA5IGZpbGVzIGNoYW5nZWQsIDE1OSBpbnNlcnRpb25zKCspLCAxMjggZGVsZXRpb25zKC0pCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
