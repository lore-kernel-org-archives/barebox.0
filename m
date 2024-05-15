Delivery-date: Wed, 15 May 2024 08:42:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s78Ld-00FS2G-1F
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:42:45 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s78Lc-0002ZH-Jn
	for lore@pengutronix.de; Wed, 15 May 2024 08:42:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+evsyQNEapAZ4WKqHPJKPSUteSe36TTZ/mThJ8QOM2s=; b=r424gWFWNlowrNIGMOvo1Bny4s
	o/wi4NLJdDpDd2SxnYIsTJvqgfmRtpBu3zPuoklLqlGW64xxS3ivlL6GmnHQk0LVngRmmoD5ICX2Y
	g0sbpds9Zi5B5AtAO52TE4iSoyueWRw15aX5sYHjAs51ly6BP0lwoAesaJz90jGC+IrenEZ0paI/d
	wg189ZKuayg9wczJnzOXUSiOSLeuivYZTfxDx1BvbxQ3LMX/A0HlJYrTd0JyJ7rZoeGNvZzh4Z+GR
	QoUfoJOWad8Qcb30gDlDjKA5BnCHySlgbIvcgsw/E1vp+GBu9fmtuU4KB3KpXUc9N3gU/uG2a2/Qq
	Y2s43Flg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s78Im-00000000fgN-1fQD;
	Wed, 15 May 2024 06:39:48 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s78Ii-00000000ffn-1d7q
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:39:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWBts9oewXYAccOQnMdHxc/XqegKTEuB8iu4impf0DorI/cUU4bYh/0g0S7W0GbDm6wRhicbSrv3EeCBX2N+cf5bbhB5Ymoro3+hxJRRLWQv3gzRj3Bp7BZIrNnj9/PJ6F9uD5PPuMWopFLKGWsXDBUhXE74nrRB12rrtTnmGkCmc0lnz6snEb12hvAyBmJrLzoi4UH+bW/EpQa6Q2GVSbXPQ3s3t53SwSlAtxzcUfpPX2QFlJIKXQD8NBjYrnaY++HtXWnHBRgkt+3Iio8iFrgVarRxTYvfdiUUfXZ8LxSBV8gf6f0iA+E/8tb1KTKpLJJKLY/J7gvxzHOM19R97g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+evsyQNEapAZ4WKqHPJKPSUteSe36TTZ/mThJ8QOM2s=;
 b=eg308dUJ3Oe5YOEHZxD4tuW8yLBdaz3Uo6MjK9uXJKKhRxePLHka0qiqmSZFXQcprZtKE2IfQ2XEwJmBez3kDn1ESWmVcxS3BvWaPFr9gFrDC/icWw9PWTJwBcX03VOTDqeVaFq+WOzyuni4/mSl6E0YwDqePVss/uGY0ZCV2CBvqgpCqNevus/JsuGesP080mtnduISN+2ZHs87/l8ROe5Bzsp76Nx5mMBQcoSi8TLybjVAix2gLN3WEaol3iSWdcE6/NqyPA4INMYLqkIu7j9w4zo6B+vEtFROzf2ZewcfcsQSjX5HAjLAJ6zeo98li75uh++FsGk/FUJHuRCG9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+evsyQNEapAZ4WKqHPJKPSUteSe36TTZ/mThJ8QOM2s=;
 b=mL3Jk6ite5lIZlTrw1nVVVkzGoUBeY5dJv0VlNzeWGqVy1S37O++sXc3yfRUFKyQ8y10v12o8Y72MU+MF3udAXln7ZdaYq6h9eQdPJZpU8iHwxMUg+jG/Cn3qdjXnQa3P/FN36RMLvg21SWYVXwk5jN0DWm5ZU0hxBNyF36qqUE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAWPR08MB8816.eurprd08.prod.outlook.com (2603:10a6:102:338::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 06:39:36 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 06:39:36 +0000
Message-ID: <912b9d9f-6b67-42fe-9def-cb51fcb9082e@wolfvision.net>
Date: Wed, 15 May 2024 08:39:34 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
 <008b5e2e-85b9-4a15-845e-70af7809f769@wolfvision.net>
 <2973f005-e781-496a-b8ec-43b982a76750@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <2973f005-e781-496a-b8ec-43b982a76750@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0035.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::48) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB8816:EE_
