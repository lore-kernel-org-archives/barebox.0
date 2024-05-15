Delivery-date: Wed, 15 May 2024 08:30:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s789d-00FRDE-17
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s789b-0000Ns-5U
	for lore@pengutronix.de; Wed, 15 May 2024 08:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QvUYwkPxzLdrptLlXZvUHuZjqwWM7yg4Rjv2JtzlOTI=; b=bJjmuJmi/QM6kNH34wSWONftNl
	wD3LoRSzjk+KdCKDoTXDbbtY8uVzGCuJAcANvZN93n0Lp/qy6GTYCxCcYxGwdrAXJxv3tlU+8q1tc
	mz9kfxbsItXSug90EnLvLCsSun9giAsIfJNZy/gl+p0jFdkZ2L+uwJ5KHyQ1O6haDcBkm11SSaxew
	6Xx7mugDruJ96fWBdIab2BeQ8eFibRtSavFps1htPYV6Z1QaOVvkVD5AVgU9zW5fiwyV9Nz3GhyXq
	eq9Hsu7JHBrU8OLVEwD0c4xcaXmPM/u21cIFy+bYMKgjJ1rsVCyIsns2565Ler85MJcFrD8TjrjbH
	b5Yc3Pgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7891-00000000eVb-0fXR;
	Wed, 15 May 2024 06:29:43 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s788x-00000000eUd-3onO
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:29:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUMVSAJV5YftWgRqlzmj2x08An7wS4fJ/LCuJRDbP5fSfcQmDUkxflSwfyRSDd5RW1YqovsEQapiwGgg6aA9Y9uQAX0dfcTvJfqn6bFzcnI/WKokusCrhqkdXWHqU8xMNPzztRmIbg91VN6O+cn0WkIoZKtL6sXhCB32xDrvZT+kL6sxC2sWwz2i3aLBHgdlSgUp/x0Q05cYngeD6B9svbnxutFAZSqayTnxXaTJGnIkqMkgG1P4HkY5GiIdvqETD5wG9a+SQufRhPcrpQzqBbtvfgA9dLJFasQNWK1CMu6cGrAl68uEf9TaP3tfrIM0YbXTRSgChzgo+tsuYm/eUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvUYwkPxzLdrptLlXZvUHuZjqwWM7yg4Rjv2JtzlOTI=;
 b=MqGo8RpnHuJuLlHQvsh9gctPAZeMJGOEJBBhWu4z05Nh89IFAK7xXA7VIgboF0ZVuxMjsVNh0t/xvLDUPRTwAZTuqzPZR3LGdOMD5mk7TaVIUZSn23T5gbcvLuAy5rahiaYZkFIFZaiDk1qcWjaLb881bEsEmvZ9abdOTB6pW2XiFq811izXHjR7yBS2XypMvvtEvoVczDIK3ba4KF3YGnQWBXl+aRlxHkV5ROlPl9rcbhA3v7zxXgIXI00XPV9QMn02ZhcZNrU+rh6o6Rj44nuE3NL665MlNEEMdryiOnPScNojGMYeRjBpq/fmGG7GyvWCcoD0hfFnTxUuhD6TkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QvUYwkPxzLdrptLlXZvUHuZjqwWM7yg4Rjv2JtzlOTI=;
 b=oA/O3zbZ1TBUHdsge6nsgo0zgvvHI1661UkTQRduY5HZxCf5+OnbolNEmgCNBWwIyn7NaVq3YZhxdeXGBHWqiCwKe0vr9FIQNrVbLERLqoblzyViJAm51bcFBBwcN9YiJ9OTMSWDNBz7mi16et2qiX4fmr4imlOcwQHen8TkT2k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB8299.eurprd08.prod.outlook.com (2603:10a6:20b:56f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 06:29:28 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 06:29:28 +0000
Message-ID: <008b5e2e-85b9-4a15-845e-70af7809f769@wolfvision.net>
Date: Wed, 15 May 2024 08:29:27 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VE1PR08CA0007.eurprd08.prod.outlook.com
 (2603:10a6:803:104::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB8299:EE_
X-MS-Office365-Filtering-Correlation-Id: 79649724-a09d-410e-b50c-08dc74a85f5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTlUSmJ1TzZoa3JwVVNLYkthUXFyUzl2WVN6RmpNRU5IREtTMFFodGs3Nllp?=
 =?utf-8?B?U0lYLzd2Qk8wZUE0bVNmaFBoaG9Da2cydldpNmZsN3RERE95c3NWVi9ldjZh?=
 =?utf-8?B?OTdDRUhicW9GMWtyOUw2b2dxNXJsM2dWb0toWGluMStTYkRZZ2hBMjMycnNG?=
 =?utf-8?B?RE5RRWVhemJ5TjlleEpVNEluazcwL0dVZ1p6OXd2ZjQrR3M3ZmptQVV1dklI?=
 =?utf-8?B?cWZZWVgraUdXNWpsOXByR1VqV1Y4Vng3YWl1MkdDY0FBWVIyajY2T2krdnFD?=
 =?utf-8?B?NnVqQ1J3cXdkVThCc2dIRjBPZnN3T1U2UjRHclUyR1MycHJ3MWpmNHg2UUh1?=
 =?utf-8?B?dnNHUExFT1N3dVB4R1g0VkowWE9wQTNYYzU2OFRsQmdPZGZCOHd4b1dMdTNZ?=
 =?utf-8?B?S2NtRk5uSHgxMkJLUy90cHhxNXJ6V3V5R2xHUDlpNHdSR0RzTlM0SjJwbWpP?=
 =?utf-8?B?RHpLNE16QXpsV1VDUTZENWw3dEVoRlBXa1VjRUJLb2ZSSzMzWHp2QmdQRVF5?=
 =?utf-8?B?QTJiL2hTVHB4MnByWVFsUEU0d0wwOTFyTjhBTU4xNWtMMDdUSCtvYW5KNmgv?=
 =?utf-8?B?SnlIN2FuRFE2c0E5UjZ2L1BZQmx1aEFIc0VTdmxGdlJXS1JPQTN1a2dwRWhi?=
 =?utf-8?B?a0JHMDVvR2FUTXB2QVl0eVdncTFPWWtHZXBIK3JKYlhpMkRhZDFTUlgxOUFR?=
 =?utf-8?B?TGJaNFNkS1JOTHhGUFlZNHZSTVZVWUpkR3FlQnJWcnBBYk1OK3ZlbGVUT3gw?=
 =?utf-8?B?Q09WSFlFbGZjY05WbXl5bGprT3Y2RXdXYXRRZDdoOS83ZEhaM0Zxc2l1Rmsz?=
 =?utf-8?B?cEwvVEMyL2w1WURTUjVWbjNzWUp3UzJkNGVqQ0I2TWNZUW1KblJCWWtBK1pG?=
 =?utf-8?B?MVhuNitEMWExdFZHcUhRTW83YTloNVJEZGYvdzdEV3pmMDM1ZTdHMlpxbFg2?=
 =?utf-8?B?U253Q0l6R0lRUWRtdWRacXVEMTBFV0oyMWRuaERCS0pqVi9vVWJJRzlPc1ly?=
 =?utf-8?B?WkcxbkNEbk9GWk1lUGRUSGRjSzBnbkp1Tk96V05hM2hyREJaQklVbWYxK3Fz?=
 =?utf-8?B?bjU1YmFhYWFra0hYd1NSVGRCVHJiMEVTbUVxMEQ4dm12OFVzc1lBUEJBWGJ2?=
 =?utf-8?B?NWhnMkczdlRlYlZoOUFMa3hlTDQ5ZmZ0bjZCS3RHTUgvQ0xRd3FhWng4dWxR?=
 =?utf-8?B?SUpHczFRSWE1VEhoNXhNQThHVEN6VGs2UnJQRW40K1cyRm5UNW5xVEdsckhM?=
 =?utf-8?B?bzFyekt0YzNTMmQwendyajNFdjBsU3hBdzZCWm05OUViM0NSeHcwRk5tNlMx?=
 =?utf-8?B?elhLOGdaR1JzcUVUTjZoV0x5NW01amdxN2dJSGVGTmladWU2NURVblBiOWNi?=
 =?utf-8?B?TnJNSk9nRXVMc3hyMTdhTjV3RGJXemp2c2E0M3dkMFRNNnB5blVhY05JdmN5?=
 =?utf-8?B?UDNOQTJWSDZ4N3JTVmVUYmJLVC96TlNmcG93eUtVN0VtMjhaRmFUUUV2Z2hF?=
 =?utf-8?B?amt0Y2hjVDNQeDd5cldSeTh0UlpDU1FnWC9INXpRUEVFL09RUUJJdE0zdU1a?=
 =?utf-8?B?aXBYamNFa05PbitlTXBqUXo2T0ZPNXZjcGZYTWIxQjNHc1B2cDNYRktpRzRL?=
 =?utf-8?B?Y0czQWdqNnlyRkJUK2RzY0s3OU8yUDlGUFlZT21uclcrR3h5NVhJMkpvcUw4?=
 =?utf-8?B?YTdXQkFON213RHFxWjh3RWRCcGNyR1UxcXVPSEJBTFhVeDlMYy9aZzlnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFNUSnJzQ0FBMExqR3RLRDhtRGtzSkRjM29YZ0tqSXpCTGRpenhNWG5aWU5T?=
 =?utf-8?B?R2tQVGJrYVh2ckZzSFp2OFphTElsQ2hqRjcwS3BldERmcEpENU1rRldKZTBO?=
 =?utf-8?B?UW5HTm1FUHI3REg5b0JNRTVqOU5TQ3Fyb2RNOUNlbGJjM1AwUjZKeFI4Q05H?=
 =?utf-8?B?U0NYTmg0aUtoZ3ZnaytEYVl0ZW9mMDdlZ0dEY05IUHcrbSs3UUpWanhJUmls?=
 =?utf-8?B?UWpwcXJhT1l5WU9vQWdudW5EUXp3amRFQ2FlVm01V2RIblp1SGtYc3VhdFlT?=
 =?utf-8?B?UmExRzF4ZUsvWVZFRUVZNUtMMEFMU003QjlzNXVCdnYrbVp5S1dHYjdaa2dx?=
 =?utf-8?B?dmdSSm9TSnAvWHFTelZqL2cvMkY3anBIam9sSUo3VkhWS1RuQytObXE1VnEr?=
 =?utf-8?B?TGpKS0RHZ0dLbXBtMXYzZ1BEamRGYm53bld2enlKVmRvZTIyQmxmWHVsLzMz?=
 =?utf-8?B?NWlyOE1RbFRkUW0vd1FDNDBIZmdkbnIzMWhZQlNTYXJRNWVZTjMvT2FreWpn?=
 =?utf-8?B?NkE2Y2tKSy9OVjJQZ2MwYkwvdVlMaG5SUlc5dVZGTkx4NllNWWVRR1F1YnIx?=
 =?utf-8?B?cStIQ3NXOEVKd0kxOWtqdFZiUXVMdkwrUE1kbFY4RENmM1k3dFJ5QSthOFJK?=
 =?utf-8?B?SHd5b0o4ZGJOTW05L1l0cDdrTnRkRUtRTHhVL3VYMTcwK0pwMU1kaHZuYlhQ?=
 =?utf-8?B?amZ3RUdNQzFSOVpnZndzSjloUDN4ZThmejFsRVprcHd5ZURiYjBRMkQxQVU4?=
 =?utf-8?B?YTcwLzJmc3J0VVhyWXczbG1TaVpyWC82VnBiTXJ2bTlRcVZSNWtmQktoNzdF?=
 =?utf-8?B?azdPdEtMZURkc0VvYi84eG9MVTljVEJJbVE5UWxweWpRa0FOdW9jMFdsMlgr?=
 =?utf-8?B?ME1hMm1BRTF3VFAzdHhUc2Z0YXdFZXplay9DeCtKTWkvRkVHZGZWOFFUYmlk?=
 =?utf-8?B?YzQ0Z2RYZDhjZUd3VXNjTTRhNm5aRU1FTTFnU3VhVFdEbCtRbzAyMjFRTmcr?=
 =?utf-8?B?SEtwM0t4VXRJL25aaFZDRXpKYis3Zmx1Ly9ZQlZMelljRkhuR05WRkxoajlo?=
 =?utf-8?B?djZnNTJSN0dqM2ZNWkduUUVnUXJvVis1eUNHU2pET1FsYUpsYzBiQmdZMDZC?=
 =?utf-8?B?aDdmaXNtOUxLaFpZazBkQmhPckg3VkZlUDVieDFKMkxaNEhac0dBcVA5Wjkz?=
 =?utf-8?B?di9WazdIMittZVNwV2plRStselYxVUhiQ2RXMW4wTnV4bXJaQS9mK2pMaUVo?=
 =?utf-8?B?R3hGMjY2NjU4K3FhL1I3VGFNcGoxV3phT2ZLM1Qza0VEU2k1b2d6WHBadXEr?=
 =?utf-8?B?bHVubTJvOHFqd3JDTzNvNGJNQURseC83dzVEU3RqYXY5Z0lFZzI0eDNZV2Ur?=
 =?utf-8?B?SkdVZ282QXptWURmaTgvcjNvcm9wRGtvMG9YVmdXdTc0NUNoNEtmYlRNcEM4?=
 =?utf-8?B?OU1FcTVBcjZNTkJIZ3NDemxhbVUvL25pbG9WRitES09rSnk5SkJScVplc1ZO?=
 =?utf-8?B?ZTBNcVMrRzdzYkpZa0NORXVoN0JOWHV1eGVvTjhOR1J6QStnT3lwcFpEdWhJ?=
 =?utf-8?B?azNHazRIOWlSWFdIWTRtdC9UdUlFV1Mza084eHdXdmhqRWluK3lyYktXbXZy?=
 =?utf-8?B?RzA0blp2VUNMT3EvK29GYU9oc2p1c2I5NUx2TSsxR3dSbXduclhEZVBIdVRs?=
 =?utf-8?B?UDN5c2pNZWpnZ0NqalcxdGtiMXFYaGZyU3FZRFlzK0dCZ2xjQjY4Q0drMnd2?=
 =?utf-8?B?ZFFneXJyVCtLTU9jTkJ5SW9kK2lGQlpCRW1pNjIrU0FkcjZ1VE4zcWl3TXE1?=
 =?utf-8?B?N1VoOVJubTJRYlppUGRqOWR3RFNNd0Q4aFpIZmd1V00wQTRpNC9qLzZBWHJU?=
 =?utf-8?B?dmlDK0FKUXlWc09rZ0Q0UXJPYzIva2pzdVE2WFhjZGtCWmlOL3MvSmtEb1BJ?=
 =?utf-8?B?OC9CYkZqMExTTDdqbW1IWEFmdE5pVlI2Q3ozL293VmJTN1RTQTkzN1ZFRVZF?=
 =?utf-8?B?di9XdUFLTklDM09ESUZMOWcvVjJQSXB5em4vMDBzVThZT2pDMW9HZHVNaW5Q?=
 =?utf-8?B?bGl2TWYrTysrZkp4NDVtSWhPR3ZuUU9VQzNGdGY3WmRxL0hLK2V0WjE2Skw3?=
 =?utf-8?B?STk5REZIMm9lU20wa3pTaU9LTVMvTXduaERmZWFLOUZlNzcyQU8zQm9RWVI4?=
 =?utf-8?B?RkE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 79649724-a09d-410e-b50c-08dc74a85f5f
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 06:29:28.4338
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GRZWkVpqwrd72vpokAIOXm9WfKaM7ZTxz6+kjHW/YST7rkOkJu2axmigPPwwX91QUJQ/+CiRUqext9D4w3Fxzax/mClKhwPzTCqNdL4Uep4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_232940_003326_3EF5C26B 
X-CRM114-Status: GOOD (  14.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: boards: wolfvision: use state_by_alias instead of
 opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Thanks a lot for your patch!

On 5/15/24 08:07, Ahmad Fatoum wrote:
> This introduces no functional change, but makes code a bit more compact.
> 
> Cc: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/boards/wolfvision/common.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
> index f483918cecfe..5484a8ac6b06 100644
> --- a/common/boards/wolfvision/common.c
> +++ b/common/boards/wolfvision/common.c
> @@ -62,11 +62,7 @@ int wolfvision_register_ethaddr(void)
>  	char mac[ETH_ALEN];
>  	int ret;
>  
> -	ret = of_device_ensure_probed_by_alias("state");

Just to be on the safe side: of_device_ensure_probed_by_alias makes sure
that the underlying drivers are probed, right?

> -	if (ret)
> -		return ret;
> -
> -	state = state_by_name("state");
> +	state = state_by_alias("state");

state_by_alias, on the other hand, calls only of_find_node_by_alias,
which (as I presume) does not ensure that.

IIRC the of_device_ensure_... magic was necessary in our setup, but I
can give your patch a test during the next round of barebox board code
cleanups.

Best regards,
Michael

>  	if (!state)
>  		return -ENOENT;
>  


