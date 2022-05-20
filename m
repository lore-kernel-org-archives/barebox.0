Delivery-date: Fri, 20 May 2022 16:57:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns441-003B4O-5n
	for lore@lore.pengutronix.de; Fri, 20 May 2022 16:57:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns43z-0004JO-TH
	for lore@pengutronix.de; Fri, 20 May 2022 16:57:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xw4/hcAEv/PMbZViZg675sqd1/w6A13DjV5/vzR6w8o=; b=crmGie6Zn/fdMK
	+hfwUOGolL8R8ZBogFhkYpg4gq2Peg/LBMMHM/3PCbFwdLaAoHvn6Q9JRzogFoaY+6us5j4g/5ztj
	MIWNJbpuoamsa2Fg7jIUt1NhHtVAp9LL4QHZScNg8QCmdkA6WJDanljh6f7pDSM4oGQwUcpHN0+dt
	8iqeAyvnbRkSVo75bwgOPm/+hh3tnrR9YgpNosMc+Vdl9UMjZpl/J6wJpViv2S27HgBNlXXZGkCN9
	pTuQ3iKoTuasDxL5fnQ3oBdGHboE0k0GfPN4zp5sApTB3iE+djBQ5uVYWo0B8oXs+MzewmoG5QCk1
	aS/J//di3RQa5qJY4vYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns42O-00D0Uz-JC; Fri, 20 May 2022 14:55:32 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns42J-00D0Tz-LC
 for barebox@lists.infradead.org; Fri, 20 May 2022 14:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1653058525; x=1655650525;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EwTFP0BqqiXuHu28pdpnY/oyjtOZPhq+NshA9giSFrU=;
 b=oN9pi2FPMfhhRIFGn50vTvaOoh7uHOMgC0ru+0qEE71i3uZP3gvJfrnfjVlU0R9I
 7bADRC9xtLUXaL/8/YHZXccIycpq5gQnPZvsKQZ9Nm6Y18JysfYPtfrLMujTg1rK
 PRyrUZjlTz0ZFLtDiiV6SgK/oESUU+emSfSrK5eM8qI=;
X-AuditID: c39127d2-7cf7e70000000701-aa-6287abddd53f
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 4A.45.01793.DDBA7826;
 Fri, 20 May 2022 16:55:25 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Fri, 20 May
 2022 16:55:25 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018; 
 Fri, 20 May 2022 16:55:25 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
Thread-Index: AQHYZtQyKTvKhUvBzUSNv5QVk6zBca0nuT4AgAAEpQCAAAYyAA==
Date: Fri, 20 May 2022 14:55:25 +0000
Message-ID: <502bdadcc328e32507b8243dab95d434e6ccb28b.camel@phytec.de>
References: <20220513141625.1411217-1-l.stach@pengutronix.de>
 <a1ec13152a5ae7b4a32fcc2a63e40be36335aa06.camel@phytec.de>
 <9b80b387dfdf2a64304eed26b378538419e8f10b.camel@pengutronix.de>
In-Reply-To: <9b80b387dfdf2a64304eed26b378538419e8f10b.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-ID: <21DEE4E677BE004BBFF7A7A0DCD55AFE@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkkeLIzCtJLcpLzFFi42JZI8nAq3t3dXuSQe9yTYsTi/uZLR7Mvcnk
 wOSxeUm9R/9fgwCmKC6blNSczLLUIn27BK6M5a/XshQ0KVZs3POFtYFxikIXIweHhICJxPLz
 KV2MXBxCAkuYJDpWb2OGcB4wSvSv/MsO4WxilOjs/MDUxcjJwSagIfHyRDeYLSJQIvHp4W5G
 EFtYwEliR/czFoi4s8TLy/dYIWwnicef1oPZLAKqEqtWX2QDsXkF3CQuX9jDBLFgH6PE+snT
 wYZyCvhIzJi/D2woo4CsxIYN55lBbGYBcYlNz76DDZIQEJBYsgciLiEgKvHy8T+ouLzEiVvT
 mEBeYxbQlFi/Sx+i1UJi4doHjBC2osSU7ofsEDcISpyc+YRlAqPYLCQbZiF0z0LSPQtJ9ywk
 3QsYWVcxCuVmJmenFmVm6xVkVJakJuulpG5iBEbT4Ynql3Yw9s3xOMTIxMF4iFGCg1lJhJcx
 tyVJiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/9HqZEIYH0xJLU7NTUgtQimCwTB6dUA2O10mMW
 RZn/fmJCj00SNO2nxS7a9qJ85dKyywH97Vu+OsVXp6YsDz0a5f9UpcRlz1HNDXUvGOZr7nqf
 Krktz/jB4Y4pBayrEnidFqzRm1ysWPTy4exSWw8urbc/ZZf6XG6YqOku5/emJTKnn2vzjDuX
 Hk6XzOZUzjm6ZeY/zjszguK3Jzlx6CixFGckGmoxFxUnAgD2CqXqlAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_075527_880883_98DCBC6D 
