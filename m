Delivery-date: Tue, 21 Oct 2025 14:06:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBB7u-00AExD-0p
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 14:06:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBB7t-0001eD-Hr
	for lore@pengutronix.de; Tue, 21 Oct 2025 14:06:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GZTKW7MH11E2y4yAQyhzveW2YdEfQoDigwEQ7o3xt68=; b=L/E1Ae1xffsIFpoamok0F8EJv4
	p5p84BMUlEeBNGkQCffrQ0iH0iJETYpB/9sdeUkQp8gaJ0U83yDrboP7PTc9m9Sj1CgCnNQ7qWRJf
	xcLZQseXfpY7ZrBUX4aL6bb3h2+poNzsWittduXaVy8NCXxw01ctUGIF00Vr0YtOFDEF3DHRfC4rl
	tJhPWS6vlGUmVfGbwLhTXWlFWrjH0/Vr2z79zWdp5DA9hgOrTDbvf9Y0VqMF9NCdyB9v0Gk2Wfvlr
	sKSh8/3pLV3PPri1gtRrVSq1TQmu/37OndLlbf0eckXDbAP/6ffn4iyVhrmeJ+aBoJcpsi+fL9WLS
	8e+MScag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBB7I-0000000GtGq-0clD;
	Tue, 21 Oct 2025 12:05:28 +0000
Received: from mail-northeuropeazolkn190120002.outbound.protection.outlook.com ([2a01:111:f403:d200::2] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBB7F-0000000GtF3-0K7C
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 12:05:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R/XfJxlCaRCtcwKTvrCsorojbG9fUlPw5T3+6M/zBPvFdJ45XnJ6cDNm/f50JQUWZKhWCpcqIHQZROoc91CU+TIQxNs+8UxWrE8E4mw7Cfsmph+UTf8a6xdgsaBksQnHqBJ6fNl1leEuy1vZsaTaL4UYrZQ+vV5AvMLQxpCFiOjgLMZuT3nS1xvJaVHRZngesZUlIyhjrR2D0o/yKbdUuKsSDK9oSUpUrrOZc/sQzTCXjHXPwlCYijoI+ZnZ6cgQzfd8ibXOMnNk0Xgu6H/9JV0wmQ80lOkr3HxMpeTFCzqhwDePWd8Yk/NR0XGGhPYX7rehwxph/PaMttAhvfT7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZTKW7MH11E2y4yAQyhzveW2YdEfQoDigwEQ7o3xt68=;
 b=aN9oa0r9ehjlCgRNx7Kv36di/rRjVU5Aw9/V976rPbtS7Gw/oH45m0Bakj1KnIesp7XDN77FhN0Ti38jeemCXLVMt4aTUGS98zJxyFwsI9jBWeOWHs0JaGmsaZ6atQCmJOlZAIc1P7vCohZLi5SEhXMuux2JXzMgTEaYkQ6Gx7RYzwFkyqzy5xghxn1HcDF+CxF/8hffu0RQce6U0x5OZCg4OpRZZvR99AQ5itXwSaRcDFzC25Jt72CNK2EuQDHX4nF4U/HlnUsKCl5cpVNbKVwUKhdSJah4RfCGYedt4RjuokGgZHY8PwKVZbbfrRG/5T20kRltq0qpqDxuCld+ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZTKW7MH11E2y4yAQyhzveW2YdEfQoDigwEQ7o3xt68=;
 b=C5AjA5WSuUGGqxyImM1qrUsBYj4Ur1+zIq7Qoybh2IhIZajqki6bHD4SqW8tyHQYWsAp0fYhteb8ANVOotQOSJLLaRH2apDNEFKnVrqHeK+kQohCxQkiSSDZFyV5XMFi5azQMAAb+4Ci+7qUv6iIHcDdo1wsDMbtIpGDh9u3NZIaohBxICjGA50LuWUW1lXR/SqR9ZFsd0jVEDTBrs4oflhOq0ewKAukIIhJKu1hsy+l+AJaOhb1B7+kxiOTD4x/k72OtUMPzf9soEnTQ6IB4N9TqiqtMFr64mwLFbVNu3X9xdktQ/gnk17AcqlPt+HpTgP6CgkXLtRwSUbZ6tLmnw==
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:175::17)
 by VI1P18901MB0607.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:125::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Tue, 21 Oct
 2025 11:59:24 +0000
Received: from AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13]) by AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 ([fe80::5756:694d:1641:3b13%5]) with mapi id 15.20.9228.011; Tue, 21 Oct 2025
 11:59:24 +0000
