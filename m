Delivery-date: Mon, 10 Mar 2025 18:08:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trgcH-00CKcK-31
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 18:08:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trgcE-0007R2-F7
	for lore@pengutronix.de; Mon, 10 Mar 2025 18:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/KWLYMG/2Icmdzy9Ucz88YNLRabGs7d7K8B4BOpMVUc=; b=wLga9S888dFCuiWoNbzjzk977O
	9yhFXo8yQYwmX8xWl2mcEsN9B5QhwWzhG2jOT6OI6soVE5YSbLydlKNIzeqd/eFm5BAMbd1bao3xN
	YeaUr69wpDHK28nTYyEQdd1RSo2hb4/q0lTiOs7JQkOym6PPTbT/vSn0RbUblE6UaWLiXipu94mQ8
	pEsnXpDOvFLMVH0Z9HLWfMc/DHnm83CiV5bJUEkzaSJD35S7z/JaUlj8PUjO9/OyVF0s549e1DDY3
	kcZ7/Ump3DQ2gXBYK/nWmVAcCLVA8zN+2Tgt4fWNv9f9JSfBjrc3Jbx2r7Tff+VGKMJS56AkOqf/e
	7/9gTMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trgbc-00000003Rx8-1KMn;
	Mon, 10 Mar 2025 17:07:56 +0000
Received: from mail-am7eur03on20610.outbound.protection.outlook.com ([2a01:111:f403:260e::610] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trgMA-00000003P53-3z32
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 16:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1iLLaWkHesAKAA20G6u27xisQRqIoz6PJ5qF0PWcsZy7lIcFI1GMcG0Hv+jsoLEEc7kY5eUjf1TveXh4S8gIOuByLa2Fiq/NzoZzvQ3/dSu2/UPvvz5+lUtT/uzZyMG3K9jus/ZhLlvrUs2zXDrc+ZnMv3C9U+Zm4Vm7ygzhOBOZcOwFNqeXPoLLcEQstovKHjYTRhPJESGrxtPsAAvtoiMWw+7LPdHy9R6cbAZKPUAoza+Z/B/Qx8Y2P1WwgCoLdxV1BVKXLMI2Qjw1Sa8tE/iQRrycmkX2yaA37dMvI27hTvxXVrjtnP+xLHtnPiDp/v7p1Rxiqa+4CEAJ0zRMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/KWLYMG/2Icmdzy9Ucz88YNLRabGs7d7K8B4BOpMVUc=;
 b=Lwc/K1mjv7YIt2uFwgNbyiVT9tp1QC6y18yLQ/P+GsOU3UHs52EzAiaSdV+4kVhyM6VDbQ8wYRLkmMTJovg82mHQeuTPOuYrTyITNh/96QbSvUX9LE7g1lqrp1JWd3sq36h7Gu4K+e5EKGJTbeh2nQ73sd9S7tkgP2dgZ1127zbrRBn6hdbNY50O1vVUKTbCZjElfKPgQzyDeKGNscCqYuGn4y/q0+6SJBe7M2MhaD5VXLAzYlmX498xLKGJCK7GggCgwGqqbVfJg7dnMgzQAj9s/KPBiNv8JriFhB7FYjTO35qHqbaRX/lz9ALrDdQ1qGEqvVLLIQ3N6SZ3ag2J0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/KWLYMG/2Icmdzy9Ucz88YNLRabGs7d7K8B4BOpMVUc=;
 b=sceL8DIQQQaOHngKDGpm883Uophhcu1jR4GvsceZfMaUTptMMWr2eZyHeleJBsoJzwzAS2nl6+7q7gVRv3D+n/YIOTBTH/0/Az34xiBQB9E1tNfbcEoJv2AEcou+TxKyA/LKqvAaASpM9XJgSiLfqj2dI5DL33ZEqGCYdw6DbPk=
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com (2603:10a6:20b:355::8)
 by DU0PR06MB8527.eurprd06.prod.outlook.com (2603:10a6:10:357::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Mon, 10 Mar
 2025 16:36:37 +0000
Received: from AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3]) by AM8PR06MB7521.eurprd06.prod.outlook.com
 ([fe80::570d:8853:c13b:c7d3%4]) with mapi id 15.20.8511.026; Mon, 10 Mar 2025
 16:36:37 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
