Delivery-date: Mon, 20 Jun 2022 14:31:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3GZR-0084tO-RG
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 14:31:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3GZQ-0007dG-Nz
	for lore@pengutronix.de; Mon, 20 Jun 2022 14:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JENknHUBfnbdgTkgJbURM+nxpRFkHBHk6q3XOJX/tv4=; b=4XyyQNQb0cunlF8CulBjmu0hLj
	bfRjEivMcfBZa9Z+YMedayHJLd3HSABwMpZWQgRyxajOIpd8AAK8EXXQAj2M51slwAqmQi7Dj4vgy
	CuHshJUFrTAoGcS6AEZRttYqH1wpmNM3VqOhwj28FiuAN502yeLkgrj86Ses3nczysJHBb3iZD6GY
	Mq5Z1dVgeFMEfWgigOaSycfyPX9XXipk6MknOehstqKTYeo4yJWIVLST6MAGd+shPhHtiJr5T9SJw
	bQgm6l9UE/nvv4U3vd0P+c9XgGebqet1XxbP7f5YWjNDE/rmdp3T+sxglTDkxrBw2h4bPQlxdFV7d
	OA5yxDbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3GXo-000R9q-AO; Mon, 20 Jun 2022 12:30:17 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3GVe-000QMY-Uq
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 12:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1655728076; x=1658320076;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JENknHUBfnbdgTkgJbURM+nxpRFkHBHk6q3XOJX/tv4=;
	b=SadjeLpPllm9JD+a9GvQTXmn5x8UtpjtaFiaMIeGEmmvB05jHS5m8SgL7f/nwwBT
	Gf68Vc/7hwwBNF1CSFmxGVIbo86rd7YrkGv+OkfRDNGiMqbR1QD/oKUZjrnGmTJI
	0diaVcHrOIpC4f2KdtiK0XplVi/oslEVNPYxNeM6qTM=;
X-AuditID: c39127d2-b5e2e70000001dbe-e8-62b067cc7fa1
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C7.10.07614.CC760B26; Mon, 20 Jun 2022 14:27:56 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 20 Jun
 2022 14:27:55 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Mon, 20 Jun 2022 14:27:55 +0200
From: Teresa Remmet <T.Remmet@phytec.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "lst@pengutronix.de"
	<lst@pengutronix.de>
CC: "upstream@phytec.de" <upstream@phytec.de>
Thread-Topic: [PATCH] arm: imx: mmdc_size: Increase row_max for imx8m
Thread-Index: AQHYhJ2e7m/VbJqpNUm05c+iaN9/2K1YF5OA
Date: Mon, 20 Jun 2022 12:27:55 +0000
Message-ID: <b0780095924d7a9801a6fc3165563f247a8fc2b8.camel@phytec.de>
References: <20220520142337.993417-1-t.remmet@phytec.de>
	 <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
In-Reply-To: <134ee58e-b58e-4551-d834-c4d115f91d99@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <92AB67C033E4654CA57E056C140A5540@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsWyRpKBR/dM+oYkg1uvmCwWftjBZHFicT+z
	xd+vH9gdmD02L6n36P9rEMAUxWWTkpqTWZZapG+XwJXx4tFMpoITkhWPXz1hamD8ItHFyMEh
	IWAiseupaRcjF4eQwBImiUvf5rNAOA8YJY523gNyOIGcTYwSVx9IgNhsAhoSL090M4EUiQgs
	ZpT43/iWFWQSs4CuxIlX1SA1wgIuEi/P9oP1igi4SuybepgdwjaS2Nh7BCzOIqAqsffYJbA4
	r4CbROv5pWwQuwol5jw+yQRicwo4Say4swasnlFAVmLDhvPMIDazgLjEpmffWUFsCQEBiSV7
	IOISAqISLx//g4rLS5y4NY0J4jRNifW79CFaLSS2d/ayQ9iKElO6H0KdIChxcuYTlgmM4rOQ
	bJiF0D0LSfcsJN2zkHQvYGRdxSiUm5mcnVqUma1XkFFZkpqsl5K6iREYa4cnql/awdg3x+MQ
	IxMH4yFGCQ5mJRFeG+4NSUK8KYmVValF+fFFpTmpxYcYpTlYlMR57/cwJQoJpCeWpGanphak
	FsFkmTg4pRoYN+zYr7r0yf7+MJOi46FPZTpXz821kMjOs/jDG7HnpbjS1WXyuzYdmNF0VuA/
	U4TAZl3ZFzoJobsFOa7HTZj1lM9iP++yd4Zr2PIj2P3mR4RY5YYG5OQK2KVpZ4fU3Dx4R/6Z
	0LszXuHhqyplRRbNar1h0GCbwjWH6+Pr/88k6hqrt7y+KnpPiaU4I9FQi7moOBEA9IoA1KMC
	AAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_052803_499313_7F7B2542 
