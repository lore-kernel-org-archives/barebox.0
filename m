Delivery-date: Sat, 05 Jul 2025 17:22:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uY4jB-00EN1t-0p
	for lore@lore.pengutronix.de;
	Sat, 05 Jul 2025 17:22:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uY4jA-0000Y1-DO
	for lore@pengutronix.de; Sat, 05 Jul 2025 17:22:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LGGXcyq1bXVZUHGY4mnt8/wcQf8y0UK1Zh9Bn3JyceY=; b=wWAnBhZEIZV1pbko0DY8PdTZSG
	lirH9lXOnmjnFYv2rwyrFyGqMrAzvq/v13MdGQd/mavubdYQ6t4fbrvvFkadAXXt+SuMsxNrdn0MX
	2a09OmZim4Nko71esiESP0mOiDNkeT4d3l9V7+qFYtDGpxmcrGIKicR6HtqQAj4X/dZxW5IXKT+3v
	fly0dgwwhAnLaie9c3tj5AtHmUgMkbwIqvwuOuBhEEF4TVjoj/sD7oA5eANb7CRM1BwayLmdW4c3W
	JrJXS57/IPxrZDSark4IXFXOoI5waqvC2Tl2KBUmBtj9oYOQ47jdnPVqXxtwRa2cMh9YngxGQNcp0
	zh2cEH9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY4iJ-0000000Gi5M-1Zdx;
	Sat, 05 Jul 2025 15:22:03 +0000
Received: from mail-northeuropeazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d200::1] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY4iG-0000000Gi4t-1vGL
	for barebox@lists.infradead.org;
	Sat, 05 Jul 2025 15:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BSceDwZjm+xnPF6SNEAXaaZ1jSCPLzCbG9mZ9+WmofmgnKoWlgKmi1kLIEGcNYbjHeu6OnduNJBDZyTYjdboYOU77ffRUqIDc03bATQiFPxdKJX+EN+Ih7E+i9wXQ/4NJtM64I9jEhk5mSkkh4dTpD0I8ICVNen34Ju6LCPFAEgeQNrxSg7FyHNOKs0ABnVZSfO7lM/34hwN9cWxjujgpmrQ3skXnD0zY9copCP1znjgze5svGQfo4P2TOsgy1Q99TY29JLFPDqsQFKr7yKkxraLG7nYvvxj2JB0XRynAnfnmCZAg6ZdGVcoUVuhhol7FzvlTsV8YT3HnHyleB8YrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGGXcyq1bXVZUHGY4mnt8/wcQf8y0UK1Zh9Bn3JyceY=;
 b=n48JLu8WNfn01DOWdSYTk8RZMM3tF6c3cRVMmeN6O3MJoL5bQYt1YSsmCN8sPhczLaMK4pJB9rKQ9IU/ekuudQXZaf1WyXPHUrByvvzJiNJP3rhNzvzWMeSkwJHk2XVFK9YGSWUWqUf660XDcaJjyCVCz/m73lHFc1/M7hKvXCB1rAWMCLcF1Gk/nTxyMcq+r0bm9D4WnbCRH2hHxUv+8bC74aA7nIhInlnseNflmyYtV9LRp3ejQEFecLlgkR9CyyUcfYnhVLZRK1TsBbaupZR4dvPYqZR3rmchkgYyJylXbzT8GlPv/C/MpNsAYXHJ30llfFR/XIikqNimyvFH+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGGXcyq1bXVZUHGY4mnt8/wcQf8y0UK1Zh9Bn3JyceY=;
 b=hfPotOyJqs6ohfoE4UaNjZ+4hfkGO3E4wv+8ED9MnZmkTCWZiOIqHytixFfTrX+hQTeYZquN9608PzYC7zGFJ8QGfgl8RN9M9yAv5sWtM4eSIClmBSL+kQ8vW1jtiQBx5aL+e0L0cBdMF4qKgwgkzSQaFfko+rT0ZeXV3FAUCV7hQryPFjBai37JPcusW2zBG9Q69O2PWJKCc3V114v6ycupWi2kcyUqd8Mfcne/uqSnphA6WezkQMuetc8nUJ9Ztfuf5mS3v+/TMT8kcgf+0lKHRJ8EXQ42Z1zxgwc/KxeDeLZWw2AODKv2mtlDm4I04OjUCROIkywfwCMYQqlESQ==
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com (2603:10a6:803:b2::14)
 by AS8PR02MB9458.eurprd02.prod.outlook.com (2603:10a6:20b:5a2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Sat, 5 Jul
 2025 15:21:55 +0000
Received: from VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2]) by VI1PR02MB4429.eurprd02.prod.outlook.com
 ([fe80::fcf4:21c7:f28e:cfb2%3]) with mapi id 15.20.8857.020; Sat, 5 Jul 2025
 15:21:55 +0000
