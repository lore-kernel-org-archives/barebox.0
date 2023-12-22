Delivery-date: Fri, 22 Dec 2023 14:24:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGfWE-00A8V3-2T
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 14:24:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGfWE-0004Ca-0u
	for lore@pengutronix.de; Fri, 22 Dec 2023 14:24:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cM/3pUpiKMEvA91eoKbAJjpK8V5id9xfKFQYknYSUu8=; b=TmWMFffgx3CEHXhjHyt+5RYJ5S
	8ABsHLZK5kOmtTxxHvrkN390bbrrPYlsIdGPe7IR0ClLNBw+gzVV1kz1oDcrjNfdV+w1iVCzf2UM5
	vDFtFPaiMgwiKU+buvg3SV0sVab5q2uCN+x+8NeIEwEv+3CcckRNKV0IfwkC1wT3IOv81iGGHksjJ
	f7jog22+M9gAd8HylfnzVdtybgCfs0LfTY20A+NGX4ixxL35G8OFLWMo+OfdyfK3EaxcOcFT8jgNv
	1UfQi33yjpSSvLmlJ6Kscfndqmt/+Apw/QGmIHorcwfQL/OqL8syBFKcUMrca5CFHuSnyhjDHTojM
	MDANxmtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGfV0-0061IV-1u;
	Fri, 22 Dec 2023 13:23:34 +0000
