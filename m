Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat
 Linux)) id 1gtYwn-0002qI-Pw
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 14:22:07 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BB46A3E14C
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2019 15:21:19 +0100 (CET)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B07633E14A
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2019 15:21:19 +0100 (CET)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2019 15:21:19 +0100 (CET)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Tue, 12 Feb 2019 14:22:33 +0000
Message-ID: <38a77a39-1131-deed-993c-5f4f197f41ce@data-modul.com>
Content-Language: de-DE
Content-ID: <147572F9D5BAC148A405D5CFDB1FDFAA@data-modul.com>
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
Subject: cortex-m4 in Barebox
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlvbmUsDQoNCkkgYW0gdXNpbmcgaW14OG0tZXZrIGJvYXJkLiBUbyBib290IGEg
Y29ydGV4LW00IGluIHRoZSBzeXN0ZW0sIGluIHUtYm9vdCwgdGhlcmUNCmlzIGEgYm9vdGF1eCBj
b21tYW5kLCB3aGljaCBydW5zIHRoZSBtNC1pbWFnZSBhbmQgYm9vdCBjb3J0ZXgtbTQuDQoNCklz
IHRoZXJlIGFueSBjb21tYW5kIGF2YWlsYWJsZSBpbiBCYXJlYm94IHRvIGJvb3QgbTQ/IFRvdGFs
bHksIHdoYXQgaXMgYXZhaWxhYmxlDQppbiBCYXJlYm94IHJlZ2FyZGluZyBjb3J0ZXgtbTQ/DQoN
ClRoYW5rcyBpbiBhZHZhbmNlLA0KDQpCZXN0LA0KUmV5aGFuZWgNCi0tDQpSZXloYW5laCBZYXpk
YW5pDQpEYXRhIE1vZHVsIEFHICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRFTDogICAgKzQ5
LTg5LTU2MDE3LTE1NA0KRW1iZWRkZWQgZGV2ZWxvcG1lbnQgICAgICAgICAgICAgICAgIEZBWDog
ICAgKzQ5LTg5LTU2MDE3LTExOQ0KTGludXggLSBEZXZlbG9wbWVudCAgICAgICAgICAgICAgICAg
ICAgICBSRzogSFItTXVlbmNoZW4gQi04NTU5MQ0KTGFuZHNiZXJnZXIgU3RyLiAzMjIgRC04MDY4
NyBNdWVuY2hlbiAtIGh0dHA6Ly93d3cuZGF0YS1tb2R1bC5jb20NCg0KVmVydHJhdWxpY2hlIEUt
TWFpbCB2b24gLyBDb25maWRlbnRpYWwgZS1tYWlsIGZyb206IERBVEEgTU9EVUwgQUcNClZvcnN0
YW5kIC8gQ0VPOiBEci4gRmxvcmlhbiBQZXNhaGwNClZvcnNpdHplbmRlIGRlcyBBdWZzaWNodHNy
YXRlcyAvIENoYWlyd29tYW4gb2YgdGhlIFN1cGVydmlzb3J5IEJvYXJkOiBLcmlzdGluIEQuIFJ1
c3NlbGwNClNpdHogZGVyIEdlc2VsbHNjaGFmdCAvIFJlZ2lzdGVyZWQgT2ZmaWNlOiBNw7xuY2hl
bg0KUmVnaXN0ZXJnZXJpY2h0IC8gUmVnaXN0cmF0aW9uIENvdXJ0OiBNw7xuY2hlbiBIYW5kZWxz
cmVnaXN0ZXIgQiA4NSA1OTENCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
