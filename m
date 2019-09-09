Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7HjA-0003sG-TN
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 11:21:02 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 038D53E0B7
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 13:20:58 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id ECD553E0B1
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 13:20:57 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 13:20:57 +0200 (CEST)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Mon, 9 Sep 2019 11:20:57 +0000
Message-ID: <24b4a193-f09b-a079-afcd-c23009ca25d7@data-modul.com>
References: <edafd62c-08cc-06d4-a0b0-e8607f6fc61b@data-modul.com>
In-Reply-To: <edafd62c-08cc-06d4-a0b0-e8607f6fc61b@data-modul.com>
Content-Language: de-DE
Content-ID: <07336F6531B5D44081B7F79C1BDD7074@data-modul.com>
MIME-Version: 1.0
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
Subject: Re: initrd in imx8mm
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGkgQWhtYWQsDQoNCnllcywgeW91IGFyZSByaWdodC4gV2UgY2FuIGVtYmVkIGluaXRyYW1mcyBp
biBLZXJuZWwuIEkgd2lsbCB0cnkgdG8gaW1wbGVtZW50DQppbml0cmQgZm9yIGxpYjY0IGluIEJh
cmVib3guIFRoZW4sIEkgd2lsbCBwb3N0IGl0IGhlcmUgYXMgYSBwYXRjaCA6KQ0KDQpPbiA5LzYv
MTkgMTE6MzMgQU0sIHJleWhhbmVoIHlhemRhbmkgd3JvdGU6DQo+IEhlbGxvIGV2ZXJ5b25lLA0K
Pg0KPiBJIGhhdmUgYW4gaW5pdHJhbWZzIGZpbGUgdGhhdCB3YW50IHRvIGJlIGNhbGxlZCB2aWEg
aW5pdHJkIGluIEJhcmVib3guDQo+IEkgaGF2ZSBjb25maWd1cmVkIG15IGJvb3Qgc2NyaXB0IGFz
IGJlbG93Og0KPg0KPiAjIS9iaW4vc2gNCj4NCj4gZ2xvYmFsLmJvb3RtLmltYWdlPSIvbW50L21t
YzEuMC9JbWFnZSINCj4gZ2xvYmFsLmJvb3RtLmluaXRyZD0iL21udC9tbWMxLjAvaW5pdHJhbWZz
Ig0KPiBnbG9iYWwuYm9vdG0ub2Z0cmVlPSIvbW50L21tYzEuMC9JbWFnZS1mc2wtaW14OG1tLWV2
ay5kdGIiDQo+IGdsb2JhbC5saW51eC5ib290YXJncy5keW4ucm9vdD0icm9vdD0vZGV2L21tY2Js
azFwNSByb290d2FpdCB2aWRlbz0tMzINCj4gZnNjay5yZXBhaXI9eWVzIg0KPg0KPiBCdXQgd2hl
biBJIGNhbGwgdGhpcyBib290IHNjcmlwdCwgaW5pdHJhbWZzIGlzIG5vdCBleGVjdXRlZCBhbmQg
b25seSBMaW51eA0KPiBLZXJuZWwgYW5kIGRldmljZSB0cmVlIGFyZSBsb2FkZWQgYW5kIHN5c3Rl
bSBib290cy4NCj4NCj4gSSBoYXZlIGRvbmUgdGhpcyBwcm9jZXNzIG9uIGlteDYgYm9hcmQgcHJl
dmlvdXNseSBhbmQgbXkgaW5pdHJhbWZzIHdhcyBjYWxsZWQNCj4gc3VjY2Vzc2Z1bGx5IHZpYSBp
bml0cmQuDQo+DQo+IElzIHRoaXMgZmVhdHVyZSBub3QgYXZhaWxhYmxlIGZvciBpbXg4bXEvaW14
OG1tPyBBY3R1YWxseSB0aGUgZnVuY3Rpb24NCj4gYm9vdG1fbG9hZF9pbml0cmQgaXMgbmV2ZXIg
Y2FsbGVkLg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IFJleWhhbmVoDQo+DQoNCi0tDQpSZXloYW5l
aCBZYXpkYW5pDQpEYXRhIE1vZHVsIEFHICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRFTDog
ICAgKzQ5LTg5LTU2MDE3LTE1NA0KRW1iZWRkZWQgZGV2ZWxvcG1lbnQgICAgICAgICAgICAgICAg
IEZBWDogICAgKzQ5LTg5LTU2MDE3LTExOQ0KTGludXggLSBEZXZlbG9wbWVudCAgICAgICAgICAg
ICAgICAgICAgICBSRzogSFItTXVlbmNoZW4gQi04NTU5MQ0KTGFuZHNiZXJnZXIgU3RyLiAzMjIg
RC04MDY4NyBNdWVuY2hlbiAtIGh0dHA6Ly93d3cuZGF0YS1tb2R1bC5jb20NCg0KVmVydHJhdWxp
Y2hlIEUtTWFpbCB2b24gLyBDb25maWRlbnRpYWwgZS1tYWlsIGZyb206IERBVEEgTU9EVUwgQUcN
ClZvcnN0YW5kIC8gQ0VPOiBEci4gRmxvcmlhbiBQZXNhaGwNClZvcnNpdHplbmRlIGRlcyBBdWZz
aWNodHNyYXRlcyAvIENoYWlyd29tYW4gb2YgdGhlIFN1cGVydmlzb3J5IEJvYXJkOiBLcmlzdGlu
IEQuIFJ1c3NlbGwNClNpdHogZGVyIEdlc2VsbHNjaGFmdCAvIFJlZ2lzdGVyZWQgT2ZmaWNlOiBN
w7xuY2hlbg0KUmVnaXN0ZXJnZXJpY2h0IC8gUmVnaXN0cmF0aW9uIENvdXJ0OiBNw7xuY2hlbiBI
YW5kZWxzcmVnaXN0ZXIgQiA4NSA1OTENCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
