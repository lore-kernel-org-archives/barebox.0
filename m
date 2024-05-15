Delivery-date: Wed, 15 May 2024 12:29:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Bsb-00FfXx-1a
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 12:29:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Bsa-0001tt-4O
	for lore@pengutronix.de; Wed, 15 May 2024 12:29:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3P00wCLl4vx6loy6Dx26tpzoimmU1PHubxc16jbaTQ=; b=PSbWQXCcRwWWgKr7qPivX3XlI2
	Ulu5cbc6TWGZ5cS1Pj5HkBH+5ljI/qheUriqmmUge/lRdoBYzFPGeB3wZ6E6kVOlbieocIHlg5FEB
	2Lv+NK8nSNKsD5vQ6/oefSkfFq3cN7QcEjbgcwy4bYgQITWNUWCWWuE0SAqCf69G1lB9AKbx+Qz+2
	UDoBP2lvizdasx3UBPivo2Cd2VLDr+RFfzgdCp5cpA87/ru4LmYMZn8lYpSYbVZxOdjS0Ptl0eUUd
	NNYr2WkINzjW/rOPuj13mkiGI5OG0yQ657cV+SRLk8us2U8ihR9ao2nF6iOKgUOuIGizbSDAEb+/u
	rMDt97Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Brr-00000001EUs-19k8;
	Wed, 15 May 2024 10:28:15 +0000
