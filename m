Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRQy-0002pu-II
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 15:14:38 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8EF903E16B
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2019 17:14:33 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8410B3E160
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2019 17:14:33 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2019 17:14:33 +0200 (CEST)
From: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Date: Thu, 13 Jun 2019 15:14:32 +0000
Message-ID: <c0432719-ac26-629d-01a0-bcf4106f8357@data-modul.com>
Content-Language: de-DE
Content-ID: <AC0DEB4C83414B41B515476C535C2924@data-modul.com>
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
Subject: Bringup Barebox on imx8mm
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gRXZlcnlvbmUsDQoNCkkgYW0gdHJ5aW5nIHRvIGJyaW5ndXAgQmFyZWJveCBvbiBpLk1Y
OE1NLWV2ay4NCg0KSSBoYXZlIGZvbGxvd2VkIGFsbCB0aGUgY29tbWl0cyByZWxhdGVkIHRvIHRo
ZSBpLk1YOE1RIGFuZCBhZGRlZCBwcm9wZXIgZmlsZXMNCmFuZCBjaGFuZ2VzIGZvciBpLk1YOE1N
LWV2ayBib2FyZC4NCg0KVGhlIHByb2JsZW0gaXMgQmFyZWJveCBzdG9wcyBhdCAiZGRyY19waHlf
d2FpdF90cmFpbmluZ19jb21wbGV0ZSIgZnVuY3Rpb24sDQpleGFjdGx5IGF0IHN1Yi1mdW5jdGlv
biAiZGRyY19waHlfZ2V0X21lc3NhZ2UiLiBUaGUgcmVhZC12YWx1ZSBmcm9tIHRoZQ0KDQpwaHkg
KyBERFJDX1BIWV9SRUcoMHhkMDAwNCkgaXMgbm90IGNvcnJlY3QsIGFuZCBpdCByZW1haW5zIGlu
IHdoaWxlIGxvb3AuDQoNCkkgdXNlZCB0aGUgZGRyX2luaXQgYW5kIGRkcnBoeV90cmFpbiBmaWxl
cyBwcm9kdWNlZCBmcm9tIG1zY2FsZV9kZHJfdG9vbCBvZiBOWFAsDQphbmQgZXZlbiBjb21wYXJl
ZCB3aXRoIHRoZSB2YWx1ZSBmcm9tIFUtYm9vdC4gQWxsIGFyZSBzaW1pbGFyLg0KDQpEb2VzIGFu
eSBib2R5IGhhdmUgYW4gaWRlYSB3aGF0IHdvdWxkIGJlIHRoZSBwcm9ibGVtPw0KDQpUaGFua3MN
Cg0KUmV5aGFuZWgNCg0KLS0NClJleWhhbmVoIFlhemRhbmkNCkRhdGEgTW9kdWwgQUcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgVEVMOiAgICArNDktODktNTYwMTctMTU0DQpFbWJlZGRlZCBk
ZXZlbG9wbWVudCAgICAgICAgICAgICAgICAgRkFYOiAgICArNDktODktNTYwMTctMTE5DQpMaW51
eCAtIERldmVsb3BtZW50ICAgICAgICAgICAgICAgICAgICAgIFJHOiBIUi1NdWVuY2hlbiBCLTg1
NTkxDQpMYW5kc2JlcmdlciBTdHIuIDMyMiBELTgwNjg3IE11ZW5jaGVuIC0gaHR0cDovL3d3dy5k
YXRhLW1vZHVsLmNvbQ0KDQpWZXJ0cmF1bGljaGUgRS1NYWlsIHZvbiAvIENvbmZpZGVudGlhbCBl
LW1haWwgZnJvbTogREFUQSBNT0RVTCBBRw0KVm9yc3RhbmQgLyBDRU86IERyLiBGbG9yaWFuIFBl
c2FobA0KVm9yc2l0emVuZGUgZGVzIEF1ZnNpY2h0c3JhdGVzIC8gQ2hhaXJ3b21hbiBvZiB0aGUg
U3VwZXJ2aXNvcnkgQm9hcmQ6IEtyaXN0aW4gRC4gUnVzc2VsbA0KU2l0eiBkZXIgR2VzZWxsc2No
YWZ0IC8gUmVnaXN0ZXJlZCBPZmZpY2U6IE3DvG5jaGVuDQpSZWdpc3RlcmdlcmljaHQgLyBSZWdp
c3RyYXRpb24gQ291cnQ6IE3DvG5jaGVuIEhhbmRlbHNyZWdpc3RlciBCIDg1IDU5MQ0KDQoNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
