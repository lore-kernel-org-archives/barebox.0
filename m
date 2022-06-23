Delivery-date: Thu, 23 Jun 2022 14:43:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MBS-00Bxdx-HZ
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 14:43:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MBS-0007dK-2I
	for lore@pengutronix.de; Thu, 23 Jun 2022 14:43:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BeM/21PfD60GTmJXZPqXy+A5eU+NxTdgg03TcbwcfOg=; b=GVUtf49asJOEV96bFcgJAE90ZK
	my3hPWLiHSGKLVYLNmfsvnQ0oXgEftkBWUmLw+6kTHDSqkdPHwq8W+dgDrWMF3amqmdBzn9I3z4Vb
	IV2qgwwj9/hKvAc0bdNc/kNNJElYt3Owb1lVPJ5GYyXKPuMLsYWh6T9li8IauGF78OY9xNpC6CaTk
	+NJ1X8ZhYE8Xc2l26xNxYPf+8ZQhhaHF9KVKmbWOpYhAPnvK7hmUI/lTNDKJpLxPDnOxoSVHfXR7O
	2/TPiKnImxxSXKMLzMb/TQi6XmLOFLbsrTR9kkSTmec8d9NZuigJoxsh3yr+XkllridmGv4Lb3cz+
	g68HWdkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4M9y-00F3EU-7w; Thu, 23 Jun 2022 12:42:10 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4M9t-00F3AD-1e
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 12:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655988117; x=1658580117;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BeM/21PfD60GTmJXZPqXy+A5eU+NxTdgg03TcbwcfOg=;
	b=CTE3oKZcuXo/09rWBc9GALlKm+5lBlYL5VWC5Y4JW2hn6jTJl3dewyuHNYxgU4Vr
	YmsWibNHNMrAAGrnwVS6ko+Rk5ORPLyqlV2Y1KLelXLqHTKvjvu5VF+DD2uoxtKo
	m9PT6R/5KtjPgMlB/W09ZxX/Gpgkv4+43f5fk308auY=;
X-AuditID: c39127d2-b3a2d70000001dbe-59-62b45f9587a4
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D7.1F.07614.59F54B26; Thu, 23 Jun 2022 14:41:57 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 23 Jun
 2022 14:41:56 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Thu, 23 Jun 2022 14:41:56 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"joacim.zetterling@westermo.com" <joacim.zetterling@westermo.com>,
	"lst@pengutronix.de" <lst@pengutronix.de>
Thread-Topic: [PATCH master 3/4] ddr: imx8m: workaround old spreadsheets not
 initializing ADDRMAP7
Thread-Index: AQHYhuxUu5SJqfFayUuD9NjiywLjq61csU2AgAAERICAAANbAIAABcWAgAAEqICAAAqFAA==
Date: Thu, 23 Jun 2022 12:41:56 +0000
Message-ID: <692642e85a1448cf163e829313afca564ede018a.camel@phytec.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
	 <20220623103051.572885-4-a.fatoum@pengutronix.de>
	 <bc2b59694db2e9871fce0e0113009e4d05c2b3a6.camel@phytec.de>
	 <6a5b1c31-5c83-b5e9-1912-669121092c62@pengutronix.de>
	 <12b29350135ad59a7e5fb9713a85e8f15e5b4e73.camel@phytec.de>
	 <c4f5ec448c17c8111c69dbdabd87ddaa01eb8ea1.camel@phytec.de>
	 <dfbccd80-419d-6091-c9f5-591d6f39d569@pengutronix.de>
