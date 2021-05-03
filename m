Delivery-date: Mon, 03 May 2021 23:52:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldgUP-00042k-Gl
	for lore@lore.pengutronix.de; Mon, 03 May 2021 23:52:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldgUO-0001qg-FG
	for lore@pengutronix.de; Mon, 03 May 2021 23:52:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PJ7ANapI/hRLI0lXBw5DDHwKpq0Ruu5nk1f+14HwIGw=; b=VH8ptKL5ljpz0UmmRMr8RqxJV
	cfgTMMWREbmXvX8gLD8uRzoHb5ZwCtGAj2L2xgeJd/xQg8XHTn7/me+bHSdFEDbrdSygKMuCpx0xr
	iXAO+8J7nwbc0cYlikiVhJlSxcT2bn1nDTwmd5aGH0SFRutWToOOn7OJEHhESDt+keg7PdVz/arVf
	61tLfwn+WbbMDpr10o39mj/tCgnuowalhAJIjHMNundOnnuNdijG63Rva9hgI50YQiltZh4u2H9j+
	ZmJjiFtokDiIWNsuzjRkSVIPqzzjgGVVK1Z47dqmLp55Ry6s5oD9eSkmeZUwFE3LmefVQHHAatQPp
	1YLp1udSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldgTA-00EsZi-QJ; Mon, 03 May 2021 21:51:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldgT5-00EsZV-DI
 for barebox@desiato.infradead.org; Mon, 03 May 2021 21:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Description;
 bh=Qu53ed9i1zoAWbC2Kz7g5IrBzH88rm9xUUHexxuc824=; b=COjsswvQ4AwfPHR26qlw08KiwJ
 UY/daoDY2mQAHPcWxxKvMF7Fk9vFm+lFbU03kMejf1+HW6NObUTS3Ds7ZLVV85Cx3CF+aASY8c16u
 JHJrMhyUIT1RG5yUVT9+FV3dLaQseYh1jkljzotEgiRv9DCPFBHgxnh4IJFu6Jr8uYAzCk+KNZ0BB
 Gj82N1cguEoIj8C7uo4BpEo87Y6tHiR1MGrcLw4WKReTm4AAKg1vSLnNZtlDqrit5RjPOP+W29tsg
 gi0PEuF4d521V+MA2hZNwEvjSBZOVdp6knZZjqb0tcMO+P9H0A8WLbbASLpWUiyxlE1q0a+QwWzwY
 0Y574gzA==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldgSz-003VVw-Iv
 for barebox@lists.infradead.org; Mon, 03 May 2021 21:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1620078657; x=1622670657;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qu53ed9i1zoAWbC2Kz7g5IrBzH88rm9xUUHexxuc824=;
 b=JdNP8imiKl5eNK9+aDOJYbC1in7nqNdjWmEYOe3/bn9Lx4ylj5G9FQcRveI7EBhY
 NkOk2Dil20UGqEminLFl5Uzfob7Cn1CUiHJjfy5vpb7OszRCdzwHnD4TQ/gD+PmB
 i0jlAJrDXtQ2c2P51UrsqHZjJd3mCVGjVejhGebCwzA=;
X-AuditID: c39127d2-324b870000001c53-6f-609070410e87
Received: from florix.phytec.de (florix.phytec.de [172.16.0.118])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B0.92.07251.14070906;
 Mon,  3 May 2021 23:50:57 +0200 (CEST)