Received: from mail-am0eur02on20701.outbound.protection.outlook.com ([2a01:111:f403:2606::701] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGfUx-0061Gc-0q
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 13:23:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeiHdEYr03oO3W41Dj5uA8qG86L2xRVYiSDgntwaYnkhjeJ+Y1iCcfmSlG65NqGGnEiPXmthupf870GqVQtRKGfv4e/fN0DzhpPlYnJ5Q02scBMFddlcfoI7yWX2jsWhH2opacXlKD4PgALTNEO/x29q2dl4HAKvhuFVFGPRuJ13PiGeI5xdpXRpNfaoNV6S1yUHfIiwG8BtPptk1udH741rsCyrGS1txhj3wcqAV5NTmlpnbItY2eboaHcFHJK7hg67RAWw2FxVyANvHGwnwt6nWGN/CpUKu5eKm9NP7Zg3xmtTbtKaop8+K+q3ma2lbcs2uIFnD8PTVgGQ+p0gYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cM/3pUpiKMEvA91eoKbAJjpK8V5id9xfKFQYknYSUu8=;
 b=d/gJiUuydV0Fs9olkI5H/WJ+n5TgCwmEw9p3MWWocAR0jPD7n+TCbtMLNVx34FDPX/4cRZpolxI3zTY9H31hJKGfZhpvHerRXNknLI9mvBMBbXQJzAnafCRUGFf9ExxHpC+KUrvO67l1IHO08KUPgcmLDdc1jUh4hDl4TFxjRyUDzPUgR8HaNkZQCjUDbWFPYyU0jNREY9IwOcYc1TpgrKJ2QNob1MP+AFZAYo5IJrKkP2FwAQ+XlskCAQ1NNzZTpFqnaW6/Y2lt+9WEztg3+yMEbD52HAHwlTfzpkUEMQg28zk30K+UtjVs2L5cIgq6abMuWpi7FSBFse5M/hfzrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bang-olufsen.dk; dmarc=pass action=none
 header.from=bang-olufsen.dk; dkim=pass header.d=bang-olufsen.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bang-olufsen.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cM/3pUpiKMEvA91eoKbAJjpK8V5id9xfKFQYknYSUu8=;
 b=khv64VIazyR5ONn1VihcY5AIdDH0kz8/UxbUXrSZgvgSw2ibxUIxhUr6nk/5PJUhMxPq/MD5wBxP7PLOFiEcvGeu4Dt9fBlgpHULjkdk3m2vPlQScyLeBNs//kAaMUtWeJ1SnOvvPEKi8NlSgggIs9e3+ovVHR2DsS1AEgCQLBw=
Received: from AM6PR03MB3943.eurprd03.prod.outlook.com (2603:10a6:20b:26::24)
 by PAVPR03MB10141.eurprd03.prod.outlook.com (2603:10a6:102:32e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 13:23:20 +0000
Received: from AM6PR03MB3943.eurprd03.prod.outlook.com
 ([fe80::99e4:a3b2:357f:b073]) by AM6PR03MB3943.eurprd03.prod.outlook.com
 ([fe80::99e4:a3b2:357f:b073%3]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 13:23:20 +0000
From: =?utf-8?B?QWx2aW4gxaBpcHJhZ2E=?= <ALSI@bang-olufsen.dk>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Thread-Topic: [PATCH] i2c-mux-pca954x: use OF match table
Thread-Index: AQHaNHxVnrks2ew9W06rpkKzMd5IL7C1Pl+AgAAMtoA=
Date: Fri, 22 Dec 2023 13:23:20 +0000
Message-ID: <6woln2ykmn4h6ohjzf454ueo2rn5fs2mghq6x3nbx4n7rnszde@kto6s5hc3o7j>
References: <20231222-pca954x-of-v1-1-d39efe336b06@bang-olufsen.dk>
 <6b48ca5a-b023-495e-9f17-cc7d59b815be@pengutronix.de>
In-Reply-To: <6b48ca5a-b023-495e-9f17-cc7d59b815be@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bang-olufsen.dk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB3943:EE_|PAVPR03MB10141:EE_
x-ms-office365-filtering-correlation-id: 88841e90-73d3-4857-a833-08dc02f12a70
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5Ke3vJwfSON8NcpnFXr2cxY5ww6lucrh0+qplVJ3kCkBSHBlg0jnfSp97wwBCjqIf4YHQ7/5YyEH+z1VLcjy9P0lZ3Ho+GjNgsCTHpIsKdc42IUeZUnKuMqU5HQ7EfJI6SulkGiJvZ0+l0kJYIE9NXIE7guDZ9rvnq0pezgSFJMs/sQ+JPOVYHSkoZ3gTOZRvcgr+1jxZo/wUWdvi2X+LMM8aP8YktK3nCE3TuC1Qs/9KvOsjEotoeHnYDm6hXCZICrjtF0VC+viSHr9aE/4Eh5BFS8N7xK8Xa0I+YV7rWRcJ9+J0OraGueRR7oh+teDjXSwORO8D3AX9BihpeXjO+2AH3ByAd58zP2+8zExaMyfAC5ejZDZDfNqpf5BvnH2tqqBAvXg4UQ9RvjzNky+PA98CxNZhFR8w5RYZy0Wgg9VgluSzWTum2miyPQeImdKZkNfWItoo5AznLKaNuJAvpONWXGGkrrDEdXQIg62SfYWN2DU3tATK+WytM8YTghMqCOojzO6U+myaKZLplVKyUi3ne9X62Qto78CKn1H449ZjcJNB+X7BkX4rX4OYknFS+f6xZlO2fUV6jZtnmFSid8K+zxTgbwzrwumzTU54ArlltfnGgZJtCG1nxRC9aD5
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB3943.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(376002)(39850400004)(136003)(396003)(346002)(366004)(64100799003)(186009)(1800799012)(451199024)(38100700002)(38070700009)(41300700001)(122000001)(85202003)(86362001)(85182001)(66574015)(71200400001)(26005)(9686003)(6512007)(6506007)(53546011)(316002)(478600001)(91956017)(6486002)(66556008)(6916009)(76116006)(66946007)(54906003)(66446008)(66476007)(64756008)(8676002)(8936002)(4326008)(2906002)(5660300002)(33716001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U21lZmVNbmxmbk1tTmMyT3QyK21UZUFkL2xIU2ZycG9BN0d1SzY5Y25DYm9r?=
 =?utf-8?B?N0VMVW03cHNWdWRvY3M5QkVDYXdyRnJjQ093OUdyQVdUUUk5Z1lzY1NoYWlM?=
 =?utf-8?B?TS9aQzhRWjQ3Z1VnMFkxalBHR3pDcjd1Ymw2ZjljU2svajhVYlJQaU5wNW11?=
 =?utf-8?B?TzJiZ0wrV3B5QXU0Q1RvY1E5ekFIVWFmeDE5UGE4d1d5TnhxUEtoMmE3MjJS?=
 =?utf-8?B?dEV3NTgxM2tPamxwSkxpSVZQYnk0ZGdENmlIYmVuL3ZLVzZGZ2VoYmF5c0Ro?=
 =?utf-8?B?bzFhMFF1OHdhVXg1S2NNdjR4MW1qSjljK1RhTGkvQlFzRVJOZ1I5UVVSSG9K?=
 =?utf-8?B?MWkydWtWeDd2amtSUURIdzl2enBaOS8xQ3VTaU5zWnNpQzN0WVJZdmFkNHlD?=
 =?utf-8?B?Q0U3MisyOUlHNUpHZ0EwQko0N21vODRqQWJ4a2xNYTN4YmVUYkowZHI1RE1m?=
 =?utf-8?B?cFI2cmN5dHdjVzBZV2ZGQjBtaDB2a3hXUzJITjhtOHJiaUxLdjhNRzd2VTQv?=
 =?utf-8?B?eVRUYWpPc3ZIQlZ4c2NtUXdSNkc5dEJ2THpRai9UY3dXTFA4d2g4ZkJldlNJ?=
 =?utf-8?B?UEovZ1ltUjlyam55OHR6KzJGMVdEdEdMZGxCUmRMUzJmeXBnV1krbWFhYnhi?=
 =?utf-8?B?Z0JSWWRuWUtqQnhrU1N6UFhhdVN4clhac2xyZFp3cFU1ejNRVld3cHVRdHhS?=
 =?utf-8?B?ZjhjSncyY2VFTzhGSzhNY1FSblFHV2djVmVWZ3kvTWtCd0ZpaTRmUlBwb05U?=
 =?utf-8?B?L09tVzlTZHhGMk1oK0l2ci8rMlpHY0h4VUtrT0xtbk5zMXFJMU1PN09BWi9q?=
 =?utf-8?B?bzRkckZ4Qkc4cDlycUZlK0VobkxWaUZqdTV5eFNnTUIwSGFiUE1rZjB6aklp?=
 =?utf-8?B?amk5bk9rM2J0WHNnaHI1d2NSUnN1UEdmb2praU5MZGFWYzhlaXRUYzUzZEVj?=
 =?utf-8?B?Y0J5QUdjc2gyTDhtN29MMkNkZTU2dzJhUHpoS1FHRjVxakE2OHcyLzVFbzlM?=
 =?utf-8?B?RWpDNFRpQUl1QWZkOUZrMTVwS0hqbFBZdmswRnZjTUk4ejYxR3d1NlZQUmJH?=
 =?utf-8?B?dlJhT3VsekZtUlAzcVFadFJtSEUrL2dwY1NGMlBacHE1MDdpaHl1OHoybjJS?=
 =?utf-8?B?ZGszWkRWa0xwSTdqQTJNZ0tpMDhMeVhBb0d4ck1XaUlqUCtxak45TjdzbUwz?=
 =?utf-8?B?ZjAwNGhwdTlTQUdxYjZzZlFWV3huZEtMQ0hZcVhXV2ovcjlIUStlQjFucjUr?=
 =?utf-8?B?SEYzOStOV1gwMExGcGo5N1RQUzdaR1JoNWlhYUI0Z2NMcUEvQUJXUHNsd1Ns?=
 =?utf-8?B?dGlGSW41SkcvdlNCNjJXQXJBb090QUIvRjZTZzZIVHpQcVhYRWpyUTdua3Jt?=
 =?utf-8?B?ckhyMGpkM1d3ellJdFl4eDNLS2xMcm9WaDhiNDN5Q1FtSTNKandsTU4zWWRh?=
 =?utf-8?B?Z0toRDFjUEJVNXFZeHVwdHk5VGRZd21RVWkweVAyd1VyQTBLUENyNGFUSTlW?=
 =?utf-8?B?QnYxU293aE1TemMzTDJVZzFBejd0YjYvaUllSDNjUUoxV3JiUkE1QU9QMVVQ?=
 =?utf-8?B?NlR6Q0YwMHZuWVV3TzBzazdtbG9wWmlYU0NoUVprRzFqMkRndjNSRmFhZWIv?=
 =?utf-8?B?QUNsZXZLemJVOVEyYU1jem5tWU9KRWdDZ2VGbmtjOVRkUjZHSFU5TDVkRXRz?=
 =?utf-8?B?SnU3WmEwYkhpR2JyVVdvWlZTU3ZYb2tGSkJTOFNSbGhKRUw3NE95QkhIUzZ2?=
 =?utf-8?B?emE5eVkvakhKeGhIZ0Y1anBtMGxRci9EeVVOSEdmTzVsYU1rc0RETER3VUcr?=
 =?utf-8?B?M09mZXdBRUZCVmoyMHA2Q1NTdG1UWU5QTGhGaUZZMklObXdScTdZblg1RVpy?=
 =?utf-8?B?YktMWGJuWFMxalQ3Y0F0U3M2WFUvaHRlaVpoc2l3dWdXb2p6cjhuK1o5TTF4?=
 =?utf-8?B?NjdvcUZvbjlpV3AydXF1Vko3Slo5b1hocjBuMlN2VTVUWWZFN3BRRkFuN1pp?=
 =?utf-8?B?WlFhM3NQTElWd3ExakNyM3REZ29IaE80bDVTVXRobEkzNkw4TDhQcjFqeTRp?=
 =?utf-8?B?cVZUV2dFZXk5SDNkTnBGb1JZNnBPQVZXdlFtQVpJOGh0aWVITklMZ3VDcHpa?=
 =?utf-8?B?V3FlUnVoZXVmMW5WOE9GckkyTml2d0hLQzg5L2Y3U0huOGk1Z2dlRHVmVTEv?=
 =?utf-8?B?U2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F960427EFC00C041BE4D1B48AA1E5798@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: bang-olufsen.dk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB3943.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88841e90-73d3-4857-a833-08dc02f12a70
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 13:23:20.2071
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 210d08b8-83f7-470a-bc96-381193ca14a1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAjGZ2dGfXg671JdDa6wlnj+Pcesznnp9S1rdRmDMZ2Sj6nc9ZkxcCL2rEcJubwlzYP/KcZPfTT7St4zZF0dAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR03MB10141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_052331_357386_062A5627 
X-CRM114-Status: GOOD (  19.12  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, =?utf-8?B?QWx2aW4gxaBpcHJhZ2E=?= <alvin@pqrs.dk>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c-mux-pca954x: use OF match table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SGkgQWhtYWQsDQoNCk9uIEZyaSwgRGVjIDIyLCAyMDIzIGF0IDAxOjM3OjQ5UE0gKzAxMDAsIEFo
bWFkIEZhdG91bSB3cm90ZToNCj4gSGVsbG8gQWx2aW4sDQo+IA0KPiBPbiAyMi4xMi4yMyAwMzox
MiwgQWx2aW4gxaBpcHJhZ2Egd3JvdGU6DQo+ID4gRnJvbTogQWx2aW4gxaBpcHJhZ2EgPGFsc2lA
YmFuZy1vbHVmc2VuLmRrPg0KPiA+IA0KPiA+IEFsbG93IHRoZSBtdXggZHJpdmVyIHRvIG1hdGNo
IGFnYWluc3QgZGV2aWNlIHRyZWUgY29tcGF0aWJsZSBzdHJpbmdzLg0KPiA+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFsdmluIMWgaXByYWdhIDxhbHNpQGJhbmctb2x1ZnNlbi5kaz4NCj4gPiAtLS0N
Cj4gPiAgZHJpdmVycy9pMmMvbXV4ZXMvaTJjLW11eC1wY2E5NTR4LmMgfCAxNCArKysrKysrKysr
KysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9tdXhlcy9pMmMtbXV4LXBjYTk1NHguYyBiL2RyaXZlcnMv
aTJjL211eGVzL2kyYy1tdXgtcGNhOTU0eC5jDQo+ID4gaW5kZXggNmMyMWI5Mjg2MGYwLi5mZWY5
NWZhNTdlYjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9pMmMvbXV4ZXMvaTJjLW11eC1wY2E5
NTR4LmMNCj4gPiArKysgYi9kcml2ZXJzL2kyYy9tdXhlcy9pMmMtbXV4LXBjYTk1NHguYw0KPiA+
IEBAIC0yNTUsOSArMjU1LDIzIEBAIHN0YXRpYyBpbnQgcGNhOTU0eF9wcm9iZShzdHJ1Y3QgZGV2
aWNlICpkZXYpDQo+ID4gIAlyZXR1cm4gcmV0Ow0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBwY2E5NTR4X2R0X2lkc1tdID0gew0KPiA+ICsJeyAu
Y29tcGF0aWJsZSA9ICJueHAscGNhOTU0MCIsIC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2FfOTU0
MCB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJueHAscGNhOTU0MiIsIC5kYXRhID0gKGNvbnN0
IHZvaWQgKilwY2FfOTU0MiB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJueHAscGNhOTU0MyIs
IC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2FfOTU0MyB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9
ICJueHAscGNhOTU0NCIsIC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2FfOTU0NCB9LA0KPiA+ICsJ
eyAuY29tcGF0aWJsZSA9ICJueHAscGNhOTU0NSIsIC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2Ff
OTU0NSB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJueHAscGNhOTU0NiIsIC5kYXRhID0gKGNv
bnN0IHZvaWQgKilwY2FfOTU0NiB9LA0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJueHAscGNhOTU0
NyIsIC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2FfOTU0NyB9LA0KPiA+ICsJeyAuY29tcGF0aWJs
ZSA9ICJueHAscGNhOTU0OCIsIC5kYXRhID0gKGNvbnN0IHZvaWQgKilwY2FfOTU0OCB9LA0KPiAN
Cj4gQ291bGQgeW91IGVsYWJvcmF0ZSB3aHkgdGhpcyBpcyBuZWNlc3Nhcnk/IE1hdGNoZXMgb24g
dGhlIEkyQyBidXMgYXJlDQo+IGZvdW5kIGJ5IGRldmljZV9tYXRjaF9vZl9tb2RhbGlhcygpLCB3
aGljaCB3aWxsIHRha2UgY2FyZSB0byByZW1vdmUNCj4gdGhlIHZlbmRvciBzdHJpbmcgYW5kIHRo
ZW4gY29tcGFyZSBwY2E5NTR4OjppZF90YWJsZSwgd2hpY2ggbGlzdHMgdGhlDQo+IHNhbWUgZGV2
aWNlcyB0aGF0IGFyZSBhZGRlZCBoZXJlLg0KDQpObywgeW91IGFyZSByaWdodCwgdGhlcmUgaXMg
bm8gcG9pbnQgdG8gdGhpcyBwYXRjaCAtIGl0IGNhbiBiZSBpZ25vcmVkLg0KQnV0IHRoYW5rIHlv
dSAtIEkgd2FzIHVuYXdhcmUgb2YgdGhlIGJlaGF2aW91ciB5b3UgYXJlIHBvaW50aW5nIG91dCEN
Cg0KS2luZCByZWdhcmRzLA0KQWx2aW4=


