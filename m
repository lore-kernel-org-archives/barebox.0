Delivery-date: Tue, 21 Jun 2022 15:02:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3dW6-009GIO-2X
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 15:02:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3dW5-0004gX-Nt
	for lore@pengutronix.de; Tue, 21 Jun 2022 15:02:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=69ZZIcECZgkRDElJzKdxLLlo7USIM18NLcXONac3lEI=; b=ucltGGEnIFXfLMf7T+fbDOmNgT
	sIJk5eDayKQoQQFy1QVrjHp+Ok5NxkZAzTKrlLQZdlm1a72imQa+TCXlAqK+F6dB1YR6RGRnrzfnb
	15SVp1WZm9NaRCTQ+FDcw1PjLDEP0bFDeC3RSXx6txHq13rYpEy8eMAW6cmMNmwPxB92FL8gbehcw
	WmdubRjXpbBUq5pGIwuV/bI6uxsuEPcgrSfVbwlrxrqSCLdYN185D/A91HvL5R7fwxkrwONsfOGnN
	jd0fW8CmCWksprhvHQqXU41jtswxwBNlgbGp//HoOEdfxBuvr0J6XGgCq6uQPr51yULzPswDjfihn
	f3Mquepg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3dUE-005VWi-4o; Tue, 21 Jun 2022 13:00:06 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3dU7-005VTV-Ia
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 13:00:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655816392; x=1658408392;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=69ZZIcECZgkRDElJzKdxLLlo7USIM18NLcXONac3lEI=;
	b=cZl3rRf0aQi198CZSJ7QvZzJUs1mmrpslXMZUL+L6qnSNK0lRoqzq1yXwOXv3xJ8
	Ub2jnCALc7lLPsX4EcXeYkksnC0q+h9YH4w6pUL4GuE7klR+ErRSn66+Pg+dQUMp
	IemOJjFFSug7+A8orkf/kp1zsABy8EGnOZHuTcdRu/Y=;
X-AuditID: c39127d2-b5e2e70000001dbe-bd-62b1c0c8d742
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 86.9B.07614.8C0C1B26; Tue, 21 Jun 2022 14:59:52 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Tue, 21 Jun
 2022 14:59:51 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Tue, 21 Jun 2022 14:59:51 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "lst@pengutronix.de"
	<lst@pengutronix.de>
CC: "upstream@phytec.de" <upstream@phytec.de>,
	"joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>
Thread-Topic: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
Thread-Index: AQHYhJ2e7m/VbJqpNUm05c+iaN9/2K1YF5OAgAAC44CAAAKIgIAACQMAgAGM04A=
Date: Tue, 21 Jun 2022 12:59:51 +0000
Message-ID: <f144f65143790f26e241669f152b9ad360fa2d1d.camel@phytec.de>
References: <20220520142337.993417-1-t.remmet@phytec.de>
	 <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
	 <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
	 <4dbe99f8-0ae7-b24e-9596-2abdce6152f4@pengutronix.de>
	 <8f346a89044203c38012861a3aa3cf7c63499c96.camel@phytec.de>
	 <e8dfb72b-3a12-eef5-13ff-894f60a90159@pengutronix.de>
In-Reply-To: <e8dfb72b-3a12-eef5-13ff-894f60a90159@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <198827B9BFE79D45BEC97503BD646E08@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsWyRpKBV/fEgY1JBnPbVS0WftjBZHFicT+z
	xeqpzxkt/n79wO7A4rF5Sb1H/18DjzWXl7IEMEdx2aSk5mSWpRbp2yVwZVy618VcME+hYuLP
	G+wNjFvkuxg5OSQETCS2b37D0sXIxSEksIRJYtWPW8wQzgNGiXnt81ghnE2MEhfebmEDaWET
	0JB4eaKbCSQhIrCYUeJ/41tWkASzQJHE29+bWEBsYQEXiZdn+8FsEQFXiX1TD7ND2H4SF//N
	B4uzCKhKrDsyASjOwcEr4Cax/gkPxLL7TBI/TrWCzeQUcJK43/gDbDGjgKzEhg3nmSF2iUts
	evadFeIHAYkleyDiEgKiEi8f/4OKy0ucuDWNCWQ+s4CmxPpd+hCtFhJrb8OMUZSY0v0Q7DRe
	AUGJkzOfsExgFJ+FZMMshO5ZSLpnIemehaR7ASPrKkah3Mzk7NSizGy9gozKktRkvZTUTYzA
	KDw8Uf3SDsa+OR6HGJk4GA8xSnAwK4nw2nBvSBLiTUmsrEotyo8vKs1JLT7EKM3BoiTOe7+H
	KVFIID2xJDU7NbUgtQgmy8TBKdXAKHGk/d35uSHOuTN9Tp/0r5wj5Nyhn1x9/0LD3Q//U5/M
	nDN9akToYcXqNZxX362b/jRssvDsFLYFyxW/TDGZIKd4b8rv8wErTl97orN0loCtF0+9RUfz
	P/+dx++y3kxbXnjrVhLX4buhAaJMn92dcvrbLk8XCZYUSc++YHfL73TtTve/1RmL3iuxFGck
	GmoxFxUnAgD8A0j9sAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_060000_088140_D1E40F4A 
