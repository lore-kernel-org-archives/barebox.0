Delivery-date: Mon, 03 May 2021 16:39:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldZjQ-0003OW-5g
	for lore@lore.pengutronix.de; Mon, 03 May 2021 16:39:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldZjP-0003vj-3s
	for lore@pengutronix.de; Mon, 03 May 2021 16:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EyyGs7Nbp50zEIyIohSwiMHVCz+xHMvNYC9BOJb99GE=; b=HnZMlueg+y1cdfSkBNjLb5G3l
	jq5nnUyG3u9naRIlAd1ZSUCCSe1lhXq0rwHOECAVriRSEGqW8BawnVtlIiJRQOJRE4XQuezod17GV
	ODexlWOJprBamh+J1BZzZa3+n76IHKYVGGGiEiI0MN3iZDBTaFqH9EAusKdPPYdcMmVwD/7r7jZVr
	X3+15UVffE2bPs8V+V4jTQH4ERodlnx4fjeVTGEZpxME+jxFqkSzeGN8QoajCpzKu+A7kH69NZUYN
	sXeG5lX6+TOqbk7+kuxRyfpIOfh+qpD8Sz0oq/4PihDxkjltvHj0YW0zc+UQrRelUGKSxl15EU7B/
	G//2mH4eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldZiM-00E5P9-5X; Mon, 03 May 2021 14:38:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldZi7-00E5O1-P4
 for barebox@desiato.infradead.org; Mon, 03 May 2021 14:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description;
 bh=S3nLHai29IMww8y9dd6gtRTsY6OwQa1LspOH86xFPrw=; b=zcJIwp0H3WcPM+CRg3dOXdZwZx
 pbmADdVMrOas12zPO4ViVSt8QO99fiGKItkC7KJmrT1StYD5KYm39yusNXPOotukU21MVxhyhFFoz
 nLYtKhBtzJL9yMxZSujtxCK6cUTDfZZ1VXrt2mi2dQwL0KVdSCVg2dyEVNwU1k4StgsR/taTzoTFj
 1X8HAd7My/pFMIAGAOgBBBfPirRiuVB8zjgW7oIviSQ/vtW9wvFTINNz3BFILDPC2+UMST6ArEuEF
 oVdeTN1GIOLtFBm41KeXOgLyBwmb3J55HqHeS1FdK/hH+yf+UyesAQVLuw6AsQA/cnjSDpiRoASkV
 dzK+clEA==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldZi4-00389I-UV
 for barebox@lists.infradead.org; Mon, 03 May 2021 14:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1620052683; x=1622644683;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S3nLHai29IMww8y9dd6gtRTsY6OwQa1LspOH86xFPrw=;
 b=kiErV9yG2F0TBUov83x6bxtVUg+R0v1UTza71NhX3CfyLjVo0c1cCvxSweYPDpAb
 8Ejgq/J1vTGjswghrFBrH3Bg9vrlfvBHP8ThXiWQX2P/dQF92HjxKhdI+URupAYV
 0kVT3JVGRoU+A2eopCHV46zglGdxECdgvjvYMWFd3bM=;
X-AuditID: c39127d2-324b870000001c53-36-60900acb4bb6
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AF.7D.07251.BCA00906;
 Mon,  3 May 2021 16:38:03 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 3 May 2021
 16:38:02 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Mon, 3 May 2021 16:38:02 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
Thread-Topic: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for
 kernel compatibility
Thread-Index: AQHXQBgJib0Np6HCIUC9/zI5R4x9eqrRkNkAgAAhRgA=
Date: Mon, 3 May 2021 14:38:02 +0000
Message-ID: <e517407598dcd0e80de1918037d06f1b3c3214cd.camel@phytec.de>
References: <20210503122550.2951035-1-y.bas@phytec.de>
 <764115d0-c22e-8c22-4533-1a11e48d3748@pengutronix.de>
