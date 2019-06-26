Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3Zy-0002up-Ro
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 08:47:00 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 760903E0C9
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2019 10:46:57 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6B6B83E0C6
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2019 10:46:57 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2019 10:46:57 +0200 (CEST)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Wed, 26 Jun 2019 08:46:56 +0000
Message-ID: <24b0cc8b-93b2-ccf8-9b9d-1d618584958e@data-modul.com>
Content-Language: de-DE
Content-ID: <61443B0CBF2E1D45941C63BCFF481A4C@data-modul.com>
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
Subject: load BL31 on imx8mm and imx8mq
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlvbmUsDQoNCg0KT24gdGhlIHByb2Nlc3Mgb2YgYnJpbmctdXAgaW14OG1tIGJv
YXJkLCBJIGFtIGF0IHRoZSBwb2ludCB0aGF0IGxvYWQgYmwzMSBhbmQNCmp1bXAgdG8gQVRGLlVw
b24gZXhpdCBmcm9tIEFURidzIGluaXRpYWxpemF0aW9uIHJvdXRpbmUsIHRoZSBleGVjdXRpb24g
bGV2ZWwNCnNob3VsZCBiZSBFTDIuDQoNCk15IHF1ZXN0aW9uIGlzIGFib3V0IGlteDhtcV9hdGZf
bG9hZF9ibDMxIGZ1bmN0aW9uLg0KQWZ0ZXIgY29weSBCTDMxIGludG8gT0NSQU0gYWRkcmVzcywg
dGhlIGZ1bmN0aW9uIHNldHMgdXAgdGhlIHNwX2VsMiB0bw0KIk1YOE1RX0FURl9CTDMzX0JBU0Vf
QUREUiAtIDE2Ii4NCg0KQ2FuIGFueW9uZSBleHBsYWluIG1lIHdoeSB0aGlzIGFkZHJlc3M/IEJl
Y2F1c2UgSSBhbSB1c2luZyB0aGUgc2FtZSBhZGRyZXNzIGZvcg0KaW14OG1tIGFuZCBpdCBzZWVt
cyBCYXJlYm94IGRvZXMgbm90IHJldHVybiB0byB0aGlzIHBvaW50Lg0KDQpCZXN0LA0KUmV5aGFu
ZWgNCg0KLS0NClJleWhhbmVoIFlhemRhbmkNCkRhdGEgTW9kdWwgQUcgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgVEVMOiAgICArNDktODktNTYwMTctMTU0DQpFbWJlZGRlZCBkZXZlbG9wbWVu
dCAgICAgICAgICAgICAgICAgRkFYOiAgICArNDktODktNTYwMTctMTE5DQpMaW51eCAtIERldmVs
b3BtZW50ICAgICAgICAgICAgICAgICAgICAgIFJHOiBIUi1NdWVuY2hlbiBCLTg1NTkxDQpMYW5k
c2JlcmdlciBTdHIuIDMyMiBELTgwNjg3IE11ZW5jaGVuIC0gaHR0cDovL3d3dy5kYXRhLW1vZHVs
LmNvbQ0KDQpWZXJ0cmF1bGljaGUgRS1NYWlsIHZvbiAvIENvbmZpZGVudGlhbCBlLW1haWwgZnJv
bTogREFUQSBNT0RVTCBBRw0KVm9yc3RhbmQgLyBDRU86IERyLiBGbG9yaWFuIFBlc2FobA0KVm9y
c2l0emVuZGUgZGVzIEF1ZnNpY2h0c3JhdGVzIC8gQ2hhaXJ3b21hbiBvZiB0aGUgU3VwZXJ2aXNv
cnkgQm9hcmQ6IEtyaXN0aW4gRC4gUnVzc2VsbA0KU2l0eiBkZXIgR2VzZWxsc2NoYWZ0IC8gUmVn
aXN0ZXJlZCBPZmZpY2U6IE3DvG5jaGVuDQpSZWdpc3RlcmdlcmljaHQgLyBSZWdpc3RyYXRpb24g
Q291cnQ6IE3DvG5jaGVuIEhhbmRlbHNyZWdpc3RlciBCIDg1IDU5MQ0KDQoNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