Received: from Berlix.phytec.de (172.16.0.117) by Florix.phytec.de
 (172.16.0.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Mon, 3 May 2021
 23:50:57 +0200
Received: from Berlix.phytec.de ([fe80::343f:7618:c7ce:97c9]) by
 berlix.phytec.de ([fe80::343f:7618:c7ce:97c9%3]) with mapi id 15.01.2176.009; 
 Mon, 3 May 2021 23:50:57 +0200
From: Yunus Bas <Y.Bas@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
Thread-Topic: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for
 kernel compatibility
Thread-Index: AQHXQBgJib0Np6HCIUC9/zI5R4x9eqrRkNkAgAAhRgCAAEKdgIAANlcA
Date: Mon, 3 May 2021 21:50:56 +0000
Message-ID: <b62f44635d096f564b98fc7e8f8539298d30e5f2.camel@phytec.de>
References: <20210503122550.2951035-1-y.bas@phytec.de>
 <764115d0-c22e-8c22-4533-1a11e48d3748@pengutronix.de>
 <e517407598dcd0e80de1918037d06f1b3c3214cd.camel@phytec.de>
 <1001f579-e35d-9133-1abc-846d242684b0@pengutronix.de>
In-Reply-To: <1001f579-e35d-9133-1abc-846d242684b0@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.116]
Content-ID: <453B42B5A869AC419854195D0D78F0AD@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsWyRoChTNexYEKCwcpXuhYLP+xgsjixuJ/Z
 gclj85J6j/6/BgFMUVw2Kak5mWWpRfp2CVwZH5e+YCrY4lCx5ntmA+MDuy5GTg4JAROJBwsW
 s3UxcnEICSxnkrjVfYERwnnAKLF9XR8zSJWQwEZGiT1f5bsYOTjYBBQlrtzKBwmLCJRJfHzy
 mxHEFhZIkHi+9DkzRDxR4sGdR+wQtpvEgd0T2UBsFgEViUUX5oDFeYHi+xseM0KMf8YoMfF1
 NojNKeAk8Wr9LrA5jAKyEhs2nAezmQXEJTY9+84KcbSAxJI9EHEJAVGJl4//QcUVJNp6OplA
 zmQW0JRYv0sfotVCYk3nQ0YIW1FiSvdDqBMEJU7OfMIygVFsFpINsxC6ZyHpnoWkexaS7gWM
 rKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAuPo8ET1SzsY++Z4HGJk4mA8xCjBwawkwluwtj9B
 iDclsbIqtSg/vqg0J7X4EKM0B4uSOO8G3pIwIYH0xJLU7NTUgtQimCwTB6dUA6NMuUv2jcMT
 ejYUm08IPqWga2mQw5YelfnnvBN/4AJW492VNdOOsitkO6X4MRsJea1403L07icVE4byDcJH
 TU+euJisJrzsUJaRFadvH/usC9POrbyszdhr+Leh5cwn8adiglXGqze76AToS/WIlwt3lojy
 RLOKHgxTlI8TCmvd/FDi1L6dSizFGYmGWsxFxYkAHYMtoJECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_145101_800616_D3C046FE 
X-CRM114-Status: GOOD (  36.76  )
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