Date: Sat, 05 Jul 2025 17:21:52 +0200
From: Michael Graichen <michael.graichen@hotmail.com>
To: barebox@lists.infradead.org, Gwenhael Goavec-Merou <gwenj@trabucayre.com>,
 Johannes Roith <johannes@gnu-linux.rocks>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
User-Agent: Thunderbird for Android
In-Reply-To: <1dd8b780-1150-421a-932c-081aa31ae775@trabucayre.com>
References: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com> <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de> <aGgRkmkiFhNGq+Qg@Precision-T3610> <1dd8b780-1150-421a-932c-081aa31ae775@trabucayre.com>
Message-ID: <VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0385.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::10) To VI1PR02MB4429.eurprd02.prod.outlook.com
 (2603:10a6:803:b2::14)
X-Microsoft-Original-Message-ID: <A0C8F077-FB46-4C23-BE70-49EBF9835F81@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR02MB4429:EE_|AS8PR02MB9458:EE_
X-MS-Office365-Filtering-Correlation-Id: 75bc0e2f-af55-4ce6-ee2c-08ddbbd7ac67
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199028|7092599006|8060799009|15080799009|19110799006|6090799003|5072599009|1602099012|40105399003|51005399003|440099028|4302099013|3412199025|10035399007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SU5tRjQ2Z1hOb1M0cnlDSWJaQ1VWYjNqSDZ3R0kxa3AxVWxDMEpmb1VvNjB3?=
 =?utf-8?B?RjlLTkFmTlFvRklMejMrVG8zUEpCTnRrS05VZDNMUW9yVTFEWVJKUXllMnV6?=
 =?utf-8?B?Mkp3bGhURXhTejFNNlJvQ2NkV1A3L01NSFN2b1A4UWhiYnhrclNIVWpQM0hW?=
 =?utf-8?B?WUhVbGNCSXFtZFdMVzZMMDhhR012NjFDZkw1Q1liOFBWOGpsZXRHb2l0Q1M4?=
 =?utf-8?B?TUpjeU1PdHJ6MU9saGN6N1JROHkvbmJQTThibHRCNW9jcmdSd0kvRm5ENUdp?=
 =?utf-8?B?ZWJVM2l5clBobnNrSFpad2c2NHAyRnpDZmhlSVpqNzVJTTEyYnc2OTNuK1g0?=
 =?utf-8?B?Y2dqMDVyRkYvZEtxcW1rVFJOSSs4ZkZPUDJ0a1lsSmw5dzJXSmxIalN4OEY3?=
 =?utf-8?B?NG1WMWhFZmdLRDNlSWNoQzU5VUVGUWlnbE5aN2VDTDN3ckdHNGw2UkllbW1C?=
 =?utf-8?B?SnRjMnRMY01XaGRpaExkN2FYdjFlY0RqdzJKUjF6TlZ6Vi9obis3NFBpUTQz?=
 =?utf-8?B?ak51SUFIUldoSGF1VGc0bythMWpHQTZMYWJrbXVaMXJZSGZTd0VQVjM5NGor?=
 =?utf-8?B?bkJGNVZiNHFrZzIrSW9pbFBhdThPbjVkcE9IV1hFNVhQSW0rRU12ZDBCRjha?=
 =?utf-8?B?Z1ZNeWU0ZEpmZGVrV3BtcWlxSnAwY3NiT1puRDlCMVdJWkdubTFmUEFzbEk3?=
 =?utf-8?B?dlZDQno5d3htcVpMTm9QT2ZLWGd6MWkxMUpCeVlValdHWk9YMWNWS0NrcjhT?=
 =?utf-8?B?MGV1TUlDTFJMTVJGdGMxdFJlRFhjZVFtSDRrYUs3enptcDU3U29VbjlPT0hS?=
 =?utf-8?B?ODBEVnI5Y3Ftd0plempqWW8zMjNSb3JqQmdwNmpDY2ZsYkRoWEcwNEhwN0cy?=
 =?utf-8?B?ZTRFOVRwNFlJL3RyVDBoMHlMeUJkdkZCNkc2TXRaNU5MbGZyaHAzM3dxb2NV?=
 =?utf-8?B?NmVSYjJqaitieVRBZWRsYWQ3WWZEejhxMHhYcko2TXlMODUwSkd4N0o5akta?=
 =?utf-8?B?WElGc3pmRzBJN1o0Q3RHdnJzWndGYlBQelpDQXdWdDAzczlaQ1JNSWxmUDZz?=
 =?utf-8?B?azdueHJ2aDg2S3BBeGs0ZkV0ajBCbzJFQTM3czBSYlpZYVBzOWJyNTg5bDVM?=
 =?utf-8?B?WW8xRUFIbmZaVkREdGZSN0p1Y0JrWmJOdkE3bXNHbWtaWGRwSTMrNTZiZHFn?=
 =?utf-8?B?MzJFYzUyS3VpSVBUM1oyTW0zVGpmQy8rZlBoQU1xeGJoeUlJNTFqZ3YrWElv?=
 =?utf-8?B?Y2d0MHNMU2syZllVSlZqUzBBSGRpWmdkekwvZlp3ZkF3UWI0elFwWTliQ2Rv?=
 =?utf-8?B?RGJlYXBWcG1LNnY3d3psbmZGQUw2ZGFHZ0xVQldRb08zS0lPSkxieWZMU1ZJ?=
 =?utf-8?B?NVJlaE81cUpYRk9EV0VVZ0ZFTmwvSU01MXhCZ2xiNUdXMjM3QUswVk5kY1J4?=
 =?utf-8?B?S1lGOEd3WnZ5S09VMUpZR1h5cVc3bFZJdElLN1kyMGYrOHNkTFpTRGZwanFR?=
 =?utf-8?B?b2dvRlppRkZPM0VqK01VclpnVVVYcmhZSVlucGxtSFQrTitKdVEyeFQrc1J5?=
 =?utf-8?B?NVl5cHQxWVdOSUFUZUdJN2dGbGdnN1NJcEdyWDZJNUkrT1BEYmRrN3dpWkFj?=
 =?utf-8?B?MVFsMHNQY0VJM0lnK3JOUzN4VHFJcTJDZWloTSt2elpXSzBVOTJybFVVT1dH?=
 =?utf-8?B?dXNQQVM4aUJvcjAvSStlaHRmSWFDM0NraEZmZzUvZG9ZSThqUmVML2NBPT0=?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXF0YzVZSTFleGpTc3FDeFU5Y0QxZ21DMlNoazlIcW90SklNcXZZUXNuTzNx?=
 =?utf-8?B?MEowNGZEMVA3Z254NytyL3FMTFNPTmwyb2tIUFgzaDlCMld6N3lUUjNaeXcw?=
 =?utf-8?B?ZGpvNzkwZHFsc2hhcDg2WnlWQTZNS2I2TGxrSVhsdk5TUTRVM0svUEx1WS8w?=
 =?utf-8?B?MUQzRWtIUFNRY0JUT3VnZy9ESU5nVmlwQmUrZCsxWDI4KzJPRVVRR3FoRW1X?=
 =?utf-8?B?VDhvRDJjSlZDZUt5dnpqZUlBNFBsYTBRV3Jnbzd3Si9HRENTY1dkbGVUVEJz?=
 =?utf-8?B?QUd6ejhQTUdrUFkrL0dZMUlXRlAzakJxbThOZU1LaE1nTWFsZWhQUVArbkZM?=
 =?utf-8?B?b0FlVW5QanZCeXBPZm9uUU0xNk9xa25mdVdUeGlVY3JQMS84WW8zNVBNYjI1?=
 =?utf-8?B?UnJhaEd4aEFqTC9pNW93OUZPdm9tMFpvclR4SHBTOHpEUHZkd1NkY1BEOWpO?=
 =?utf-8?B?dElRazQ3YVFTd1Mzc09SQld3K2tCRVl6cERZOS9rbDVvWGlFZGpMZ3d5R0Iv?=
 =?utf-8?B?bjdtMHdXa3hUeFZoYkJwck93ajgzTVRpKzV6a2x6Z3dRZHoxV2dpYlZjWjh6?=
 =?utf-8?B?VFRZaFVSZFpDV1VpQU14UGt6b2RUSllSczBhalFRMEZSQi9nUTI3RUdhc0FM?=
 =?utf-8?B?SVJiM1F3bDdZcUhFREtRUko0ZUtoV1V0T1NuRlc3aEl2VTRpT3RyZzdHTVBt?=
 =?utf-8?B?VjBGYUZYOWR0Ty9OcE1LTWRsSUkyeFA1eXhWMnZxWkU2Vjc5a2JLUjg1eDZn?=
 =?utf-8?B?MUdkWFJhY2JDTkRGaFc4a0p1Qkd5UlNBMlEydmtDZVFHNzdrbHJGbHFyWjFi?=
 =?utf-8?B?T3ZMTlByZDFURmVXaTI2eW5zelU4N2NCOGFYRzJMZTJjS2tCWEw3SFQ3aGlF?=
 =?utf-8?B?Mm1hNlpZUVZUR2hxeXFpUktoZ1FaSGFKRHVoQzIrYno0aEpZYVY4bm9uVUNO?=
 =?utf-8?B?cHJHeFlJQXdkcXQ0dWp3czNFZFRZZ0c2YkdxLzBGdm5UekloTU5ydXdUYTlM?=
 =?utf-8?B?U1dFVUFvWnBvQlVKc1UxcFpnL3pteVMwd2ZSSEVyajBzeTFJWHU2ZGtWZHN1?=
 =?utf-8?B?TnBnZVVHYlVMNUFnWnh3ZWQzTEN4cjBFdkEzRDVzU2EydUhCMU5sN0J6OWRa?=
 =?utf-8?B?bzlqOVZINjZRRXIrRkkzVlJLTXpXZmVDTko1T1U4Q3RHdzU5QUZvTWFGcnRm?=
 =?utf-8?B?OE50Zi9sY2RPZWhPbEZBdXFNQ0lzT1dhWUFsUjJyb3BmMmU1SS9DRDZ0WVVy?=
 =?utf-8?B?NFMxLzZkelBqa3dGam00ekFCcnQ2SGZUNmN1ckU3aTJ2VE5LWVVhVlNPYytv?=
 =?utf-8?B?c2lqaldPTi9YUmVYNEFTRmhiRE8zM09EeFlyTG8yempnbXdKNWVXejNoT2M0?=
 =?utf-8?B?NjMvamZsZlNaN2JvUVU2cTVmb1U5SWJJbWJldko3VVBpWkcveWtwTGlaWUJV?=
 =?utf-8?B?S1hoVU42VHhRZkowZWxlWWh3amRxalN5amowSWJycExHWWRFVHVpMFNxcktI?=
 =?utf-8?B?VnNKSkRsclRkcnp4bVkrcUxhYTNJZVErbkc3cEt1dzJoSitCUUZCQktMdTc0?=
 =?utf-8?B?K1BqTVh5aldyYlJ6NllzY0RwVTQzVkppMC9SeXBaNGQvMlk0bnM3YlFGYVFI?=
 =?utf-8?B?V04xS0JWU0lzQnBhb1BpU0wvTGdldHMwcWJTMGhKNytxQ2ZqQjZmOWZzeSs3?=
 =?utf-8?B?NHhTNG9UVnFsbytMMFJkMWVjUXVTekxKd1hiTDByWlBqZ2ZYeVhrUllWVUxk?=
 =?utf-8?Q?aDObbhlT1UuO6V+JPE=3D?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-5faa0.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 75bc0e2f-af55-4ce6-ee2c-08ddbbd7ac67
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB4429.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2025 15:21:55.1189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR02MB9458
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_082200_522303_B41CBBB6 
X-CRM114-Status: GOOD (  19.81  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am 5. Juli 2025 09:01:38 MESZ schrieb Gwenhael Goavec-Merou <gwenj@trabucay=
re.com>:
>Hi,
>Thanks for informations: after deleting everything but the last two lines,=
 barebox starts has expected.
>Now I have and error with SDCard but maybe related to lines removes or som=
ething similar.
>

Hey,=20

please show me the error messages once you put #define DEBUG at the top of =
mci-core.c

I'm also using a patches Version of drivers/mci/mci-core.c=20

First thing is that the amplitude of SD-Cards clock signal decreases with h=
igher speed on Zynq-7000. I had to reduce SD-Cards speed to 25MHz within lo=
wlevel.c. Next thing is mci-core.c does some speed and line testing that th=
en causes error messages for my eMMC on the other line. So I skip this test=
s.=20

Since the board i'm working on doesn't change anymore, that's fine to me. B=
ut probably will not be good for other boards using mci-core.c=20

A feature to define fixed line nummers and speed mode from devicetree would=
 be nice here?!

Have and nice weekend,
Michael



>Thanks!
>
>Gwenhael
>
>Le 04/07/2025 =C3=A0 7:38 PM, Johannes Roith a =C3=A9crit=C2=A0:
>> Hi Gwenhael, hi Ahmad
>>=20
>> Am Fri, Jul 04, 2025 at 04:56:01PM +0200 schrieb Ahmad Fatoum:
>>> Hi Gwenhael,
>>>=20
>>> On 7/3/25 09:18, Gwenhael Goavec-Merou wrote:
>>>> Dear all,
>>>>=20
>>>> I'm trying to uses my zedboard with barebox but can't be able to boot =
this.
>>>>=20
>>>> According to mails found in this mailing list I have done this sequenc=
e:
>>>>=20
>>>> export ARCH=3Darm
>>>> export CROSS_COMPILE=3D$SOMEWHERE/arm-buildroot-linux-gnueabihf-
>>>>=20
>>>> make zynq_defconfig
>>>> make -j$(nproc)
>>>=20
>>> That looks correct IMO.
>>>=20
>>>> And copied in the first SDCard FAT partition:
>>>> - images/barebox-avnet-zedboard.img as BOOT.bin
>>>> - barebox.bin
>>>=20
>>> Which binary is barebox.bin?
>>=20
>> The first one is the correct one. Just copy the images/barebox-avnet-zed=
board.img
>> with the name BOOT.bin to an SD-Card whose first partition is FAT32.
>>>=20
>>>> But I have nothing displayed through serial port.
>>>=20
>>> Two things come to mind:
>>>=20
>>> - The Image is 184K. Does the Zynq enforce a maximum limit on the BOOT.=
BIN?
>>=20
>> Yes, there is a limitation for the size of the First Stage Bootloader
>> (FSBL) as Xilinx calls it, which is the available SRAM size in the ZYNQ
>> 7000 (192 kBytes). Currently Barebox PBL and Barebox Proper are combined
>> to one image (images/barebox-avnet-zedboard.img) but you will get an
>> error in the build process, if your image exceeds this size.
>>>=20
>>> - Does DEBUG_LL produce any output? For details on how to configure
>>> DEBUG_LL, see the troubleshooting guide I just Cc'd you on.
>>>=20
>>>> Are there somewhere details on how to prepare SD Card for a zynq board=
?
>>>=20
>>> I haven't done work with the Zynq 7000 so far, but Lucas and Johannes
>>> did. I Cc'd them as they may be able to give some tips for troubleshoot=
ing.
>>=20
>> I would also take a look at this message on the mailing list:
>>=20
>> https://lore.barebox.org/barebox/DB7PR02MB43323CD77E0507E560475BCAABF00@=
DB7PR02MB4332.eurprd02.prod.outlook.com/
>>=20
>> Here, the content of the file
>> arch/arm/boards/avnet-zedboard/zedboard.zynqcfg caused a boot error for
>> barebox. With my Digilent Cora Z7 board, I also had to modify the file
>> by deleting everything but the last line, to get barebox booting. Have
>> you already tried this?
>>=20
>>>=20
>>> Cheers,
>>> Ahmad
>>>=20
>>>>=20
>>>> Thanks
>>>>=20
>>>> Gwenhael
>>>>=20
>>>>=20
>>>=20
>>> --=20
>>> Pengutronix e.K.                  |                             |
>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>>=20
>>=20
>> Best regards,
>> Johannes
>
>