X-CRM114-Status: GOOD (  31.07  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRnJlaXRhZywgZGVtIDIwLjA1LjIwMjIgdW0gMTY6MzMgKzAyMDAgc2NocmllYiBMdWNhcyBT
dGFjaDoNCj4gSGkgVGVyZXNhLA0KPiANCj4gQW0gRnJlaXRhZywgZGVtIDIwLjA1LjIwMjIgdW0g
MTQ6MTYgKzAwMDAgc2NocmllYiBUZXJlc2EgUmVtbWV0Og0KPiA+IEhlbGxvIEx1Y2FzLA0KPiA+
IA0KPiA+IEFtIEZyZWl0YWcsIGRlbSAxMy4wNS4yMDIyIHVtIDE2OjE2ICswMjAwIHNjaHJpZWIg
THVjYXMgU3RhY2g6DQo+ID4gPiBUaGUgRERSQyBvbmx5IHVzZXMgdGhlIERFVklDRV9DT05GSUcg
ZmllbGQgZm9yIG1lbW9yeSB0eXBlcyBvdGhlcg0KPiA+ID4gdGhhbg0KPiA+ID4gTFBERFI0LiBX
aGlsZSBMUEREUjQgYWx3YXlzIGhhcyBhIGJ1cyB3aWR0aCBvZiB4MzIsIHRoZSBzY3JpcHQNCj4g
PiA+IGFpZA0KPiA+IA0KPiA+IHRoaXMgaXMgbm90IHRydWUgZm9yIGkuTVg4TSBOYW5vLiBUaGlz
IFNvQyBoYXMgb25seSB4MTYuIFRoaXMgaXMNCj4gPiBwcm9iYWJseSB3aHkgcmVhZGluZyB0aGUg
cmVnaXN0ZXIgd29ya2VkIGZvciBKb2FjaW0gb24gaW14OG1uLg0KPiA+IFNvIHRoZXJlIGlzIHNv
bWUgbW9yZSBjaGVja2luZyBuZWVkZWQuDQo+ID4gDQo+IERvZXMgdGhlIDhNTiByZWFsbHkgdXNl
IHRoZSBERVZJQ0VfQ09ORklHIHRvIGNvbmZpZ3VyZSB0aGUgTFBERFI0IGJ1cw0KPiB0byAxNmJp
dCB3aWR0aCwgb3IgZG9lcyBpdCB1c2UgdGhlIERBVEFfQlVTX1dJRFRIIGNvbnRyb2wgdG8gbGlt
aXQNCj4gdGhlDQo+IGJ1cyB0byAxNmJpdD8NCj4gDQo+IFRoZSByZWdpc3RlciBwcm9ncmFtbWlu
ZyBhaWQgc3ByZWFkc2hlZXQgZm9yIHRoZSA4TU4gY2xhaW1zIHRoYXQNCj4gREVWSUNFX0NPTkZJ
RyBoYXMgbm8gZWZmZWN0IG9uIExQRERSNCBtZW1vcnksIHNhbWUgYXMgZm9yIGFsbCBvdGhlcg0K
PiBpLk04TSogdmFyaWFudHMuIEJ1dCB0aGVuIHRoZSBzcHJlYWRzaGVldCBtYXkgaGF2ZSBjb3B5
LWFuZC1wYXN0ZQ0KPiBpc3N1ZXMuIFNvIG1heWJlIHdlIGRvIGluIGZhY3QgbmVlZCB0byBrbm93
IHRoYXQgbmF0aXZlIGJ1cyB3aWR0aCBvZg0KPiBjb250cm9sbGVyIGltcGxlbWVudGF0aW9uIG9u
IHRoZSBzcGVjaWZpYyBTb0MgdG8gZ2V0IHRoaW5ncyByaWdodCBmb3INCj4gTFBERFI0Pw0KDQp3
aGVuIGxvb2tpbmcgYmVoaW5kIHRoZSBmb3JtdWxhcyBvZiB0aGUgREFUQV9CVVNfV0lEVEggaW4g
dGhlDQpzcHJlYWRzaGVldCBmb3IgaS5NWDhNTiAiRnVsbCBEUSBidXMgd2lkdGgiIG1lYW5zIGFs
d2F5cyAxNmJpdC4gRm9yDQppLk1YOE1NICsgaS5NWDhNUCBhbHdheXMgMzJiaXQuIFNvIHllcywg
SSBndWVzcyB3ZSBuZWVkIHRvIGNoZWNrIGZvcg0KdGhlIFNvQyB3ZSBhcmUgcnVubmluZyBvbiB0
byBnZXQgaXQgcmlnaHQuDQoNClJlZ2FyZHMsDQpUZXJlc2ENCg0KPiANCj4gUmVnYXJkcywNCj4g
THVjYXMNCj4gDQo+ID4gUmVnYXJkcywNCj4gPiBUZXJlc2ENCj4gPiANCj4gPiA+IGdlbmVyYXRl
cyB0aGUgdmFsdWUgZm9yIGEgeDE2IGJ1cywgYXMgdGhpcyB3YXMgYXBwYXJlbnRseSB1c2VkDQo+
ID4gPiBmb3INCj4gPiA+IHRoZQ0KPiA+ID4gY29udHJvbGxlciB2YWxpZGF0aW9uLiBUaGlzIHJl
c3VsdGVkIGluIHRoZSBjYWxjdWxhdGVkIERSQU0gc2l6ZQ0KPiA+ID4gdG8NCj4gPiA+IGJlDQo+
ID4gPiBoYWx2ZWQgb24gYm9hcmRzIHdpdGggTFBERFI0IG1lbW9yeS4NCj4gPiA+IA0KPiA+ID4g
Rml4ZXM6IGQ4ZDU3NzhlZThjMiAoIkFSTTogaW14OiBDb3JyZWN0IG1lbSBzaXplIGNhbGN1bGF0
aW9uIGZvcg0KPiA+ID4gNC84LzE2LzMyIGJpdCBidXMgd2lkdGgiKQ0KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+DQo+ID4gPiAtLS0NCj4g
PiA+ICBhcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYyB8IDIgKy0NCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL21hY2gtaW14L2VzZGN0bC5jIGIvYXJjaC9hcm0vbWFjaC0NCj4gPiA+
IGlteC9lc2RjdGwuYw0KPiA+ID4gaW5kZXggZDNkYmZmZjQyM2RhLi40Yzg3NjVjMTkzZDAgMTAw
NjQ0DQo+ID4gPiAtLS0gYS9hcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYw0KPiA+ID4gKysrIGIv
YXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMNCj4gPiA+IEBAIC0zOTIsNyArMzkyLDcgQEAgaW14
X2RkcmNfc2RyYW1fc2l6ZSh2b2lkIF9faW9tZW0gKmRkcmMsIGNvbnN0DQo+ID4gPiB1MzINCj4g
PiA+IGFkZHJtYXBbXSwNCj4gPiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4gIAkvKiBCdXMgd2lkdGgg
aW4gYnl0ZXMsIDAgbWVhbnMgaGFsZiBieXRlIG9yIDQtYml0IG1vZGUgKi8NCj4gPiA+IC0JaWYg
KGlzX2lteDgpDQo+ID4gPiArCWlmIChpc19pbXg4ICYmICEobXN0ciAmIEREUkNfTVNUUl9MUERE
UjQpKQ0KPiA+ID4gIAkJd2lkdGggPSAoMSA8PCBGSUVMRF9HRVQoRERSQ19NU1RSX0RFVklDRV9D
T05GSUcsIG1zdHIpKQ0KPiA+ID4gPiA+IDE7DQo+ID4gPiAgCWVsc2UNCj4gPiA+ICAJCXdpZHRo
ID0gNDsNCj4gPiAtLSANCj4gPiBQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2No
LVN0ci4gMzkgfCA1NTEyOSBNYWlueiwNCj4gPiBHZXJtYW55DQo+ID4gDQo+ID4gR2VzY2jDpGZ0
c2bDvGhyZXI6IERpcGwuLUluZy4gTWljaGFlbCBNaXRlemtpLCBEaXBsLi1JbmcuIEJvZG8gSHVi
ZXINCj4gPiB8DQo+ID4gSGFuZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwgRmluYW56YW10
IE1haW56IHwgU3QuTnIuDQo+ID4gMjY2NTAwNjA4LCBERQ0KPiA+IDE0OTA1OTg1NQ0KPiANCj4g
DQotLSANClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwgUm9iZXJ0LUtvY2gtU3RyLiAzOSB8IDU1
MTI5IE1haW56LCBHZXJtYW55DQoNCkdlc2Now6RmdHNmw7xocmVyOiBEaXBsLi1JbmcuIE1pY2hh
ZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2RvIEh1YmVyIHwNCkhhbmRlbHNyZWdpc3RlciBNYWlu
eiBIUkIgNDY1NiB8IEZpbmFuemFtdCBNYWlueiB8IFN0Lk5yLiAyNjY1MDA2MDgsIERFDQoxNDkw
NTk4NTUNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK

