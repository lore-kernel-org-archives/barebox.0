Delivery-date: Thu, 04 Jun 2026 05:43:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUyzH-00297M-34
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 05:43:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUyzG-0001Os-Uq
	for lore@pengutronix.de; Thu, 04 Jun 2026 05:43:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4i/yH17RGLk7vrvSdD2er0Uz7KWP+BM7Pk3QdCfUYUU=; b=ItJ/OCc+dw/ksIM/dUcwCD6McW
	PK2PtD7Z6C4SiFboc7xnY4DmXe97kxE0Bg2WK1z4eCpi4H/AmhQPvK6ArV4w8laPhL5VVI6oz7Hwc
	iBsXRmVcsXwtkE2v2ZPtpGwOwEBxias4mQj88oUeiTB50BqsQylpwoKVo9tGnPSzgCHXO45G4hrPy
	isRfrpEXR2SBNMrY1I/cXXJQdFUvqHizToszign4Um1Fa6cQwFgNWYQ80n5RgSJpIZagsoQSWovO9
	FBS4+fWF3Wa304zwfeREB/noGLCIdpcGQ5sgsfIrcjP0l5Ga/VyNGulFTipgdpIfR88O5ihO/gQ08
	ZIeLmL8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUyy9-0000000G7Zg-0aTg;
	Thu, 04 Jun 2026 03:42:09 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUyy6-0000000G7ZB-3543
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 03:42:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TB3CrZJL7m5u/rsVlOpdT8CIwMDNw7XCOrT2RqbJhZvSWXVnwxn+pF1AmHjXMpYdMG1kYltOL6hp1XJu482V+ZQYRaVgnewdFIPiMsBgyv7sUVH9L/8lRniSlqem22e79LMO5sfb3mijIDulhBkr21P42PgCeeprYkhBdOASVb7jWkclvy9JG73QmwHUr0WIJcPo4LBx9DwJ7bV88owfoMjeAdfVxBD/dDXv91qgWfXTO4XriMKQ6qKhiqbgzpfvJIuYfut4K9k4IrMOd6Qd5yCouut9x8fzTwTERWZHRDXtNOEOEQwZ/bizbBUu40EVspn28FiIGgop8lyojJta6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4i/yH17RGLk7vrvSdD2er0Uz7KWP+BM7Pk3QdCfUYUU=;
 b=J1xeizeHzMAZnmFgpRLM6FLQVcbi/zFABUaoWW5pifR8ZPAjKN/GJf2hY8vggod0TPFDrcxig2y5yuJb9kkQOXQCq00zVh6NgD70lSZ+hXH48rNl6tHc2Gti/D+r06HXaNLIr9QjOUN1V3QRD/jI0w7LwPpkwKcce1vJMQdo01FcgjIl/qS+UuYlW0Pd/+jk2xQH+dJLYUImYqrECtOraYFqxt0Tzw+RbOztbYhMx7CKoh39ctTZSz/UpyWaVV20j183/APh8sFATB2txG2ZfUWurI7yAFcRtMic5R//pFjqYE7tn2+qN7IOmdXuPCsAcJAeyb7jFadP6gsHt+Ejlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4i/yH17RGLk7vrvSdD2er0Uz7KWP+BM7Pk3QdCfUYUU=;
 b=lFAu7M4IiaUw8aetBoyq8iVlBg4W7/hroMxWivk/LwwBlP4t5DDOSPZfJ5scl9pKJ4H1pM7hN4eLuZjpHjDq6Rngou2r+bFfD1E7RINPgjDq4YcGJresyl4lEq9JkQwAykkSJJptyNlcnp371puD+iNl2pA6j5SesMwLEchehbc=
Received: from AM6PR06MB4150.eurprd06.prod.outlook.com (2603:10a6:20b:1c::21)
 by GV1PR06MB9514.eurprd06.prod.outlook.com (2603:10a6:150:1a6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 03:42:02 +0000
Received: from AM6PR06MB4150.eurprd06.prod.outlook.com
 ([fe80::7eee:7d4c:d886:d3e9]) by AM6PR06MB4150.eurprd06.prod.outlook.com
 ([fe80::7eee:7d4c:d886:d3e9%3]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 03:42:02 +0000
From: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To: Michael Grzeschik <mgr@kernel.org>, Lucas Stach <l.stach@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, HAEMMERLE
 Thomas <thomas.haemmerle@leica-geosystems.com>
Thread-Topic: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
Thread-Index: AQHc8meNDaOz1Mx/dkqqW06yobPgt7YrAh4AgAArTYCAAFM6AIACQT9Z
Date: Thu, 4 Jun 2026 03:42:02 +0000
Message-ID: <AM6PR06MB4150854E95C3A7F11154E6D5BC102@AM6PR06MB4150.eurprd06.prod.outlook.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
 <54467182b9e4f15a1ac068533e73aaac5f21bf46.camel@pengutronix.de>
 <679f1823-5edd-4a8f-8a8e-caf6db7dd483@pengutronix.de>
 <9bf1b5920ca2c986533c5f17d10aa774aa60c895.camel@pengutronix.de>
 <ah8OjJwP-Q42ShJQ@pengutronix.de>
In-Reply-To: <ah8OjJwP-Q42ShJQ@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR06MB4150:EE_|GV1PR06MB9514:EE_
x-ms-office365-filtering-correlation-id: 325cd5ff-5f23-4840-c563-08dec1eb3d28
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099006|5023799004|3023799007|4143699003|6133799003|11063799006;
x-microsoft-antispam-message-info: V2bCF/obbJ2za+2Bw+OUjdx2ujgY71t/PvZCCu+E15bVYR6e0+zvmdRmtCpw3FmieOfeUNyk0GBJsH8xmVfoBpYFxnPGd/oh59dCXcjpg1CHc4t2fgna5+2BSUD8FcrvnP5/6cB7BzyLNX7wifR6xmxUQKnp2hX8Zwx/DGDYf9tiKLFUBOMIanV4OX99K5RTFJ7cA9v8mhm0lioFJgwLauz8oDmC0VXN6oCei5hasDhXW2ivcdVtagdN+jwAjX0dW0PadfmrCXEuTECDjC4tBSJVtXU3dhArrPnUSyZdqbaEo6S1wsIWXCBf5YDuKCH7ys4ID2la8PgvUtgZMPtWASSS4U8cRPG9UMMQ5v3RbVamJ26te6RS+pRgMCchAj0QG/BRQ00ymmFTQC6m5NFizKUPBuO0NG/5tu1PWuoWh+SiYdzT/smam6OQKgmvqZYB5jiktfJFYvZyQbZ0upt56wI2E1Ek/e8GvqXgZ86nRRuVG+vp84+WLorV6IQblt+6JShAK89Va/JYFX77YXI0nZqXyo2OLSmm3pNMFJ/F3CtYyR07cwkitGPmeFIGhyKgJ2mz3fvecrDSoYRHATY1vElzJQQQA5DAoQ6LkUCDscK+NAnVccd74Cuw+OhX55HOjm7HXPbBX8+o3sxVSuZHIh2zCgPBMZt/Lg0ZNx3jMlu0pz14eqb4UJ3B/usGpFp36kCqwu6eX+vSZ6Ps02PYd5LOACv0in6N9MyREFoWdfWDAEadizFex4BnsdA+LOvs
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB4150.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099006)(5023799004)(3023799007)(4143699003)(6133799003)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTgreEZudlJ0VytaaDFTS3ZYbVFLMEl2WUdiUmtYbmhUZCsyTmNKZWUzTUFh?=
 =?utf-8?B?dG1Wc0d1QlFqQzZRcVdFZ0ZuWFlhV05xL0U0U3F6KytYQ0JOS2lkQThmdSti?=
 =?utf-8?B?RjZkTU0xWkFrWGpPN01teFdJUEptUjNrWEtZazFjUjAxRDFnRHZlK0YxQWg3?=
 =?utf-8?B?Y2trS0ZFN0h0MzJJRjVKbWwxTmtscklrS2hTSjVNMW4wTnoyRTl2RGp2WGtO?=
 =?utf-8?B?eGI4bjg3aFIvZy9ya0w3VUhUc0pIcjJlNDA0UHFidUNEWmRXK003cFAwSm51?=
 =?utf-8?B?V1JsM1BkWWJqL2tQcGxrOTFYaytkaXdrbHJ4NnhrUFZxNVF0OVZZWkxxZUg4?=
 =?utf-8?B?N1k1QVEvcDd2U25vR2txTUo0Q1Y2c1BYL2Y0K040QzJyeWlWcGlKczVQalhQ?=
 =?utf-8?B?YXk0NXpVSTNuNGtsRlovZU5BSi9Wd2lWUXNJenV6MUtSZlp3ZkY5azN3VlNI?=
 =?utf-8?B?aHZoR0pUYkpSZ2hqMnpJTGVCZFJTT2l5aDdjWlA5OFFSUDFFZmZ6MUVOL0h2?=
 =?utf-8?B?RXB3eFlvUDNEY2NDUEhSSUJxa2ZTcTM1WVBXKzVzODJ1ZXN1S2VETGduNUFj?=
 =?utf-8?B?eU1WUi9LbWpxT3dqUXkvaHNocmRKOUlrT3ZJbGhsYzNKQ05ISW5LTldDZ1Ew?=
 =?utf-8?B?OHA2S0lQQmpjUmZuQ2ZTUmVtRzRYbCsxd3R0ZzRMdlVyYmQzaEo2eHlwV2FT?=
 =?utf-8?B?b0lGTjBHMXJiUWhDL1hscG5CbjdleURkNXNkd1V5QlRCdnV2TGtzdGIzcllN?=
 =?utf-8?B?dC9oNHZWQmpzTUNaTExuS3RBVUpuNlo5U2NhWTFsOGtOQjRYT0Y1Y2tVLzZX?=
 =?utf-8?B?Mi9uK1pvTHFsRHR4aHU4enIrcFIyNUhvbllGdzFSbVJPL1paOHN4ZUxvdDFK?=
 =?utf-8?B?ejVYd3oxemNNeElrK3ZmSG90dVNCRWkxakxFTnVWT2x4UzFwM0F4TytjTE9y?=
 =?utf-8?B?ZER2R2RVcDhoQVVZdFdURmhaTENLSElSR0dRbEo2Y3RiNWxGOVFyazZFYUtj?=
 =?utf-8?B?SFFVdFlqYlJrTU9PQ0VLdWoyQzZmN0pWZi9jS2ttNmY1VUttN05kSDZLUjFG?=
 =?utf-8?B?M1RMZjZMMEQ3elBic0w1ejVXdjZWQVhYR0NJc25NbzNleUY0L21sRzFuRFNs?=
 =?utf-8?B?alJYdjlzMkN6QVZSVG9BRHlYUnBtSzVJdWJKZW9xZGtsZHlLRVluSDZyekJX?=
 =?utf-8?B?dUlmOEk0MzM1dVk1Tk1qZzB2YXpLWkpGTytMbDBjci9KR3FKRlZTYzVZRDNw?=
 =?utf-8?B?dUhkZG4rWVRiTVZ2T0FZQXcyTFNPd0pueEwvc05NOTIrTzJJZ1YxMWtXcWRy?=
 =?utf-8?B?ZWVReEI2RW0zU2NPekxLVG82Z3drMjZ3cTZYaXAvTHkxdEF6MVNnK3J6b3Nj?=
 =?utf-8?B?a2dZeHhIVlJ1ZHZFakNEblZUT2s0a3VCZ3V4emhTc0pCOUdhNGFJdnVLQmxB?=
 =?utf-8?B?MGdnMFlIQnU4dEFwN0JmNTFCaEpFZ3ppMC9UaWUvanRldnZ4MFdXYmFkVlBC?=
 =?utf-8?B?QWJvNmMvOEJmSVNYYlhHOFZXQ2hqbTBUVVRSN2tqRHlpUVpncWowa0JOVzI3?=
 =?utf-8?B?ZzN1SlNObGJ2Sk9BWUtQekNjRUJQWTJzMWpRdVlQYjNFRWhyYllOMmdOS1RT?=
 =?utf-8?B?SllxdVNiVHFHRWNFZGQ4S1hCOXFUL0NrYTN3MkdEak9zcTRUWXRZSHAyVXV4?=
 =?utf-8?B?cjhQUngxN29CMFdIbEFoYTVxL0NtZUQ5MDBacnhKTkpxODVXYWIvS0VFa1J2?=
 =?utf-8?B?QkZ2TTBKVG5vckpucytHbWk2R2ZBZkxjNFJhOWgwVCswcFhKNHpTTmV3RitE?=
 =?utf-8?B?TWlnOGNnNEN3bTJsaG5RbyswVnh2UGJuQmtWWUpGbURtb3EvSGtYWVArM3h5?=
 =?utf-8?B?MjgvNHhpck1NSHFWd1JjbmFraktaV0hkL1phdDVwWkY1dEh6aytMd2xtTkQ5?=
 =?utf-8?B?S2dadFdpUkNaTUNTem5MYWdEaGdjbTMwcEdnNVNGQkZmaVZSN0FLNFhPMkJ6?=
 =?utf-8?B?Y0N0M1BOM2JNaGUxVzZNTXVheURXWVpmbCtKbm11bVR4TlJRZStsNFYxa1dp?=
 =?utf-8?B?UGhnZzZVMVVLMmtsbitOQlJFM00yM1VtbkptUnRuaVhKVGwveWdaenR0Ulhq?=
 =?utf-8?B?R2cxWWtuMzVwTDhydjRIZ09RYWRPOHQzenZOQ2FvTEFML1M2R1ZIOEtMSi9S?=
 =?utf-8?B?UzlsMlhTd2hPdmtYZVp3QTk4a1NQSkxKVG9FSkQzeHU0YVdKc0pZYldxRjVp?=
 =?utf-8?B?bHlwMWtHb3dUODhkVWpZU3NDaTF6SHFTcEF4aWlEYmlhNFNPeENtejNGTXZY?=
 =?utf-8?B?aVE5ZStjRjh6aFBXN0JPQTl0dk5reWZLNW54L3pjQkJHUGpRbk9oenNRMGd1?=
 =?utf-8?Q?1dP6lZAVPqtPB8GIBBmjkXNBQkj5uCcrTpynKS4FL2PWj?=
x-ms-exchange-antispam-messagedata-1: hIi5vcIUgjOXXnF2nUHUkJ8cyit6F0jf8fK428QtOzNzEJureNTeUwU7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB4150.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 325cd5ff-5f23-4840-c563-08dec1eb3d28
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 03:42:02.0729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X+dX6xxHCe4arNfaroBoKCICpcaus+pYLx8GoUGaDMGAiKCAG16a3u6kl4TJKHwezLF86+RWh3AnBuoHZXWEU6gmwKypyMJ58c1CLTdM44JyET8G7uJqtla47nWQBSI+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR06MB9514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_204206_946792_1C439D4F 
X-CRM114-Status: GOOD (  39.82  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SG9pIGFsbCwKCgo+IE9uIFR1ZSwgSnVuIDAyLCAyMDI2IGF0IDAyOjEyOjQzUE0gKzAyMDAsIEx1
Y2FzIFN0YWNoIHdyb3RlOgo+ID4gQW0gRGllbnN0YWcsIGRlbSAwMi4wNi4yMDI2IHVtIDExOjM3
ICswMjAwIHNjaHJpZWIgQWhtYWQgRmF0b3VtOgo+ID4gPgo+ID4gPiBPbiA2LzIvMjYgMTA6MTIg
QU0sIEx1Y2FzIFN0YWNoIHdyb3RlOgo+ID4gPiA+IEFtIERpZW5zdGFnLCBkZW0gMDIuMDYuMjAy
NiB1bSAwNDowOSArMDAwMCBzY2hyaWViIEpvaGFubmVzIFNjaG5laWRlcjoKPiA+ID4gPiA+IEZy
b206IFRob21hcyBIYWVtbWVybGUgPHRob21hcy5oYWVtbWVybGVAbGVpY2EtZ2Vvc3lzdGVtcy5j
b20+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIExDRElGIGZyYW1lYnVmZmVyIGlzIGFsbG9jYXRl
ZCBhcyBOb3JtYWwgTm9uLUNhY2hlYWJsZSAod3JpdGUtY29tYmluZSkKPiA+ID4gPiA+IG1lbW9y
eS4gIEFmdGVyIHRoZSBzcGxhc2ggY29tbWFuZCBjYWxscyBndV9zY3JlZW5fYmxpdCgpLCB3aGlj
aCBjb3BpZXMgdGhlCj4gPiA+ID4gPiBkZWNvZGVkIFBORyB2aWEgbWVtY3B5KCkgZnJvbSBhIGNh
Y2hlZCBzaGFkb3cgYnVmZmVyIGludG8gdGhlIGhhcmR3YXJlCj4gPiA+ID4gPiBmcmFtZWJ1ZmZl
ciwgd3JpdGVzIG1heSBzdGlsbCByZXNpZGUgaW4gdGhlIENQVSB3cml0ZSBidWZmZXIgYW5kIG5v
dCB5ZXQKPiA+ID4gPiA+IGJlIHZpc2libGUgdG8gdGhlIExDRElGIERNQSBlbmdpbmUuICBPbiBo
YXJkd2FyZSB0aGlzIG1hbmlmZXN0cyBhcwo+ID4gPiA+ID4gcGFydGlhbCBvciBjb3JydXB0ZWQg
cmVuZGVyaW5nIOKAlCB0aGUgYm90dG9tIHBvcnRpb24gb2YgdGhlIHNwbGFzaCBpbWFnZQo+ID4g
PiA+ID4gcmVuZGVycyBibGFjayBvciBzaG93cyBnYXJiYWdlLgo+ID4gPiA+ID4KPiA+ID4gPiA+
IEltcGxlbWVudCBmYl9kYW1hZ2UoKSB0byBleGVjdXRlIGEgRFNCIFNZIGJhcnJpZXIgYWZ0ZXIg
ZWFjaCBibGl0LAo+ID4gPiA+ID4gZW5zdXJpbmcgYWxsIHBlbmRpbmcgd3JpdGUtY29tYmluZSB3
cml0ZXMgYXJlIGNvbW1pdHRlZCB0byBEUkFNIGJlZm9yZQo+ID4gPiA+ID4gdGhlIExDRElGIHJl
YWRzIHRoZSBwaXhlbCBkYXRhLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEFzc2lzdGVkLWJ5OiBDbGF1
ZGU6Y2xhdWRlLXNvbm5ldC00LTYKPiA+ID4gPiA+IFNpZ25lZC1vZi1ieTogVGhvbWFzIEhhZW1t
ZXJsZSA8dGhvbWFzLmhhZW1tZXJsZUBsZWljYS1nZW9zeXN0ZW1zLmNvbT4KPiA+ID4gPiA+IC0t
LQo+ID4gPiA+ID4gIGRyaXZlcnMvdmlkZW8vaW14LWxjZGlmLmMgfCAxMyArKysrKysrKysrKysr
Cj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9pbXgtbGNkaWYuYyBiL2RyaXZlcnMv
dmlkZW8vaW14LWxjZGlmLmMKPiA+ID4gPiA+IGluZGV4IGFlNTk3NmM3NzEuLjhkOWI0MGJlMGYg
MTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3ZpZGVvL2lteC1sY2RpZi5jCj4gPiA+ID4g
PiArKysgYi9kcml2ZXJzL3ZpZGVvL2lteC1sY2RpZi5jCj4gPiA+ID4gPiBAQCAtMjAsNiArMjAs
NyBAQAo+ID4gPiA+ID4gICNpbmNsdWRlIDxvZl9ncmFwaC5oPgo+ID4gPiA+ID4gICNpbmNsdWRl
IDx2aWRlby9tZWRpYS1idXMtZm9ybWF0Lmg+Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPHZpZGVvL3Zw
bC5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxhc20vc3lzdGVtLmg+Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gIC8qIExDRElGIFY4IHJlZ2lzdGVyIG1hcCAqLwo+ID4gPiA+ID4gICNkZWZpbmUgTENEQ19W
OF9DVFJMICAgICAgICAgICAgICAgICAgIDB4MDAKPiA+ID4gPiA+IEBAIC0yNjIsOSArMjYzLDIx
IEBAIHN0YXRpYyB2b2lkIGxjZGlmX2ZiX2Rpc2FibGUoc3RydWN0IGZiX2luZm8gKmluZm8pCj4g
PiA+ID4gPiAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShwcml2LT5jbGtfYXhpKTsKPiA+
ID4gPiA+ICB9Cj4gPiA+ID4gPgo+ID4gPiA+ID4gK3N0YXRpYyB2b2lkIGxjZGlmX2ZiX2RhbWFn
ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgc3RydWN0IGZiX3JlY3QgKnJlY3QpCj4gPiA+ID4gPiAr
ewo+ID4gPiA+ID4gKyAgICAgICAvKgo+ID4gPiA+ID4gKyAgICAgICAgKiBUaGUgaGFyZHdhcmUg
ZnJhbWVidWZmZXIgaXMgTm9ybWFsIE5vbi1DYWNoZWFibGUgKHdyaXRlLWNvbWJpbmUpLgo+ID4g
PiA+ID4gKyAgICAgICAgKiBXcml0ZXMgZnJvbSB0aGUgc2hhZG93LWJ1ZmZlciBtZW1jcHkgbWF5
IHNpdCBpbiB0aGUgQ1BVIHdyaXRlIGJ1ZmZlcgo+ID4gPiA+ID4gKyAgICAgICAgKiBhbmQgbm90
IHlldCBiZSB2aXNpYmxlIHRvIHRoZSBMQ0RJRiBETUEgZW5naW5lLiBFeGVjdXRlIERTQiBTWSB0
bwo+ID4gPiA+ID4gKyAgICAgICAgKiBkcmFpbiB0aGUgd3JpdGUgYnVmZmVyIHRvIERSQU0gYmVm
b3JlIHRoZSBMQ0RJRiByZWFkcyB0aGUgcGl4ZWxzLgo+ID4gPiA+ID4gKyAgICAgICAgKi8KPiA+
ID4gPiA+ICsgICAgICAgZHNiKCk7Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIHdpbGwgcHJvYmFibHkg
d29yayBpbiBwcmFjdGljZSwgYnV0IGl0IGRvZXNuJ3QgZXhhY3RseSBkbyB3aGF0IHRoZQo+ID4g
PiA+IGNvbW1lbnQgYWJvdmUgc3RhdGVzLiBBIGRzYiBkb2VzIG5vdCBkcmFpbiB0aGUgd3JpdGUg
Y29tYmluZSBidWZmZXJzLAo+ID4gPiA+IGl0IGp1c3QgbWFrZXMgc3VyZSB0aGF0IHRoZXkgYXJl
IGRyYWluZWQgYmVmb3JlIHRoZSBuZXh0IGluc3RydWN0aW9uIGlzCj4gPiA+ID4gZXhlY3V0ZWQu
Cj4gPiA+ID4gU28gaWYgdGhlIGZiX2RhbWFnZSBpcyB0aGUgbGFzdCB0aGluZyB0aGF0IGdldHMg
ZXhlY3V0ZWQsIHRoaXMgd2lsbCBub3QKPiA+ID4gPiBlbnN1cmUgdGhhdCB0aGUgd3JpdGVzIHdp
bGwgYWN0dWFsbHkgYmVjb21lIHZpc2libGUgdG8gZXh0ZXJuYWwgYWdlbnRzLgo+ID4gPiA+Cj4g
PiA+ID4gQSBtb3JlIHJvYnVzdCB3YXkgdG8gZHJhaW4gdGhlIHdyaXRlIGNvbWJpbmUgYnVmZmVy
cyBpcyB0byBleGVjdXRlIGEKPiA+ID4gPiByZWFkYmFjayBvZiBhIG1lbW9yeSBsb2NhdGlvbiB3
aXRoaW4gdGhlIFdDIHJlZ2lvbi4KPiA+ID4KPiA+ID4gV291bGQgdGhhdCBvbiBpdHMgb3duIHN1
ZmZpY2UgdGhvdWdoPyBJZiB3ZSBoYXZlIGp1c3QgdGhlIHNpbmdsZSBidWZmZXIsCj4gPiA+IGZs
dXNoaW5nIHRoZSB3cml0ZSBidWZmZXIgb25seSByZWR1Y2VzIHRoZSByYWNlIHdpbmRvdywgYnV0
IGRvZXNuJ3QKPiA+ID4gcmVtb3ZlIGl0IGFzIHRoZSBmcmFtZWJ1ZmZlciB3cml0ZSBtYXkgc3Rp
bGwgaGFwcGVuIGluIHBhcmFsbGVsIHRvIHRoZQo+ID4gPiBzY2Fub3V0Lgo+ID4KPiA+IFVwZGF0
aW5nIHRoZSAoZnJvbnQtKWZyYW1lYnVmZmVyIHdpbGwgYWx3YXlzIGJlIHJhY3kgYWdhaW5zdCB0
aGUKPiA+IHNjYW5vdXQuIFRoZSBmbHVzaGVzIGp1c3QgZW5zdXJlIHRoYXQgdGhlIHdyaXRlcyBl
dmVudHVhbGx5IHJlYWNoCj4gPiBtZW1vcnkgdmlzaWJsZSB0byB0aGUgc2Nhbm91dCBETUEgbWFz
dGVyLiBXaXRob3V0IGFueSBmbHVzaGVzIHRoZXJlIGlzCj4gPiBub3RoaW5nIGluIHRoZSBtZW1v
cnkgbW9kZWwgd2hpY2ggd291bGQgcHJvaGliaXQgd3JpdGVzIGZyb20gYmVpbmcKPiA+IHN0dWNr
IGluIHRoZSB3cml0ZSBidWZmZXJzIGluZGVmaW5pdGVseS4KClRoYW5rcyBmb3IgYWxsIHRoZSBp
bnB1dCwgc2luY2UgQWhtYWQgYWxzbyBwb2ludGVkIG91dCB0aGF0IHRoZXJlIGlzIGFscmVhZHkg
YQpkcml2ZXIsIGknbGwgcmVzdHJ1Y3R1cmUgdGhpcyBwYXRjaHN0YWNrIGFyb3VuZCB0aGUgdXBz
dHJlYW0gb24gYW5kIHdlYXZlIGluIGFsbAp0aGUgaW5wdXQgc28gZmFyIC0+IGV4cGVjdCBhIHYy
LgoKPiAKPiBJIGFtIGN1cmlvdXMgaWYgdGhpcyBpcyBhY3R1YWxseSBhbGwgbmVjZXNzYXJ5Lgo+
CgppJ2xsIGFkbWl0IHRoYXQgaSBkb24ndCBoYXZlIGEgdmVyeSBkZWVwIHVuZGVyc3RhbmRpbmcg
b2YgdGhlIHdob2xlIHBpeGVsCnBpcGVsaW5lLCBhbmQgYW0ganVzdCBwdXR0aW5nL2NvcHlpbmcg
KGZyb20gdGhlIGtlcm5lbCBtb3N0bHkpIHRoaW5ncyB0b2dldGhlcgphbmQgIm1hc3NhZ2luZyIg
dGhlbSB1bnRpbCB0aGUgZGlzcGxheSBzaG93ZWQgc29tZXRoaW5nICh3aXRob3V0IGFueSB3ZWly
ZApkaXN0b3J0aW9ucyBvciBvdGhlciBhcnRpZmFjdHMpCgo+IEluIHRoZSBkcml2ZXIgSm9oYW5u
ZXMgc2VuZCwgdGhlcmUgaXMgdGhlIGNvbW1lbnQKPiAKPiArICAgICAgIC8qIDMyYnBwIFhSR0I4
ODg4IOKGkiBBUkdCODg4OCBwaXhlbCBmb3JtYXQuCj4gKyAgICAgICAgKiBTSEFET1dfTE9BRF9F
TiBjYXVzZXMgdGhlIGRlc2NyaXB0b3IgcmVnaXN0ZXJzIChhZGRyZXNzLCBmb3JtYXQsIHBpdGNo
KQo+ICsgICAgICAgICogdG8gYmUgbGF0Y2hlZCBpbnRvIHRoZSBhY3RpdmUgcmVnaXN0ZXJzIG9u
IHRoZSBuZXh0IFZTWU5DLCB3aGljaCBpcwo+ICsgICAgICAgICogcmVxdWlyZWQgZm9yIHRoZSBp
bml0aWFsIGRlc2NyaXB0b3IgbG9hZCBpbiBiYXJlYm94J3Mgc2luZ2xlLWVuYWJsZQo+ICsgICAg
ICAgICogc2VxdWVuY2UgKG5vIERSTSBwYWdlLWZsaXAgbWVjaGFuaXNtKS4gIEVOIGlzIE9SZWQg
aW4gbGF0ZXIgYnkKPiArICAgICAgICAqIGxjZGlmX2VuYWJsZSgpIGFmdGVyIERJU1BfT04uICov
Cj4gCj4gaW4gbGNkaWZfc2V0X3BsYW5lIG9mIHRoZSBpbXgtbGNkaWYgZHJpdmVyLgo+IAo+IFRo
aXMgZXhhY3RseSBmbHVzaGVzIHRoZSBidWZmZXIgb25jZS4gSSBhbHNvIGRpZCB0aGlzIGJ1dCBh
bHNvCj4gaW1wbGVtZW50ZWQgbGNkaWZfY3J0Y19hdG9taWNfZmx1c2ggaW4gZHJpdmVycy92aWRl
by9sY2RpZl9rbXMuYyBhcyB0aGUKPiBmYl9mbHVzaCBjYWxsYmFjayB3aGljaCB3aWxsIGRvIGV4
YWN0bHkgdGhpcyBMT0FEX0VOIGNhbGwgZXZlcnkgdGltZSBhCj4gbmV3IGZyYW1lIHdhcyB3cml0
dGVuLiBXaXRoIHRoaXMgY2hhbmdlIEkgaGFkIG5vIGlzc3VlcyB3aXRoIGRpc3RvcnRlZAo+IGlt
YWdlcy4KPiAKPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAgc3RhdGljIHN0cnVj
dCBmYl9vcHMgbGNkaWZfZmJfb3BzID0gewo+ID4gPiA+ID4gICAgICAgICAuZmJfZW5hYmxlICA9
IGxjZGlmX2ZiX2VuYWJsZSwKPiA+ID4gPiA+ICAgICAgICAgLmZiX2Rpc2FibGUgPSBsY2RpZl9m
Yl9kaXNhYmxlLAo+ID4gPiA+ID4gKyAgICAgICAuZmJfZGFtYWdlICA9IGxjZGlmX2ZiX2RhbWFn
ZSwKPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4KPiA+ID4gPiA+ICBzdGF0aWMgaW50IGxjZGlmX3By
b2JlKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ID4gPgo+ID4gPiA+Cj4KCmdydcOfCkpvaGFubmVz