SGVsbG8gQWhtYWQsDQoNCkFtIE1vbnRhZywgZGVtIDAzLjA1LjIwMjEgdW0gMjA6MzYgKzAyMDAg
c2NocmllYiBBaG1hZCBGYXRvdW06DQo+IEhlbGxvIFl1bnVzLA0KPiANCj4gT24gMDMuMDUuMjEg
MTY6MzgsIFl1bnVzIEJhcyB3cm90ZToNCj4gPiBIaSBBaG1hZCwNCj4gPiANCj4gPiBUaGUgbWFp
biBwdXJwb3NlIGJlaGluZCBhZGRpbmcgTVRELXBhcnRpdGlvbnMgYXMgTlZNRU0tZGV2aWNlcyB3
YXMNCj4gPiB0bw0KPiA+IGhhdmUgYSBmYXN0IGFuZCB1bmNvbXBsaWNhdGVkIGFjY2VzcyBvbiBw
YXJ0aXRpb25zIHdpdGggc2Vuc2l0aXZlDQo+ID4gZGF0YSwNCj4gPiBlc3BlY2lhbGx5IG9uIGVt
YmVkZGVkIHN5c3RlbXMuIEkgdGhpbmssIHRoZXJlIGlzIGEgcmVhc29uaW5nIGZvcg0KPiA+IGl0
LA0KPiA+IGJ1dCBuZXZlcnRoZWxlc3MsIHRoZSBvcmlnaW5hbCBrZXJuZWwgcGF0Y2ggaXMgZnJv
bSAyMDE4Lg0KPiANCj4gU28gaXQncyBhIHBhdGNoIHlvdSBjYXJyeSB3aXRoIHlvdSBhbmQgbm90
IExpbnV4LXVwc3RyZWFtDQo+IGZ1bmN0aW9uYWxpdHk/DQoNClJlZ2lzdGVyaW5nIE1URC1wYXJ0
aXRpb25zIGFzIE5WTUVNIGRldmljZXMgaXMgTGludXgtdXBzdHJlYW0uIFdlIGp1c3QNCm5lZWQg
dG8gYWRhcHQgdGhlIHBhcnRpdGlvbiBuYW1lcyBpbiBiYXJlYm94Lg0KDQo+IA0KPiA+IFRvIHNh
eSB0aGUgdHJ1dGgsIHRoZXJlIGlzIGFscmVhZHkgYW4gdXBzdHJlYW0gZml4IGZvciB0aGUgbmFt
ZS0NCj4gPiBjbGFzaGluZywgd2hpY2ggcmVnaXN0ZXJzIHRoZSBOVk1FTSBkZXZpY2VzIHdpdGgg
dGhlIHVuaXF1ZSBkZXZpY2UNCj4gPiBuYW1lcywgaW5zdGVhZCBvZiB0aGUgTVRELW5hbWVzLiBJ
IGhhZCB0d28gb3B0aW9ucyBoZXJlLCBvbmUgd2FzIHRvDQo+ID4gcmV2ZXJ0IHRoZSBmaXJzdCBw
YXRjaCB3aXRoIHRoZSBjaGFuZ2UgZm9yIHBoeUNvcmUsIHRoZSBvdGhlciB3YXMNCj4gPiB0bw0K
PiA+IGZvbGxvdyB1cCB3aXRoIHRoZSBwaHlGTEVYLW1vZHVsZS4gSSd2ZSBjaG9zZW4gdGhlIGxh
dHRlciBvbmUsDQo+ID4gc2luY2UgSQ0KPiA+IGZlbHQgaXQgaGFzIG1vcmUgcmVhZGFiaWxpdHku
DQo+IA0KPiBUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLA0KPiBBaG1hZA0KPiANCg0KTWF5
YmUgaXQgaXMgYmV0dGVyIHRvIGRyb3AgdGhpcyBhbmQgcmV2ZXJ0IHRoZSBjaGFuZ2Ugb24gcGh5
Q29yZQ0KaW5zdGVhZC4gUHJlcGVuZGluZyB0aGUgZGV2aWNlIGJlZm9yZSB0aGUgcGFydGl0aW9u
IHdvdWxkIG9ubHkgYXBwbHkgdG8NCnRoZSBOT1IgZmxhc2guIEFsc28sIHRoaXMgc29sdXRpb24g
ZG9lc24ndCB3b3JrIG91dCBpbiBjYXNlIHRoZXJlIGFyZQ0KdHdvIGZsYXNoIG1lbW9yaWVzIG9m
IHRoZSBzYW1lIGtpbmQsIGUuZy4gdHdvIE5PUiBmbGFzaGVzLg0KDQpQbGVhc2UgZHJvcCB0aGlz
IHBhdGNoLg0KDQpSZWdhcmRzLA0KWXVudXMNCg0KPiA+IA0KPiA+IFJlZ2FyZHMsDQo+ID4gWXVu
dXMNCj4gPiANCj4gPiBBbSBNb250YWcsIGRlbSAwMy4wNS4yMDIxIHVtIDE0OjM4ICswMjAwIHNj
aHJpZWIgQWhtYWQgRmF0b3VtOg0KPiA+ID4gSGVsbG8gWXVudXMsDQo+ID4gPiANCj4gPiA+IE9u
IDAzLjA1LjIxIDE0OjI1LCBZdW51cyBCYXMgd3JvdGU6DQo+ID4gPiA+IFRoZSBrZXJuZWwgTlZN
RU0tc3Vic3lzdGVtIHByZXZlbnRzIHRoZSB1c2FnZSBvZiBkdXBsaWNhdGUNCj4gPiA+ID4gcGFy
dGl0aW9uIG5hbWVzLg0KPiA+ID4gPiBDaGFuZ2UgdGhlIFNQSS1OT1IgcGFydGl0aW9uIG5hbWVz
IHRvIGJlIGNvbXBhdGlibGUgd2l0aCB0aGUNCj4gPiA+ID4ga2VybmVsDQo+ID4gPiA+IGRyaXZl
ci4NCj4gPiA+IA0KPiA+ID4gSSBkb24ndCBtaW5kIHRoZSBjaGFuZ2UsIGJ1dCBJIGNhbid0IGZv
bGxvdyB0aGUgcmVhc29uaW5nLg0KPiA+ID4gVGhlc2UgYXJlIE1URCBwYXJ0aXRpb25zLCBzbyB0
aGV5IHNob3VsZG4ndCBoYXZlIGJlZW4gcmVnaXN0ZXJlZA0KPiA+ID4gd2l0aA0KPiA+ID4gdGhl
IE5WTUVNDQo+ID4gPiBmcmFtZXdvcmsgaW4gdGhlIGZpcnN0IHBsYWNlPw0KPiA+ID4gDQo+ID4g
PiBDaGVlcnMsDQo+ID4gPiBBaG1hZA0KPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBDb21taXQg
NzJiYTgxNWJmNmZlICgiQVJNOiBkdHM6IHBoeWNvcmUtaW14NjogY2hhbmdlIG10ZC0NCj4gPiA+
ID4gcGFydGl0aW9uDQo+ID4gPiA+IG5hbWVzIGZvcg0KPiA+ID4gPiBjb21wYXRpYmlsaXR5IHdp
dGgga2VybmVsIikgYXBwbGllcyB0aGUgY2hhbmdlIGZvciBwaHlDT1JFDQo+ID4gPiA+IFNPTXMu
DQo+ID4gPiA+IFRoZQ0KPiA+ID4gPiBzYW1lIGFwcGxpZXMgZm9yIHBoeUZMRVgtbW9kdWxlcy4N
Cj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFl1bnVzIEJhcyA8eS5iYXNAcGh5dGVj
LmRlPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBhcmNoL2FybS9kdHMvaW14NnFkbC1waHl0ZWMt
cGZsYTAyLmR0c2kgfCAxMSArKysrKystLS0tLQ0KPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vZHRzL2lteDZxZGwtcGh5dGVjLXBmbGEwMi5kdHNpDQo+ID4gPiA+IGIv
YXJjaC9hcm0vZHRzL2lteDZxZGwtcGh5dGVjLXBmbGEwMi5kdHNpDQo+ID4gPiA+IGluZGV4IGUx
YWEzMTgzYi4uNmRmOGQyNDdiIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9hcmNoL2FybS9kdHMvaW14
NnFkbC1waHl0ZWMtcGZsYTAyLmR0c2kNCj4gPiA+ID4gKysrIGIvYXJjaC9hcm0vZHRzL2lteDZx
ZGwtcGh5dGVjLXBmbGEwMi5kdHNpDQo+ID4gPiA+IEBAIC0yMSw3ICsyMSw3IEBADQo+ID4gPiA+
IMKgDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW52aXJvbm1lbnQt
c3Bpbm9yIHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY29tcGF0aWJsZSA9ICJiYXJlYm94LGVudmlyb25tZW50IjsNCj4gPiA+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXZpY2UtcGF0aCA9
ICZzb21fZmxhc2gsDQo+ID4gPiA+ICJwYXJ0bmFtZTpiYXJlYm94LWVudmlyb25tZW50IjsNCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXZp
Y2UtcGF0aCA9ICZzb21fZmxhc2gsDQo+ID4gPiA+ICJwYXJ0bmFtZTpub3IuYmFyZWJveC1lbnZp
cm9ubWVudCI7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgfTsNCj4gPiA+ID4gwqANCj4gPiA+ID4gQEAgLTU0LDI4ICs1NCwyOSBA
QA0KPiA+ID4gPiDCoC9kZWxldGUtbm9kZS8gJnsvbWVtb3J5QDEwMDAwMDAwfTsNCj4gPiA+ID4g
wqANCj4gPiA+ID4gwqAmc29tX2ZsYXNoIHsNCj4gPiA+ID4gKw0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgcGFydGl0aW9ucyB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6ZS1jZWxscyA9IDwxPjsNCj4gPiA+ID4gwqAN
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwYXJ0aXRpb25AMCB7DQo+
ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFi
ZWwgPSAiYmFyZWJveCI7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAibm9yLmJhcmVib3giOw0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHgwIDB4MTAwMDAw
PjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gPiDC
oA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBhcnRpdGlvbkAxMDAw
MDAgew0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGxhYmVsID0gImJhcmVib3gtZW52aXJvbm1lbnQiOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gIm5vci5iYXJlYm94LWVu
dmlyb25tZW50IjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmVnID0gPDB4MTAwMDAwIDB4MjAwMDA+Ow0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07DQo+ID4gPiA+IMKgDQo+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0aW9uQDEyMDAwMCB7DQo+ID4gPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAib2Z0cmVlIjsN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBs
YWJlbCA9ICJub3Iub2Z0cmVlIjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTIwMDAwIDB4MjAwMDA+Ow0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07DQo+ID4gPiA+IMKgDQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFydGl0aW9uQDE0MDAwMCB7DQo+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAi
a2VybmVsIjsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBsYWJlbCA9ICJub3Iua2VybmVsIjsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MTQwMDAwIDB4MD47DQo+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsNCj4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoH07DQo+ID4gPiA+IA0KPiA+ID4gDQo+ID4gDQo+IA0KDQotLSANCk1pdCBmcmV1bmRs
aWNoZW4gR3LDvMOfZW4NCll1bnVzIEJhcw0KDQotU29mdHdhcmUgRW5naW5lZXItDQpQSFlURUMg
TWVzc3RlY2huaWsgR21iSA0KUm9iZXJ0LUtvY2gtU3RyLiAzOQ0KNTUxMjkgTWFpbnoNCkdlcm1h
bnkNClRlbC46ICs0OSAoMCk2MTMxIDkyMjEtwqA0NjYNCldlYjrCoHd3dy5waHl0ZWMuZGUNCg0K
U2llIGZpbmRlbiB1bnMgYXVjaCBhdWY6wqBGYWNlYm9vayzCoExpbmtlZEluLMKgWGluZyzCoFlv
dVR1YmUNCg0KUEhZVEVDIE1lc3N0ZWNobmlrIEdtYkggfCBSb2JlcnQtS29jaC1TdHIuIDM5IHwg
NTUxMjkgTWFpbnosIEdlcm1hbnkNCkdlc2Now6RmdHNmw7xocmVyOiBEaXBsLi1JbmcuIE1pY2hh
ZWwgTWl0ZXpraSwgRGlwbC4tSW5nLiBCb2RvIEh1YmVyIHwNCkhhbmRlbHNyZWdpc3RlciBNYWlu
eiBIUkIgNDY1NiB8IEZpbmFuemFtdCBNYWlueiB8IFN0Lk5yLiAyNjY1MDA2MDgsIERFDQoxNDkw
NTk4NTUNClRoaXMgRS1NYWlsIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBvciBwcml2aWxlZ2Vk
IGluZm9ybWF0aW9uLiBJZiB5b3UNCmFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCAob3Ig
aGF2ZSByZWNlaXZlZCB0aGlzIEUtTWFpbCBpbiBlcnJvcikNCnBsZWFzZSBub3RpZnkgdGhlIHNl
bmRlciBpbW1lZGlhdGVseSBhbmQgZGVzdHJveSB0aGlzIEUtTWFpbC4gQW55DQp1bmF1dGhvcml6
ZWQgY29weWluZywgZGlzY2xvc3VyZSBvciBkaXN0cmlidXRpb24gb2YgdGhlIG1hdGVyaWFsIGlu
DQp0aGlzIEUtTWFpbCBpcyBzdHJpY3RseSBmb3JiaWRkZW4uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==

