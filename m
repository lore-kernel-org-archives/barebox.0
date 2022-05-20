Delivery-date: Fri, 20 May 2022 16:18:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3Sl-0039fg-RY
	for lore@lore.pengutronix.de; Fri, 20 May 2022 16:18:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns3Sk-0008Jp-HA
	for lore@pengutronix.de; Fri, 20 May 2022 16:18:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwkZljUDu3PoVWP+NWMmlnKSucNdGEEk3zipEf3wtHA=; b=YtX0fVAzoZXUha
	PFKaWEKgFSscSDKbl7Hi7aBpQBcTunXRhCmeW4RR2Qa7uZCPXorA80J7lMkVxc7OXBnR8n9HVgkCn
	gnRYAKZ67vrTbCiDjcgJGi38y7vtaxA8IEkWYG1kKxkPZbTTe45LI0Qt9n3BkDxEjMeP4nbAvur+y
	erYbcDLDyIS2gZBgXDNAtnLNdqV9smzMtSjW5teGtO51oXOVcXhaH9C2v8PXEsa1JckUjeCYZ+EJZ
	p9lAQgXEZfiOeTVHmNZxjgXhi99F2QnsT3RCYEnz2808CTUheTOobUPdzff3Q9PxwbVzMbCsBDr6H
	Hw6HSNCj86NaVI1dOqUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns3Qy-00Cs3K-5j; Fri, 20 May 2022 14:16:52 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns3Qs-00Cs0d-Sy
 for barebox@lists.infradead.org; Fri, 20 May 2022 14:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1653056197; x=1655648197;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ekl2htp5Bi1ZEF+1hYZONvtpmMywaBE+WOMrfEXXN70=;
 b=bjRTi2QZeIoPQwakeR34ULrr9Pja8F0LK/TbikakMqF8QVcm1BDcF6dKO7FKY/6W
 9+yGyCoQSoOr9wtJ2Zpb91DeKipebAe3jBZVL+IOonghqI4SRnh1YZHhJhSuf+bB
 AmXHMmq2DMxAmUx+NQWQi+9zWB4aW1THdp3Ht0SIQ0g=;
