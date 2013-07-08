Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwCde-0001sE-AH
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 14:42:02 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1UwCdI-0000dl-VE
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 16:41:40 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1UwCda-0002Sf-FZ
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 16:41:58 +0200
Message-ID: <1373294518.4284.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 08 Jul 2013 16:41:58 +0200
In-Reply-To: <1373289430-6965-9-git-send-email-t.gamez@phytec.de>
References: <1373289430-6965-1-git-send-email-t.gamez@phytec.de>
 <1373289430-6965-9-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 09/12] ARM: AM33xx: Make mpu pll configurable by
 lowlevel board code
To: barebox@lists.infradead.org

T24gTW9uLCAyMDEzLTA3LTA4IGF0IDE1OjE3ICswMjAwLCBUZXJlc2EgR8OhbWV6IHdyb3RlOgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9tYXAvYW0zM3h4X2Nsb2NrLmMgYi9hcmNoL2Fy
bS9tYWNoLW9tYXAvYW0zM3h4X2Nsb2NrLmMKPiBpbmRleCBlNGQ5ZDc3Li45OTI4ZTlmIDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtb21hcC9hbTMzeHhfY2xvY2suYwo+ICsrKyBiL2FyY2gv
YXJtL21hY2gtb21hcC9hbTMzeHhfY2xvY2suYwo+IEBAIC0yOTQsOSArMjk0LDkgQEAgdm9pZCBl
bmFibGVfZGRyX2Nsb2Nrcyh2b2lkKQo+ICAvKgo+ICAgKiBDb25maWd1cmUgdGhlIFBMTC9QUkNN
IGZvciBuZWNlc3NhcnkgcGVyaXBoZXJhbHMKPiAgICovCj4gLXZvaWQgcGxsX2luaXQoKQo+ICt2
b2lkIHBsbF9pbml0KGludCBtcHVwbGxfTSkKPiAgewo+IC0JbXB1X3BsbF9jb25maWcoTVBVUExM
X01fNTAwKTsKPiArCW1wdV9wbGxfY29uZmlnKG1wdXBsbF9NKTsKPiAgCWNvcmVfcGxsX2NvbmZp
ZygpOwo+ICAJcGVyX3BsbF9jb25maWcoKTsKPiAgCWRkcl9wbGxfY29uZmlnKCk7CgpUaGFua3Ms
IGdvb2QgaWRlYS4gOikKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNv
bHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQ
ZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUx
MjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAg
ICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