X-CRM114-Status: GOOD (  28.31  )
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

SGVsbG8gQWhtYWQsDQoNCkFtIE1vbnRhZywgZGVtIDIwLjA2LjIwMjIgdW0gMTQ6MDIgKzAyMDAg
c2NocmllYiBBaG1hZCBGYXRvdW06DQo+IEhlbGxvLA0KPiANCj4gT24gMjAuMDUuMjIgMTY6MjMs
IFRlcmVzYSBSZW1tZXQgd3JvdGU6DQo+ID4gQXMgRERSQ19BRERSTUFQN19ST1dfQjE2IGFuZCBE
RFJDX0FERFJNQVA3X1JPV19CMTcgYXJlIHVzZWQNCj4gPiBub3cgZm9yIHRoZSByb3cgc2l6ZSBj
YWxjdWxhdGlvbiB3ZSBuZWVkIHRvIGluY3JlYXNlIHJvd19tYXggdG8gMTguDQo+ID4gDQo+ID4g
Rm9yIExQRERSNCB0aGlzIG9ubHkgd29ya3MgaW4gY29tYmluYXRpb24gd2l0aCByYW0gdGltaW5n
cw0KPiA+IGNyZWF0ZWQgd2l0aCByZWNlbnQgY29uZmlndXJhdGlvbiBzcHJlYWRzaGVldCB2ZXJz
aW9ucy4NCj4gPiBXaXRoIG9sZGVyIHZlcnNpb25zIHRoZSByZWdpc3RlciBERFJDX0FERFJNQVA3
IG1heSBub3QgYmUgc2V0IGFuZA0KPiA+IGNhbGN1bGF0aW9uIHdpbGwgbGVhZCB0byB3cm9uZyBy
ZXN1bHRzIGV2ZW4gd2l0aCB0aGlzIHBhdGNoLg0KPiA+IA0KPiA+IEZpeGVzOiBkYWQyYjU2MzZi
ZDggKCJBUk06IGlteDogQWRkIGlteDggc3VwcG9ydCBmb3IgMTggYml0IFNEUkFNDQo+ID4gcm93
IHNpemUgaGFuZGxlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgUmVtbWV0IDx0LnJlbW1l
dEBwaHl0ZWMuZGU+DQo+IA0KPiBJIGhhdmUgYW4gb3V0LW9mLXRyZWUgaS5NWDhNTSBib2FyZCB3
aXRoIExQRERSNCB0aGF0IHJlcG9ydGVkIGENCj4gY29ycmVjdCBzaXplIG9mIDFHDQo+IHByaW9y
IHRvIHRoaXMgcGF0Y2ggYW5kIG5vdyBpdCByZXBvcnRzIDRHLiBERFJDX0FERFJNQVA3IGlzIG5v
dA0KPiBleHBsaWNpdGx5IGluaXRpYWxpemVkLA0KPiBidXQgaXQncyBiZWluZyByZWFkIGFzIHpl
cm8sIHNvIHRoZSBjYWxjdWxhdGlvbiBzZWVtcyB0byBzdGlsbCBiZQ0KPiBicm9rZW4uLg0KDQp5
ZXMsIHRoaXMgaXMgd2h5IEkgYWRkZWQgdGhlIG5vdGUgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLiBU
aGUgUkFNDQp0aW1pbmdzIG9mIHRoZSBib2FyZCB5b3UgYXJlIHVzaW5nIGhhdmUgYmVlbiBjcmVh
dGVkIHdpdGggYSBvbGQgdmVyc2lvbg0Kb2YgdGhlIHNwcmVhZHNoZWV0ICggPCB2ZXJzaW9uIDE5
IGZvciBpLk1YOE1NKS4NClRoaXMgaXNzdWUgaXMgd29ya2VkIGFyb3VuZCB3aGVuIHRoaXMgcGF0
Y2ggaXMgcmV2ZXJ0ZWQgYXMNCkREUkNfQUREUk1BUDcgaXMgbm90IHRha2VuIGludG8gYWNjb3Vu
dC4gQnV0IGNhbGN1bGF0aW5nIGJpZyByYW0gc2l6ZXMNCndpbGwgcHJvYmFibHkgbm90IHdvcmsg
dGhlbi4NCg0KSSBoYXZlIHNldCB0aGUgRERSQ19BRERSTUFQNyByZWdpc3RlciBtYW51YWxseSBp
biB0aGUgUkFNIGNvbmZpZ3VyYXRpb24NCmluIHN1Y2ggYSBjYXNlLiBBcyBJIGRvbid0IHNlZSBh
IHNvbHV0aW9uIHRoYXQgZml0cyBmb3IgYWxsLiBCdXQgd291bGQNCmJlIGhhcHB5IGZvciBvbmUu
IDopDQoNClJlZ2FyZHMsDQpUZXJlc2ENCg0KPiANCj4gPiAtLS0NCj4gPiAgYXJjaC9hcm0vbWFj
aC1pbXgvZXNkY3RsLmMgfCAyICstDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlt
eC9lc2RjdGwuYyBiL2FyY2gvYXJtL21hY2gtDQo+ID4gaW14L2VzZGN0bC5jDQo+ID4gaW5kZXgg
OGRkMGRkYmJjOTY1Li5iMDcwZWJjNjJhNDUgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9hcm0vbWFj
aC1pbXgvZXNkY3RsLmMNCj4gPiArKysgYi9hcmNoL2FybS9tYWNoLWlteC9lc2RjdGwuYw0KPiA+
IEBAIC00ODgsNyArNDg4LDcgQEAgc3RhdGljIHJlc291cmNlX3NpemVfdA0KPiA+IGlteDhtX2Rk
cmNfc2RyYW1fc2l6ZSh2b2lkIF9faW9tZW0gKmRkcmMpDQo+ID4gIA0KPiA+ICAJcmV0dXJuIGlt
eF9kZHJjX3NkcmFtX3NpemUoZGRyYywgYWRkcm1hcCwNCj4gPiAgCQkJCSAgIDEyLCBBUlJBWV9B
TkRfU0laRShjb2xfYiksDQo+ID4gLQkJCQkgICAxNiwgQVJSQVlfQU5EX1NJWkUocm93X2IpLA0K
PiA+ICsJCQkJICAgMTgsIEFSUkFZX0FORF9TSVpFKHJvd19iKSwNCj4gPiAgCQkJCSAgIHJlZHVj
ZWRfYWRyZXNzX3NwYWNlLCB0cnVlKTsNCj4gPiAgfQ0KPiA+ICANCj4gDQo+IA0KLS0gDQpQSFlU
RUMgTWVzc3RlY2huaWsgR21iSCB8IFJvYmVydC1Lb2NoLVN0ci4gMzkgfCA1NTEyOSBNYWlueiwg
R2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6a2ks
IERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2NTYg
fCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQo=


