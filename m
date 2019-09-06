Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6AcB-000756-1H
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 09:33:12 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 161EC3E107
 for <barebox@lists.infradead.org>; Fri,  6 Sep 2019 11:33:08 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0B41D3E102
 for <barebox@lists.infradead.org>; Fri,  6 Sep 2019 11:33:08 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Fri,  6 Sep 2019 11:33:08 +0200 (CEST)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Fri, 6 Sep 2019 09:33:05 +0000
Message-ID: <edafd62c-08cc-06d4-a0b0-e8607f6fc61b@data-modul.com>
Content-Language: de-DE
Content-ID: <F16CC4D787B1D446A46157A415EB0F90@data-modul.com>
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
Subject: initrd in imx8mm
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlvbmUsDQoNCkkgaGF2ZSBhbiBpbml0cmFtZnMgZmlsZSB0aGF0IHdhbnQgdG8g
YmUgY2FsbGVkIHZpYSBpbml0cmQgaW4gQmFyZWJveC4NCkkgaGF2ZSBjb25maWd1cmVkIG15IGJv
b3Qgc2NyaXB0IGFzIGJlbG93Og0KDQojIS9iaW4vc2gNCg0KZ2xvYmFsLmJvb3RtLmltYWdlPSIv
bW50L21tYzEuMC9JbWFnZSINCmdsb2JhbC5ib290bS5pbml0cmQ9Ii9tbnQvbW1jMS4wL2luaXRy
YW1mcyINCmdsb2JhbC5ib290bS5vZnRyZWU9Ii9tbnQvbW1jMS4wL0ltYWdlLWZzbC1pbXg4bW0t
ZXZrLmR0YiINCmdsb2JhbC5saW51eC5ib290YXJncy5keW4ucm9vdD0icm9vdD0vZGV2L21tY2Js
azFwNSByb290d2FpdCB2aWRlbz0tMzINCmZzY2sucmVwYWlyPXllcyINCg0KQnV0IHdoZW4gSSBj
YWxsIHRoaXMgYm9vdCBzY3JpcHQsIGluaXRyYW1mcyBpcyBub3QgZXhlY3V0ZWQgYW5kIG9ubHkg
TGludXgNCktlcm5lbCBhbmQgZGV2aWNlIHRyZWUgYXJlIGxvYWRlZCBhbmQgc3lzdGVtIGJvb3Rz
Lg0KDQpJIGhhdmUgZG9uZSB0aGlzIHByb2Nlc3Mgb24gaW14NiBib2FyZCBwcmV2aW91c2x5IGFu
ZCBteSBpbml0cmFtZnMgd2FzIGNhbGxlZA0Kc3VjY2Vzc2Z1bGx5IHZpYSBpbml0cmQuDQoNCklz
IHRoaXMgZmVhdHVyZSBub3QgYXZhaWxhYmxlIGZvciBpbXg4bXEvaW14OG1tPyBBY3R1YWxseSB0
aGUgZnVuY3Rpb24NCmJvb3RtX2xvYWRfaW5pdHJkIGlzIG5ldmVyIGNhbGxlZC4NCg0KQmVzdCBy
ZWdhcmRzLA0KUmV5aGFuZWgNCg0KLS0NClJleWhhbmVoIFlhemRhbmkNCkRhdGEgTW9kdWwgQUcg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgVEVMOiAgICArNDktODktNTYwMTctMTU0DQpFbWJl
ZGRlZCBkZXZlbG9wbWVudCAgICAgICAgICAgICAgICAgRkFYOiAgICArNDktODktNTYwMTctMTE5
DQpMaW51eCAtIERldmVsb3BtZW50ICAgICAgICAgICAgICAgICAgICAgIFJHOiBIUi1NdWVuY2hl
biBCLTg1NTkxDQpMYW5kc2JlcmdlciBTdHIuIDMyMiBELTgwNjg3IE11ZW5jaGVuIC0gaHR0cDov
L3d3dy5kYXRhLW1vZHVsLmNvbQ0KDQpWZXJ0cmF1bGljaGUgRS1NYWlsIHZvbiAvIENvbmZpZGVu
dGlhbCBlLW1haWwgZnJvbTogREFUQSBNT0RVTCBBRw0KVm9yc3RhbmQgLyBDRU86IERyLiBGbG9y
aWFuIFBlc2FobA0KVm9yc2l0emVuZGUgZGVzIEF1ZnNpY2h0c3JhdGVzIC8gQ2hhaXJ3b21hbiBv
ZiB0aGUgU3VwZXJ2aXNvcnkgQm9hcmQ6IEtyaXN0aW4gRC4gUnVzc2VsbA0KU2l0eiBkZXIgR2Vz
ZWxsc2NoYWZ0IC8gUmVnaXN0ZXJlZCBPZmZpY2U6IE3DvG5jaGVuDQpSZWdpc3RlcmdlcmljaHQg
LyBSZWdpc3RyYXRpb24gQ291cnQ6IE3DvG5jaGVuIEhhbmRlbHNyZWdpc3RlciBCIDg1IDU5MQ0K
DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
