Delivery-date: Mon, 20 Jun 2022 15:12:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3HCl-0086lS-0y
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 15:12:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3HCk-0005jo-8f
	for lore@pengutronix.de; Mon, 20 Jun 2022 15:12:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Pw0JR0ECMm9hcs/bxv0hfdFQUuu8fc5EfO7/yMUZA8=; b=NVTigOzIkBmQ19JIDpEpNBZa/n
	Ns2l2vmBBue20HzyGGEJviD7onSA4AIenSghIO/2+aOPHHnQU/pGaWHvLU/r8+QXZcJpMWnpoxjcl
	CjTYezr3x9EL5IUnVG6F8xLk3LiPNzuIHFvKUv1YjNPVA6oSWHZP8Xdos2G5LM7JFBEhNnN83M983
	zyrOylu8QgWQBuiC28ByijbwXlAEU8BtGJCqQj60CWUEOEkpmx6nXYq9TgwrQ6gzIqnu4K85Xmp1H
	EbdRxboEWuYTlu46bSA3+9Zih8IL822dycSEONbhN0/iHXzJ8iz1zyX1tYGaepxkHZp+OAmYemihB
	MJoltrGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3HAl-000hQm-7H; Mon, 20 Jun 2022 13:10:31 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3GoM-000Wzz-E9
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 12:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655729240; x=1658321240;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6Pw0JR0ECMm9hcs/bxv0hfdFQUuu8fc5EfO7/yMUZA8=;
	b=bqeRfeJRefOu8bLNGL0AithWq51g/O4w5Xq8rtMT/pGOatIT0l0RC3nCD8y0v1w6
	8xZfX4I2T0BdvFBUJPmsV4Oib3aRLDYfzBP8MULhq4lMKFF1UUOQTiGlirHwlyDu
	TBZjtSA3MCi0D5xZXV7cvb5bQtbzZRsdrFYWIx26WAA=;
X-AuditID: c39127d2-b5e2e70000001dbe-be-62b06c581bcb
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 84.70.07614.85C60B26; Mon, 20 Jun 2022 14:47:20 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 20 Jun
 2022 14:47:22 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Mon, 20 Jun 2022 14:47:22 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "lst@pengutronix.de"
	<lst@pengutronix.de>
CC: "upstream@phytec.de" <upstream@phytec.de>
Thread-Topic: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
Thread-Index: AQHYhJ2e7m/VbJqpNUm05c+iaN9/2K1YF5OAgAAC44CAAAKIgA==
Date: Mon, 20 Jun 2022 12:47:22 +0000
Message-ID: <8f346a89044203c38012861a3aa3cf7c63499c96.camel@phytec.de>
References: <20220520142337.993417-1-t.remmet@phytec.de>
	 <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
	 <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
	 <4dbe99f8-0ae7-b24e-9596-2abdce6152f4@pengutronix.de>
In-Reply-To: <4dbe99f8-0ae7-b24e-9596-2abdce6152f4@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <9739AAF851BB2948B01F84B58E77D272@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWyRpKBRzciZ0OSwYRFohYLP+xgsjixuJ/Z
	4u/XD+wOzB6bl9R79P81CGCK4rJJSc3JLEst0rdL4Mrou36BpeCIQsWSqVuZGhhvyHcxcnJI
	CJhIrO78ytrFyMUhJLCESWLP7AuMEM4DRolV/TOhMpsYJT7+2sEK0sImoCHx8kQ3E0hCRGAx
	o8T/xrdACQ4OZgFdiROvqkFqhAVcJF6e7WcBsUUEXCX2TT3MDmE7STybehFsDouAqsS9JVeZ
	QWxeATeJ/ZtAbJBlLxglOp+tAUtwAjV8b13ABGIzCshKbNhwHizOLCAusenZd1aIHwQkluyB
	iEsIiEq8fPwPKi4vceLWNCaI2zQl1u/Sh2i1kLj+cj87hK0oMaX7ITvEDYISJ2c+YZnAKD4L
	yYZZCN2zkHTPQtI9C0n3AkbWVYxCuZnJ2alFmdl6BRmVJanJeimpmxiBEXd4ovqlHYx9czwO
	MTJxMB5ilOBgVhLhteHekCTEm5JYWZValB9fVJqTWnyIUZqDRUmc934PU6KQQHpiSWp2ampB
	ahFMlomDU6qBMd1nlU5lumfR7mtbe9sOBB8+kaFeb7isvGfxjdrQiYslguyEXddqRMRZeWhc
	2tMULTd/zYcEvd3WC69FNsZfXPxyY1WMvcLE0EzbE2aG+2eG68SHb257bjR154QZG9JWsjzb
	k3vbu7bU1Cdlh9nLmrUv/7789lLiv/WSU88e7d3xeU3UkyMuK5VYijMSDbWYi4oTAeZ0+H2m
	AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_054722_665507_0BC932CE 
