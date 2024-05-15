Delivery-date: Wed, 15 May 2024 10:01:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79aE-00FWLm-0v
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:01:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79a7-00080y-Sd
	for lore@pengutronix.de; Wed, 15 May 2024 10:01:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Content-Transfer-Encoding:Content-Type:Message-Id:Date:Subject:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lx0/kFJrL9LfrOW/I0M0uQ3RMRYRk8pxcqCLwmQHgnI=; b=Kz3A3qMPHo08twRZ08+sktKq6N
	M9+0NeZPXPahicTjK7jurEqT/kb2pbbwjqYzFMG/HksXdsyrzuoYnQpQEF/FegKfrDuZFV1Seze1z
	ZBnKuR9zLLJ+jcgIVsP/EJIwhziRw3tSRI9S1PhopHS5t7TZ/UvKgczKVTzlaDW/zbOAcLxWxxVJH
	93tK8VDB2LRXZ0ASm6XjEPsnVMdeFCGqoe3Y+TuPjaQHf58JC3gugO0JpTwdAoxMIC+NQgvF/rd1U
	4mzuECP/Iex4efTUl4fHEWW9CfYm+YnyrvPMdxC2K8zYe1kQDxxqy77l2fPnFhrJoIYU6arwP6tOk
	IjcFhqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZC-00000000s2w-08bX;
	Wed, 15 May 2024 08:00:50 +0000