In-Reply-To: <764115d0-c22e-8c22-4533-1a11e48d3748@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <E0678F01047F4940B2BD7C2A3AA32C3D@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPLMWRmVeSWpSXmKPExsWyRoChTPc014QEgzedAhYLP+xgsjixuJ/Z
 gclj85J6j/6/BgFMUVw2Kak5mWWpRfp2CVwZl87uYS94Y1zxeetr9gbGA0ZdjJwcEgImElPX
 LmPqYuTiEBJYziSx+P1jRpCEkMADRolZq/ggEhsZJRas+c3SxcjBwSagKHHlVj5IjYhAmcTH
 J7/B6oUFEiSeL33ODBFPlHhw5xE7hG0lcfr5NbA4i4CKRPfzrSwgNq+Am8SmrbfYIHblSzzf
 0wVmcwo4SWz9thNsJqOArMSGDefBepkFxCU2PfvOCnG0gMSSPRBxCQFRiZeP/0HFFSTaejqZ
 QM5kFtCUWL9LH6LVQuL38fdsELaixJTuh+wQJwhKnJz5hGUCo9gsJBtmIXTPQtI9C0n3LCTd
 CxhZVzEK5WYmZ6cWZWbrFWRUlqQm66WkbmIERtLhieqXdjD2zfE4xMjEwXiIUYKDWUmEt2Bt
 f4IQb0piZVVqUX58UWlOavEhRmkOFiVx3g28JWFCAumJJanZqakFqUUwWSYOTqkGxi2cVual
 1/Vz72inFrNJbfDZZcmzb4bekefCyov7sjP4c6f5Jpw2vtu3k+3W/K2dtf+WHshXj6jMWT7B
 +vMSF98HFqvf/N/0TohRcvmNOcm7t/vUW8VUOfbf92Yq1rE7wnRYks1yuomyhfW7eO4L9fc+
 zT/y9lZ5Y+6j6KoZDBFvj7e+PZ+rr8RSnJFoqMVcVJwIABt/TJSSAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_073809_153059_081D5F40 