Message-ID: <AM7P189MB1009344F5A203A260220773AE3F2A@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Date: Tue, 21 Oct 2025 13:58:43 +0200
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-5-f.pflug@pengutronix.de>
 <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
 <1a4b90c0b61abfc0ea15f81021656d467ecc818a.camel@pengutronix.de>
 <f71d6e88-32f7-46ab-97ff-b417848377b3@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <f71d6e88-32f7-46ab-97ff-b417848377b3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS4P190CA0048.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:656::21) To AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:175::17)
X-Microsoft-Original-Message-ID: <b012471d-a762-4812-baae-0b04ae0a8c56@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7P189MB1009:EE_|VI1P18901MB0607:EE_
X-MS-Office365-Filtering-Correlation-Id: 2815776e-709e-4ab9-70bc-08de109946aa
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199028|6090799003|19110799012|5072599009|15080799012|23021999003|8060799015|40105399003|52005399003|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWJibVNQdEtiSVVvUVpuZmhObnhZZU1Xcm5rUlBOeG0xbWZxNkgwNWl2UEtT?=
 =?utf-8?B?UmF4cm83Ukx3a0pLb0xaL0ZIOVJiUzRyUkkrMWFkUGVjUzVpSlNKT3hhTExF?=
 =?utf-8?B?MkltL2lyNHNrL2xnZm15UmhNUTRIUURMZGVHVWM2NG9TSFExNG1yYzdQa0pa?=
 =?utf-8?B?bVlRUWVFN1E4UzFPL25KT0dBYUFWenJFeHZsdzNMVi85RWFjalVNUXhrMW5T?=
 =?utf-8?B?RFhDcGR1RUxDWEU5Q1VyaXZlZXFBQWdCQmpuVDJIUW5sTUxTeGE5SlNpVDVS?=
 =?utf-8?B?YUhmazUxVlBpOEZMazVoVHIrU3IyNFFIem95T1lRd0N6Y3hRRzNXbzdkMXVa?=
 =?utf-8?B?dk42S3N6bUQ4em00ZDFONDJyWHNYM1NabUNjampMNm5remkyQjlxK2VpYi9h?=
 =?utf-8?B?NjJqVHdvWDR0TWliQjM3cEdQbENocDloZHF2NHJhM3J3L2RnbzYxNFNpMzI1?=
 =?utf-8?B?K2Z5b0ExOUNzK3NHaTJlMytwcXN1YWZ5aGJ5THRsMFFHUVFlVEFycmJOOU1O?=
 =?utf-8?B?NU1kZ3AvOHJxdWoxVCtJZnNtUUpjWmJzRlR1RDBFWEJUWGFxaU9oazFlTk03?=
 =?utf-8?B?ekE4a1FFT1V0cHM0V0hCaWJMb3R2VnJSWndTNEI0d1RCTnpPSW9wOE1YSlox?=
 =?utf-8?B?cVpSSldHK1RWck5uNmY1VWJIMEt2MDJGQnVZYUtSWThRc2s3Mmd4TEtUYlhZ?=
 =?utf-8?B?OVp2TmMyVXRxMFcycE9QVURkOVE3NTNwUUFVbTFtaVoxRkd0ODJISmd4NWYz?=
 =?utf-8?B?TitkMUgzb2R0NkxFbm54SUhNUnJWbjBnRTRENVFnOG4rSjhXYVpCbFlyY3c5?=
 =?utf-8?B?Mm96emN4WlRoTDM2WEZzTCs5UlEzNEF3c3dRbEdRcVdmc0JLQ2Z2dFZkaXJH?=
 =?utf-8?B?VU54Z2h4RC9VRWhwUlJFT2s2U3JZalpTb0phM1JpbjMvaDNBWnFPREtpeklI?=
 =?utf-8?B?WlFBNlZUanZCMkhOL1pCNzdobWZDSUlQNkltZGdURFVQamtRQ0pYd1dFVFQr?=
 =?utf-8?B?YUZITWI1Tk1BUFA2NFEwRGU3OFVCRzVkNGROa2pDbHJLVkxLcy96MGNhaU9p?=
 =?utf-8?B?OTcwOFVPcitMU3lsMGoxUmxtcmRhTDJoWjdPd3YycmNYaHU1NzB1S3RLTUdF?=
 =?utf-8?B?Zng3M1RlZWwzRUs3Tm92cGN1TXcwK3BZTFltWkNRUHdpV2Q1OXEzTFhadUhm?=
 =?utf-8?B?UjJhTXhOT2ZMNE9Wd1RTV3ZjT1RSZmMzK2RReTdReExxd0ZWTUFubm9lTDh3?=
 =?utf-8?B?c1BHRVJaT3kyb05NTG16T1NCZ0JTd05HQnFsbTA1SXBtMW84L1FYQkt4eFRE?=
 =?utf-8?B?TWtLVUl5aC9ZclE3TklkdWdVbm9RVHk0YnBERjQ1enRyNlNmT1lNTXBHNE1K?=
 =?utf-8?B?Zk90ZURheHFxWGJQUXMzV3ZUMElvNmZGUEMyMXRDS3RDUXErUjVLOHNQN2w4?=
 =?utf-8?B?cFVLVlZPeXk1bm5FSERJNmNEazY4MnhRUmN2bENlemVwekhobitJelBDcHgr?=
 =?utf-8?B?SGNKMGw3MnFrV0RWQVozSWo4UnFUR2tQbzhVaStMandoVFh2V3IrNU9NeHR5?=
 =?utf-8?B?bGt0U0ZzdFUyU2ZBbUR0NGxVRGlGYlZsa0JRYjNkKzBQRFFUNFJMLzNKOHY5?=
 =?utf-8?B?KzVFQURDbmlra1RQNDlYZFNNNVF0YlE9PQ==?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGJkOXF2SEV4SitqRzNPUGczeTRkWkJJTExqSzhWOXJZeGFHdGhnZHRyL1kv?=
 =?utf-8?B?MkNwdGQyRXR0alVzVEt2M1NTd1UzT201blB5RGdoMXlQem1rZThXNk5ZM0NC?=
 =?utf-8?B?U0czMFEraTZ0L0ZLSFR2SmY5Mlh2Z1BzMHVuUkdRdU1Wekdzblo1MFNGL0ts?=
 =?utf-8?B?b0tmc0lvTVVtRkJENVdNTkZ3T3JuN3hlL1ZtVHFQa3ZabUxldjNPWTJ1dUM3?=
 =?utf-8?B?T0NsZVQ5aG5BY1ZNZVV1TVBVd2YwanU3MWxoVGwyM1hVbDZqVkpjOXBtOGRX?=
 =?utf-8?B?aHNRRWE3WTIxUXBBcU8xTWlPS0NFaHdFM0VEa1ByTUJ0R0ZXNngxK3NrSDk4?=
 =?utf-8?B?UmJERUhBeEVYT1dZWTNxQ1prY2N6cHovS0s5UW1HY1FMZlBJSktCNzVZbnVQ?=
 =?utf-8?B?RzhTNng5ZTdkeFBQSG5aQXRYZkF3dlNWZTJ3N09YZEphd050aE5vM2RTSkxz?=
 =?utf-8?B?UkdzSDR5d1Z4SENSY2MxaVcrRnRlWFZlQUt0Q0grU29wTXlsd05OUE5RTnor?=
 =?utf-8?B?M044Smt2dFpPcHlqQjlGSTBSQkhNK0xwSG1nSmd6M2tWcXhiQ3lTSFlIUnRB?=
 =?utf-8?B?bHdwK2FhT2puNk9kb2N6bWpUdFJLVGk3ay9GR3Y4NlJwa0ttRHVWTjFaNXZK?=
 =?utf-8?B?QkNHOGF1U3BxSGVBSnFUdnBnOXM4NnlSMngxWGp0NU9JcExFNU1CV0VEQzBw?=
 =?utf-8?B?Yks4SlFyODYvME8zTUhEeDRxK2RWaVQ5RU9VZ3ZzdUdvRmdJM2FJMWtCSm93?=
 =?utf-8?B?MVA4UTY5RDdQK0RRYmliMEVSeUYrb0tFMno2TURHc21iS09aQm83R2pmOXMy?=
 =?utf-8?B?dm5wdUZKb05tR21HOWlVZzd2S0diZUxrOHljT1YxemgxZ1FrK1VEYmE1c2hL?=
 =?utf-8?B?Y1NadDYrRlBkUXdGd25wWWlHZnFzZ1krc1NMTWRwSmVySEduUDFyYXRWQXRp?=
 =?utf-8?B?MVBWYmVjMEpoQTZOZmRwSUMzR1BFQk95NTdTQm1TeXRjUzhGQjhvcy9RZnZu?=
 =?utf-8?B?NWdUSmxNT2pDVnVyY3ZrU1FraXNCek12cHZNVFM2NFl2TGtSK0VOUklmMnV3?=
 =?utf-8?B?ZmZrcGtiYUFnQ29NZlg4Umsyb1ZBZ3ovN2pWaVIvWVhIT3FxK0M3R0VJd1Jk?=
 =?utf-8?B?NHZTOFRmazJSemo1eWJ4NGdiUUFCUEFnT1h6YkpSZzFHcWZPTmYwSFNteGtU?=
 =?utf-8?B?WGtINC9iVzk3bGdLUXRLbGdDa0d1dVBqSjN1WWxBOHRaQk81MStsTTVPRDVY?=
 =?utf-8?B?bjgxK0MweEVHZ2wzcWkvYmpEOGxQVEk2ZjgrcVJ3TUFOdVRhZ0pCcFN4NlJi?=
 =?utf-8?B?RlJsVDVBa01Hazk0b0pnaEVyRHBVU1hISEJuVHo3TGNjT3pyOEdnWDIxa0NW?=
 =?utf-8?B?cVpidVlpclBkS0QzcTRrZno4YnJTZUVWSUtveWlwT25obmJlQ1NCVEswTHJj?=
 =?utf-8?B?T2xhb2lUNVN3S3pGTVo5ZVArNnA4RmVlZTg0RG1ZcGUwYWtTNUJtZFcwa1Vi?=
 =?utf-8?B?dE9yVkhidExISVdjeTNDempVcHkySHpiaDFUa0ZxOFlHdXBnWWFIdVJGUmV6?=
 =?utf-8?B?TmVaWjBRK1kzTzlXZEVaTVJmU1p5Qnp3Lyt3dmErQVRUenZQQ2c2U3oyd1o0?=
 =?utf-8?B?b0djdUJiWDdXQmU5YjI2SUc1aE9HbFVlQzlwbk1sQnRkOFNGYmNDK0k3Vkli?=
 =?utf-8?B?SDVweFpuakFOK1hFNlhIV3FsTkxEcHAwOVJiRzN0VUs0US9LdU43YStoWHQx?=
 =?utf-8?Q?iLYCIZEPoaUPQ97ZHkGyznhwrcWKszDt2Pnjh2K?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-2ef4d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 2815776e-709e-4ab9-70bc-08de109946aa
