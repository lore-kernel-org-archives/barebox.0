Delivery-date: Tue, 29 Jun 2021 13:35:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyC20-00045b-5u
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 13:35:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyC1z-0003Ev-5i
	for lore@pengutronix.de; Tue, 29 Jun 2021 13:35:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEUp1x3Tj7g4LB2kfVMatjkJZpozmTslMbYqNs4UlSA=; b=l4o0VQeJJ8Hmk+
	dMPl/oZVih01Rhg2m6AM0T2vovswqwiIsAZwOLjjngLTWfyv/TZ4or6B1p12zAQHpK3A54v6oAspE
	yptSt8RaEWjN0cvcMfAhlKa29Kf3JM+LINgRrQ02ygX4AO42frh2razVIjh0Yr0JUEQ70paCaYKN1
	fjN9vo7Sj6ukSQtDW1WzJm8/IITgeecI17oEV4+b0e0k95+6FYb5PFow5vsWtyuNavKQrffAaaiP6
	DhjMCHnXJOM1jkoxzS9GTX8RTOpVUaFH8n4cti6+9jxc2Ro/m/d+pZJrlcWU3Qj2gtl3p1ytHirSY
	qPffTQoA0Io7vagNc5TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyC06-00Ag2m-0f; Tue, 29 Jun 2021 11:33:58 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyC00-00Ag24-Ki
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 11:33:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1624966427; x=1627558427;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u4DWWZlwgL5J7Y1UHD2aSUeRL6PAK+NByCV440fGVzY=;
 b=PYFSGqrQeazULOwnOBmH/gWuvwl0xnXaZyZNrW2Y1twCUkPoZfoZB7QPiOyiwkav
 VLIc2hbqbGU9v018nHo8+occVNusfVTijDkFpFIxgZIqye0AYL8rBQ4nI8tYZ+GM
 I57i1YihNMN9Ho2l4ceZT4OsKYVaV9jCJkI4mW8nHGY=;
X-AuditID: c39127d2-a9fbd70000001c5e-b5-60db051b22c4
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C6.97.07262.B150BD06;
 Tue, 29 Jun 2021 13:33:47 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Tue, 29 Jun
 2021 13:33:47 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Tue, 29 Jun 2021 13:33:47 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "michael.riesch@wolfvision.net" <michael.riesch@wolfvision.net>,
 "sha@pengutronix.de" <sha@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH v2] commands: of_property: Extend command usage on
 external dtb
Thread-Index: AQHXadxSG7cm2QpWw0qxhf3nqz06JaspwZgAgADabYCAACP2gA==
Date: Tue, 29 Jun 2021 11:33:47 +0000
Message-ID: <d9f643320cc9af6c1ad3fb8170cdd8f6de0dcfb6.camel@phytec.de>
References: <20210625160555.3699702-1-y.bas@phytec.de>
 <20210628202314.GR9782@pengutronix.de>
 <f692a44f-e182-0091-3c73-5d4191ce7d62@wolfvision.net>
In-Reply-To: <f692a44f-e182-0091-3c73-5d4191ce7d62@wolfvision.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <80D8B739DE6E0A498118B03F7211AA7F@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsWyRoChTFea9XaCwbN/ahYnFvczWxxcqGLx
 aPMsVgdmj81L6j36/xp4zP/9mDGAOYrLJiU1J7MstUjfLoEr42TnHuaCF1IVHRdWsTYwTpDq
 YuTkkBAwkei9fJeti5GLQ0hgOZPE0QPH2EESQgIPGSUe/JaHSGxilNhy4BpQFQcHm4CixJVb
 +SA1IgIFEpMm/2ECCTML2Eus6JAFCQsLhEp0rmphhigJk/jfexzKdpJonnQVbDyLgKrE1nn/
 wWxeATeJ6/f3sEOsmsko8X3ucbAEJ1DDhr3HmEBsRgFZiQ0bzoMNYhYQl9j07DsrxAMCEkv2
 QMQlBEQlXj7+BxVXkGjr6YS6TVNi/S59iFYLib6WTnYIW1FiSvdDqBsEJU7OfMIygVF8FpIN
 sxC6ZyHpnoWkexaS7gWMrKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAmPu8ET1SzsY++Z4HGJk
 4mA8xCjBwawkwvs271aCEG9KYmVValF+fFFpTmrxIUZpDhYlcd4NvCVhQgLpiSWp2ampBalF
 MFkmDk6pBsaKrU93i9y0s5R6zXn/kMhOrvRozfxHtcczz653WyGYv/zH6t9Gqe/m11/Pv5/6
 uXhJyjfTAwtZWuv/5qvI+0Udn7Lwud6jdTPq5ZsqHqb8l1l+y2Zj1Ur7a8veO36Y3RWaky28
 5kDlH83YumDVV91CTH2bpy3Z1sVmFmP2gId1i9oVZhaem5pKLMUZiYZazEXFiQA/Ru6EpwIA
 AA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_043352_866363_4820B7E4 
