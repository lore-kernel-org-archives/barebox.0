Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ifLTl-00075S-KQ
 for barebox@lists.infradead.org; Thu, 12 Dec 2019 10:13:55 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C4A243E0C1
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2019 11:13:50 +0100 (CET)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B9CA23E0B9
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2019 11:13:50 +0100 (CET)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2019 11:13:50 +0100 (CET)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Thu, 12 Dec 2019 10:13:49 +0000
Message-ID: <c0e44a15-802d-b008-36b3-3b3d6007e587@data-modul.com>
Content-Language: de-DE
Content-ID: <DB4539A694F0914987806B41E9589D18@data-modul.com>
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
Subject: imx-usb-loader on imx8mq/mm
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlvbmUsDQoNCkkgYW0gdHJ5aW5nIHRvIGxvYWQgQmFyZWJveCB0byB0aGUgaW14
OG1tIGJvYXJkIHZpYSBpbXgtdXNiLWxvYWRlciwgYnV0IGl0IHN0b3BzDQppbiB0aGUgbWlkZGxl
LiBJIHRoaW5rIG1heWJlIGl0IGlzIGJlY2F1c2Ugd2UgZG8gbm90IGhhdmUgYSBmbGFzaC1oZWFk
ZXIgZmlsZQ0Kd2l0aCB0aGUgc3RhdGljIFJBTSBjb25maWd1cmF0aW9uLiBEb2VzIHNvbWVvbmUg
aGF2ZSBhbnkgaWRlYSBhYm91dCB0aGF0Pw0KDQpCZXN0LA0KUmV5aGFuZWgNCi0tDQpSZXloYW5l
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