In-Reply-To: <dfbccd80-419d-6091-c9f5-591d6f39d569@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E65922B2D2660A4EB5161F8B20186049@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsWyRpKBR3dq/JYkgwO9vBYLP+xgsmjusLU4
	sbif2WL11OeMFn+/fmB3YPXYOesuu8fmJfUe/X8NPNZcXsoSwBLFZZOSmpNZllqkb5fAlXHl
	ywfmgmt2Ff/PPmBrYOyw7WLk5JAQMJF48qyZrYuRi0NIYAmTxMy7i9lBEkICDxgl5k6IhEhs
	YpS483ctM0iCTUBD4uWJbiYQW0SgTOLjk9+MIEXMAqsZJRpafrOBJIQFkiU2nmpjhShKkTi1
	6xKUHSZxb8lCFhCbRUBVYu7CDUCDODh4BdwkDi5zhVg2j1ni/q2vYHM4BZwk5r1cC2YzCshK
	bNhwHuwIZgFxiU3PvrNCvCAgsWQPRFxCQFTi5eN/UHF5iRO3poHNZxbQlFi/Sx+i1UJiQvdp
	qDGKElO6H4I9zCsgKHFy5hOWCYzis5BsmIXQPQtJ9ywk3bOQdC9gZF3FKJSbmZydWpSZrVeQ
	UVmSmqyXkrqJERiVhyeqX9rB2DfH4xAjEwfjIUYJDmYlEd4X/zcnCfGmJFZWpRblxxeV5qQW
	H2KU5mBREue938OUKCSQnliSmp2aWpBaBJNl4uCUamAMPejQLDFDPZOXr/DYsj2Nlb9jpe/2
	rWOoPB+pV2Am7hdsovx3dqL6pG8eXVWrtjd+eHAs/d/dwpglenMEwu0zMxm1VR5IzfrMXP/x
	VEnv/ewfC1Tapu9YsG3KnKbF5glprlqNESVKPxVlgzU/xj4RieNaELp+1TKrPautv/yMcvtQ
	c9hajEWJpTgj0VCLuag4EQBOBZkAuAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_054205_280543_F6E63772 
X-CRM114-Status: GOOD (  39.91  )
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

