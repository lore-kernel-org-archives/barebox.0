Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat
 Linux)) id 1fEVaf-000739-7r
 for barebox@lists.infradead.org; Fri, 04 May 2018 07:57:19 +0000
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7F09C3E0F8
 for <barebox@lists.infradead.org>; Fri,  4 May 2018 09:57:04 +0200 (CEST)
Received: from mail2.data-modul.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 742733E0F7
 for <barebox@lists.infradead.org>; Fri,  4 May 2018 09:57:04 +0200 (CEST)
Received: from mail.data-modul.de (unknown [10.1.1.120])
 by mail2.data-modul.de (Postfix) with ESMTPS
 for <barebox@lists.infradead.org>; Fri,  4 May 2018 09:57:04 +0200 (CEST)
From: "Albert, Elmar" <EAlbert@data-modul.com>
Date: Fri, 4 May 2018 07:57:03 +0000
Message-ID: <24f0c042-64a4-eaeb-36eb-6fffe8cdb65d@data-modul.com>
Content-Language: de-DE
Content-ID: <AA60AB2209502440A36A09E609859099@data-modul.com>
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
Subject: Dynamic RAM configuration on iMX6 board
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8gZXZlcnlib2R5LA0KDQpJJ20gd29ya2luZyBvbiBhIGJvYXJkIHVzaW5nIGlNWDYuIFRo
ZXJlIGFyZSB2YXJpYW50cyBvZiB0aGUgYm9hcmQNCmRpZmZlcmluZyBpbiBpTVg2Uy9ETC9EL1Eg
YW5kIHRoZSBzaXplIG9mIHRoZSBtZW1vcnkgb24gQ1MwLiBUaGUNCmlNWDZTL0RML0QgdmFyaWFu
dHMgYXJlIHVzaW5nIDMyYml0IGludGVyZmFjZSB0byB0d28gRERSMyBkZXZpY2VzIChlLmcuDQox
R0J5dGUpLCB0aGUgaU1YNlEgdmFyaWFudCBpcyB1c2luZyA2NGJpdCBpbnRlcmZhY2UgdG8gZm91
ciBERFIzIGRldmljZXMNCihlLmcuIDJHQnl0ZSkuIFRoaXMgaXMgbGVhZGluZyBpbiBhdCBsZWFz
dCB0d28gZGlmZmVyZW50IC5pbXhjZmcgZmlsZXMNCmZvciBEUkFNLWNvbnRyb2xsZXIgaW5pdGlh
bGl6YXRpb24uDQpUaGUgRFJBTSBEZW5zaXR5IGFuZCB0aGUgbnVtYmVyIG9mIG1vdW50ZWQgRERS
MyBkZXZpY2VzIGNhbiBiZSByZWFkIGZyb20NCnRoZSBib2FyZCB2aWEgR1BJTy1waW5zLg0KDQpU
byBwcmV2ZW50IG11bHRpcGxlIGJhcmVib3gtaW1hZ2VzIGFuZCBzbyBtdWx0aXBsZSBwcmUtcHJv
Z3JhbW1lZA0KU1BJLUZsYXNoZXMgb24gc3RvY2sgaW4gdGhlIGZhY3RvcnksIEknbSBsb29raW5n
IGZvciBhIHNvbHV0aW9uIHRvDQpjb25maWd1cmUgdGhlIERSQU0tQ29udHJvbGxlciBkeW5hbWlj
YWxseSBkdXJpbmcgYmFyZWJveCBib290Lg0KDQpJcyBpdCBwb3NzaWJsZSB0byBoYXZlIG1vcmUg
dGhhbiBvbmUgLmlteGNmZyBmaWxlcyBpbiBvbmUgaW1hZ2UgYW5kIGlmDQpzbywgaG93IGNhbiBp
dCBiZSBzZWxlY3RlZCB0byBjb25maWd1cmUgdGhlIERSQU0gY29udHJvbGxlciBkZXBlbmRpbmcg
b24NCmJvYXJkLWluZm8gcmVhZCBmcm9tIEdQSU8tcGlucz8NCg0KLS0NCg0KTWl0IGZyZXVuZGxp
Y2hlbiBHcsO8w59lbiAvIEJlc3QgUmVnYXJkcw0KDQpFbG1hciBBbGJlcnQNCkVtYmVkZGVkIFIm
RA0KDQpEQVRBIE1PRFVMIEFHDQpMYW5kc2JlcmdlciBTdHIuIDMyMg0KODA2ODcgTXVuaWNoDQpH
ZXJtYW55DQoNClRlbDogKzQ5IDg5IDU2MDE3IDE5Nw0KRmF4OiArNDkgODkgNTYwMTcgMzQ1DQoN
Ck1haWwgdG86ICBlYWxiZXJ0QGRhdGEtbW9kdWwuY29tDQpJbnRlcm5ldDogaHR0cDovL3d3dy5k
YXRhLW1vZHVsLmNvbQ0KDQoNClZlcnRyYXVsaWNoZSBFLU1haWwgdm9uIC8gQ29uZmlkZW50aWFs
IGUtbWFpbCBmcm9tOiBEQVRBIE1PRFVMIEFHDQpWb3JzdGFuZCAvIENFTzogRHIuIEZsb3JpYW4g
UGVzYWhsDQpWb3JzaXR6ZW5kZSBkZXMgQXVmc2ljaHRzcmF0ZXMgLyBDaGFpcndvbWFuIG9mIHRo
ZSBTdXBlcnZpc29yeSBCb2FyZDogS3Jpc3RpbiBELiBSdXNzZWxsDQpTaXR6IGRlciBHZXNlbGxz
Y2hhZnQgLyBSZWdpc3RlcmVkIE9mZmljZTogTcO8bmNoZW4NClJlZ2lzdGVyZ2VyaWNodCAvIFJl
Z2lzdHJhdGlvbiBDb3VydDogTcO8bmNoZW4gSGFuZGVsc3JlZ2lzdGVyIEIgODUgNTkxDQoNCg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