Received: from mail-db5eur01on070d.outbound.protection.outlook.com ([2a01:111:f400:fe02::70d] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79Z8-00000000s1V-17GR
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:00:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8CyLopeOwXUiA5E6O0xLJ41JfYgAA0dnB2bcX0HHiEXDVKWNG3EpGqDAPKEvAzZ0H4NJX7DM0DmacTnrJNNMU1CA0yNu9S+rJaAnX68iZvGVq1iUg+1SSvns15Qql4CRdr85BuYkYC9JvziFcJo0hOA6G5MAq0lNk3Xo8N7IG47vrX4v5lHk+i88k3S9koJBY7gO1h2tvqwXx7WMQCsOYcAXJ4Zgi5F698DStFd25OGGOm3SduiHxosttXJTflaZEtJ/sJO12ldbR4gue4e50Bqs+0yHqTTQVMIkABh0wL6ZEHvq8CwZ9h+4/6sYHr04pZ/ozIACOEOQ4KRweLEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lx0/kFJrL9LfrOW/I0M0uQ3RMRYRk8pxcqCLwmQHgnI=;
 b=OPqbiY3WYIf/xaGUzuKH1kNlSlgr3SsyzyW63Xo1ipo3rv6e5mf/u+mIXwIo1oegQOog5PwuNUCAVVBr8WesjK28HLEK0PSb725T3oemip4JW4mj1zGr66e0mXzaNS/CAb3M3Cn5Jk7CX7KZe4f3HVp9oN9VWdLncVs5tjEiy0RWi/w/3pFM8d++Jb/AA6grX3DheXliqJ6uFeaqcxvP8F8S8cXxR4UFvkbbHDjBl61pmO1oyEQERO/7thzANRNMi5atiK9T8L8fVqCYrcHn2tRBYNp1LRqWDpXVJBeweBU0sH8BCmn17EpfRDfdLfwr3lObAk++A68t7cIfWsiDsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lx0/kFJrL9LfrOW/I0M0uQ3RMRYRk8pxcqCLwmQHgnI=;
 b=AtC2iGDLWBrJS8UTIQ/giacuOmr9XXtIxbJCBz+8VmiC2Zct2MK9r/aG+dDnouDlrdBPTMMDEVCD6gAindgRV5QXRIcWasaYhfNrC0RJfSVyH0BTSAgnvD5RbLhmuj3NcobQkMghisILZwfqKp+MopxFim2CZxbR0TwYqJiJMtw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM0PR08MB5297.eurprd08.prod.outlook.com (2603:10a6:208:18a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 08:00:39 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 08:00:39 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 10:00:33 +0200
Message-Id: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKFrRGYC/x2MywqAIBAAf0X23IKPhOpXooPVWnvIRCuC6N+Tj
 sMw80CmxJShEw8kujjzHgqoSsC0urAQ8lwYtNS1tMriWGP0Fj3fZ0Q1Sd+MttVGGShJTFTEv+t
 hc/mgBMP7fssalYNmAAAA
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715760038; l=1143;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=JhgdzPqd8jm3Dw1G5EAURwHXtfXeat6zyqlKADNK9/Y=;
 b=23PWfaOFuQaZzm5Ru94TyfTBBpUS1BBFBtsaJurpfL0+0r1BNtfgOMMESy1KPJoiuiT8Ff+wa
 SOye6CMu9+FDfpn2gtTcT47bghWWCnqPqDKVLixb770S88JbKZRW/Kw
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR08CA0260.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::33) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM0PR08MB5297:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e8ff64b-1d8b-4818-ebee-08dc74b51c22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|1800799015|366007|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkFsUm9oYldrZUdEYTQ5TDFTZE1GUWlXa1MwdnFkUXdEY1ZLc1F1S25PQWU2?=
 =?utf-8?B?V240SGtrYmpaNEtKTHVOVkFmcDQvQktxWFVySzdTVE5UQ0RXSEMyV2NSODF1?=
 =?utf-8?B?RjRZV1dhWElYb0JUSjJMK0hyM0NnRTc4ODhUSHhYU0xybWI3L0JmTmpKK3Mw?=
 =?utf-8?B?RlNmNU93RThaWGJiU2xCUTJISTVOUERRSys2Ui9xVGd3WW04bXRXVW0rdFZr?=
 =?utf-8?B?cStWZXF0WWtyYTRtWjZ0NENDSHJjcGl5a2ZrMUpkRVpxSXNsenJyMEhLRXQ2?=
 =?utf-8?B?QkJ3QnpYRER3c3J5NHNpK1huQ3Bua1YxTU5JV2hnVkFZcWhBQmlYeGZ6Zitq?=
 =?utf-8?B?TnJ6K3BHNFk2bDdrSXh5RmRvRzkzdUJoeG02YXN1Tk05bzJGbE5oZDI5YnQw?=
 =?utf-8?B?NGdiSUxjeDV0dlFNNDZObkNHQ096Q3UvVXR5bTNyQzVnVXFIVXlscmFwMWt3?=
 =?utf-8?B?R0M5a0gxN083QnFjL0srZ3hRVzI3czRVR3hUcWxsZlpGeUJBeWRPV0FDN0dM?=
 =?utf-8?B?WThhUTZiOGZFQVJTaXkxaTBqemRzZ2tleE9nZHdPQlpCd3VQY2w3RDFNRmZz?=
 =?utf-8?B?RU1iVTBPbEFFazRLeGdoZi9pRXNybjJJMzBXM2UxU1M0eWM5bUpPekhJZjRa?=
 =?utf-8?B?YTRXR2JPdE5VYjZ5QlJwa1NMUGp4UzJNYlNiZW40cEFlcVZTTjdqR3FrRDI1?=
 =?utf-8?B?UDFTUERia3FEQWZjL3JiQm5RMUYxUU4zYVpEV09NWUJwdEFSM0hYUXZySk0r?=
 =?utf-8?B?RjQ4dHVOVUUvclB3bytYcS9sTTBIREduNTA1MUYvVFg3bEZCd3QxamVNOUtt?=
 =?utf-8?B?TUVKNkFVa2ZMajgxZ0psVG1tNDhpRkVUanRONGZzZ0FXcUdZNjVvYzV1dDFq?=
 =?utf-8?B?WDQ1ZUVkQSt3THcwVFdVaWdzZWt2dnk0eWpaZTN1c1VvMENrU0ZmZUFmc1lv?=
 =?utf-8?B?Q0RGOVRyQkZucXpFZ05VWkxxT1VEWGoxVlRTOWtQWkdndStnbUJDcnlYOWtp?=
 =?utf-8?B?V2VQOTFQdUlGQ3dJSjR1d2x3bkhBeFRqTVNDUFQ1NHAxTVFKaHFaT0xmZndj?=
 =?utf-8?B?UEdtUnh1MyszTmhlV0JPMFQ5YVN3NWljMXZsSkIrMzRhbVRMM0hLYm9HQm5P?=
 =?utf-8?B?dGZNeHdWOTFZbGt3VHVoV0lNYjRrdmlBVnZibHlVV2NUQkZTaUplYVFPUUtW?=
 =?utf-8?B?K25qWG1BcGhSLzJMbXU5R2E0K0w1UXhmZlRveGNGMmFIOUtWQm5ZMzhQTWdP?=
 =?utf-8?B?ci9mT3RWckdVczlVbDZRcDhMSHFrR0VicHdPa0EwUU9ieEZhVWxkRWRBSDhI?=
 =?utf-8?B?ajBlKzg5ZFk1YUtoMDFmNDFjZzhkWENKRzcySEVnMFRBZVlYM2JVZklrREF3?=
 =?utf-8?B?Ti80ZWxyZVJBb2NSWFZiMmdnbE16TmdKYVpvS1NWN2QxemJzTDJqNEtXSEhK?=
 =?utf-8?B?TXJqazdXOExlUy9ZbE92dmJwd0J2YnQwNHVCbTBML3FtVEZGc1VnY0hvbVRy?=
 =?utf-8?B?Mmtsc2NmenJ3dFZJY1V1Si90cVFGd2hDaUF6SW92YTduQWdZRmJDc1VVbWdU?=
 =?utf-8?B?cERZMElESHdpNFhxR0phWG9mWGxMdklqUXZrcFNqaFh5dkx5VjYxMkNwSGJt?=
 =?utf-8?B?U2pVV1FGYjBSR01UTU0vUVFHUDdpRy9xb0l3RGEyZmEwSFFlbVhUS2JXSDRB?=
 =?utf-8?B?TTZUSDlFc1NoNm0vdFV4RERKa1creDBUNGdmYjlIai9JbFRyUktBTFJBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(366007)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWN5TnBJNW43c0kyMEl5U1hsN0ZnWGkybngxOXRsZHdFYUo4Y1Yyc1VlR2pM?=
 =?utf-8?B?L3E5QUNqVmxZb0d6dSs1SVdmeDU4S1oySlJXblkvS0hQWWFFYjc5amZITDVm?=
 =?utf-8?B?cHMyLzF3R093OHdwRmU3OVZyZ3JVempPNGIwU2RRTlNNWHpuWEJNTy9FTGxt?=
 =?utf-8?B?M1F2TDZpWjRWNndCMjZNNjFtQU43ZEJWMUs3WUc3VHJLdVRyVHErZmV4ZW1s?=
 =?utf-8?B?T2tPbXJRTmNTVVBDaFBMeWhSaml3ZHFWQTZxZFBzVHdPNUxiY2xMZnJ2WlBx?=
 =?utf-8?B?VFZzeGtSOFB0Zng3ZEVNa2Q0SU1FeG5RbXB1UlNYd2dnNnczT1VMZjZWRFlv?=
 =?utf-8?B?cXJEVGtTWGIwaE8xazNpWUFEdDVCMWZWc09rNlR2STlaS3RBc2IvbDdJbEI5?=
 =?utf-8?B?aE9kUnlNbWRYMHZhTGp5ckJsZW1lTlo2OWs5M0dNUTIwb2hKQ3JtbEhQZitC?=
 =?utf-8?B?Wi9mUldKaFpzMXh5ZGpmRmpxR1V1NGlHL3FjaUd4YkxySnlsYlVKMkJ4Vm1U?=
 =?utf-8?B?WXBWUTJKQmxzbW1QejAyYjRveW05N2liL015dGNPYzFLMVNtOWM5bUZhWnFu?=
 =?utf-8?B?bUdNUXQzSlpEN1l3OXZlVEszOStJVVJra2twMlN0WFlVUjY3ekdMVEowUVM3?=
 =?utf-8?B?SWNIRm5mV1dIc08wekdJT1VTdVErR1pWRnFhUU52enhpTWFyQjRyeWdUbUVa?=
 =?utf-8?B?QnZlVWMrb3dsNzNMMVFOZ0F3MFh4Umdtc0UzWUREbHd4czJCTDJuUWNjV3VN?=
 =?utf-8?B?SS8zNjBCaFF4b2hENnB6d3N3MDhMb0ZKV1RSTGhWNmFvenlCcDkrR05UaFNP?=
 =?utf-8?B?REJiRjRYR3pvYmE0TGRCNVpXSTZVSXNiblJLUUUzbmNDKzFWbUFOSnhUTlZp?=
 =?utf-8?B?ZGI5V0VLSzExLy9VS054OXdjSkpaa1J0b3NPSjFlQitqKythQzI1cGlVUlRB?=
 =?utf-8?B?QjBCSGo0dXQ4WWFPUStJc1FnT3lWeGN5RjQ4ZjRMVHZsa1EvWUlTR1FKMmlM?=
 =?utf-8?B?NFRWWmNESU1mZUJBOXJFYmJnK2FOOFdva3pOYmZGMVNvNVV0U0ZLRHVDOGNH?=
 =?utf-8?B?UTRZUFptS2ZZRXpsTlZIT0xpR2lpSXN2cVBkc08wU0VuMkYrTjNPenJTNSt2?=
 =?utf-8?B?TUo3dU9xVTZKU0xUeGZCSnptTTJXbmJHQjZWUHdTN3Y0NWhIcDJkWGgzS1Bw?=
 =?utf-8?B?MXlpWndNUWorZjhKciswY0NvSXNKUzhRcTF3R2VFc2NvVjJzdHVWL3dUVEg2?=
 =?utf-8?B?dzRZdjBFU3F2cmV3QkUrQlUrYzRxcWFJMTkzTHVkckE1OWNvZlZWWG5zbkVM?=
 =?utf-8?B?UjkvQTBQN0wrTlYya1luaUNha20vT3Y3TkF0UFVIR3pUUVFNbDVjV3A4aUkv?=
 =?utf-8?B?d3lzWTdJQWJiYWdhZFZQaU9Ja0l3ME1abVhVTmt0ejFWR2VCeW5mM0NkUGtB?=
 =?utf-8?B?Ymh6ZkRvZXgvTmVlVTQzMlpneGFUM2hhYVNSVWh1U1J0R2VKQXhVTk52VEFo?=
 =?utf-8?B?alZKUkR0bzJ0KzBKaEsvcTBhT0JqWlkyZjc0c2NJRms5bzBRZ29rVjNFRlM1?=
 =?utf-8?B?MlJzb0JTeGxnQ25ZVGJtSENJSG5ROTNtNjFKb2JpKzlkNmhCQ213Nm1QN2N0?=
 =?utf-8?B?dDFENTdFUzRaemsyVk9jb1RLcllrK3BMckVtb1A3SzRMNzlJenBsckp4K0pG?=
 =?utf-8?B?bUNvdEVXbGJtalliV0tJNC8vNE1zUlI4cFpJeFlQbkU3dER0ck5PSjJCK3M0?=
 =?utf-8?B?S0tJb3pkcWd0RjY4Q2hYY29kVU5ZekFEbDJRYXBET2dkY2xQdm1pbUdmYzAv?=
 =?utf-8?B?Y3Q2RFNCSDVjeGlXZENHQ2dxMERjbDdGaUM4Mk9UajVDVDNmY3FSMjdIVmtQ?=
 =?utf-8?B?VEF2QWNQeXRDL0c1dUxwWmV1Q2w4VWNzL2xXNE8vdnpGZUkvcXBjWWtJL2VH?=
 =?utf-8?B?NXlHK281WDhEbk0zTWtzVjdqcE44WTVyUTlqK3oycW1KeVErc2UwWkF3OHBp?=
 =?utf-8?B?OXZGaEtPL3h4cEpxTyszR0lsY0U4M3hPcTlYaUNpZll0aGluQ2ludmRma3Mw?=
 =?utf-8?B?NnJWQmVnSVF3VkVBOXFCTjVQUGR1eXRQNHU5cTNVM0lYSnlkeEk5dDlFd0xp?=
 =?utf-8?B?bVkxa2pQVC9FT1dMVkxtcjAyc3VCSFdmWDREK1o0Q014SU92V0wySEdJR0xR?=
 =?utf-8?B?dlE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e8ff64b-1d8b-4818-ebee-08dc74b51c22
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 08:00:39.0411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YMNtRHSeK/O6nCTUB4PZEUbsnYxOIVYc35A0xAbPhvEh66mbomSSwqjGlmiw41iLdz3v5bWgUcCsqqEFU51UuextEvM3e+45G1Q+GtOOvIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5297
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010046_541637_4B50F415 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH master 0/3] Fixes for WolfVision board code library and PF5
 mainboard code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Habidere,

This series is a follow-up to 
https://lore.barebox.org/barebox/20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net/
and fixes a few things. I tried to reply to said thread and announce a
v3, but I just found that this reply never hit the list for ... reasons.

Anyway, here are the fixes. Do you think they can be applied directly
to master?

Looking forward to your comments!

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
Michael Riesch (3):
      arm: boards: add pr_fmt() prefix to wolfvision pf5 board code
      common: boards: move dependencies to wolfvision board code library
      common: boards: wolfvision: fix handling of overlays parameter

 arch/arm/boards/wolfvision-pf5/board.c | 3 +++
 arch/arm/mach-rockchip/Kconfig         | 2 --
 common/boards/Kconfig                  | 2 ++
 common/boards/wolfvision/common.c      | 5 ++++-
 4 files changed, 9 insertions(+), 3 deletions(-)
---
base-commit: 593248cde35ddedcb27c0791c621e6a4403d7068
change-id: 20240515-b4-pf5-fixup-1c0f8b592313

Best regards,
-- 
Michael Riesch <michael.riesch@wolfvision.net>