Thread-Index: AQHbkbCsRqCCSQ27CUOf6hNkgWrxc7NsXiEAgAAFpwCAACzSqw==
Date: Mon, 10 Mar 2025 16:36:37 +0000
Message-ID: <AM8PR06MB7521AE5766581B704671ECB8BCD62@AM8PR06MB7521.eurprd06.prod.outlook.com>
References: <20250310113626.2241630-1-m.felsch@pengutronix.de>
 <2770e761-a192-437f-bc82-128519c04d18@pengutronix.de>
 <20250310135154.bw6awpkjydcf32zp@pengutronix.de>
In-Reply-To: <20250310135154.bw6awpkjydcf32zp@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM8PR06MB7521:EE_|DU0PR06MB8527:EE_
x-ms-office365-filtering-correlation-id: 3cb588a3-34c4-4c61-b83e-08dd5ff1ba8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|10070799003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Yh9w/8QdR1dpc1ks5JFqeZZeSNPa7EtKAlrb9IEaomEDISH7oJ6rtcdfsM?=
 =?iso-8859-1?Q?TIIPfetIzFZRqLZyMkhVwTEI0GDLt2D3afomoF96dZdJNs//Sm0y405/3q?=
 =?iso-8859-1?Q?LsrSavlbJo4eNA7Ru95nOtM8Hkvv1WvqQpAxyHJS/dLagb93vA+sfJdQNM?=
 =?iso-8859-1?Q?sULyhbNprdwHzuCsAnmkO5gLwr0ukITr1piW9jKlGI/FyTVmFbrDnooMaH?=
 =?iso-8859-1?Q?UoXJha1j2tQjBZeSgOTd4nxC09Y328h67R3HdR508Oi66Cr7TiaFxRbhm1?=
 =?iso-8859-1?Q?1P1K52Na3Hr1D5Lgn9qeTdMuqP6dY6+/vxNHmsqf8KXBUBBQ+eAcUtsSpC?=
 =?iso-8859-1?Q?V+sZj1EUbEU2PZcS6CX6oG4RffXNkQCs18hIGkZU7xBMFeJe1lwSC7QTQi?=
 =?iso-8859-1?Q?8lo3Suy6tsRMrFc8AWCNo7HugjQJYKqL+OrxvBRSxRG7hUg7B1Qg2kDRhb?=
 =?iso-8859-1?Q?LRlkyCL2ce22nAqyT0dWnBtx+Micml7B0+f5MSDm4mV6V/I2Gz1yJyMUZb?=
 =?iso-8859-1?Q?uJUtKF6RiskIw2xMEp3kbcXf3oOrW02SJ00Ceqtl7pASFMNasjpFcOn9wM?=
 =?iso-8859-1?Q?lPLb8k/alo5EyT+CuE0UyV7Ab8jQkCOPehhNaUJj1ZJlx6LKc2Rs4J7aIQ?=
 =?iso-8859-1?Q?3e/ShK6tubRGD2Dv4pBeG3l2Ppb4m5zkuNxwBscatRT7Pl4xgBmo86dUKd?=
 =?iso-8859-1?Q?Ew8MAlCNDzNsTmVVWb3jTanN2+UnKMsYhazWFA8Dgk3zHdJm2Wf97wCeZn?=
 =?iso-8859-1?Q?DFdIXhjUPF9MocwK6HkfV/U2apQjms1h9NItsXzC4AXkFF3QojDVxzigUt?=
 =?iso-8859-1?Q?m6AgI9BMsygxEk2whzIj0ZMfwdLa6ZgKq4cuV5d8sW9Tjb5gbYg3aTyF0k?=
 =?iso-8859-1?Q?172vJhJzv6UaKuXBvWfJbU9ErFsSHYqNJue8HSCTkg/6sE7I7YPXedzJOa?=
 =?iso-8859-1?Q?c4dMriuWYX5f+nejgZmsyhSX1fClO5EtyaitowdREt2wrId1segRZLw6l0?=
 =?iso-8859-1?Q?Cv7e+MtcX9bG/jGFyuqyFyjdXFVJwgMhggkzR7UDyZ6nFvrRoBBbdosgTo?=
 =?iso-8859-1?Q?PHNA3//rcvutxz2BFpke0Bh1WZdpyEdcWG7AqyfIEKmT5YnM18S2FQAkCY?=
 =?iso-8859-1?Q?7UDfHVS+UeCzJEd4pnS3/F/SRezd7P2vqPx+32l2VbuWHhcf1SIKJUL/SW?=
 =?iso-8859-1?Q?cM5mImY/UfJ0VFK4/dNx4iM3rW5dkNDwccmOov7E90tPmtF24WF8AnLZe5?=
 =?iso-8859-1?Q?dNYG4huu2zA6HqlPdvjirwUv2vnY7lIshb7V2ECz0vYw6sFJ6glnnkaa5C?=
 =?iso-8859-1?Q?gfnVddc+Wd4RMDbJO+eps1km/3hyPgHP5n5VfsEEnc5O/6fkSc0zdZj8iY?=
 =?iso-8859-1?Q?pPUH4i6tazBJvLmL28A6dVwTKfQ88EnVeEBfFxGD3s2ef4U3dhHjCHV1KF?=
 =?iso-8859-1?Q?x+1kRoGuNKILaTmMlCB6UftnR+CdpWAtaS5awSyfZdFKW9khO8Wvr6qYIJ?=
 =?iso-8859-1?Q?uetZOe3hjUCjPgdTMcDiAP?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR06MB7521.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?aVrOXI8rcfpGximXvCb4v0SdI7qaAMFI5OIZdnt5nmp50YhjbkOXvbpSjq?=
 =?iso-8859-1?Q?nD35dmNJtXdwxmIIrSAEY0ZJ1NrflyuOZ8KsdnxreKJite7Aq9ASkyW5H5?=
 =?iso-8859-1?Q?n/D82Wv855+LIXavhS7Egg4UHBuQWq27hWZ9k1EGUveWSQqpAoxIGwBwGT?=
 =?iso-8859-1?Q?KQP1PJe2MSNdf8RHtw+PMbERK4zvmFQGDUDHdTKsQySoXsyWvZ28BV4SAA?=
 =?iso-8859-1?Q?oX8+hHQnVizPJjcHmTr2lafh/fy0F2YVLqjAjtIXxQBPog6wuWCmKdSviN?=
 =?iso-8859-1?Q?Qw+JRhthhSjJ2Le4ZKFEWI9qTSPSUuHLmHb5UZWj4FuGdrBZnizkYmZdOu?=
 =?iso-8859-1?Q?Dj1sS0pIA/LuwqRcQkRVEFBpu+hsnSzCOfMab3UdqXkT/h2lWV7WZmquFR?=
 =?iso-8859-1?Q?qq9LlzRatnUzrodqxoGEUQXE7/tn0Gp+ENGtPAv1+lpzJix24PNdZ5MrnW?=
 =?iso-8859-1?Q?ymMgGOihwMuNVDkvl4Wif63Cs+0ig5Xid2kqpHDSkVrNIfUmHiMXsSwzgY?=
 =?iso-8859-1?Q?ggI0fGrLaKpYZ8Yltl9ZVzuoSTY13FWnbOVjTEFPCm6OSaH6w5SVq9gDrT?=
 =?iso-8859-1?Q?NZTOmGpSAuvCSM9dLn4gnZ+0G+NUCUfp7rkioBQUv4f4OwA1J7mZ7IlROX?=
 =?iso-8859-1?Q?bsbeP+HVubkfrD8ERX0HZBGpArEd629vuy7Cw58GBkIHVz5ZPdHV2N5iD8?=
 =?iso-8859-1?Q?y+mfw88lPYnyhcY1czMG0R9UkyFwea/FLwa4fINtZhAzQYVbzqDDmEMxAA?=
 =?iso-8859-1?Q?74fuB7hkbOU+MtrOAwch6ZGMZvQbjZW/wB+hf5aTG04EJYc1xnk/E88e3/?=
 =?iso-8859-1?Q?wTRcMTFtCOYphvJ0gvZhvbP3hRBBIxs46AtiesCAS5SZ1WFhe3f2oQuEVc?=
 =?iso-8859-1?Q?psisLYv4Oc5f8ig6De46FKOQkHazaxLQYqngP4NHb/z61QtxUbRwzPa6rk?=
 =?iso-8859-1?Q?ECzU3/ZvGErINY+cyAqF2BnulCx2eqI/3GFE61fEhHQTn5QsE9eL0w9HJh?=
 =?iso-8859-1?Q?DdCtbybMO+md345PQsB8mDvpIHTwOj85WeWhVhNmk7LXGk6ENNLhijDEdj?=
 =?iso-8859-1?Q?OwZcdBuqoub0PgwRGKuSWASi5izHdBBDhxyFAJjIBxFr1h7yc29PFDBzxi?=
 =?iso-8859-1?Q?LdxBBAZP9fSXWag+7Ao89q7mr1pKGI03XI+FHL+nsBHovFEPV6wONWdQg1?=
 =?iso-8859-1?Q?soOiKCXUBXZPsXJRl9Ua6SKR/luIafngXBvyu0cY159rs6nf/mVXA/t5wx?=
 =?iso-8859-1?Q?eylgqZ+Hw6rEcZe5VoMKbN7znTuJbQiKf3d0beGY0M+e6aLO83Yu1U/4K4?=
 =?iso-8859-1?Q?RxPDVQMUAKXniutHph7Eqjdq6jcPGuUo1jSq00yr1ZyPYur77GVKauGMgY?=
 =?iso-8859-1?Q?CFutuGcEyn7nlw2JXzoAfvZTlUYwi1TMF37eWzJ4hmfImI2Ga2fq4cP8Fc?=
 =?iso-8859-1?Q?SN7MB1z/dL8XCMyHskF7rZ1fP7vGneA07MRf5Avc9d+kf1Pdc9rMM5M3Pj?=
 =?iso-8859-1?Q?x3zq9BHi9h2AucqBvjhQLcqfOeLENYcO5+JgnVJ3DOszvvNzetswvW4I6S?=
 =?iso-8859-1?Q?YxSKHbTAFNi+IEh441ma90TcsRDsZ1iPpW8lxh4+qagZiU7JCJ36RpEMjk?=
 =?iso-8859-1?Q?gBxLisS0uaUBQPmiiCdfBhZn1DAWw6eHD2lLrqhUzWwzTCbavXz66TxaIt?=
 =?iso-8859-1?Q?z00gy0LkNVoITdHqoRFxYViFz3DXTe1+w3CH/ySCgC9MvqqG6igJWzr5wA?=
 =?iso-8859-1?Q?Cd91dAI8njISL0iCbiqNzLQ+0=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR06MB7521.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cb588a3-34c4-4c61-b83e-08dd5ff1ba8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2025 16:36:37.8143
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ujkCtNZdqiifF1VpcK9ie+VLpsBzIXaWAjP667Nu+an/KyQ0gzctprBFKOMdKo9qIDjDjJDHm9O7Vvcc0NxIeVijWc0c6PnL+Zv44o//tY1zenZLCQBu5v1fIKL1UE9g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR06MB8527
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_095159_028869_C97B1532 
X-CRM114-Status: GOOD (  12.20  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hoi,

>
> On 25-03-10, Ahmad Fatoum wrote:
> > Hello Marco,
> >
> > On 3/10/25 12:36, Marco Felsch wrote:
> > > Current tests showed that fusing just the single field-return bit(0) =
on
> > > i.MX8MP SoCs brick the device.
> >
> > So such a device is bricked permanently with no way to upload
> > a bootloader again to fuse the remainder of the bits?
>
> Yes, as written here [3], the device isnow in "device asserts security
> violation" state, what ever this means but maybe: "I refuse to power
> up".

The imx does consume power, but does "nothing", e.g. does not boot from emm=
c,
say anything on the hardware serial or even enumerate the usb side.
And pulling the boot-mode pins to serial-download mode does also nothing,
even though the serial-dl is usually the one last and common fallback.

>
> [3] https://lore.kernel.org/all/a9ebece9-4ab6-4bca-bebe-985e0bf95278@oss.=
nxp.com/
>
> > Interesting thing to not document :/
>
> Took us 2 devices to figure it out :/ We also don't know why NXP doesn't
> care and don't update the (S)TRM since the v1 of [3] is 9months old.
>
> Regards,
>   Marco
>

gru=DF
Johannes