QW0gRG9ubmVyc3RhZywgZGVtIDIzLjA2LjIwMjIgdW0gMTQ6MDQgKzAyMDAgc2NocmllYiBBaG1h
ZCBGYXRvdW06DQo+IE9uIDIzLjA2LjIyIDEzOjQ3LCBUZXJlc2EgUmVtbWV0IHdyb3RlOg0KPiA+
IEFtIERvbm5lcnN0YWcsIGRlbSAyMy4wNi4yMDIyIHVtIDEzOjI2ICswMjAwIHNjaHJpZWIgVGVy
ZXNhIFJlbW1ldDoNCj4gPiA+IEFtIERvbm5lcnN0YWcsIGRlbSAyMy4wNi4yMDIyIHVtIDEzOjE0
ICswMjAwIHNjaHJpZWIgQWhtYWQNCj4gPiA+IEZhdG91bToNCj4gPiA+ID4gPiBJIGhhdmUganVz
dCBwbGF5ZWQgYXJvdW5kIGFsc28gc2V0dGluZyBBRERSTUFQNyByaWdodCBiZWZvcmUgDQo+ID4g
PiA+ID4gZGRyX2NmZ191bWN0bDIoKSB3aXRob3V0IGZpeGluZyB0aGUgdGltaW5ncyBhbmQgdGhl
IHJlZ2lzdGVyDQo+ID4gPiA+ID4gd2FzDQo+ID4gPiA+ID4gMA0KPiA+ID4gPiA+IGFnYWluIGFm
dGVyIHN0YXJ0dXAgYW5kIHNvIHRoZSBSQU0gc2l6ZSB3cm9uZy4NCj4gPiA+ID4gPiBTbyBpdCBz
ZWVtcyB0byBtZSB0aGF0IHRoZSB2YWx1ZSBpcyBvdmVyd3JpdHRlbi9yZXNldHRlZCBhdA0KPiA+
ID4gPiA+IHNvbWUNCj4gPiA+ID4gPiBvdGhlcg0KPiA+ID4gPiA+IHBvaW50IGFnYWluIC4uLiBv
ciBtYXliZSBJIGp1c3QgZGlkIHNvbWV0aGluZyB3cm9uZy4NCj4gPiA+ID4gDQo+ID4gPiA+IFN0
cmFuZ2UuIFdoYXQgU29DL2JvYXJkIGlzIHRoaXMgb24/DQo+ID4gPiANCj4gPiA+IHBoeUNPUkUt
aS5NWDhNUSBidXQgd2l0aCBhIG5vdCB1cHN0cmVhbWVkIDJHQiBSQU0gY29uZmlndXJhdGlvbi4N
Cj4gPiA+IA0KPiA+ID4gSSBhcHBsaWVkIHRoaXMgcGF0Y2ggbm93IHdpdGggdGhlIHNhbWUgcmVz
dWx0LiBXcm9uZyBSQU0gc2l6ZS4gDQo+ID4gDQo+ID4gSSBub3cgaGF2ZSBhbHNvIHRyaWVkIHNv
bWUgb3V0IG9mIHRyZWUgcGh5Q09SRS1pLk1YOE1NDQo+ID4gaW1wbGVtZW50YXRpb24NCj4gPiB3
aXRob3V0IGFuZCB3aXRoIHRoaXMgcGF0Y2ggYW5kIHRoZSBwYXRjaCB3b3JrcyBmb3Igb3VyIE1N
LiB0b28uDQo+ID4gUkFNDQo+ID4gc2l6ZSBpcyBjb3JyZWN0ZWQuDQo+ID4gU28gbWF5YmUgdGhl
IE1RIGlzIHNvbWVob3cgZGlmZmVyZW50IGhlcmU/DQo+IA0KPiBUaGUgUGh5Q09SRSB3aXRoIGku
TVg4TVEgdXBzdHJlYW0gZG9lc24ndCB1c2UgdGhlIGdlbmVyaWMgRFJBTQ0KPiByZWdpc3Rlcg0K
PiBzZXR1cCBpbiBkcml2ZXJzL2Rkci9pbXg4bSwgc28geW91IHdvdWxkbid0IGdldCBhIHdhcm5p
bmcgdGhlcmUgYW5kDQo+IHdlDQo+IGNhbid0IGFkZCBvbmUgZWFzaWx5LCBiZWNhdXNlIHRoZXJl
IGlzIG5vIHN1aXRhYmxlIGhvb2sgcG9pbnQuDQoNCkFoIHllcywgdGhpcyBpcyB0aGUgb25seSBw
bGFjZSB3aGVyZSB3ZSBzdGlsbCBoYXZlIHRoZSBub24gZ2VuZXJpYw0Kc2V0dXAuIFNvIEkgZGlk
IG5vdCB0aG91Z2h0IG9mIGl0LiBFbmFibGluZyBkZWJ1ZyB3b3VsZCBoYXZlIGhlbHBlZC4NClNv
IHRoYW5rIHlvdS4gDQoNCkF0IGxlYXN0IEkgY2FuIGdpdmUgbXk6DQoNClRlc3RlZC1ieTogVGVy
ZXNhIFJlbW1ldCA8dC5yZW1tZXRAcGh5dGVjLmRlPg0KDQpUaGFua3MhDQpUZXJlc2ENCg0KDQo+
IA0KPiBDb3VsZCB0aGlzIGJlIHlvdXIgaXNzdWU/DQo+IA0KPiBGb3IgaS5NWDhNTSwgdGhlIGdl
bmVyaWMgc2V0dXAgaXMgdXNlZCwgc28geW91IGdldCB0aGUgZml4dXAgYW5kIHRoZQ0KPiB3YXJu
aW5nLg0KPiANCj4gDQo+ID4gVGVyZXNhDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gPiBS
ZWdhcmRzLA0KPiA+ID4gVGVyZXNhDQo+ID4gPiANCj4gPiA+ID4gQ2hlZXJzLA0KPiA+ID4gPiBB
aG1hZA0KPiA+ID4gPiANCj4gPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiA+IFRlcmVzYQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gRml4ZXM6IGRhZDJiNTYzNmJkOCAoIkFSTTogaW14OiBBZGQg
aW14OCBzdXBwb3J0IGZvciAxOCBiaXQNCj4gPiA+ID4gPiA+IFNEUkFNDQo+ID4gPiA+ID4gPiBy
b3cNCj4gPiA+ID4gPiA+IHNpemUgaGFuZGxlIikNCj4gPiA+ID4gPiA+IEZpeGVzOiA2Y2YxOTdm
YTYxZjkgKCJhcm06IGlteDogbW1kY19zaXplOiBJbmNyZWFzZSByb3dfbWF4DQo+ID4gPiA+ID4g
PiBmb3INCj4gPiA+ID4gPiA+IGlteDhtIikNCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFo
bWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+ID4gPiA+ID4gPiAtLS0NCj4g
PiA+ID4gPiA+ICBkcml2ZXJzL2Rkci9pbXg4bS9kZHJfaW5pdC5jIHwgMTggKysrKysrKysrKysr
KysrKysrDQo+ID4gPiA+ID4gPiAgZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMgICB8ICA2ICsr
KysrKw0KPiA+ID4gPiA+ID4gIGluY2x1ZGUvc29jL2lteDhtL2Rkci5oICAgICAgfCAgMSArDQo+
ID4gPiA+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rkci9pbXg4bS9kZHJfaW5pdC5j
DQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZGRyL2lteDhtL2Rkcl9pbml0LmMNCj4gPiA+ID4gPiA+
IGluZGV4IGFlMDViMTM2MjI5Yy4uOWE0YjRlMmNhODhhIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0t
IGEvZHJpdmVycy9kZHIvaW14OG0vZGRyX2luaXQuYw0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVy
cy9kZHIvaW14OG0vZGRyX2luaXQuYw0KPiA+ID4gPiA+ID4gQEAgLTEzLDE0ICsxMywzMiBAQA0K
PiA+ID4gPiA+ID4gICNpbmNsdWRlIDxtYWNoL2lteDhtLXJlZ3MuaD4NCj4gPiA+ID4gPiA+ICAj
aW5jbHVkZSA8bWFjaC9pbXg4bS1jY20tcmVncy5oPg0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+
ID4gK2Jvb2wgaW14OG1fZGRyX29sZF9zcHJlYWRzaGVldCA9IHRydWU7DQo+ID4gPiA+ID4gPiAr
DQo+ID4gPiA+ID4gPiAgc3RhdGljIHZvaWQgZGRyX2NmZ191bWN0bDIoc3RydWN0IGRyYW1fY2Zn
X3BhcmFtDQo+ID4gPiA+ID4gPiAqZGRyY19jZmcsDQo+ID4gPiA+ID4gPiBpbnQNCj4gPiA+ID4g
PiA+IG51bSkNCj4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+ID4gPiAgCWludCBpID0gMDsNCj4gPiA+
ID4gPiA+ICANCj4gPiA+ID4gPiA+ICAJZm9yIChpID0gMDsgaSA8IG51bTsgaSsrKSB7DQo+ID4g
PiA+ID4gPiArCQlpZiAoZGRyY19jZmctPnJlZyA9PSBERFJDX0FERFJNQVA3KDApKQ0KPiA+ID4g
PiA+ID4gKwkJICAgIGlteDhtX2Rkcl9vbGRfc3ByZWFkc2hlZXQgPSBmYWxzZTsNCj4gPiA+ID4g
PiA+ICAJCXJlZzMyX3dyaXRlKCh1bnNpZ25lZCBsb25nKWRkcmNfY2ZnLT5yZWcsDQo+ID4gPiA+
ID4gPiBkZHJjX2NmZy0NCj4gPiA+ID4gPiA+ID4gdmFsKTsNCj4gPiA+ID4gPiA+ICAJCWRkcmNf
Y2ZnKys7DQo+ID4gPiA+ID4gPiAgCX0NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsJLyoN
Cj4gPiA+ID4gPiA+ICsJICogT2xkZXIgTlhQIEREUiBjb25maWd1cmF0aW9uIHNwcmVhZHNoZWV0
cyBkb24ndA0KPiA+ID4gPiA+ID4gaW5pdGlhbGl6ZQ0KPiA+ID4gPiA+ID4gQUREUk1BUDcsDQo+
ID4gPiA+ID4gPiArCSAqIHdoaWNoIGZhbHNpZmllcyB0aGUgbWVtb3J5IHNpemUgcmVhZCBiYWNr
IGZyb20gdGhlDQo+ID4gPiA+ID4gPiBjb250cm9sbGVyDQo+ID4gPiA+ID4gPiArCSAqIGluIGJh
cmVib3ggcHJvcGVyLg0KPiA+ID4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gPiA+ICsJaWYgKGlteDht
X2Rkcl9vbGRfc3ByZWFkc2hlZXQpIHsNCj4gPiA+ID4gPiA+ICsJCXByX3dhcm4oIldvcmtpbmcg
YXJvdW5kIG9sZCBzcHJlYWRzaGVldC4gUGxlYXNlDQo+ID4gPiA+ID4gPiByZWdlbmVyYXRlXG4i
KTsNCj4gPiA+ID4gPiA+ICsJCS8qDQo+ID4gPiA+ID4gPiArCQkgKiBBbHRlcm5hdGl2ZWx5LCBz
dGljayB7IEREUkNfQUREUk1BUDcoMCksDQo+ID4gPiA+ID4gPiAweGYwZiB9DQo+ID4gPiA+ID4g
PiBpbnRvDQo+ID4gPiA+ID4gPiArCQkgKiBzdHJ1Y3QgZHJhbV90aW1pbmdfaW5mbzo6ZGRyY19j
Zmcgb2YgeW91cg0KPiA+ID4gPiA+ID4gb2xkIHRpbWluZw0KPiA+ID4gPiA+ID4gZmlsZQ0KPiA+
ID4gPiA+ID4gKwkJICovDQo+ID4gPiA+ID4gPiArCQlyZWczMl93cml0ZShERFJDX0FERFJNQVA3
KDApLCAweGYwZik7DQo+ID4gPiA+ID4gPiArCX0NCj4gPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4g
PiAgDQo+ID4gPiA+ID4gPiAgLyoNCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rk
ci9pbXg4bS9oZWxwZXIuYw0KPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIu
Yw0KPiA+ID4gPiA+ID4gaW5kZXggOTRiYmI4MTE1NzZkLi45OGU0MDg0OTU4NGIgMTAwNjQ0DQo+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2Rkci9pbXg4bS9oZWxwZXIuYw0KPiA+ID4gPiA+ID4g
KysrIGIvZHJpdmVycy9kZHIvaW14OG0vaGVscGVyLmMNCj4gPiA+ID4gPiA+IEBAIC02Miw2ICs2
MiwxMiBAQCB2b2lkIGRyYW1fY29uZmlnX3NhdmUoc3RydWN0DQo+ID4gPiA+ID4gPiBkcmFtX3Rp
bWluZ19pbmZvDQo+ID4gPiA+ID4gPiAqdGltaW5nX2luZm8sDQo+ID4gPiA+ID4gPiAgCQljZmcr
KzsNCj4gPiA+ID4gPiA+ICAJfQ0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gKwlpZiAoaW14
OG1fZGRyX29sZF9zcHJlYWRzaGVldCkgew0KPiA+ID4gPiA+ID4gKwkJY2ZnLT5yZWcgPSBERFJD
X0FERFJNQVA3KDApOw0KPiA+ID4gPiA+ID4gKwkJY2ZnLT52YWwgPSAweGYwZjsNCj4gPiA+ID4g
PiA+ICsJCWNmZysrOw0KPiA+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiAgCS8qIHNhdmUgZGRycGh5IGNvbmZpZyAqLw0KPiA+ID4gPiA+ID4gIAlzYXZlZF90aW1pbmct
PmRkcnBoeV9jZmcgPSBjZmc7DQo+ID4gPiA+ID4gPiAgCWZvciAoaSA9IDA7IGkgPCB0aW1pbmdf
aW5mby0+ZGRycGh5X2NmZ19udW07IGkrKykgew0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvc29jL2lteDhtL2Rkci5oDQo+ID4gPiA+ID4gPiBiL2luY2x1ZGUvc29jL2lteDhtL2Rk
ci5oDQo+ID4gPiA+ID4gPiBpbmRleCA5YWU3Y2I4Nzc2ODYuLjE0N2E3ZDQ5OWFhZiAxMDA2NDQN
Cj4gPiA+ID4gPiA+IC0tLSBhL2luY2x1ZGUvc29jL2lteDhtL2Rkci5oDQo+ID4gPiA+ID4gPiAr
KysgYi9pbmNsdWRlL3NvYy9pbXg4bS9kZHIuaA0KPiA+ID4gPiA+ID4gQEAgLTQwNyw2ICs0MDcs
NyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgcmVnMzJzZXRiaXQodW5zaWduZWQNCj4gPiA+ID4gPiA+
IGxvbmcNCj4gPiA+ID4gPiA+IGFkZHIsIHUzMiBiaXQpDQo+ID4gPiA+ID4gPiAgI2RlZmluZSBk
d2NfZGRycGh5X2FwYl9yZChhZGRyKSBcDQo+ID4gPiA+ID4gPiAgCXJlZzMyX3JlYWQoSU9NRU0o
SVAyQVBCX0REUlBIWV9JUFNfQkFTRV9BRERSKDApKSArIDQgKg0KPiA+ID4gPiA+ID4gKGFkZHIp
KQ0KPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gK2V4dGVybiBib29sIGlteDhtX2Rkcl9vbGRf
c3ByZWFkc2hlZXQ7DQo+ID4gPiA+ID4gPiAgZXh0ZXJuIHN0cnVjdCBkcmFtX2NmZ19wYXJhbSBk
ZHJwaHlfdHJhaW5lZF9jc3JbXTsNCj4gPiA+ID4gPiA+ICBleHRlcm4gdWludDMyX3QgZGRycGh5
X3RyYWluZWRfY3NyX251bTsNCj4gPiA+ID4gPiA+ICANCj4gDQo+IA0KLS0gDQpQSFlURUMgTWVz
c3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFu
eQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwu
LUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5h
bnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQo=