X-CRM114-Status: GOOD (  25.72  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for
 kernel compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgQWhtYWQsDQoNClRoZSBtYWluIHB1cnBvc2UgYmVoaW5kIGFkZGluZyBNVEQtcGFydGl0aW9u
cyBhcyBOVk1FTS1kZXZpY2VzIHdhcyB0bw0KaGF2ZSBhIGZhc3QgYW5kIHVuY29tcGxpY2F0ZWQg
YWNjZXNzIG9uIHBhcnRpdGlvbnMgd2l0aCBzZW5zaXRpdmUgZGF0YSwNCmVzcGVjaWFsbHkgb24g
ZW1iZWRkZWQgc3lzdGVtcy4gSSB0aGluaywgdGhlcmUgaXMgYSByZWFzb25pbmcgZm9yIGl0LA0K
YnV0IG5ldmVydGhlbGVzcywgdGhlIG9yaWdpbmFsIGtlcm5lbCBwYXRjaCBpcyBmcm9tIDIwMTgu
DQoNClRvIHNheSB0aGUgdHJ1dGgsIHRoZXJlIGlzIGFscmVhZHkgYW4gdXBzdHJlYW0gZml4IGZv
ciB0aGUgbmFtZS0NCmNsYXNoaW5nLCB3aGljaCByZWdpc3RlcnMgdGhlIE5WTUVNIGRldmljZXMg
d2l0aCB0aGUgdW5pcXVlIGRldmljZQ0KbmFtZXMsIGluc3RlYWQgb2YgdGhlIE1URC1uYW1lcy4g
SSBoYWQgdHdvIG9wdGlvbnMgaGVyZSwgb25lIHdhcyB0bw0KcmV2ZXJ0IHRoZSBmaXJzdCBwYXRj
aCB3aXRoIHRoZSBjaGFuZ2UgZm9yIHBoeUNvcmUsIHRoZSBvdGhlciB3YXMgdG8NCmZvbGxvdyB1
cCB3aXRoIHRoZSBwaHlGTEVYLW1vZHVsZS4gSSd2ZSBjaG9zZW4gdGhlIGxhdHRlciBvbmUsIHNp
bmNlIEkNCmZlbHQgaXQgaGFzIG1vcmUgcmVhZGFiaWxpdHkuDQoNClJlZ2FyZHMsDQpZdW51cw0K
DQpBbSBNb250YWcsIGRlbSAwMy4wNS4yMDIxIHVtIDE0OjM4ICswMjAwIHNjaHJpZWIgQWhtYWQg
RmF0b3VtOg0KPiBIZWxsbyBZdW51cywNCj4gDQo+IE9uIDAzLjA1LjIxIDE0OjI1LCBZdW51cyBC
YXMgd3JvdGU6DQo+ID4gVGhlIGtlcm5lbCBOVk1FTS1zdWJzeXN0ZW0gcHJldmVudHMgdGhlIHVz
YWdlIG9mIGR1cGxpY2F0ZQ0KPiA+IHBhcnRpdGlvbiBuYW1lcy4NCj4gPiBDaGFuZ2UgdGhlIFNQ
SS1OT1IgcGFydGl0aW9uIG5hbWVzIHRvIGJlIGNvbXBhdGlibGUgd2l0aCB0aGUga2VybmVsDQo+
ID4gZHJpdmVyLg0KPiANCj4gSSBkb24ndCBtaW5kIHRoZSBjaGFuZ2UsIGJ1dCBJIGNhbid0IGZv
bGxvdyB0aGUgcmVhc29uaW5nLg0KPiBUaGVzZSBhcmUgTVREIHBhcnRpdGlvbnMsIHNvIHRoZXkg
c2hvdWxkbid0IGhhdmUgYmVlbiByZWdpc3RlcmVkIHdpdGgNCj4gdGhlIE5WTUVNDQo+IGZyYW1l
d29yayBpbiB0aGUgZmlyc3QgcGxhY2U/DQo+IA0KPiBDaGVlcnMsDQo+IEFobWFkDQo+IA0KPiA+
IA0KPiA+IENvbW1pdCA3MmJhODE1YmY2ZmUgKCJBUk06IGR0czogcGh5Y29yZS1pbXg2OiBjaGFu
Z2UgbXRkLXBhcnRpdGlvbg0KPiA+IG5hbWVzIGZvcg0KPiA+IGNvbXBhdGliaWxpdHkgd2l0aCBr
ZXJuZWwiKSBhcHBsaWVzIHRoZSBjaGFuZ2UgZm9yIHBoeUNPUkUgU09Ncy4NCj4gPiBUaGUNCj4g
PiBzYW1lIGFwcGxpZXMgZm9yIHBoeUZMRVgtbW9kdWxlcy4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBZdW51cyBCYXMgPHkuYmFzQHBoeXRlYy5kZT4NCj4gPiAtLS0NCj4gPiDCoGFyY2gvYXJt
L2R0cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRzaSB8IDExICsrKysrKy0tLS0tDQo+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14NnFkbC1waHl0ZWMtcGZsYTAyLmR0c2kNCj4g
PiBiL2FyY2gvYXJtL2R0cy9pbXg2cWRsLXBoeXRlYy1wZmxhMDIuZHRzaQ0KPiA+IGluZGV4IGUx
YWEzMTgzYi4uNmRmOGQyNDdiIDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvYXJtL2R0cy9pbXg2cWRs
LXBoeXRlYy1wZmxhMDIuZHRzaQ0KPiA+ICsrKyBiL2FyY2gvYXJtL2R0cy9pbXg2cWRsLXBoeXRl
Yy1wZmxhMDIuZHRzaQ0KPiA+IEBAIC0yMSw3ICsyMSw3IEBADQo+ID4gwqANCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVudmlyb25tZW50LXNwaW5vciB7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJi
YXJlYm94LGVudmlyb25tZW50IjsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRldmljZS1wYXRoID0gJnNvbV9mbGFzaCwNCj4gPiAicGFydG5hbWU6
YmFyZWJveC1lbnZpcm9ubWVudCI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBkZXZpY2UtcGF0aCA9ICZzb21fZmxhc2gsDQo+ID4gInBhcnRuYW1l
Om5vci5iYXJlYm94LWVudmlyb25tZW50IjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsNCj4gPiDCoA0KPiA+IEBAIC01NCwyOCArNTQsMjkg
QEANCj4gPiDCoC9kZWxldGUtbm9kZS8gJnsvbWVtb3J5QDEwMDAwMDAwfTsNCj4gPiDCoA0KPiA+
IMKgJnNvbV9mbGFzaCB7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBwYXJ0aXRpb25zIHsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAiZml4ZWQt
cGFydGl0aW9ucyI7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRkcmVz
cy1jZWxscyA9IDwxPjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCNzaXpl
LWNlbGxzID0gPDE+Ow0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBwYXJ0aXRpb25AMCB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBsYWJlbCA9ICJiYXJlYm94IjsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gIm5vci5iYXJlYm94IjsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHgwIDB4
MTAwMDAwPjsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07DQo+ID4gwqAN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBhcnRpdGlvbkAxMDAwMDAgew0K
PiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwg
PSAiYmFyZWJveC1lbnZpcm9ubWVudCI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJub3IuYmFyZWJveC1lbnZpcm9ubWVudCI7DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0g
PDB4MTAwMDAwIDB4MjAwMDA+Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
fTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0aW9u
QDEyMDAwMCB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBsYWJlbCA9ICJvZnRyZWUiOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAibm9yLm9mdHJlZSI7DQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTIwMDAwIDB4MjAw
MDA+Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsNCj4gPiDCoA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0aW9uQDE0MDAwMCB7DQo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJr
ZXJuZWwiOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgbGFiZWwgPSAibm9yLmtlcm5lbCI7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTQwMDAwIDB4MD47DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+IA0K
PiANCg0KLS0gDQpNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuDQpZdW51cyBCYXMNCg0KLVNvZnR3
YXJlIEVuZ2luZWVyLQ0KUEhZVEVDIE1lc3N0ZWNobmlrIEdtYkgNClJvYmVydC1Lb2NoLVN0ci4g
MzkNCjU1MTI5IE1haW56DQpHZXJtYW55DQpUZWwuOiArNDkgKDApNjEzMSA5MjIxLcKgNDY2DQpX
ZWI6wqB3d3cucGh5dGVjLmRlDQoNClNpZSBmaW5kZW4gdW5zIGF1Y2ggYXVmOsKgRmFjZWJvb2ss
wqBMaW5rZWRJbizCoFhpbmcswqBZb3VUdWJlDQoNClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwg
Um9iZXJ0LUtvY2gtU3RyLiAzOSB8IDU1MTI5IE1haW56LCBHZXJtYW55DQpHZXNjaMOkZnRzZsO8
aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8
DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5O
ci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQpUaGlzIEUtTWFpbCBtYXkgY29udGFpbiBjb25m
aWRlbnRpYWwgb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91DQphcmUgbm90IHRoZSBp
bnRlbmRlZCByZWNpcGllbnQgKG9yIGhhdmUgcmVjZWl2ZWQgdGhpcyBFLU1haWwgaW4gZXJyb3Ip
DQpwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ryb3kgdGhpcyBF
LU1haWwuIEFueQ0KdW5hdXRob3JpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3IgZGlzdHJpYnV0
aW9uIG9mIHRoZSBtYXRlcmlhbCBpbg0KdGhpcyBFLU1haWwgaXMgc3RyaWN0bHkgZm9yYmlkZGVu
Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