X-MS-Office365-Filtering-Correlation-Id: 157ea4e8-a83a-4fe6-13f5-08dc74a9c9cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzJyK1FRYXB1eVlqY3JWL3o0ZTFHQW4wYmZSaUV6amhlcHAydnQvT3FnZ3o0?=
 =?utf-8?B?MmZvNFZDNENRWnY4bStzaTE3K1U1Qy9mdUhwRDBndE5wUFpKOTM2ZGxXQ2ho?=
 =?utf-8?B?Vzh3Q3V1dDkwd0lpNXVqUFpCZnVHNlgyTHFKQ0YvY3JXUGFPaS82SFgweW1r?=
 =?utf-8?B?U1JoMFNPaWlUQVJBL3hPZDU5NGxVRzQ1YUV4UnIxZE9temlqTUQ5NXFyZGJF?=
 =?utf-8?B?KzNrZGJsNzducE1hNFJJVHlrWmkyUGwzWTFQOEdjRExGUURQdmNvaDVVZytG?=
 =?utf-8?B?dmdoOXVHT2lCRHkwTzFpZ1F4SVRCZjUwYzVOK3I2T0MzZzB1K1IyVE1mZHdi?=
 =?utf-8?B?NzNzdHFBRXkvSDdOL1AreWd6QllJS3hTdWdmckc4TlEvYlplcnJlS01TZXpX?=
 =?utf-8?B?RkpTMG91U1NPVHJTbnY1WXB2YmtQKzN2RHRFLzFhSXd4NGhrbVNsQ3lyMkhP?=
 =?utf-8?B?bmloR3ZTU0F1NGFkbkJHWkNJUVh5N0k2aDN0NW1oakw4b2dkendrbSt5U0hq?=
 =?utf-8?B?WFZlUEllWmdSKzN5Ry82OW84ZnRHM1FrSWU0Tm1RRkR6VGMwcjR2dTFjK2Rr?=
 =?utf-8?B?M3F2MnRqSlNGK2p2YkcyeU4rS1ZmdmQ4SG5vbW0rNkY2VWFlak1ObExHT0hl?=
 =?utf-8?B?VWV3SG01ejc3VzF6RGY5ZThleVYzVExiWEs2TFZiQVFickNxeEZ6dW15RG1m?=
 =?utf-8?B?Z3lYTFJlbnMzR3VCcUh0eURublZ1RnNVRVhaUmVoOEpPaUp4MXE4S3RnNVhU?=
 =?utf-8?B?T2xDdHFlM3hSTDFIM1YvRVhXVi9uOEFmWWRtdXA0UmFuYU82RDVNenpVSFlK?=
 =?utf-8?B?ZmNKRGo2aFZURDI5cUJxR3ZSS3cvM1Q1NlFxdlNwZ3JWVTMyNW00VGd0VGhq?=
 =?utf-8?B?eWZoUVhuUkZtcG8rV2VTTkFLWEY1Kyt5UUw4VkF0UFdxYVRvdGRiVEZScXRp?=
 =?utf-8?B?d3U0b0FUQ05aTkVTT0N4UFhWODVmQTFvU0VlcUtnZEZwamtWa0pSaDlqN1pi?=
 =?utf-8?B?UmMyM01MYjFHSFd6bkhnU3VnT1AwQlFCMTNMeG96WmwyRFBoamtYTFdVWWVl?=
 =?utf-8?B?ZmhXeG9nSlN3ajlqck5oekxmc2szanl0U2krNW9YL2N3NkE4WXdMclZCSnhm?=
 =?utf-8?B?aGozNTZUdDl5TjYzV25ZL3NnbkxHQUs4WGgwa0ozRXlURjBZeEtBWXpsK01p?=
 =?utf-8?B?RVBXUDVxOEc5L1p4SUpOeksxek5nZjFGV3ZXUjdKNzl6SW94SlZHTEtXd1hB?=
 =?utf-8?B?aE40RjJ3amFvQ2VQOEtrUUtUK1V0NzErdTNwdmlBWWFTYnptU3NjM1VNWnI5?=
 =?utf-8?B?NHl5bDhQU1ZkbjRJOWo0aHRUeTRrODFUTWwrUlBNSDU0WDFJWW1HRkdCRmIz?=
 =?utf-8?B?Y1RFT2orT1U5ZlBocVlQWUJkSE1UczBxVEpwcGYyN0V1Rzg5VlRIMjRMTDlJ?=
 =?utf-8?B?dU9TVFFPYmE5MU5wbFoyN1p2N3pmaGVmTXVNSndRVVJLNHpSdlB6WEdsdTcw?=
 =?utf-8?B?bUt4Qnk5QU9GR3JGYTV4L2hFblZqTkR3cTRGNytkUzhnZWZwcllYalVoV3Rq?=
 =?utf-8?B?aVc0V21HU3diTms2OE83NEZKSkl3SEFMY1NTSmdrdkxzbDBjQzNiZFFHQWRK?=
 =?utf-8?B?SXdaWVFzbW05N2VBTzBHSG5SdXlkcm4wditUVEVsbjcxMnZ3bzIyWVgySFJr?=
 =?utf-8?B?RUZGcmJDWkpOQkVIU1JpQzNzc2dPd1N2UzRpMnd3WXlHMWdPNHNhbXh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3RVOC9QTTJrMjlhb2trNXhNOEdMazJjZGVyUWJLNkRUWE53N1RiMHdxd09K?=
 =?utf-8?B?eFdRT3pLY09uaW8wd05ESCtBVGhKVHlzakp2NFlCMDhJSW9VVmM4ZWtpZmpa?=
 =?utf-8?B?eDRnS3h1a1FHTzM1SCtsMFF4eE1PckFZaE9GR2YvaXR6NmtFT08rTzgzUXlK?=
 =?utf-8?B?TVdKR2lXMXk3RzBnUWdrT2NHVVNuNG5jb2xnUzREb3R5ZEk2RHdpZmlzV2Vq?=
 =?utf-8?B?djFqV0JTVXZIN1hLWW5ldnh0VDkyMW1oUHdtakkrcjZMdXJDa1p5R21tekps?=
 =?utf-8?B?a0hvTndUcmxvTVRqdzFxcTdiamJiMkNmcHRENFAvT3UrajJHUUYyelNlRHFl?=
 =?utf-8?B?dXlweEZyYlRjRmdFSTBOUTVobHRFeWFoYVZDTjVZMEl2Q0xtUGxMT0hRdStF?=
 =?utf-8?B?dDUvUUNIZTBKODZVclFxdU9pVzVMeU1oRDFIMU5DRHdZNjdBUmMwMUNDUGZF?=
 =?utf-8?B?MWFPRmg5ZGdxR04vNHVhQm1TalFNRXQ3TG1vb3B6RmVLVGx0cUtJdWY0WGUv?=
 =?utf-8?B?T2swZFAwQnFkOVE5Y2c3T1pWTUdHTHl1WkhxOHZxcXkwOVdQSVo0V1FlZjhv?=
 =?utf-8?B?d3phTUxaSEx6RFkvbkVIc1paWXQ3OTNTTEhObmwzSXlvT0NpK2VsWUp0c0RG?=
 =?utf-8?B?cThNNm1ONExVdmFEWDRMMjAwVGlPOG42Vm9wREkwbEFZVWw3cko2UU1JRnV3?=
 =?utf-8?B?MVhSNC9Uem5PQzVtRXg1Rm5PUEM0TFVTUktScVZ6aWprUjJyM2E4Ym42UzdF?=
 =?utf-8?B?b2x3cGpFZUlvcDFaZVdyK3RwazFKRGhpUTkwZDNVRXQzcU83eE1odzZtS05n?=
 =?utf-8?B?dVpLSFhjb3FNU3JqMitzcnVCcmtYbEdXRUJQc20vMVJuVWZhT1oxTXJGMmRu?=
 =?utf-8?B?RUVJT0l4cEpqdEtQVERUbEUyYVdLWUN0dGtjbjg4dFBUZ1ZrUFFWa2tqdThp?=
 =?utf-8?B?b0VtZm14a2JEWXMyRmtXak9JYVRJeUpzaExpQ3lsS0c2Si9PUlZvRk45Z1Jx?=
 =?utf-8?B?YkVyTzlPNjFYMENJaVJvN3ZZQld3ZXNYNy9Zbm5NU2cyYUVLS1lFcFNRbEYx?=
 =?utf-8?B?RlRHeUExQklCWlFGYnpSNE9GSkphOXNtUUVJZVJDWUtGOFZrdld0ZVNrTVJE?=
 =?utf-8?B?RnZUbzdPVmJyRE1GU2N5OFhjajRwdFhqVkNNT1ZUblM5S2hWN3dQL1RkWDdM?=
 =?utf-8?B?bUJTcjNwUUxrVnBhWDcxa25OZXV3TGxiM0tvNFV4NGs1Szg3Q0drUXk2b21H?=
 =?utf-8?B?c3pzNWEyMEVZUGovZklRdFppRGtLcHlFSlpkRllFdFEwblhYTkFkUktTcVVQ?=
 =?utf-8?B?SVAxbW50WlNSRXhoZE9HeTRJYnRVUVFnRW5QVXRXaUtnR3lZbVk5ZFhJc1pr?=
 =?utf-8?B?UUh2eG5SbEZaamZnT2w5RFF4U0ZaRVVnZDFnYmt4RUN2ZEliVzFyM3BnRmdP?=
 =?utf-8?B?azlaNy9HTDRyTE5uNjRuWjMxVWlHL0E4UjRHcDRpTnczUEFYek14TjJZTkZt?=
 =?utf-8?B?VUZ4RnBMWjJ4Mjl5N2NFSEg1cW9hNVlaTzFobmV3K005MVJXODBKWFcySVFK?=
 =?utf-8?B?VTF5MEVoeS94ZVp0czZkeGtuUU9FeGdCZFN1dC9EYlh3UG5kbHRGSmxkQjhu?=
 =?utf-8?B?czFseXNiZ1lWaGxYL1U4UG1PTjJIOWhNYlRndFMrT29JODV3Y1IxZWRyNzIy?=
 =?utf-8?B?Y3h0TXZBQ000ZVRUeHpWTHBkazcxeUtVOWNNRkRBYWc4VE5mU3dweUFUS0Qv?=
 =?utf-8?B?U0hRQnhzNFlLTUZBb2pNRkdVTWQ2RXllOG5kOXNZaVlHUVpnK1NpRTNtdU5s?=
 =?utf-8?B?bFBPREFJZWI3cTIraXcwb2hJZ2V1V1BJNWZaZkY1RmN4SGZ3SU11c0d4a1E4?=
 =?utf-8?B?V2RCajBzTEdXTTkrT1RZYlk0ODBZSjBhUFAyNndKY24rejlxL0FST2JaM1Vj?=
 =?utf-8?B?aTlKZFdiSkNEWFhmVmtQS0VVUDRYcXNOMUk5QWRwdk1hT1RMZXVUMEM1N2JZ?=
 =?utf-8?B?Lzh4VWY3SjFjZGZPRmtaYXVGaGFwMWpCZk9YTWYvVmJhQnAxSDBoaWNpRjlq?=
 =?utf-8?B?ak50OUpTZEdTSkY1dDZMbXlXU25lQ0JpbGNFVk1ubFhiMjdnNWNOZ0lrTDNS?=
 =?utf-8?B?bENzTlJqMytIcENYdVNZbEM1OTNyWVpNOFdWSFNrKzVaeVdLbTBKcFNFVHpD?=
 =?utf-8?B?NGc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 157ea4e8-a83a-4fe6-13f5-08dc74a9c9cb
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 06:39:36.4520
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UC2l46nv6xPt2LikuCSUaJWcbb5kTw7kgTVIx7wgtSymiYL70g0SGSRhNEpTWeRh2CDL1S3In58DU7MlMp+yJIpP5r3w8Rf0nyOG1W+RCWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8816
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_233944_475822_406D469D 
X-CRM114-Status: GOOD (  15.75  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: boards: wolfvision: use state_by_alias instead of
 opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 5/15/24 08:35, Ahmad Fatoum wrote:
> Hello Michael,
> 
> On 15.05.24 08:29, Michael Riesch wrote:
>> Hi Ahmad,
>>
>> Thanks a lot for your patch!
>>
>> On 5/15/24 08:07, Ahmad Fatoum wrote:
>>> This introduces no functional change, but makes code a bit more compact.
>>>
>>> Cc: Michael Riesch <michael.riesch@wolfvision.net>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  common/boards/wolfvision/common.c | 6 +-----
>>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>>
>>> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
>>> index f483918cecfe..5484a8ac6b06 100644
>>> --- a/common/boards/wolfvision/common.c
>>> +++ b/common/boards/wolfvision/common.c
>>> @@ -62,11 +62,7 @@ int wolfvision_register_ethaddr(void)
>>>  	char mac[ETH_ALEN];
>>>  	int ret;
>>>  
>>> -	ret = of_device_ensure_probed_by_alias("state");
>>
>> Just to be on the safe side: of_device_ensure_probed_by_alias makes sure
>> that the underlying drivers are probed, right?
> 
> Yes.
> 
>>
>>> -	if (ret)
>>> -		return ret;
>>> -
>>> -	state = state_by_name("state");
>>> +	state = state_by_alias("state");
>>
>> state_by_alias, on the other hand, calls only of_find_node_by_alias,
>> which (as I presume) does not ensure that.
> 
> Yes, but afterwards it calls state_by_node(), which calls of_device_ensure_probed().

Ah, nice!

>> IIRC the of_device_ensure_... magic was necessary in our setup, but I
>> can give your patch a test during the next round of barebox board code
>> cleanups.
> 
> Yes, I ran into these problems before too on a deep probe system, which is
> why state_by_alias was added.

OK, this sounds good.

Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks and regards,
Michael

> 
> Cheers,
> Ahmad
> 
>>
>> Best regards,
>> Michael
>>
>>>  	if (!state)
>>>  		return -ENOENT;
>>>  
>>
> 


