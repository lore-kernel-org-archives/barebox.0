Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEGPw-0003MY-3Y
 for barebox@lists.infradead.org; Wed, 10 Apr 2019 16:49:45 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994544AbfDJQtjEzg7j (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Wed, 10 Apr 2019 18:49:39 +0200
Date: Wed, 10 Apr 2019 18:49:38 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190410164937.GA2467@lenoch>
References: <4eb7d5fd.88a6.16a01876e6b.Coremail.zzs213@126.com>
 <20190410062640.wihtakf6ojom54uk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190410062640.wihtakf6ojom54uk@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>

T24gV2VkLCBBcHIgMTAsIDIwMTkgYXQgMDg6MjY6NDBBTSArMDIwMCwgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+IE9uIFR1ZSwgQXByIDA5LCAyMDE5IGF0IDA1OjU2OjUzUE0gKzA4MDAsIOW8oOW/oOWx
sSB3cm90ZToKPiA+IE1heWJlIHRoaXMgaXMgYSBidWcsIEknbSBub3Qgc3VyZQo+ID4gCj4gPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTg8LS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0gCj4gPiBGcm9tIDU1NTA5ZjM1OWFiYmIxZjVjMjRlOWYwYzJiOWNmZjE2N2Y2MmFl
NGQgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gPiBGcm9tOiA9P1VURi04P3E/PUU1PUJDPUEw
PUU1PUJGPUEwPUU1PUIxPUIxPz0gPHp6czIxM0AxMjYuY29tPgo+ID4gRGF0ZTogTW9uLCA4IEFw
ciAyMDE5IDE0OjM0OjAwICswODAwCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGJ1Z2ZpeDogY2hlY2sg
ZGRyIG1vZF9yYW5rcwo+ID4gTUlNRS1WZXJzaW9uOiAxLjAKPiA+IENvbnRlbnQtVHlwZTogdGV4
dC9wbGFpbjsgY2hhcnNldD1VVEYtOAo+ID4gQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJp
dAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiDlvKDlv6DlsbEgPHp6czIxM0AxMjYuY29tPgo+ID4g
LS0tCj4gPiAgY29tbW9uL2Rkcl9zcGQuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2NvbW1vbi9k
ZHJfc3BkLmMgYi9jb21tb24vZGRyX3NwZC5jCj4gPiBpbmRleCBlYzM0M2VmNWEuLjI3N2Q0MThl
OSAxMDA2NDQKPiA+IC0tLSBhL2NvbW1vbi9kZHJfc3BkLmMKPiA+ICsrKyBiL2NvbW1vbi9kZHJf
c3BkLmMKPiA+IEBAIC0yNTMsNyArMjUzLDcgQEAgdm9pZCBkZHJfc3BkX3ByaW50KHVpbnQ4X3Qg
KnJlY29yZCkKPiA+ICAJCXByaW50ZigiRXJyb3IgbW9kdWxlIHR5cGVcbiIpOwo+ID4gIAo+ID4g
IAlwcmludGYoIiUtNDhzICIsICJEUkFNIFBhY2thZ2UgIik7Cj4gPiAtCWlmICgocy0+bW9kX3Jh
bmtzICYgMHgxMCkgPT0gMSkKPiA+ICsJaWYgKChzLT5tb2RfcmFua3MgJiAweDEwKSAhPSAwKQo+
IAo+IEZvciBzdXJlIHRoaXMgaXMgYnVnZ3kuIEFwcGxpZWQsIHRoYW5rcwoKSSBrbm93IGl0IGlz
IHRvbyBsYXRlIGFscmVhZHksIGJ1dCBpc24ndAoJaWYgKHMtPm1vZF9yYW5rcyAmIDB4MTApCmEg
Yml0IG1vcmUgdXN1YWwgZml4PwoKCWxhZGlzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
YXJlYm94Cg==
