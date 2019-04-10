Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hE6h2-0006NJ-9m
 for barebox@lists.infradead.org; Wed, 10 Apr 2019 06:26:45 +0000
Date: Wed, 10 Apr 2019 08:26:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190410062640.wihtakf6ojom54uk@pengutronix.de>
References: <4eb7d5fd.88a6.16a01876e6b.Coremail.zzs213@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4eb7d5fd.88a6.16a01876e6b.Coremail.zzs213@126.com>
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
Subject: Re: maybe bug in common/ddr_spd.c
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: barebox@lists.infradead.org

T24gVHVlLCBBcHIgMDksIDIwMTkgYXQgMDU6NTY6NTNQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IE1heWJlIHRoaXMgaXMgYSBidWcsIEknbSBub3Qgc3VyZQo+IAo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKPiBG
cm9tIDU1NTA5ZjM1OWFiYmIxZjVjMjRlOWYwYzJiOWNmZjE2N2Y2MmFlNGQgTW9uIFNlcCAxNyAw
MDowMDowMCAyMDAxCj4gRnJvbTogPT9VVEYtOD9xPz1FNT1CQz1BMD1FNT1CRj1BMD1FNT1CMT1C
MT89IDx6enMyMTNAMTI2LmNvbT4KPiBEYXRlOiBNb24sIDggQXByIDIwMTkgMTQ6MzQ6MDAgKzA4
MDAKPiBTdWJqZWN0OiBbUEFUQ0hdIGJ1Z2ZpeDogY2hlY2sgZGRyIG1vZF9yYW5rcwo+IE1JTUUt
VmVyc2lvbjogMS4wCj4gQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04Cj4g
Q29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAo+IAo+IFNpZ25lZC1vZmYtYnk6IOW8oOW/
oOWxsSA8enpzMjEzQDEyNi5jb20+Cj4gLS0tCj4gIGNvbW1vbi9kZHJfc3BkLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9jb21tb24vZGRyX3NwZC5jIGIvY29tbW9uL2Rkcl9zcGQuYwo+IGluZGV4IGVjMzQz
ZWY1YS4uMjc3ZDQxOGU5IDEwMDY0NAo+IC0tLSBhL2NvbW1vbi9kZHJfc3BkLmMKPiArKysgYi9j
b21tb24vZGRyX3NwZC5jCj4gQEAgLTI1Myw3ICsyNTMsNyBAQCB2b2lkIGRkcl9zcGRfcHJpbnQo
dWludDhfdCAqcmVjb3JkKQo+ICAJCXByaW50ZigiRXJyb3IgbW9kdWxlIHR5cGVcbiIpOwo+ICAK
PiAgCXByaW50ZigiJS00OHMgIiwgIkRSQU0gUGFja2FnZSAiKTsKPiAtCWlmICgocy0+bW9kX3Jh
bmtzICYgMHgxMCkgPT0gMSkKPiArCWlmICgocy0+bW9kX3JhbmtzICYgMHgxMCkgIT0gMCkKCkZv
ciBzdXJlIHRoaXMgaXMgYnVnZ3kuIEFwcGxpZWQsIHRoYW5rcwoKU2FzY2hhCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxk
ZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmlj
aHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkx
Ny01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
