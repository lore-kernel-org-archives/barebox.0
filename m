Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOou-0008L8-PV
 for barebox@lists.infradead.org; Fri, 05 Jul 2019 14:04:15 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C3E7E3E0E6
 for <barebox@lists.infradead.org>; Fri,  5 Jul 2019 16:04:09 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B94B33E0E4
 for <barebox@lists.infradead.org>; Fri,  5 Jul 2019 16:04:09 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Fri,  5 Jul 2019 16:04:09 +0200 (CEST)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Fri, 5 Jul 2019 14:04:08 +0000
Message-ID: <14d5d82d-ddb0-89e2-84c0-00cb980dda2a@data-modul.com>
Content-Language: de-DE
Content-ID: <027C4F9AEC49694596384DB09BB6E76C@data-modul.com>
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
Subject: eMMC probe in imx8mm
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlvbmUsDQoNCkkgaGF2ZSBicm91Z2h0IHVwIEJhcmVib3ggb24gaW14OG1tLWV2
ayBib2FyZC4gQmFyZWJveCBpcyBwcm9ncmFtbWVkIG9uIFNELWNhcmQuDQpJbiB0aGUgQmFyZWJv
eCBjb25zb2xlLCB3aGVuIEkgcHJvYmUgZU1NQywgSSB3aWxsIHJlY2VpdmUgSS9PIGVycm9yLg0K
DQpUaGVyZWZvcmUsIHNpbWlsYXIgdG8gdGhlIGlteDhtcSBkZXZpY2UgdHJlZSwgSSBhZGRlZCBj
bGsgbm9kZSB0byBhc3NpZ24NCmNsb2NrLXBhcmVudCBhbmQgY2xvY2stcmF0ZXMgb2YgdGhlIGFz
c2lnbmVkIGNsb2NrIG9mIHRoZSBlTU1DICh1c2RoYzMpOg0KDQomY2xrIHsNCiAgICAgICAgYXNz
aWduZWQtY2xvY2tzID0gIDwmY2xrIElNWDhNTV9DTEtfVVNESEMzX1JPT1Q+Ow0KICAgICAgICBh
c3NpZ25lZC1jbG9jay1wYXJlbnRzID0gIDwmY2xrIElNWDhNTV9TWVNfUExMMV80MDBNPjsNCiAg
ICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MjAwMDAwMDAwPjsNCn07DQoNCk5vdywgZU1N
QyBwcm9iZSB3b3JrcyBhbmQgZU1NQyBpcyBkZXRlY3RlZC4gQnV0IHdoZW4gSSB3YW50IHRvIGJv
b3QgZnJvbSBlTU1DLA0KDQpMb2FkaW5nIEFSTSBhYXJjaDY0IExpbnV4IGltYWdlICcvbW50L21t
YzIvSW1hZ2UnIHRha2VzIGFib3V0IDEzLTE0IHNlY29uZHMhIQ0KDQoNCkRvZXMgYW55b25lIGhh
dmUgYW4gaWRlYSB3aGVyZSBpcyB0aGUgcHJvYmxlbT8gSXQgd291bGQgcmVsYXRlZCB0byB0aGUg
Y2xvY2ssDQpidXQgd2hpY2ggcGFydD8NCg0KQmVzdCByZWdhcmRzLA0KUmV5aGFuZWgNCi0tDQpS
ZXloYW5laCBZYXpkYW5pDQpEYXRhIE1vZHVsIEFHICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFRFTDogICAgKzQ5LTg5LTU2MDE3LTE1NA0KRW1iZWRkZWQgZGV2ZWxvcG1lbnQgICAgICAgICAg
ICAgICAgIEZBWDogICAgKzQ5LTg5LTU2MDE3LTExOQ0KTGludXggLSBEZXZlbG9wbWVudCAgICAg
ICAgICAgICAgICAgICAgICBSRzogSFItTXVlbmNoZW4gQi04NTU5MQ0KTGFuZHNiZXJnZXIgU3Ry
LiAzMjIgRC04MDY4NyBNdWVuY2hlbiAtIGh0dHA6Ly93d3cuZGF0YS1tb2R1bC5jb20NCg0KVmVy
dHJhdWxpY2hlIEUtTWFpbCB2b24gLyBDb25maWRlbnRpYWwgZS1tYWlsIGZyb206IERBVEEgTU9E
VUwgQUcNClZvcnN0YW5kIC8gQ0VPOiBEci4gRmxvcmlhbiBQZXNhaGwNClZvcnNpdHplbmRlIGRl
cyBBdWZzaWNodHNyYXRlcyAvIENoYWlyd29tYW4gb2YgdGhlIFN1cGVydmlzb3J5IEJvYXJkOiBL
cmlzdGluIEQuIFJ1c3NlbGwNClNpdHogZGVyIEdlc2VsbHNjaGFmdCAvIFJlZ2lzdGVyZWQgT2Zm
aWNlOiBNw7xuY2hlbg0KUmVnaXN0ZXJnZXJpY2h0IC8gUmVnaXN0cmF0aW9uIENvdXJ0OiBNw7xu
Y2hlbiBIYW5kZWxzcmVnaXN0ZXIgQiA4NSA1OTENCg0KDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