Received: from mail-db3eur04on0721.outbound.protection.outlook.com ([2a01:111:f400:fe0c::721] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Bro-00000001EUN-1cQw
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 10:28:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqUjpvshN5i6YIH8lnDEbplTWNrTTQDTDvVRHQetYNm9YhZUlnT4HykIfW0cTEf25Mb37vL5P+UCB2GwtU3hf68MMy5Xm+GZqDxhlZMuTZQoqDSnVcgREE3JPSVfJpzb/c6PE4L4d3gdqNVQQSKNp8p08VWTOCiRKtwRT6jjFnTik0Uc3Pk4rXCybvAxWPZZpABJS/Id45Hib45eRtOsSeSERMs66rWco9PF3ciQ80aCkQWSJwdXfod/5M0HdyocmaVJbfLqDtfqqISomdCf2wEwcjY4QMOVlW1pgJE3pnbJXLkeg50VKTQhbsepe0jYygStyEl0XnoeYSP5c8ThcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3P00wCLl4vx6loy6Dx26tpzoimmU1PHubxc16jbaTQ=;
 b=G9QqJBYxG4ErJzLwatNlVIUSAueUgT07mAn32lJ1Hpsj3S2C+axEGSMuKHPgM2BBrJZ1m3zGH3fxrEzWcQCxWP1+97LHvJRF8t4IUJXIlM223MTXq9lxpJGzdNKzkTAifFCvZ5SnpEBKnkPgoqIlJySzS+elDSZ35YrFS8IYfGWd7moSKrgiwkwK0gnLoPdXZbDdLakVJNMW/zGbSoj8syU/uI5bdFTpT9KFc7HN9cANKAKbDaIeAKBsq0CPiflbBCb5ON18LLsg/qWFZAG2/qRb83bpDK8h7EKKnQLmWn/rXUw1r2TzkmqcTN51cA1+5RfKjHH264E5gw6dHuaPBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W3P00wCLl4vx6loy6Dx26tpzoimmU1PHubxc16jbaTQ=;
 b=cSwNbnVx7NiwhI6r7OXzsxj3B651EeoUlHJDE2JiD7a+jdrFXNk6tJt8MsK/ilGAoHcRy+9YL/VYOQE3HXhLfMVfWtbsHC4ngUFLpoVMfxlHnZHH82okyPR3nyfUvtQ2zeB5lBjPhz7QmPrZiiueHqcg+rBRp+TacNjfMVTw2FU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by FRZPR08MB10926.eurprd08.prod.outlook.com (2603:10a6:d10:13d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.54; Wed, 15 May
 2024 10:28:04 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 10:28:04 +0000
Message-ID: <fbf8bf58-82ac-46cb-9af2-6cd00fe035fe@wolfvision.net>
Date: Wed, 15 May 2024 12:28:02 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
 <20240515-b4-pf5-fixup-v1-3-a58c8ec94f48@wolfvision.net>
 <24dd4224-2eb0-4e04-9d5d-9650901fb3e5@wolfvision.net>
 <4230607b-02bb-470f-bc8d-5968045f833e@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <4230607b-02bb-470f-bc8d-5968045f833e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0114.eurprd04.prod.outlook.com
 (2603:10a6:803:64::49) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|FRZPR08MB10926:EE_
X-MS-Office365-Filtering-Correlation-Id: e7181b2c-12d3-4760-5c36-08dc74c9b42a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NW8vQzF5bGIwVWEvRUt1WXpzWnBuL1F0c0F1ajhmYTBZQS9xdjliV3FmQ21V?=
 =?utf-8?B?Y1U0NFp2ZTZPNXZSYlZyd2o2TGxHcTNYQVdrekJwckpwTFJjRW94ODUyYkJN?=
 =?utf-8?B?VGN0MW54N1Z1Uy9YdDdORkNUVzEzdUswK1VFSzJLVStHYmFITXRhKzV3L0ht?=
 =?utf-8?B?RTRmRHpZNGVuN1V3bG9BK25YcG16WGg1MllPUWs4YkllcWpwVTdybTNidUFZ?=
 =?utf-8?B?bFIvSC85bmllS2FEYzZUenVmWXRvb0R2bUFtODBvd21ISTAvckM3eXdsbUdV?=
 =?utf-8?B?ZTVZY3BoaDM4US8wN3lzWHFNTE83Q3ZEM3l6RTJYdG1vQ3I5aU5aVjRDMys4?=
 =?utf-8?B?d0o0dWxxWVdITUhYVVBWajVWc1FhNis2Q3RaWGZKRy8zRGxKV29Qb0tSSTUy?=
 =?utf-8?B?Kyt6OUhjMnVNbHhJMVJteFh6Rk43UTlIRW9pUVl3KzVIMWNVMHNQOGt6NmNy?=
 =?utf-8?B?cXNwR3ErZXZzVklqektZWVNJZWhycGEya3JpcHN3MXJOZDcvN082bTBJai9M?=
 =?utf-8?B?WjNLeGpjcVkzL1p0TWpsVkNnb1B4TU1xd3VQa2VxQjV2OW1RRC9QZytSTytk?=
 =?utf-8?B?RUV0S2I0ZndRVjljZW1pVlRPSjFSVnZvREdnQjhPNUtPQ1RCK3RwYmNiYmdu?=
 =?utf-8?B?VUZ3MUp2RGRFbEkrNFNtdjdXNWl3UTFIMVhiREk0VG9jT0xUQ3ovdjcyNWov?=
 =?utf-8?B?WkNZZW9UWVNvdkM0eVVQcEl2WlllM2pGaVVBd01EaFJEV2Fzc216RDYrNzlP?=
 =?utf-8?B?SjNvOEZzanR5RUk0N2I3d2lUQ2ZYRjlzU1E5OFIxcUo5eTN5WWVNZWx6Rmhj?=
 =?utf-8?B?NzNrT1hCMHNsSk1vcnNCRFV3Z1hXNlpBWTBPR1ZVbE1GNmRnalc4Sk5CMnN0?=
 =?utf-8?B?QU5Qd0VocWMxaFVZUlpPR1I0Tmt1bEF0YVdQSEtvUWYyUlZqV0xHekRGMXo3?=
 =?utf-8?B?bDlxRkJZRWdmbTkyUXI5MGg3QzgrdkJjeXdxLy9nbWFjcHJIRGQ0L0ROSHYy?=
 =?utf-8?B?bWlhSjMxYzd6Z29meVpJVGFiOXIvL1FhVXU3VENwVzZ2SjUzYzNQa2Jhd2pF?=
 =?utf-8?B?K3FGeTNvYXplbjIwYlpySmNBVllWR3J3T201bEFnL2xYOURtWCs5a01nNmZO?=
 =?utf-8?B?a0N2aDZSSkFseEVLdVF0YlYycUk4QU9WOW9ZNmNLMlpwWDVvb0RFN1ZpYlc3?=
 =?utf-8?B?VGZqU2gvVGFnR3F3dWwzOTdDUmFrYkxnaEQzRGJRU3QwSGwxdlJwUGVzNUxQ?=
 =?utf-8?B?d1RwZm54OEdqQ0VyQnpXVjFhT3VQZ1VaV1BuT3NESm96U2Vnc251bmZRZTVN?=
 =?utf-8?B?czRPQWpwRWlaMGNEalZyYmNnK0JwM2Q5VHpTL2VqSzVKcm84TjUyZW1veEdN?=
 =?utf-8?B?clJYdmJSQW5EQ3NYUzlYZHpBUjhUTU9YUVZ0SlZYQlo3NFlNM0RFRHZzbG9D?=
 =?utf-8?B?N2thY2pWMWN6MGFzSEVaR1JUZ0xWRk85azJqRDdBM0RCNTNydGJPR3EyZHIy?=
 =?utf-8?B?TDdiZlZBaUZJNDZMZGd1MzBBdDBJZk43aDN4c2dabThTZ2dUQzFKS1gxemJM?=
 =?utf-8?B?M0Z2cVpoOHVJdzlvSjB4WnNnYWVBeUFiOE0wQmQxUFdDZnYwc1R1UkhNaVpu?=
 =?utf-8?B?M2daTjJ1aGZxTERycGptVG5lbWlKcXNJMXRPdzk2dzFiY2pua3hYTHdsSURF?=
 =?utf-8?B?emF2YmFjMEdvZkZVNkRGNVpEWFlWdnBNMHc0UTBMaFhaVnh5NGUwV25nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3VHSEVURnhPTDMvR3lRTEVoZDZMMzNNYTNGNHlKaGIxK2ZhR2tCK096ZHhs?=
 =?utf-8?B?SHlhLzliREhWR2h4YmZWQWwyS2dSQjliZWx3TndlekFxR0oydG4rK09tcGZM?=
 =?utf-8?B?WUE3MWVuS29MNW5QNll5ZjhZTVJFd29xRHcrdXh4aTdLc1NwajMyemdlV2Rz?=
 =?utf-8?B?U3RDaHhVc2xmT1psaEpHTkxIb3dBZHdnUjlkU3JrL2FDSEEzWDJJVjM5N3ZI?=
 =?utf-8?B?MG5haDNNeitUWFBQRnFoVnVBajlwQkZScmRJTENzTFI3ODJVVmw4L0NRWVdG?=
 =?utf-8?B?Tk5NdDJ5VUtUaS9MNGN6MDA4UEFnSjBYOUd4aGg3RU4vTC82RzdPbjhWeXI5?=
 =?utf-8?B?TTR5OEJIaktPbVZvS2dPOGV5eUtnOVhCNnNKeExtZDNnMHdlUWtvOENyeWl3?=
 =?utf-8?B?Z1dwd2w1SUg0TFpkQks1dUtYb1dVOFFuVVEwVmEyZ29xMTgyNklDdjRhRWVV?=
 =?utf-8?B?dDNNS2lndnMzSzJ4aUpIb2xoeTM5VDcrZ2JGNmI3QXdtY0F1Zzg2a09iYUU3?=
 =?utf-8?B?bGkrVExHUEltN1NLSW1MSnpFQ3YxZkE5anZzbmNFZTAzV01CWCt2elJzemlE?=
 =?utf-8?B?YjByMDZ4b0dkenFrMnl1WDdnV1FTaGFvbkpBYUkvNjV2ZHRXUkNUYnd4Y3Ir?=
 =?utf-8?B?cTh4WUhHMGhKNU8va1kwbkVkN21TbHhvbW9tUitkeVF5Y2N4VE92WmtGYlJu?=
 =?utf-8?B?Szg5RGI0Y01TZ2cwTXFiNjFldjFrU2dWaDN0NC92NDhCOXc3K2VxdnZRY2FL?=
 =?utf-8?B?MTJycVNiQ01Lc2YyUjdybzdmREtjLy80U25STWpzYTVQQnUrcXc0K3Bxb0I5?=
 =?utf-8?B?NmR1TXRFY1lpaEMzQ2JvM1E0cTZINXJpODRKVGlNam0zOEs5d1B0cXVWUUZH?=
 =?utf-8?B?TWhTTE5UZGxVQUZNNDV0MDV3Q0luOGlwWGxzeDZ5T3UvQ2NiMFROYkNmQUtl?=
 =?utf-8?B?STUrTkQ1alU0TE5LWkRjeU9WbjRVMEJwOSthUWpVdnYzZDVGbkRGVXczZC92?=
 =?utf-8?B?ZnlVNGEwVnRLeUVCb0VxT3Y5c3pTUUdtRGRSSU4yakpwZUVYZ0J2QXNHSjZj?=
 =?utf-8?B?K3cyQzgwaFBQYTk0b2lVcktSM2ZTSnFRQnQwUmRwT3VsdWNGSU9yd0IrcFhs?=
 =?utf-8?B?VG5GemxtbDJNNGNrNWhCNWJMWDJRNHJKL2VRejFPZnhqYTNLbTNvbnRtY0R1?=
 =?utf-8?B?OUVlNmE1Q0ZkMW1GcFQxYndLWnlScjE0QUlvNDVSZ0xYQnh6cEVvb1BKVWhn?=
 =?utf-8?B?QXdVbVNreFVZU0hMYlNBb1FJRTJ4MGJGd3A5bHBiT2VZT0JwNy9yRUFibFVv?=
 =?utf-8?B?QVFzaUk3cjZ6elJ5VnNBQnlSdEx6eCs1YzliMTZJQTVBYWdOUlY4QktuRVVi?=
 =?utf-8?B?VkNZMGVxL1Z2Vkpya0F0YnZJRWhVZ3NzazZvV2M3MkoyWkhKRnNSMU5iR09o?=
 =?utf-8?B?WWRqLy9IeEdKRExzdVFNa1lUSE05QmI1WkI1WnV1S25YWFJrZXZIRElobW54?=
 =?utf-8?B?QVJjNkhJUTdCM0M4S21tbnBTYU9sVW05YS9UdXNlcEZEWENrWjBNRUMxb3JP?=
 =?utf-8?B?eE9kb2RQNDdhRVAycW8xaXU1MFJSa1Q0aUFqMHBvQTI4cHVmNGxud2xIRkxD?=
 =?utf-8?B?N2FBZmJQTlh1T0lxeVZQbXZlZUpYUUZ3cEVDOEZUS05ZbVZ0Y1RDZHJWQnZI?=
 =?utf-8?B?K3J6U3UwcVJ1NzhqQjYzelJ2bWxadWxSMUdvVmNKbnF2b0JWYS9EeGV1b3Uy?=
 =?utf-8?B?ZVI0M0FLOCt4WGpCVmZpWTdLOENTN1cwVkswMDhOelIycUU3MitQTFRteFdS?=
 =?utf-8?B?ZnNjVmpxbEhSZDdmNmh5dHNYSzhZdGtaRmV5V0VoTXZkMG5wbDRKa3hMazRH?=
 =?utf-8?B?M3dGR0JDZlVNejN3cFR3ZjVxclZlTU4reFdCK2kra25uZ2JiZlNOeTM5NG94?=
 =?utf-8?B?TjNtbUdGdWhhMDZhWDVXQUl0TmwwL3VGVVhFR1FBSlZzdUN6d1NxejV6NnZS?=
 =?utf-8?B?M3JuajA3a043VVBDdWFMb0lmTVN5TFFkR0dlM1FqMXhzV2RwemdoU3VEQjQ1?=
 =?utf-8?B?UUlSZ2x6Z29RYWFFT3RlRklGREp1Znkrb0pvR0NrTmp3UnVKQWNRTmlxQ05R?=
 =?utf-8?B?a3JwdVNKVmpIUGVMc3Rpek55NE1BOVIzZUx6clRlNXBMWTdxakE2Y3JPdy9O?=
 =?utf-8?B?YlE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e7181b2c-12d3-4760-5c36-08dc74c9b42a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 10:28:04.0239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++vceSEXS8lgd0yr5oPXHA2IAwke0DQDj3Y2xfUwqX+YnX1WCjLJuNlwsLDekFWBB6WlH/YIcs1GTZOmwUBwRR+E+mBaQE1BlBZ9y0HuXNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRZPR08MB10926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_032812_492649_745F4CA8 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/3] common: boards: wolfvision: fix handling of
 overlays parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 5/15/24 11:14, Ahmad Fatoum wrote:
> On 15.05.24 10:32, Michael Riesch wrote:
>> Hi all,
>>
>> On 5/15/24 10:00, Michael Riesch wrote:
>>> If the char **overlays parameter to wolfvision_rk3568_detect_hw is NULL,
>>> the overlay file names are not collected.
>>>
>>> If overlays points to a NULL pointer, it is initialized properly with
>>> an empty string. This is convenient as the call to
>>>     globalvar_set("of.overlay.filepattern", my_resulting_string);
>>> that usually follows actually resets the global filepattern variable
>>> from its default "*" to "". Thereby, a paradoxical situation in which no
>>> extensions are detected but all available overlays are applied (due to "*")
>>> is avoided.
>>>
>>> Nevertheless, it is still possible to pass an existing string to this
>>> method and let the method append overlay file names.
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>> ---
>>>  common/boards/wolfvision/common.c | 5 ++++-
>>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
>>> index f483918cec..6cb76250dd 100644
>>> --- a/common/boards/wolfvision/common.c
>>> +++ b/common/boards/wolfvision/common.c
>>> @@ -20,7 +20,7 @@ int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
>>>  {
>>>  	int ret;
>>>  
>>> -	if (overlay->filename) {
>>> +	if (overlay->filename && files) {
>>>  		if (*files) {
>>>  			char *old = *files;
>>>  			*files = basprintf("%s %s", old, overlay->filename);
>>> @@ -115,6 +115,9 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
>>>  	if (ret)
>>>  		return ret;
>>>  
>>> +	if (overlays && !*overlays)
>>> +		*overlays = basprintf("");
>>
>> Hm, apparently this gives a compiler warning "warning: zero-length
>> gnu_printf format string [-Wformat-zero-length]".
>>
>> ... = basprintf("%s", ""); ???
> 
> xstrdup("")

Well if you insist on a straight-forward elegant solution... :-)

v2 coming up soon!

Thanks and regards,
Michael

> 
>>
>> Best regards,
>> Michael
>>
>>> +
>>>  	for (i = 0; i < num_extensions; i++) {
>>>  		const struct wv_rk3568_extension *extension = &extensions[i];
>>>  		const struct wv_overlay *overlay;
>>>
>>
>>
> 