X-CRM114-Status: GOOD (  37.11  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gTW9udGFnLCBkZW0gMjAuMDYuMjAyMiB1bSAxNDozOCArMDIwMCBzY2hyaWViIEFobWFkIEZh
dG91bToNCj4gSGVsbG8gVGVyZXNhLA0KPiANCj4gT24gMjAuMDYuMjIgMTQ6MjcsIFRlcmVzYSBS
ZW1tZXQgd3JvdGU6DQo+ID4gSGVsbG8gQWhtYWQsDQo+ID4gDQo+ID4gQW0gTW9udGFnLCBkZW0g
MjAuMDYuMjAyMiB1bSAxNDowMiArMDIwMCBzY2hyaWViIEFobWFkIEZhdG91bToNCj4gPiA+IEhl
bGxvLA0KPiA+ID4gDQo+ID4gPiBPbiAyMC4wNS4yMiAxNjoyMywgVGVyZXNhIFJlbW1ldCB3cm90
ZToNCj4gPiA+ID4gQXMgRERSQ19BRERSTUFQN19ST1dfQjE2IGFuZCBERFJDX0FERFJNQVA3X1JP
V19CMTcgYXJlIHVzZWQNCj4gPiA+ID4gbm93IGZvciB0aGUgcm93IHNpemUgY2FsY3VsYXRpb24g
d2UgbmVlZCB0byBpbmNyZWFzZSByb3dfbWF4IHRvDQo+ID4gPiA+IDE4Lg0KPiA+ID4gPiANCj4g
PiA+ID4gRm9yIExQRERSNCB0aGlzIG9ubHkgd29ya3MgaW4gY29tYmluYXRpb24gd2l0aCByYW0g
dGltaW5ncw0KPiA+ID4gPiBjcmVhdGVkIHdpdGggcmVjZW50IGNvbmZpZ3VyYXRpb24gc3ByZWFk
c2hlZXQgdmVyc2lvbnMuDQo+ID4gPiA+IFdpdGggb2xkZXIgdmVyc2lvbnMgdGhlIHJlZ2lzdGVy
IEREUkNfQUREUk1BUDcgbWF5IG5vdCBiZSBzZXQNCj4gPiA+ID4gYW5kDQo+ID4gPiA+IGNhbGN1
bGF0aW9uIHdpbGwgbGVhZCB0byB3cm9uZyByZXN1bHRzIGV2ZW4gd2l0aCB0aGlzIHBhdGNoLg0K
PiA+ID4gPiANCj4gPiA+ID4gRml4ZXM6IGRhZDJiNTYzNmJkOCAoIkFSTTogaW14OiBBZGQgaW14
OCBzdXBwb3J0IGZvciAxOCBiaXQNCj4gPiA+ID4gU0RSQU0NCj4gPiA+ID4gcm93IHNpemUgaGFu
ZGxlIikNCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVGVyZXNhIFJlbW1ldCA8dC5yZW1tZXRAcGh5
dGVjLmRlPg0KPiA+ID4gDQo+ID4gPiBJIGhhdmUgYW4gb3V0LW9mLXRyZWUgaS5NWDhNTSBib2Fy
ZCB3aXRoIExQRERSNCB0aGF0IHJlcG9ydGVkIGENCj4gPiA+IGNvcnJlY3Qgc2l6ZSBvZiAxRw0K
PiA+ID4gcHJpb3IgdG8gdGhpcyBwYXRjaCBhbmQgbm93IGl0IHJlcG9ydHMgNEcuIEREUkNfQURE
Uk1BUDcgaXMgbm90DQo+ID4gPiBleHBsaWNpdGx5IGluaXRpYWxpemVkLA0KPiA+ID4gYnV0IGl0
J3MgYmVpbmcgcmVhZCBhcyB6ZXJvLCBzbyB0aGUgY2FsY3VsYXRpb24gc2VlbXMgdG8gc3RpbGwg
YmUNCj4gPiA+IGJyb2tlbi4uDQo+ID4gDQo+ID4geWVzLCB0aGlzIGlzIHdoeSBJIGFkZGVkIHRo
ZSBub3RlIHRvIHRoZSBjb21taXQgbWVzc2FnZS4gVGhlIFJBTQ0KPiA+IHRpbWluZ3Mgb2YgdGhl
IGJvYXJkIHlvdSBhcmUgdXNpbmcgaGF2ZSBiZWVuIGNyZWF0ZWQgd2l0aCBhIG9sZA0KPiA+IHZl
cnNpb24NCj4gPiBvZiB0aGUgc3ByZWFkc2hlZXQgKCA8IHZlcnNpb24gMTkgZm9yIGkuTVg4TU0p
Lg0KPiA+IFRoaXMgaXNzdWUgaXMgd29ya2VkIGFyb3VuZCB3aGVuIHRoaXMgcGF0Y2ggaXMgcmV2
ZXJ0ZWQgYXMNCj4gPiBERFJDX0FERFJNQVA3IGlzIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIEJ1
dCBjYWxjdWxhdGluZyBiaWcgcmFtDQo+ID4gc2l6ZXMNCj4gPiB3aWxsIHByb2JhYmx5IG5vdCB3
b3JrIHRoZW4uDQo+ID4gDQo+ID4gSSBoYXZlIHNldCB0aGUgRERSQ19BRERSTUFQNyByZWdpc3Rl
ciBtYW51YWxseSBpbiB0aGUgUkFNDQo+ID4gY29uZmlndXJhdGlvbg0KPiA+IGluIHN1Y2ggYSBj
YXNlLiBBcyBJIGRvbid0IHNlZSBhIHNvbHV0aW9uIHRoYXQgZml0cyBmb3IgYWxsLiBCdXQNCj4g
PiB3b3VsZA0KPiA+IGJlIGhhcHB5IGZvciBvbmUuIDopDQo+IA0KPiBXaGF0IHdvdWxkIHRoZSAn
bmV1dHJhbCcgdmFsdWUgdG8gd3JpdGUgaW50byB0aGlzIHJlZ2lzdGVyIGJlPyB6ZXJvDQo+IHNl
ZW1zIHRvIG5vdCBiZSBpdC4NCg0KaXQncyANCg0KMHhmMGYgZm9yIEFERFJNQVA3Lg0KDQpSZWZl
cmVuY2UgTWFudWFsIHNheXM6ICJJZiBzZXQgdG8gMTUsIHJvdyBhZGRyZXNzIGJpdCBYIGlzIHNl
dCB0byAwIg0KDQpSZWdhcmRzLA0KVGVyZXNhDQoNCg0KPiANCj4gVGhhbmtzLA0KPiBBaG1hZA0K
PiANCj4gPiBSZWdhcmRzLA0KPiA+IFRlcmVzYQ0KPiA+IA0KPiA+ID4gPiAtLS0NCj4gPiA+ID4g
IGFyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jIHwgMiArLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMgYi9hcmNoL2FybS9tYWNoLQ0KPiA+
ID4gPiBpbXgvZXNkY3RsLmMNCj4gPiA+ID4gaW5kZXggOGRkMGRkYmJjOTY1Li5iMDcwZWJjNjJh
NDUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jDQo+ID4g
PiA+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jDQo+ID4gPiA+IEBAIC00ODgsNyAr
NDg4LDcgQEAgc3RhdGljIHJlc291cmNlX3NpemVfdA0KPiA+ID4gPiBpbXg4bV9kZHJjX3NkcmFt
X3NpemUodm9pZCBfX2lvbWVtICpkZHJjKQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJcmV0dXJuIGlt
eF9kZHJjX3NkcmFtX3NpemUoZGRyYywgYWRkcm1hcCwNCj4gPiA+ID4gIAkJCQkgICAxMiwgQVJS
QVlfQU5EX1NJWkUoY29sX2IpLA0KPiA+ID4gPiAtCQkJCSAgIDE2LCBBUlJBWV9BTkRfU0laRShy
b3dfYiksDQo+ID4gPiA+ICsJCQkJICAgMTgsIEFSUkFZX0FORF9TSVpFKHJvd19iKSwNCj4gPiA+
ID4gIAkJCQkgICByZWR1Y2VkX2FkcmVzc19zcGFjZSwgdHJ1ZSk7DQo+ID4gPiA+ICB9DQo+ID4g
PiA+ICANCj4gDQo+IA0KLS0gDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2No
LVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlw
bC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxz
cmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAw
NjA4LCBERQ0KMTQ5MDU5ODU1DQo=