X-AuditID: c39127d2-7cf7e70000000701-74-6287a2c58d32
Received: from Diagnostix.phytec.de (Unknown_Domain [172.25.0.14])
 (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 10.05.01793.5C2A7826;
 Fri, 20 May 2022 16:16:37 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Fri, 20 May
 2022 16:16:37 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018; 
 Fri, 20 May 2022 16:16:37 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
Thread-Index: AQHYZtQyKTvKhUvBzUSNv5QVk6zBca0nuT4A
Date: Fri, 20 May 2022 14:16:37 +0000
Message-ID: <a1ec13152a5ae7b4a32fcc2a63e40be36335aa06.camel@phytec.de>
References: <20220513141625.1411217-1-l.stach@pengutronix.de>
In-Reply-To: <20220513141625.1411217-1-l.stach@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-ID: <02C492DC77269349B58C4C414B660A73@phytec.de>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDLMWRmVeSWpSXmKPExsWyRpKBT/foovYkg/k7tC1OLO5ntngw9yaT
 A5PH5iX1Hv1/DQKYorhsUlJzMstSi/TtErgybmyxKVgmWLGhsYG5gfGNQBcjB4eEgInEia9a
 XYycHEICK5gkNizU6GLkArKfMEocXHeQHSKxiVHi31NbEJtNQEPi5YluJhBbRKBE4tPD3Ywg
 trCAk8SO7mcsEHFniZeX77FC2EYSTS2zwepZBFQlPi9YC2bzCrhJzF15lBVivq3Erx0dzCD3
 cArYSdw+ZgQSZhSQldiw4TwziM0sIC6x6dl3sHIJAQGJJXsg4hICohIvH/+DistLnLg1jQlk
 DLOApsT6XfoQrRYSs5+eYoKwFSWmdD9kh7hAUOLkzCcsExjFZiHZMAuhexaS7llIumch6V7A
 yLqKUSg3Mzk7tSgzW68go7IkNVkvJXUTIzCGDk9Uv7SDsW+OxyFGJg7GQ4wSHMxKIryMuS1J
 QrwpiZVVqUX58UWlOanFhxilOViUxHnv9zAlCgmkJ5akZqemFqQWwWSZODilGhiV9tyadaWN
 2YmNRePQvOtbWHTf3fHc9tdx+pk5x1gbxTom73qReX3/7gQZllUrLHlmuckq39FnKF6ncpJB
 f6JTPOPZ12p3n6Z8vX0jK+qwP6dcl4BksKNL/IVvNRW991SZpPiz5pSK6lz7t+vnor9KV84u
 1gxP+bvpobxpsewP3gcMb79cS3ivxFKckWioxVxUnAgAl+zXJI8CAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_071647_419237_0598686B 
X-CRM114-Status: GOOD (  19.63  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGVsbG8gTHVjYXMsDQoNCkFtIEZyZWl0YWcsIGRlbSAxMy4wNS4yMDIyIHVtIDE2OjE2ICswMjAw
IHNjaHJpZWIgTHVjYXMgU3RhY2g6DQo+IFRoZSBERFJDIG9ubHkgdXNlcyB0aGUgREVWSUNFX0NP
TkZJRyBmaWVsZCBmb3IgbWVtb3J5IHR5cGVzIG90aGVyDQo+IHRoYW4NCj4gTFBERFI0LiBXaGls
ZSBMUEREUjQgYWx3YXlzIGhhcyBhIGJ1cyB3aWR0aCBvZiB4MzIsIHRoZSBzY3JpcHQgYWlkDQoN
CnRoaXMgaXMgbm90IHRydWUgZm9yIGkuTVg4TSBOYW5vLiBUaGlzIFNvQyBoYXMgb25seSB4MTYu
IFRoaXMgaXMNCnByb2JhYmx5IHdoeSByZWFkaW5nIHRoZSByZWdpc3RlciB3b3JrZWQgZm9yIEpv
YWNpbSBvbiBpbXg4bW4uDQpTbyB0aGVyZSBpcyBzb21lIG1vcmUgY2hlY2tpbmcgbmVlZGVkLg0K
DQpSZWdhcmRzLA0KVGVyZXNhDQoNCj4gZ2VuZXJhdGVzIHRoZSB2YWx1ZSBmb3IgYSB4MTYgYnVz
LCBhcyB0aGlzIHdhcyBhcHBhcmVudGx5IHVzZWQgZm9yDQo+IHRoZQ0KPiBjb250cm9sbGVyIHZh
bGlkYXRpb24uIFRoaXMgcmVzdWx0ZWQgaW4gdGhlIGNhbGN1bGF0ZWQgRFJBTSBzaXplIHRvDQo+
IGJlDQo+IGhhbHZlZCBvbiBib2FyZHMgd2l0aCBMUEREUjQgbWVtb3J5Lg0KPiANCj4gRml4ZXM6
IGQ4ZDU3NzhlZThjMiAoIkFSTTogaW14OiBDb3JyZWN0IG1lbSBzaXplIGNhbGN1bGF0aW9uIGZv
cg0KPiA0LzgvMTYvMzIgYml0IGJ1cyB3aWR0aCIpDQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0
YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPiAtLS0NCj4gIGFyY2gvYXJtL21hY2gtaW14
L2VzZGN0bC5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMg
Yi9hcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYw0KPiBpbmRleCBkM2RiZmZmNDIzZGEuLjRjODc2
NWMxOTNkMCAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMNCj4gKysr
IGIvYXJjaC9hcm0vbWFjaC1pbXgvZXNkY3RsLmMNCj4gQEAgLTM5Miw3ICszOTIsNyBAQCBpbXhf
ZGRyY19zZHJhbV9zaXplKHZvaWQgX19pb21lbSAqZGRyYywgY29uc3QgdTMyDQo+IGFkZHJtYXBb
XSwNCj4gIAl9DQo+ICANCj4gIAkvKiBCdXMgd2lkdGggaW4gYnl0ZXMsIDAgbWVhbnMgaGFsZiBi
eXRlIG9yIDQtYml0IG1vZGUgKi8NCj4gLQlpZiAoaXNfaW14OCkNCj4gKwlpZiAoaXNfaW14OCAm
JiAhKG1zdHIgJiBERFJDX01TVFJfTFBERFI0KSkNCj4gIAkJd2lkdGggPSAoMSA8PCBGSUVMRF9H
RVQoRERSQ19NU1RSX0RFVklDRV9DT05GSUcsIG1zdHIpKQ0KPiA+PiAxOw0KPiAgCWVsc2UNCj4g
IAkJd2lkdGggPSA0Ow0KLS0gDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2No
LVN0ci4gMzkgfCA1NTEyOSBNYWlueiwgR2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlw
bC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxz
cmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAw
NjA4LCBERQ0KMTQ5MDU5ODU1DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