X-CRM114-Status: GOOD (  32.75  )
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

SGkhDQoNCkFtIE1vbnRhZywgZGVtIDIwLjA2LjIwMjIgdW0gMTU6MTkgKzAyMDAgc2NocmllYiBB
aG1hZCBGYXRvdW06DQo+IEhpLA0KPiANCj4gT24gMjAuMDYuMjIgMTQ6NDcsIFRlcmVzYSBSZW1t
ZXQgd3JvdGU6DQo+ID4gQW0gTW9udGFnLCBkZW0gMjAuMDYuMjAyMiB1bSAxNDozOCArMDIwMCBz
Y2hyaWViIEFobWFkIEZhdG91bToNCj4gPiA+IE9uIDIwLjA2LjIyIDE0OjI3LCBUZXJlc2EgUmVt
bWV0IHdyb3RlOg0KPiA+ID4gPiBJIGhhdmUgc2V0IHRoZSBERFJDX0FERFJNQVA3IHJlZ2lzdGVy
IG1hbnVhbGx5IGluIHRoZSBSQU0NCj4gPiA+ID4gY29uZmlndXJhdGlvbg0KPiA+ID4gPiBpbiBz
dWNoIGEgY2FzZS4gQXMgSSBkb24ndCBzZWUgYSBzb2x1dGlvbiB0aGF0IGZpdHMgZm9yIGFsbC4N
Cj4gPiA+ID4gQnV0DQo+ID4gPiA+IHdvdWxkDQo+ID4gPiA+IGJlIGhhcHB5IGZvciBvbmUuIDop
DQo+ID4gPiANCj4gPiA+IFdoYXQgd291bGQgdGhlICduZXV0cmFsJyB2YWx1ZSB0byB3cml0ZSBp
bnRvIHRoaXMgcmVnaXN0ZXIgYmU/DQo+ID4gPiB6ZXJvDQo+ID4gPiBzZWVtcyB0byBub3QgYmUg
aXQuDQo+ID4gDQo+ID4gaXQncyANCj4gPiANCj4gPiAweGYwZiBmb3IgQUREUk1BUDcuDQo+ID4g
DQo+ID4gUmVmZXJlbmNlIE1hbnVhbCBzYXlzOiAiSWYgc2V0IHRvIDE1LCByb3cgYWRkcmVzcyBi
aXQgWCBpcyBzZXQgdG8NCj4gPiAwIg0KPiANCj4gRG8gbmV3ZXIgc3ByZWFkc2hlZXRzIGFsd2F5
cyBnZW5lcmF0ZSBBRERSTUFQNyB3cml0ZXMgZXZlbiBpZiB0aGUNCj4gdmFsdWUgaXMgemVybz8g
SWYgc28sIHdlIGNvdWxkIHBlcmhhcHMgaW5pdGlhbGl6ZSBpdCB0byAweGYwZiBiZWZvcmUNCj4g
cnVubmluZyBkZHJfY2ZnX3VtY3RsMigpLiBUaGUgRERSQyBzZWVtcyB0byBiZSBpbiByZXNldCB3
aGlsZSB0aGUNCj4gcmVnaXN0ZXJzIGFyZSBiZWluZyB3cml0dGVuLCBzbyB0aGlzIG1pZ2h0IGp1
c3Qgd29yay4NCg0KdGhpcyBpcyBub3Qgc28gZWFzeSB0byBmaWd1cmUgb3V0IGJlY2F1c2UgdGhl
IHNwcmVhZCBzaGVldCBkb2VzIA0Kbm90IGdlbmVyYXRlIHRoZSBjIGhlYWRlcnMgZGlyZWN0bHku
IA0KQnV0IGl0IGlzIHRydWUgZm9yIG90aGVyIEFERFJNQVAgcmVnaXN0ZXJzIHdoZXJlIHRoZSBy
ZXNldCB2YWx1ZSBpcyBhbHNvIHplcm8uDQpTbyBJIHdvdWxkIGdpdmUgaXQgYSB0cnkuDQoNCj4g
DQo+IEFzIDAgaXMgYSB2YWxpZCB2YWx1ZSwgSSBhbSB3b25kZXJpbmcgaWYgdGhpcyBzbmlwcGV0
IGludHJvZHVjZWQgd2l0aA0KPiA0MmQ0NWVmMzgwYzUgKCJBUk06IGlteDogQWRkIGlteDggc3Vw
cG9ydCBmb3IgU0RSQU0gd2l0aCB0d28gb3IgbW9yZQ0KPiBiYW5rIGdyb3VwcyIpDQo+IGlzIGNv
cnJlY3Q6DQo+IA0KPiBpZiAoYWRkcm1hcFs4XSkgew0KPiAgICAgICAgIGlmIChGSUVMRF9HRVQo
RERSQ19BRERSTUFQOF9CR19CMCwgYWRkcm1hcFs4XSkgIT0gMGIxMTExMSkNCj4gICAgICAgICAg
ICAgICAgIGJhbmtzKys7DQo+ICAgICAgICAgaWYgKEZJRUxEX0dFVChERFJDX0FERFJNQVA4X0JH
X0IxLCBhZGRybWFwWzhdKSAhPSAwYjExMTExMSkNCj4gICAgICAgICAgICAgICAgIGJhbmtzKys7
DQo+IH0NCg0KeWVzLCB0aGlzIGlzIHdyb25nLiBMUEREUjQgaXMgbm8gcHJvYmxlbSBhdCB0aGUg
bW9tZW50IGFzIHRoZQ0Kc3ByZWFkc2hlZXQgZG9lcyBub3Qgc2V0IHRoZSB2YWx1ZSBhbmQgdGhl
IHJlc2V0IHZhbHVlIGhlcmUgaXMgemVyby4NCkJ1dCBERFI0IHVzZXMgaXQgYW5kIHRoZXJlIGNv
dWxkIGJlIGEgInJlYWwiIHplcm8gc2V0IHdoaWNoIGlzIHRoZW4NCmlnbm9yZWQuDQoNClJlZ2Fy
ZHMsDQpUZXJlc2ENCg0KPiANCj4gVGhhbmtzLA0KPiBBaG1hZA0KPiANCj4gPiBSZWdhcmRzLA0K
PiA+IFRlcmVzYQ0KPiA+IA0KPiA+IA0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gQWhtYWQNCj4gPiA+
IA0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBUZXJlc2ENCj4gPiA+ID4gDQo+ID4gPiA+ID4g
PiAtLS0NCj4gPiA+ID4gPiA+ICBhcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYyB8IDIgKy0NCj4g
PiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkN
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtaW14
L2VzZGN0bC5jIGIvYXJjaC9hcm0vbWFjaC0NCj4gPiA+ID4gPiA+IGlteC9lc2RjdGwuYw0KPiA+
ID4gPiA+ID4gaW5kZXggOGRkMGRkYmJjOTY1Li5iMDcwZWJjNjJhNDUgMTAwNjQ0DQo+ID4gPiA+
ID4gPiAtLS0gYS9hcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYw0KPiA+ID4gPiA+ID4gKysrIGIv
YXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMNCj4gPiA+ID4gPiA+IEBAIC00ODgsNyArNDg4LDcg
QEAgc3RhdGljIHJlc291cmNlX3NpemVfdA0KPiA+ID4gPiA+ID4gaW14OG1fZGRyY19zZHJhbV9z
aXplKHZvaWQgX19pb21lbSAqZGRyYykNCj4gPiA+ID4gPiA+ICANCj4gPiA+ID4gPiA+ICAJcmV0
dXJuIGlteF9kZHJjX3NkcmFtX3NpemUoZGRyYywgYWRkcm1hcCwNCj4gPiA+ID4gPiA+ICAJCQkJ
ICAgMTIsIEFSUkFZX0FORF9TSVpFKGNvbF9iKSwNCj4gPiA+ID4gPiA+IC0JCQkJICAgMTYsIEFS
UkFZX0FORF9TSVpFKHJvd19iKSwNCj4gPiA+ID4gPiA+ICsJCQkJICAgMTgsIEFSUkFZX0FORF9T
SVpFKHJvd19iKSwNCj4gPiA+ID4gPiA+ICAJCQkJICAgcmVkdWNlZF9hZHJlc3Nfc3BhY2UsIHRy
dWUpOw0KPiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+ICANCj4gDQo+IA0KLS0gDQpQSFlURUMg
TWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2Vy
bWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERp
cGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBG
aW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQo=


