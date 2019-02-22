Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx8ES-0001yc-Ek
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 10:39:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id q187so1493726wme.5
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2019 02:39:01 -0800 (PST)
References: <20190221092848.4488-1-tomaz.solc@tablix.org>
 <20190221092848.4488-4-tomaz.solc@tablix.org>
 <20190222074922.smfgbcwqmd6uddgi@pengutronix.de>
From: =?UTF-8?B?VG9tYcW+IMWgb2xj?= <tomaz.solc@klevio.com>
Message-ID: <c63c27fe-9e12-e3a2-16b1-279b047bf3a1@klevio.com>
Date: Fri, 22 Feb 2019 11:38:58 +0100
MIME-Version: 1.0
In-Reply-To: <20190222074922.smfgbcwqmd6uddgi@pengutronix.de>
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
Subject: Re: [PATCH 3/3] commands: add of_bootargs command.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKT24gMjIuIDAyLiAxOSAwODo0OSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9u
IFRodSwgRmViIDIxLCAyMDE5IGF0IDEwOjI4OjQ4QU0gKzAxMDAsIFRvbWF6IFNvbGMgd3JvdGU6
Cj4+IFRoaXMgY29tbWl0IGFkZHMgYW4gb2ZfYm9vdGFyZ3MgY29tbWFuZCB0aGF0IGV4dHJhY3Rz
IGEgYm9vdGFyZ3MKPj4gcHJvcGVydHkgZnJvbSBhIGRldmljZSB0cmVlIGFuZCBzYXZlcyBpdCB0
byBhIGdsb2JhbCB2YXJpYWJsZS4KPj4KPj4gRm9yIGV4YW1wbGUsIGEgYm9vdGxvYWRlciBlbnZp
cm9ubWVudCBjYW4gdXNlIHRoaXMgY29tbWFuZCB0byBleHRyYWN0Cj4+IHRoZSBib290YXJncyB0
byBsaW51eC5ib290YXJncy52Yywgd2hpY2ggdGhlbiBnZXRzIGluY2x1ZGVkIGludG8gdGhlCj4+
IGZpbmFsIGJvb3RhcmdzIGZvciB0aGUga2VybmVsIHVzaW5nIENPTkZJR19GTEVYSUJMRV9CT09U
QVJHUy4KPiAKPiBEbyB3ZSBuZWVkIGFuIGV4dHJhIGNvbW1hbmQgZm9yIHRoaXM/IENhbid0IHlv
dSBqdXN0IHVuZmxhdHRlbiB0aGUKPiBWaWRlb0NvcmUgcHJvdmlkZWQgZGV2aWNlIHRyZWUgaW4g
dGhlIGJvYXJkIGNvZGUgeW91IGhhdmUgYWRkZWQgaW4gMi8zCj4gYW5kIHNldCBnbG9iYWwubGlu
dXguYm9vdGFyZ3MudmMgZnJvbSB0aGVyZT8gSXQgc2VlbXMgdG8gYmUganVzdCB0aGUKPiByaWdo
dCB0aGluZyB3aXRob3V0IGZ1cnRoZXIgdXNlciBpbnRlcnZlbnRpb24uCgpJIHdhbnRlZCB0byBr
ZWVwIHRoaW5ncyBmbGV4aWJsZS4gSSB0aG91Z2h0IGhhdmluZyBhbiBleHBsaWNpdCBjb21tYW5k
IAp0byBpbXBvcnQgdGhlIGFyZ3MgaW50byBCYXJlYm94IGlzIGJldHRlciB0aGFuIGRvaW5nIHRo
aXMgYXV0b21hdGljYWxseSAKaW4gcnBpLWNvbW1vbi5jLgoKQXMgZmFyIGFzIEkga25vdyBbMV0s
IHVwc3RyZWFtIGtlcm5lbHMgdXNlIHRoZWlyIG93biBkZXZpY2UgdHJlZSBhbmQgCmRvbid0IG5l
ZWQgYm9vdGFyZ3MgYW5kIGZkdCBmcm9tIFZpZGVvQ29yZS4gT24gdGhlIG90aGVyIGhhbmQsIEkn
bSB1c2luZyAKdGhlIFJhc3BiaWFuLXN1cHBsaWVkIGtlcm5lbHMgdGhhdCBkbyBkZXBlbmQgb24g
dGhlc2UgdHdvIHRoaW5ncy4gVGhhdCdzIAphbHNvIHdoeSBJIGxpa2VkIHRoZSBhcHByb2FjaCB3
aGVyZSB0aGUgVmlkZW9Db3JlIGZkdCBpcyBzYXZlZCBpbnRvIGEgCmZpbGUsIHdoZXJlIGl0IGNh
biBiZSBwYXNzZWQgdG8gYm9vdCBvciBub3QsIGRlcGVuZGluZyBvbiB0aGUgZW52aXJvbm1lbnQu
CgpJZiB5b3UgdGhpbmsgb2ZfYm9vdGFyZ3MgaXMgdG9vIHNwZWNpZmljIGZvciBhIGNvbW1hbmQs
IEkgY2FuIG1ha2UgaXQgCm1vcmUgZ2VuZXJhbCBhbmQgaGF2ZSBpdCBzYXZlIGFuIGFyYml0cmFy
eSBwcm9wZXJ0eSBmcm9tIGEgZmR0IGludG8gYSAKZ2xvYmFsIHZhcmlhYmxlIChzb21ldGhpbmcg
c2ltaWxhciB0byByZWFkZikuIFRoYXQgbWlnaHQgYmUgdXNlZnVsIGZvciAKc29tZXRoaW5nIGVs
c2UgYXMgd2VsbC4KClsxXSAKaHR0cHM6Ly9lbGludXgub3JnL1JQaV9VcHN0cmVhbV9LZXJuZWxf
Q29tcGlsYXRpb24jQnVpbGRpbmdfeW91cl9ib290bG9hZGVyCgpCZXN0IHJlZ2FyZHMKVG9tYcW+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
