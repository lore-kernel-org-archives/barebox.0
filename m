Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2AWm-00075K-6L
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 07:34:34 +0000
Date: Tue, 18 Sep 2018 09:34:17 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180918073417.m3vjicjy6tfluyar@pengutronix.de>
References: <20180917072942.12445-1-s.hauer@think-future.de>
 <2037065.bgjZ3rdPRg@think-future.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2037065.bgjZ3rdPRg@think-future.de>
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
Subject: Re: [PATCH] ARM: Multi PBL: Fix image calculation for certain
 toolchains
To: perachet7@gmail.com
Cc: barebox@lists.infradead.org

T24gTW9uLCBTZXAgMTcsIDIwMTggYXQgMDU6MzA6NTZQTSArMDIwMCwgcGVyYWNoZXQ3QGdtYWls
LmNvbSB3cm90ZToKPiBIZWxsbyBTYXNjaGEsCj4gCj4gVGhhbmsgeW91IGZvciB0aGlzIHBhdGNo
LiBIYXBweSB0byB0ZXN0IGl0IGhlcmUgb24gcmszMTg4IChyYWR4YSByb2NrIHBybykuCj4gCj4g
VXNpbmcgYmIgdjIwMTguMDkuMC4gQXBwbGllZCB5b3VyIHBhdGNoZXMgYmVsb3cuIENPTkZJR19Q
QkxfUkVMT0NBVEFCTEUgaXMgCj4gZml4ZWQgaW4gbWVudWNvbmZpZy4gQ29tbW9uIGNvbmZpZzoK
PiAKPiBncmVwIFJFTE9DQVQgLmNvbmZpZwo+IENPTkZJR19QQkxfUkVMT0NBVEFCTEU9eQo+IENP
TkZJR19SRUxPQ0FUQUJMRT15Cj4gCj4gQnVpbHQgdXNpbmcgdGhpcyBzY3JpcHQ6Cj4gCj4gZXhw
b3J0IEFSQ0g9YXJtCj4gI2V4cG9ydCBDUk9TU19DT01QSUxFPS91c3IvYmluL2FybS1saW51eC1n
bnVlYWJpaGYtCj4gZXhwb3J0IENST1NTX0NPTVBJTEU9L29wdC9PU0VMQVMuVG9vbGNoYWluLTIw
MTguMDIuMC9hcm0tdjdtLWVhYmkvZ2NjLTcuMy4xLQo+IG5ld2xpYi0yLjUuMC1iaW51dGlscy0y
LjMwL2Jpbi9hcm0tdjdtLWVhYmktCgpOb3Qgc3VyZSBpZiB0aGlzIGlzIGludGVudGlvbmFsIOKA
kyB5b3UgYXJlIHVzaW5nIHRocmUgQVJNdjctTSB0b29sY2hhaW4KaGVyZSBidXQgYXMgZmFyIGFz
IEkgdW5kZXJzdGFuZCwgeW91ciBjb3VsZCB1c2UgdGhlIEFSTXY3LUEgdmFyaWFudAooYXJtLXY3
YS1saW51eC1nbnVlYWJpL2hmKSBmb3IgdGhlIHJrMzE4OC4KCiAtIFJvbGFuZAoKLS0gClJvbGFu
ZCBIaWViZXIgICAgICAgICAgICAgICAgICAgICB8IHIuaGllYmVyQHBlbmd1dHJvbml4LmRlICAg
ICB8ClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSB8IFBob25lOiAr
NDktNTEyMS0yMDY5MTctNTA4NiB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICB8
IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