X-CRM114-Status: GOOD (  31.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: of_property: Extend command usage on
 external dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgTWljaGFlbCwNCg0KQW0gRGllbnN0YWcsIGRlbSAyOS4wNi4yMDIxIHVtIDExOjI1ICswMjAw
IHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6DQo+IEhlbGxvIFNhc2NoYSwNCj4gDQo+IE9uIDYvMjgv
MjEgMTA6MjMgUE0sIFNhc2NoYSBIYXVlciB3cm90ZToNCj4gPiBPbiBGcmksIEp1biAyNSwgMjAy
MSBhdCAwNjowNTo1NVBNICswMjAwLCBZdW51cyBCYXMgd3JvdGU6DQo+ID4gPiBUaGUgc2NvcGUg
b2YgdGhlIG9mX3Byb3BlcnR5IGNvbW1hbmQgaXMgbGltaXRlZCB0byB0aGUgaW50ZXJuYWwNCj4g
PiA+IGRldmljZXRyZWUNCj4gPiA+IG9ubHkuIFRoZXJlIGlzIHRoZSBwb3NzaWJpbGl0eSB0byBh
ZGQgZml4dHVyZXMgdG8gcG9zdHBvbmUgdGhlDQo+ID4gPiBvcGVyYXRpb24NCj4gPiA+IHVudGls
IGJvb3QgYW5kIGFmdGVyIHRoZSBrZXJuZWwgRFRCIGlzIGFscmVhZHkgbG9hZGVkLCBidXQgdGhp
cw0KPiA+ID4gZG9lcyBub3QNCj4gPiA+IGNvdmVyIHRoZSBjYXNlIHdoZW4gdGhlIHByb3BlcnR5
IHZhbHVlIG5lZWRzIHRvIGJlIHBoYW5kbGUNCj4gPiA+IGFkcmVzc2VzDQo+ID4gPiBkZWZpbmVk
IGluIHRoZSBleHRlcm5hbCBEVEIsIHNpbmNlIGFzc2lnbmVkIHZhbHVlcyBhcmUgZXZhbHVhdGVk
DQo+ID4gPiBpbW1lZGlhdGx5Lg0KPiA+ID4gDQo+ID4gPiBUaGlzIHBhdGNoIGV4dGVuZHMgdGhl
IG9mX3Byb3BlcnR5LWNvbW1hbmQgdG8gdXNlIGl0IG9uIGV4dGVybmFsDQo+ID4gPiBEVEIncyBh
cw0KPiA+ID4gd2VsbC4gSW4gY2FzZSBmaXh1cCBpcyBub3QgdXNlZCwgdGhlIGNoYW5nZXMgd2ls
bCBhbHNvIGFmZmVjdCB0aGUNCj4gPiA+IG9yaWdpbmFsDQo+ID4gPiBkYXRhLg0KPiA+ID4gDQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBZdW51cyBCYXMgPHkuYmFzQHBoeXRlYy5kZT4NCj4gPiA+IC0t
LQ0KPiA+ID4gQ2hhbmdlcyBpbiB2MjoNCj4gPiA+IC0gVXNlICVtIGluc3RlYWQgb2YgIiVzIiwg
c3RyZXJyb3IoZXJybm8pDQo+ID4gPiAtIE5vdCBmaXhpbmcgZGV2aWNldHJlZSBhbnltb3JlIGJl
Zm9yZSBzYXZlDQo+ID4gPiAtLS0NCj4gPiA+IMKgY29tbWFuZHMvb2ZfcHJvcGVydHkuYyB8IDc0
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQ0KPiA+ID4gLS0tLS0tDQo+ID4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBBcHBsaWVkLCB0aGFua3MNCj4gPiANCj4gPiBTYXNjaGENCj4gDQo+IG9uIHRoZSBj
dXJyZW50IG5leHQgdGhpcyBwYXRjaCBjb2xsaWRlcyB3aXRoICJmZHQ6IENoZWNrIGJsb2Igc2l6
ZQ0KPiBkdXJpbmcgdW5mbGF0dGVuaW5nIiBhcyB0aGUgY2FsbA0KPiANCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByb290ID0gb2ZfdW5mbGF0dGVuX2R0YihmZHQpOw0KPiAN
Cj4gcmVxdWlyZXMgbm93IGFuIGV4dHJhIHNpemUgYXJndW1lbnQuDQo+IA0KPiBUaGVyZSBpcyBh
IHZhcmlhYmxlICJzaXplIiBiZWZvcmUgdGhlIGNhbGwuIElzIGl0IHNhZmUgdG8gdXNlIGl0Pw0K
DQpUaGUgc2l6ZSB2YXJpYWJsZSBpcyByZWFkIGZyb20gdGhlIGR0Yiwgc28gSSB0aGluayBpdCdz
IGFsc28gaW50ZW5kZWQNCnRvIHVzZSBpdC4gU2hhbGwgSSBzZW5kIGEgdjMgb3IgY2FuIHlvdSBh
cHBseSB0aGUgY2hhbmdlPw0KDQpSZWdhcmRzLCBZdW51cw0KDQo+IA0KPiBSZWdhcmRzLCBNaWNo
YWVsDQoNCi0tIA0KTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbg0KWXVudXMgQmFzDQoNCi1Tb2Z0
d2FyZSBFbmdpbmVlci0NClBIWVRFQyBNZXNzdGVjaG5payBHbWJIDQpSb2JlcnQtS29jaC1TdHIu
IDM5DQo1NTEyOSBNYWlueg0KR2VybWFueQ0KVGVsLjogKzQ5ICgwKTYxMzEgOTIyMS0gNDY2DQpX
ZWI6IHd3dy5waHl0ZWMuZGUNCg0KU2llIGZpbmRlbiB1bnMgYXVjaCBhdWY6IEZhY2Vib29rLCBM
aW5rZWRJbiwgWGluZywgWW91VHViZQ0KDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVy
dC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFueQ0KR2VzY2jDpGZ0c2bDvGhyZXI6
IERpcGwuLUluZy4gTWljaGFlbCBNaXRlemtpLCBEaXBsLi1JbmcuIEJvZG8gSHViZXIgfA0KSGFu
ZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwgRmluYW56YW10IE1haW56IHwgU3QuTnIuIDI2
NjUwMDYwOCwgREUNCjE0OTA1OTg1NQ0KVGhpcyBFLU1haWwgbWF5IGNvbnRhaW4gY29uZmlkZW50
aWFsIG9yIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIElmIHlvdQ0KYXJlIG5vdCB0aGUgaW50ZW5k
ZWQgcmVjaXBpZW50IChvciBoYXZlIHJlY2VpdmVkIHRoaXMgRS1NYWlsIGluIGVycm9yKQ0KcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IHRoaXMgRS1NYWls
LiBBbnkNCnVuYXV0aG9yaXplZCBjb3B5aW5nLCBkaXNjbG9zdXJlIG9yIGRpc3RyaWJ1dGlvbiBv
ZiB0aGUgbWF0ZXJpYWwgaW4NCnRoaXMgRS1NYWlsIGlzIHN0cmljdGx5IGZvcmJpZGRlbi4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

