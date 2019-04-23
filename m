Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIzQW-000621-08
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 17:41:53 +0000
Date: Tue, 23 Apr 2019 19:41:49 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190423174149.GB8801@ravnborg.org>
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
 <20190423171852.26126-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423171852.26126-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/5] ARM: imx: work around i.MX6UL ERR008958 (ARM errata
 814220)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, ore@pengutronix.de, rcz@pengutronix.de

SGkgQWhtYWQuCgpPbiBUdWUsIEFwciAyMywgMjAxOSBhdCAwNzoxODo0OVBNICswMjAwLCBBaG1h
ZCBGYXRvdW0gd3JvdGU6Cj4gVGhlIENvcnRleC1BNyBpbiBib3RoIHRoZSBpLk1YNlVMWzFdIGFu
ZCBpLk1YNlVMTFsyXSBpcyBhZmZlY3RlZCBieSB0aGUKPiBlcnJhdGEgRVJSMDA4OTU4ICJBcm0v
TVA6IDgxNDIyMOKAlEItQ2FjaGUgbWFpbnRlbmFuY2UgYnkgc2V0L3dheSBvcGVyYXRpb25zCj4g
Y2FuIGV4ZWN1dGUgb3V0IG9mIG9yZGVyIi4KPiAKPiBzZWxlY3QgQVJNX0VSUkFUQV84MTQyMjAg
dG8gYWRkcmVzcyB0aGlzLgo+IAo+IFsxXTogaHR0cHM6Ly93d3cubnhwLmNvbS9kb2NzL2VuL2Vy
cmF0YS9JTVg2VUxDRS5wZGYKPiBbMl06IGh0dHBzOi8vd3d3Lm54cC5jb20vZG9jcy9lbi9lcnJh
dGEvSU1YNlVMTENFLnBkZgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFobWFkIEZhdG91bSA8YS5mYXRv
dW1AcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL21hY2gtaW14L0tjb25maWcgfCAx
ICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL21hY2gtaW14L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnCj4gaW5k
ZXggZDQ3ZGQzNTQ3NzEyLi5iMTVlNmRmZGZkOWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFj
aC1pbXgvS2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcKPiBAQCAtMTY0
LDYgKzE2NCw3IEBAIGNvbmZpZyBBUkNIX0lNWDZTWAo+ICBjb25maWcgQVJDSF9JTVg2VUwKPiAg
CWJvb2wKPiAgCXNlbGVjdCBBUkNIX0lNWDYKPiArCXNlbGVjdCBBUk1fRVJSQVRBXzgxNDIyMAoK
U2VsZWN0aW5nIGEgdmlzaWJsZSBvcHRpb24gaXMgY29uc2lkZXJlZCBiYWQgcHJhY3RpY2UuCklm
IEFSTV9FUlJBVEFfODE0MjIwIHdhcyBkZWZpbmVkIHdpdGhvdXQgYSBwcm9tcHQgaXQgd291bGQg
aGF2ZSBiZWVuCmZpbmUuCgoJU2FtCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