X-MS-Exchange-CrossTenant-AuthSource: AM7P189MB1009.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2025 11:59:23.9451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P18901MB0607
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_050525_131940_F45238EB 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/21/25 13:43, Ahmad Fatoum wrote:
> Hello Fabian,
> 
> On 10/21/25 1:37 PM, Fabian Pflug wrote:
>> Hello Ahmad,
>>
>> On Tue, 2025-10-21 at 13:11 +0200, Ahmad Fatoum wrote:
>>> Hello Fabian,
>>>
>>>> +static noinline void frdm_imx93_continue(void)
>>>> +{
>>>> +	void __iomem *base = IOMEM(MX9_UART1_BASE_ADDR);
>>>> +	void __iomem *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
>>>> +
>>>> +	/* configure LPUART1 TX pin */
>>>> +	writel(0x0, muxbase + 0x184);
>>>> +
>>>> +	imx9_uart_setup(base);
>>>> +	pbl_set_putc(lpuart32_putc, base + 0x10);
>>>> +	putchar('>');
>>>
>>> Do you see the > character on bootup if CONFIG_PBL_CONSOLE is enabled?
>>> Maud (Cc'd) mentioned on the IRC that the 0x10 offset shouldn't be
>>> necessary.
>>>
>>
>> I did see the > character with (working with a 2025.07.0 barebox here):
> 
> Ok, good to know.
> 
> 
>> But there seems to be another Problem. If I enable
>>
>> CONFIG_DEBUG_LL=y
>> CONFIG_DEBUG_IMX_UART=y
>> CONFIG_DEBUG_IMX8M_UART=y
>> CONFIG_DEBUG_IMX_UART_PORT=1
>> CONFIG_DEBUG_PBL=y
> 
> Given that you are using the i.MX9's LPUART, I think it's expected that
> DEBUG_LL misbehaves. PBL output works, because the PBL console has
> precedence over DEBUG_LL.
> 
> Cheers,
> Ahmad
> 

I think I may have confused something.
Could've sworn I saw the base + 0x10 in the _uart_setup() call, but now 
that I am looking at it again I don't see it.

I may have been a bit too tired yesterday and made a premature 
conclusion, based on incorrectly reading the code.

Kind regards,
Maud


