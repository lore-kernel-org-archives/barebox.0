Delivery-date: Thu, 23 Jun 2022 13:28:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4L0j-00BthI-GS
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 13:28:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4L0j-0004Bs-6D
	for lore@pengutronix.de; Thu, 23 Jun 2022 13:28:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vA+A4ZnYEQaH7+7v+rrz03sRMUaw1I0x6SkF+8gCO8U=; b=cyCy3Ny7FNXgz/wHmzb8z+B3Yu
	5nr6Z+3iXnzK8RJAWESeHQehp7Uiqgu4Bz2Iv+7i2KTwr+3EHaSXHHxUYRuh0COx6vy+85HPNdlSg
	LHx0yV31X6wmkPAWT7pwC2k/opywtCWH62lDiCJXL7D9Lexgw1jsNwvSvpyAkdFNGmNen9wxhWnw+
	PDbR7vBKeaVPuWgDuwxKE/47MMswaUHbLI57yJQVtDMrxpvrKUPNbclDanb97lwVkcZoF9gQwqW6N
	q4gnhfgew/cD7ADC5Lj/28R9LNEzKerarQB1uSt5b1fu8cq044iwe84n4nW0UcbyMeuW5iZiaMpvG
	y3pVPPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KzK-00EiKP-As; Thu, 23 Jun 2022 11:27:06 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KzF-00EiJb-B1
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 11:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655983619; x=1658575619;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vA+A4ZnYEQaH7+7v+rrz03sRMUaw1I0x6SkF+8gCO8U=;
	b=SVwf4eoRwlbCz/3+4EPhmmE6mKAT0EXDoJl/yTE4o7Pv3VUV7BZ5x6kpL4wvxRxI
	PquGLD0hGR0yHQqK4FsK4Ih7asR1uzc1lFKnsg+2B9XnJZ6X39qgeAw/+eHFrZU7
	P/Io/x9C8/l+bFK6iO8rs4RBe5Zzd17rsA0C62aY+sQ=;
X-AuditID: c39127d2-b3a2d70000001dbe-b9-62b44e03c6f4
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B9.0E.07614.30E44B26; Thu, 23 Jun 2022 13:26:59 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 23 Jun
 2022 13:26:59 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Thu, 23 Jun 2022 13:26:59 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>,
	"lst@pengutronix.de" <lst@pengutronix.de>
Thread-Topic: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
Thread-Index: AQHYhuxUu5SJqfFayUuD9NjiywLjq61csU2AgAAERICAAANbAA==
Date: Thu, 23 Jun 2022 11:26:58 +0000
Message-ID: <12b29350135ad59a7e5fb9713a85e8f15e5b4e73.camel@phytec.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
	 <20220623103051.572885-4-a.fatoum@pengutronix.de>
	 <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
	 <6a5b1c31-5c83-b5e9-1912-669121092c62@pengutronix.de>
In-Reply-To: <6a5b1c31-5c83-b5e9-1912-669121092c62@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <3E4E05627DE5484084121016314AE4BD@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsWyRpKBR5fZb0uSwbNbghYLP+xgsmjusLU4
	sbif2WL11OeMFn+/fmB3YPXYOesuu8fmJfUe/X8NPNZcXsoSwBLFZZOSmpNZllqkb5fAlTH1
	1wX2ghtmFf9brrE3MC4x7WLk5JAQMJHY/2sdYxcjF4eQwBImifl7p7JAOA8YJe4efAvlbGKU
	uDGvgRmkhU1AQ+LliW4mEFtEoEzi45PfYO3MAqsZJRpafrOBJIQFkiU2nmpjhShKkTi16xKU
	7STRMPUnmM0ioCoxve8Z2FBeATeJGTe/sEJse8kosXDbY0aQBCdQw63N/1hAbEYBWYkNG86D
	NTALiEtsevadFeIJAYkleyDiEgKiEi8f/4OKy0ucuDUN6FIOoHpNifW79CFMC4kty3ggpihK
	TOl+yA5xgqDEyZlPWCYwis9CsmAWQvMshOZZSJpnIWlewMi6ilEoNzM5O7UoM1uvIKOyJDVZ
	LyV1EyMwKg9PVL+0g7FvjschRiYOxkOMEhzMSiK8L/5vThLiTUmsrEotyo8vKs1JLT7EKM3B
	oiTOe7+HKVFIID2xJDU7NbUgtQgmy8TBKdXAmJ2ZPFtLMniF6aybpRXJe7ptXFYErbihF766
	Tbboro+Rh3dE4dT+k1bvvj8WXsZrtGVtoTJbx9oHhy3f/J93/6uUIIvtdYYmraLuFXd/7Tg2
	NeRX1qOTx+bo5h0xEq5XM/HpVgt8mTKV7/j3rJU+p9QVNe0lOZ9277E6kDRDq1Svc0/ptkMF
	SizFGYmGWsxFxYkAx8+fZbgCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_042701_563988_1B2F18AD 
