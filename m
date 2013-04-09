Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPTX3-0002iO-OA
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 08:03:59 +0000
Date: Tue, 9 Apr 2013 10:03:45 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130409100345.327f1f7c@e6520eb>
In-Reply-To: <1365494511.379687833@f154.mail.ru>
References: <1365324537-23090-1-git-send-email-shc_work@mail.ru>
 <1365490336.8263645@f289.mail.ru>
 <20130409073148.GE1906@pengutronix.de>
 <1365494511.379687833@f154.mail.ru>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: Update MX51 iomux definitions
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

SGkgQWxleGFuZGVyLAoKTGUgVHVlLCAwOSBBcHIgMjAxMyAxMjowMTo1MSArMDQwMCwKQWxleGFu
ZGVyIFNoaXlhbiA8c2hjX3dvcmtAbWFpbC5ydT4gYSDDqWNyaXQgOgoKPiA+ID4gPiBPbiBTdW4s
IEFwciAwNywgMjAxMyBhdCAxMjo0ODo1N1BNICswNDAwLCBBbGV4YW5kZXIgU2hpeWFuIHdyb3Rl
Ogo+ID4gPiA+ID4gVGhlIHBhdGNoIHVwZGF0ZXMgTVg1MSBpb211eCBkZWZpbml0aW9ucyBmcm9t
IGtlcm5lbC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFNo
aXlhbiA8c2hjX3dvcmtAbWFpbC5ydT4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHBhdGNoIGVmZmVj
dGl2ZWx5IHJldmVydHM6Cj4gPiA+ID4gCj4gPiA+ID4gY29tbWl0IDI5OGQxNTU3MWRhOGQxY2I3
MWU3ZmQ4N2NjNTNjYWQzYjJiZjFkMTIKPiA+ID4gPiBBdXRob3I6IEVyaWMgQsOpbmFyZCA8ZXJp
Y0BldWtyZWEuY29tPgo+ID4gPiA+IERhdGU6ICAgVGh1IFNlcCA2IDIxOjM5OjMwIDIwMTIgKzAy
MDAKPiA+ID4gPiAKPiA+ID4gPiAgICAgaS5NWDUxOiB1bmJyZWFrIEZFQyBpb211eAo+ID4gPiA+
ICAgICAKPiA+ID4gPiAgICAgaW4gY29tbWl0IDJiZGM5ZjU3YTg2ZGZmNDFjZmMxZjg3YjY0NGEy
ZTUzZmRjY2UyYjYgdGhlIGlvbXV4IHdhcyBzeW5jZWQKPiA+ID4gPiAgICAgd2l0aCB0aGUga2Vy
bmVsIGJ1dCB0aGlzIGxlYWRzIHRvIHNvbWUgY2hhbmdlcyBpbiB0aGUgUEFEX0NUUkwgb2Ygc29t
ZQo+ID4gPiA+ICAgICBGRUMgcGlucyBsZWFkaW5nIHRvIGEgbm9uIHdvcmtpbmcgRkVDIG9uIG91
ciBjcHVpbXg1MSBib2FyZC4KPiA+ID4gPiAgICAgCj4gPiA+ID4gICAgIFRoaXMgcGF0Y2ggc2V0
IGJhY2sgdGhlIFBBRF9DVFJMIG9mIHRoZSBtaXNzaW5nIHBpbnMgdG8gdGhlIGluaXRpYWwKPiA+
ID4gPiAgICAgdmFsdWUuCj4gPiA+ID4gICAgIAo+ID4gPiA+ICAgICBTaWduZWQtb2ZmLWJ5OiBF
cmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KPiA+ID4gPiAgICAgU2lnbmVkLW9mZi1ieTog
U2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4gPiA+IAo+ID4gPiA+IFlv
dSBzaG91bGRuJ3QgZG8gdGhpcy4KPiA+ID4gCj4gPiA+IFdoYXQgYWJvdXQgd3JpdGUgYSBwYXRj
aCBmb3IgdGhlIGtlcm5lbCBmb3IgdGhpcz8KPiA+IAo+ID4gQnkgdGhlIHRpbWUgSSBhcHBsaWVk
IEVyaWNzIHBhdGNoIEkgY29uc2lkZXJlZCB0aGUgZGF5cyBvZiB0aGUKPiA+IHRyYWRpdGlvbmFs
IGlvbXV4IHN1cHBvcnQgaW4gdGhlIGtlcm5lbCBjb3VudGVkLiBGcm9tIHRoYXQgZGF5IG9uCj4g
PiB3ZSBoYXZlIHRvIG1haW50YWluIG91ciBvd24gdmVyc2lvbnMgYW55d2F5Lgo+IAo+IE9LLiBN
YXliZSBhcyB0ZW1wb3Jhcnkgc29sdXRpb24gd2UgY2FuIGRlZmluZSBldWtyZWFfY3B1aW14NTEg
RkVDCj4gcGlucyB3aXRoIE5FV19QQURfQ1RSTCBtYWNybz8gSWYgc28sIEknbGwgY3JlYXRlIGEg
cGF0Y2ggZm9yIHRoaXMuCj4gVGhpcyB3aWxsIGtlZXAgaW9tdXgtbXg1MS5oIGZpbGUgc3luY2Vk
Lgo+IApGaW5lIGZvciBtZS4gRG8geW91IGhhdmUgYSBwcm9ibGVtIHdpdGggdGhlc2UgcGFkcyBz
ZXR0aW5nIHNvIHRoYXQgeW91Cm5lZWQgdG8gcmV2ZXJ0IHRoZSBjaGFuZ2UgPwoKRXJpYwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