X-CRM114-Status: GOOD (  38.23  )
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
Subject: Re: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

QW0gRG9ubmVyc3RhZywgZGVtIDIzLjA2LjIwMjIgdW0gMTM6MTQgKzAyMDAgc2NocmllYiBBaG1h
ZCBGYXRvdW06DQo+IEhpIFRlcmVzYSwNCj4gDQo+IE9uIDIzLjA2LjIyIDEyOjU5LCBUZXJlc2Eg
UmVtbWV0IHdyb3RlOg0KPiA+IEhlbGxvIEFobWFkLA0KPiA+IA0KPiA+IEFtIERvbm5lcnN0YWcs
IGRlbSAyMy4wNi4yMDIyIHVtIDEyOjMwICswMjAwIHNjaHJpZWIgQWhtYWQgRmF0b3VtOg0KPiA+
ID4gT2xkZXIgTlhQIEREUiBzcHJlYWRzaGVldHMgZG9uJ3QgaW5pdGlhbGl6ZSBBRERSTUFQNywg
bGVhdmluZyBpdA0KPiA+ID4gYXQNCj4gPiA+IGl0cw0KPiA+ID4gUE9SIGRlZmF1bHQgb2YgemVy
by4gTm93IHRoYXQgYmFyZWJveCBsb29rcyBhdCBBRERSTUFQNyB0byBiZQ0KPiA+ID4gYWJsZSB0
bw0KPiA+ID4gY29ycmVjdGx5IGRldGVjdCBiaWdnZXIgbWVtb3J5IHNpemVzLCBiYXJlYm94IHBy
b3BlciBvbiBvdXQtb2YtDQo+ID4gPiB0cmVlDQo+ID4gPiBib2FyZHMgd2l0aCBvbGRlciBzcHJl
YWRzaGVldHMgbWF5IHJlYWQgYmFjayA0eCB0aW1lcyBhcyBtdWNoIFJBTQ0KPiA+ID4gYXMgYWN0
dWFsbHkgZml0dGVkLg0KPiA+ID4gDQo+ID4gPiBXb3JrIGFyb3VuZCB0aGlzIGJ5IHdyaXRpbmcg
YSB0cmFpbGluZyAweGYwZiAodGhlIG5ldXRyYWwgaWdub3JlLQ0KPiA+ID4gbWUNCj4gPiA+IHZh
bHVlIGZvciB0aGUgcmVnaXN0ZXIpIGlmIHRoZSByZWdpc3RlciB3YXNuJ3Qgd3JpdHRlbiB0aHJv
dWdoDQo+ID4gPiBkcmFtX3RpbWluZ19pbmZvOjpkZHJjX2NmZy4gV2UgY29uc2lkZXIgdGhpcyBz
YWZlIHRvIGRvLCBiZWNhdXNlDQo+ID4gPiB0aGUgRERSQyBpcyBoZWxkIGluIHJlc2V0IHdoaWxl
IHRoZXNlIHZhbHVlcyBhcmUgcHJvZ3JhbW1lZC4NCj4gPiANCj4gPiBoYXZlIHlvdSB0cmllZCB0
aGlzIHBhdGNoIHdpdGhvdXQgYWN0dWFsbHkgdXBkYXRpbmcgdGhlIFJBTSBUaW1pbmdzDQo+ID4g
KA0KPiA+IHNvIHBhdGNoIDIvNCk/DQo+IA0KPiBZZXMuIEkndmUgYW4gb3V0LW9mLXRyZWUgaS5N
WDhNTSBib2FyZCB3aXRoIDFHIG9mIExQRERSNCBhbmQgb2xkIFJBTQ0KPiBzZXR1cC4NCj4gDQo+
IFdpdGggdXBzdHJlYW0vbmV4dDogNEcNCj4gV2l0aCBXb3JrYXJvdW5kOiAxRyArIFdhcm5pbmcN
Cj4gV2l0aCBmaXhlZCBBRERSTUFQNzogMUcsIG5vIHdhcm5pbmcNCj4gDQo+IFJlYWRpbmcgYmFj
ayAweDNkNDAwMjFjIGdpdmVzIG1lIDB4ZjBmIGFzIGV4cGVjdGVkLg0KPiANCj4gPiBJIGhhdmUg
anVzdCBwbGF5ZWQgYXJvdW5kIGFsc28gc2V0dGluZyBBRERSTUFQNyByaWdodCBiZWZvcmUgDQo+
ID4gZGRyX2NmZ191bWN0bDIoKSB3aXRob3V0IGZpeGluZyB0aGUgdGltaW5ncyBhbmQgdGhlIHJl
Z2lzdGVyIHdhcyAwDQo+ID4gYWdhaW4gYWZ0ZXIgc3RhcnR1cCBhbmQgc28gdGhlIFJBTSBzaXpl
IHdyb25nLg0KPiA+IFNvIGl0IHNlZW1zIHRvIG1lIHRoYXQgdGhlIHZhbHVlIGlzIG92ZXJ3cml0
dGVuL3Jlc2V0dGVkIGF0IHNvbWUNCj4gPiBvdGhlcg0KPiA+IHBvaW50IGFnYWluIC4uLiBvciBt
YXliZSBJIGp1c3QgZGlkIHNvbWV0aGluZyB3cm9uZy4NCj4gDQo+IFN0cmFuZ2UuIFdoYXQgU29D
L2JvYXJkIGlzIHRoaXMgb24/DQoNCnBoeUNPUkUtaS5NWDhNUSBidXQgd2l0aCBhIG5vdCB1cHN0
cmVhbWVkIDJHQiBSQU0gY29uZmlndXJhdGlvbi4NCg0KSSBhcHBsaWVkIHRoaXMgcGF0Y2ggbm93
IHdpdGggdGhlIHNhbWUgcmVzdWx0LiBXcm9uZyBSQU0gc2l6ZS4gDQoNClJlZ2FyZHMsDQpUZXJl
c2ENCg0KPiANCj4gQ2hlZXJzLA0KPiBBaG1hZA0KPiANCj4gPiBSZWdhcmRzLA0KPiA+IFRlcmVz
YQ0KPiA+IA0KPiA+ID4gRml4ZXM6IGRhZDJiNTYzNmJkOCAoIkFSTTogaW14OiBBZGQgaW14OCBz
dXBwb3J0IGZvciAxOCBiaXQgU0RSQU0NCj4gPiA+IHJvdw0KPiA+ID4gc2l6ZSBoYW5kbGUiKQ0K
PiA+ID4gRml4ZXM6IDZjZjE5N2ZhNjFmOSAoImFybTogaW14OiBtbWRjX3NpemU6IEluY3JlYXNl
IHJvd19tYXggZm9yDQo+ID4gPiBpbXg4bSIpDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBaG1hZCBG
YXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVy
cy9kZHIvaW14OG0vZGRyX2luaXQuYyB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiA+ID4gIGRy
aXZlcnMvZGRyL2lteDhtL2hlbHBlci5jICAgfCAgNiArKysrKysNCj4gPiA+ICBpbmNsdWRlL3Nv
Yy9pbXg4bS9kZHIuaCAgICAgIHwgIDEgKw0KPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZHIvaW14OG0v
ZGRyX2luaXQuYw0KPiA+ID4gYi9kcml2ZXJzL2Rkci9pbXg4bS9kZHJfaW5pdC5jDQo+ID4gPiBp
bmRleCBhZTA1YjEzNjIyOWMuLjlhNGI0ZTJjYTg4YSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZl
cnMvZGRyL2lteDhtL2Rkcl9pbml0LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZGRyL2lteDhtL2Rk
cl9pbml0LmMNCj4gPiA+IEBAIC0xMywxNCArMTMsMzIgQEANCj4gPiA+ICAjaW5jbHVkZSA8bWFj
aC9pbXg4bS1yZWdzLmg+DQo+ID4gPiAgI2luY2x1ZGUgPG1hY2gvaW14OG0tY2NtLXJlZ3MuaD4N
Cj4gPiA+ICANCj4gPiA+ICtib29sIGlteDhtX2Rkcl9vbGRfc3ByZWFkc2hlZXQgPSB0cnVlOw0K
PiA+ID4gKw0KPiA+ID4gIHN0YXRpYyB2b2lkIGRkcl9jZmdfdW1jdGwyKHN0cnVjdCBkcmFtX2Nm
Z19wYXJhbSAqZGRyY19jZmcsIGludA0KPiA+ID4gbnVtKQ0KPiA+ID4gIHsNCj4gPiA+ICAJaW50
IGkgPSAwOw0KPiA+ID4gIA0KPiA+ID4gIAlmb3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspIHsNCj4g
PiA+ICsJCWlmIChkZHJjX2NmZy0+cmVnID09IEREUkNfQUREUk1BUDcoMCkpDQo+ID4gPiArCQkg
ICAgaW14OG1fZGRyX29sZF9zcHJlYWRzaGVldCA9IGZhbHNlOw0KPiA+ID4gIAkJcmVnMzJfd3Jp
dGUoKHVuc2lnbmVkIGxvbmcpZGRyY19jZmctPnJlZywgZGRyY19jZmctDQo+ID4gPiA+IHZhbCk7
DQo+ID4gPiAgCQlkZHJjX2NmZysrOw0KPiA+ID4gIAl9DQo+ID4gPiArDQo+ID4gPiArCS8qDQo+
ID4gPiArCSAqIE9sZGVyIE5YUCBERFIgY29uZmlndXJhdGlvbiBzcHJlYWRzaGVldHMgZG9uJ3Qg
aW5pdGlhbGl6ZQ0KPiA+ID4gQUREUk1BUDcsDQo+ID4gPiArCSAqIHdoaWNoIGZhbHNpZmllcyB0
aGUgbWVtb3J5IHNpemUgcmVhZCBiYWNrIGZyb20gdGhlDQo+ID4gPiBjb250cm9sbGVyDQo+ID4g
PiArCSAqIGluIGJhcmVib3ggcHJvcGVyLg0KPiA+ID4gKwkgKi8NCj4gPiA+ICsJaWYgKGlteDht
X2Rkcl9vbGRfc3ByZWFkc2hlZXQpIHsNCj4gPiA+ICsJCXByX3dhcm4oIldvcmtpbmcgYXJvdW5k
IG9sZCBzcHJlYWRzaGVldC4gUGxlYXNlDQo+ID4gPiByZWdlbmVyYXRlXG4iKTsNCj4gPiA+ICsJ
CS8qDQo+ID4gPiArCQkgKiBBbHRlcm5hdGl2ZWx5LCBzdGljayB7IEREUkNfQUREUk1BUDcoMCks
IDB4ZjBmIH0NCj4gPiA+IGludG8NCj4gPiA+ICsJCSAqIHN0cnVjdCBkcmFtX3RpbWluZ19pbmZv
OjpkZHJjX2NmZyBvZiB5b3VyIG9sZCB0aW1pbmcNCj4gPiA+IGZpbGUNCj4gPiA+ICsJCSAqLw0K
PiA+ID4gKwkJcmVnMzJfd3JpdGUoRERSQ19BRERSTUFQNygwKSwgMHhmMGYpOw0KPiA+ID4gKwl9
DQo+ID4gPiAgfQ0KPiA+ID4gIA0KPiA+ID4gIC8qDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kZHIvaW14OG0vaGVscGVyLmMNCj4gPiA+IGIvZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMN
Cj4gPiA+IGluZGV4IDk0YmJiODExNTc2ZC4uOThlNDA4NDk1ODRiIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZGRyL2lt
eDhtL2hlbHBlci5jDQo+ID4gPiBAQCAtNjIsNiArNjIsMTIgQEAgdm9pZCBkcmFtX2NvbmZpZ19z
YXZlKHN0cnVjdCBkcmFtX3RpbWluZ19pbmZvDQo+ID4gPiAqdGltaW5nX2luZm8sDQo+ID4gPiAg
CQljZmcrKzsNCj4gPiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4gKwlpZiAoaW14OG1fZGRyX29sZF9z
cHJlYWRzaGVldCkgew0KPiA+ID4gKwkJY2ZnLT5yZWcgPSBERFJDX0FERFJNQVA3KDApOw0KPiA+
ID4gKwkJY2ZnLT52YWwgPSAweGYwZjsNCj4gPiA+ICsJCWNmZysrOw0KPiA+ID4gKwl9DQo+ID4g
PiArDQo+ID4gPiAgCS8qIHNhdmUgZGRycGh5IGNvbmZpZyAqLw0KPiA+ID4gIAlzYXZlZF90aW1p
bmctPmRkcnBoeV9jZmcgPSBjZmc7DQo+ID4gPiAgCWZvciAoaSA9IDA7IGkgPCB0aW1pbmdfaW5m
by0+ZGRycGh5X2NmZ19udW07IGkrKykgew0KPiA+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvc29j
L2lteDhtL2Rkci5oIGIvaW5jbHVkZS9zb2MvaW14OG0vZGRyLmgNCj4gPiA+IGluZGV4IDlhZTdj
Yjg3NzY4Ni4uMTQ3YTdkNDk5YWFmIDEwMDY0NA0KPiA+ID4gLS0tIGEvaW5jbHVkZS9zb2MvaW14
OG0vZGRyLmgNCj4gPiA+ICsrKyBiL2luY2x1ZGUvc29jL2lteDhtL2Rkci5oDQo+ID4gPiBAQCAt
NDA3LDYgKzQwNyw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCByZWczMnNldGJpdCh1bnNpZ25lZCBs
b25nDQo+ID4gPiBhZGRyLCB1MzIgYml0KQ0KPiA+ID4gICNkZWZpbmUgZHdjX2RkcnBoeV9hcGJf
cmQoYWRkcikgXA0KPiA+ID4gIAlyZWczMl9yZWFkKElPTUVNKElQMkFQQl9ERFJQSFlfSVBTX0JB
U0VfQUREUigwKSkgKyA0ICogKGFkZHIpKQ0KPiA+ID4gIA0KPiA+ID4gK2V4dGVybiBib29sIGlt
eDhtX2Rkcl9vbGRfc3ByZWFkc2hlZXQ7DQo+ID4gPiAgZXh0ZXJuIHN0cnVjdCBkcmFtX2NmZ19w
YXJhbSBkZHJwaHlfdHJhaW5lZF9jc3JbXTsNCj4gPiA+ICBleHRlcm4gdWludDMyX3QgZGRycGh5
X3RyYWluZWRfY3NyX251bTsNCj4gPiA+ICANCj4gDQo+IA0KLS0gDQpQSFlURUMgTWVzc3RlY2hu
aWsgR21iSCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFueQ0KDQpH
ZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwuLUluZy4g
Qm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5hbnphbXQg
TWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQo=


