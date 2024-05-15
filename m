Delivery-date: Wed, 15 May 2024 12:36:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C04-00Fg8A-0O
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 12:36:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C03-0003MO-EY
	for lore@pengutronix.de; Wed, 15 May 2024 12:36:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=; b=uW5RYqwZAf5spnNC4wNK6MiR6e
	pEmSBJQW9lPiaAF0+LYNUbZpPoZn91aiaXoRbC7RYq97mLYnNgaghhyXMRNPrAFMO4Ed7JnhAzViW
	XjPDcWlzABjQ9OBRa2GzfmSbYvYVIoHAb4HtWvRzhI0J8hMO9K+EmcJ2zj06mkE/MsS5/HlldBkB7
	WzO0ZlW0A1+vP5JnwtOKovq9LYNKcGzGQL+3tlRcLYf2oogV9bbdBshnZXv6WUU2u3dUaJvaQb3LD
	QmbbnjYefxwBv9qoFKau4V1an7eBuJs9Zwnqw5HrUWrpQdqsTTPTAz7YSpTJkL5Qq099gssxnNmIF
	JKRbxndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Bza-00000001FU3-2l0D;
	Wed, 15 May 2024 10:36:14 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BzV-00000001FSF-3bpp
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 10:36:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MN88VTtckqzJy/c4c8Fd/Ed3NeyR1EowQQ5YqbG8LSo2+OAbv0BZCSHM8unezoRq+Wrp3Fql7EAlJQ5xwcQZCaq/9TsqQ6n0UDE+zRrGXG2M5AF6ZHBi9NotCIrlPNO7G4bmLaV+ypSrW8z+BiiL948K5iOOW7GfvkmFrkcwFi6B6TFt7FVot+hOBiLLoKhosgvcEy7psnURldcVkQOsVm8T47FtS1RmIJMnkpFIhvvmzsRHL2yPJvYwgc8Ub5FzLTC7bJ0Omv/qNdbO5hYEkrHH8TQudVx6Um5lUxDent87xOZVpOFmPv5vf4LrY22MF/so10PFm/46oALNBpFVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=;
 b=dmlHFb+xyNwIXsgdE8wgt74g1FoQVi9NFB5fx7IiibSjc4O9SJWsH9OyCNV7TyqPpJT/Kj+9AcAXo9Z9sTjz0B1NSHCVYdaf/+zv5O9uscyqlHQpir2dyYk1PhtnxEBBt5Bbmx4+EejtBYwJciMkhbStBuafncA5kwIne3bIb5lBqguNTkLvbxcsODuQ8MFlAXCEzXMOqvOqLJK6U9ClPYGWtywVfUqwea5vuYvd1jF+qMLVBbpMIzGkeB+KFIptQZAy1GRR8W8MfQgWa7z6YjjyW3o6d+GPcsNbBAbuynCtauwij9L78DJe19wT/l+jGFx99ApNPXIsK18SCt4+Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=;
 b=Ix+9wQMZ/VdfGVbeCEPCu4urbVcVn+zyBiizSUwSi+mlK3BKAA8cnvW05+NjAXQYWS5rBthDm8fOVHPiChU4PASPUTyc/5xAqgBlKO5tlN+jS11sVpGAWYhekvcMLi7W7rBEORFlg+NrQs8+OTCRxuvhKLOXFHJ8pR5RzFWEtQ4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM9PR08MB6083.eurprd08.prod.outlook.com (2603:10a6:20b:2d8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 10:36:00 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 10:36:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 12:35:55 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v2-1-7c2aff3f7465@wolfvision.net>
References: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715769359; l=645;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=7BcMkuZb40dj6a26qawkFfrDqn3Wu9sjjtMftYyYZKY=;
 b=mJUKOipUWm7GXng/cKNjPuEjnq0hATuo/7wJa4DeTnafBwxQxYOsHO9Ex22ye3oLL9Po7gj49
 rPqAQn720+zAG6JT8135AVHex3rd9xKb9ro1o1Ah1C1N208ubIVpcm/
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR09CA0156.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::40) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB6083:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b423606-d547-43ae-70a7-08dc74cacfe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|366007|1800799015|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TS9aMDY2ajdpeWdlWCtKQlhteWZySGR0eUhWTEJnVE5EWDk5ZktzdzkrNGVs?=
 =?utf-8?B?RnhsQzZwd3dFWHV2dDcyeFJQdCs2ZnlOWFNkN0pkQ3BIK3NEZzIvT3pQTlJ1?=
 =?utf-8?B?dStLMHJIL1VQSlY2TTl5dFJ5b0hYVnJVVjdFRHN6U1phNHluZnVFdzRBNCtn?=
 =?utf-8?B?eGl2RWRQNHNoS1c2OFBjV3lja3BzTXR3VGVsYzJkdy9Cb285Z0xzQy9nZm9n?=
 =?utf-8?B?WFVPMXhTOHppNWlFcTBPSUZXVDY0REhleEd2Rk5GZzVkdzI1OXcyb0NJVERo?=
 =?utf-8?B?UmxweHB4bzRpQjlCeDZXUWppYnAvLzB1c09WM0VMQk9wUkEwdFV6NENyL0Ju?=
 =?utf-8?B?YlUrL0h2OGcwempwVnNTcE1Xa0NNaG4wQkViNTlKZWNOM3ErL0duekNaSE5S?=
 =?utf-8?B?QXlpbVAyV3FHNVpONzE1YUt1VjVXUjdRWWlITGhHQUFwRFlvL0FIbWVpVnlj?=
 =?utf-8?B?Z3d2VFVRZFRUQzhod3FSSWw3UzRocWZ1bTVLMHZ1WXdNei9mcU1tQ3lEQmlZ?=
 =?utf-8?B?MkxKQXNKM3FUSENCOEZ1Tk1PWFNqUnNBeTNPMTNiNVdIVURhd1lLanFyNjBz?=
 =?utf-8?B?M3Y1ZnJhd281Y01UTVJxWWFyVGNhcVRSNitjOGtlaXA3by9UdGppUVFHTDFj?=
 =?utf-8?B?RGRBalMrdlZzT3RDNDhTYXhZRC9SaytXaFRpU1EyU09oN2R5ZVdYYWhJcTJD?=
 =?utf-8?B?by9ITExFRlJ5Y3F6K3NVekY2Z0cvT0RSMXo2bHdzRjlNeStFbW9yeitNaS9I?=
 =?utf-8?B?Rm45U25JTW9mMHQxYTFNSWV1WjZJSmVpUjF2RkJma2k4ZXZVSWtJUzA1TGlM?=
 =?utf-8?B?VWNDWEplQVBLMnpaWHFPbW5Xc1dCS1drNklUbDlUYzhrSDMzUDdOcHYxbXdp?=
 =?utf-8?B?c1RuVTZuQjh2STdTUHRJOXRFVzdIUEJCaS9sMVBTYURXRmZSUHBnT1UyR3dF?=
 =?utf-8?B?YnRGOTFHSFF2dHYrOXlPRUlVZnhmUjA1YWxtWVlkbTJFTHZiZ3M4N05uTzg1?=
 =?utf-8?B?WDc4azhWVHo3aCtlQjRrdzFDVVo3ZVEzV0NuNlRhRGowa1RISzBwbDBTNUYv?=
 =?utf-8?B?Q2p5TnUzb1ZQTzVtTmRkWGo4MXlIYXVrbXdOYmp4ZjVKeVA2TjZxdkkzdElG?=
 =?utf-8?B?Q3VHKzJZT2J5MitIMmZhV2Z3TnkxdmQyY01SK0gzelFVbm95Nm82d2FNQkVJ?=
 =?utf-8?B?c1owalpoVk00MHoyTkVQQlNuSE11eEVNcE9hODlmS3kwamhoWmtQOTRHbG5R?=
 =?utf-8?B?VE9xcEs0a2FiWXdURGRSY2FNdGFjYmhvNlZXaEJaeWJFUGpTcHRHNVk2dnI2?=
 =?utf-8?B?WGowamhQeXVLODJBekcyZE15ZnM2QXpmdUhRbzVKdUJCM2JQOW9vZWZqNzhC?=
 =?utf-8?B?eTdxY0VEUkdRTWgrRy9DUHJhWUtwUDRyNjJqYTExOTYycWx4OTUxMy9GMWtR?=
 =?utf-8?B?TTU5UFQ3d3FXMmpZbTNwQ1c1MFE5SFVLM3VJb0hwdnNmUlBRSVgyL0lObnJy?=
 =?utf-8?B?cVZGekM0SlVHUnd3dmYvdkJYaitlUEloblU0a08xeDEzZThGNndCK0hkNnVC?=
 =?utf-8?B?dXkyTHY4ajVKRUsrZWswWDkyZHhIV2hFd21aTVU3YnNqSU5laTNJQnNPZ3h2?=
 =?utf-8?B?OWpvMEZVanh6SjFqZ1lvWXYvczBpYUlPaWtxbjdlR1gxTGUzczl2RU1BRjVm?=
 =?utf-8?B?R0xOaUpRR2prVEtxUGxMWkpsL1ZDMStMSkpjcitMSTJ3bmRSdXpPaXlGN2E2?=
 =?utf-8?B?SkkweXdVakhqa2lzRmRVYVBtZjQ3VzQ0T282Y2drb1JxUnVxcFgrV3dvTlAr?=
 =?utf-8?B?TnIyT2Y4NEVGMjZ2UFdRZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(366007)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tlc2NzhiRkIzeW1mZy9hdk13VXRISDdJdUgza2dWa3VVMzI5NFB0ZTZzWjk1?=
 =?utf-8?B?OUtKU3MvN2xaY1ZYbDJrdm80MU9iSjE4cTRKWnoxUUdsdzBUWHVqVzNtL3Zp?=
 =?utf-8?B?M29XRXZKUExQS1JRNGtWSXh1UXNQNlYvcFVxZ1kvUWxqaE9DbUtWaHJMSk52?=
 =?utf-8?B?eTlaR24zbUhsTGhSalE5U2xVTnl1Nm01d29oVmsreUozbjIvTTB5MzZ4aTk5?=
 =?utf-8?B?ZkVkYXBKTk41b2ZBZG5MQkc0OFNvUFdpNzY3QWppcEhqTWVLN2EzWThRN3NO?=
 =?utf-8?B?dVl5MVJ6Z2pNdjlPWDZjamRwMjVIdGNYMWlzQXFDbVQ3MGNWYUlpZStaUjNN?=
 =?utf-8?B?c0M0Y3YyOVMwN0MreHRyZGFLWmJlSW4rYUhQc3Z2QndPQkcwZ2k4d2UzVlR1?=
 =?utf-8?B?SXp0ZG5aV05ZenRwaWtXOVIvY083QUt2V3FJYlFMeHB3MjUzQVlHRU9NNFBO?=
 =?utf-8?B?d21wM3lwQVZzcUo1MCtrTXBGMHhBRGtMMVhxS0Q4bkJDZVlvVVB0eStyZm9w?=
 =?utf-8?B?U2l4dDNNamI1bmFWVGEvUVB4SzRIZ2hQRWk4MGdwVzZ4cnFQcEtEYzhjZ0NW?=
 =?utf-8?B?RzMwOUo3TnFuT3lrU2xmaU5LMEhVNnBYTnJ1RGF1M1FNMk5ySXJ3RUFGYUx0?=
 =?utf-8?B?RUlmb1lmZi9iTUFYNU9wcGRCQUhmMkdjMUxhcXhvZHA4SEZscGVVa0tLVlRV?=
 =?utf-8?B?RExNbWxMdG00Nk9QRnRSNVlTVnIzUzU1RGlwM0hlalZwNkZPZkliVC9vTlRX?=
 =?utf-8?B?YzRlK0d2dVpUNG9Xdis0Z3VYc3JxYkwzeDFPZUEzVkZsZUViODRMaEozMjFv?=
 =?utf-8?B?M1JaZVphSnZyejgxV0NTTUtjZTFWS2VXZkl5UjJYUkN3R0VWNkhmdXVSczY5?=
 =?utf-8?B?Mm45aWZ5WkpETEFHN0d1MGE4em5qR1BVVlN1cHZERzRIUXdhZFAzQm5jVDY1?=
 =?utf-8?B?SGtpQ1JZYi8rN2FMUVl2Ym1EOVFGSlRoR29JQ1lDNmF2WHJCUkgxMk93bCt1?=
 =?utf-8?B?NEt6cldvSjVzclBZMHZvenlLVGY5VE5ScDNBTGFCWEo3Q1JCbkhyTnJ2N3Yw?=
 =?utf-8?B?V25IZ29NYnJtZnBIalNWa01Ebk81cXg4TmVGdlBqbm9WQTIrWlBDTFlsZ0J6?=
 =?utf-8?B?Q3RXNW1pa1g5blU1L2lEcjV6RUtpRTVGanJDR1BVdXlxajNFUDJ1aE1jeDB5?=
 =?utf-8?B?OUVPdUZkTUEzN0FCRmR5L3crNFdIRWhDUFg4Y05YNkNnaDN1WGVKa1pqU3Ju?=
 =?utf-8?B?WFE0Zk5seUd5OWhhbC9RVjQ3Wlk3SFRuMmRRNGkzdU5XN09ZSmdiREExeFBF?=
 =?utf-8?B?dkZ6Mnpzc3Z6Y2FFdVhiMUtJbmxmRVBacUh2Z3B5VE9jQWtIUGI1anArdkJL?=
 =?utf-8?B?MVVxSXdmT01PRVJob0Q3R0N4U1M2d2RNaVdrM1BMVjI1K3o2c1lsR2VXRVdj?=
 =?utf-8?B?Q3UyWWN3dmhJK1hlbzZ6WjVRSHpURDZMRW9OVmIvckVKZWh5SXp6b3Y1OTJu?=
 =?utf-8?B?RnVjNVlVVGtXNGFLRm5DbWZMQ2x3ZjEzQ1ZxWFQ5bW0zK0FMdzZuMHhoblMx?=
 =?utf-8?B?eDdUclM5U0MwYVBkR3hQbkI0YW5FV1ZmZjlkNmZjUm9XeEVBNEtJcmswNVVz?=
 =?utf-8?B?dWYwMlRsWG9tR3VRY29HbjRPTWV3aHNudWtXdmtPZlpZcWRNeHZBZmdqclU0?=
 =?utf-8?B?ZGgyWVQvVXVvd1F6ZEJxejJxQTNnRzJ0STk2UTAzcWd2ZEtvTnh5bFozQ2No?=
 =?utf-8?B?UXIyai9yRC9ncUh6MUI4cjd2WWwydDdnU1RtL1dMU3hZRzhxekU0M0loM3c0?=
 =?utf-8?B?amlTajg4M0VYZW9ueVM0RzZaZm9SNE9UaE45UU90Y2Z5aWpsaytLSW8yUWlk?=
 =?utf-8?B?VnJiRnZNL0MrYkFRVm9nOGFyWXkzeGFMb2pIWmZjZGhVTy8vaSsxYU84cVRR?=
 =?utf-8?B?a29FRFJXVUY5M0lVT1I4SWgzbVlqZUdzbHNpK04rZlRsaUllbk0zMzFvbElD?=
 =?utf-8?B?VUg5MG9ZUldiZ1UrVXB3T3YybmtVV09Rc2lEQlpxUDdObVM4WVBWemZxSlM2?=
 =?utf-8?B?VmduSEplUlJsWHBFd2Irc2FMck1mbjhvQW4rQmhjK3JqNG5mMVhTczZvVXhY?=
 =?utf-8?B?TnNpSjNuM2FQd1NaV3AyYU9jczB4ZUtTK3BNSkRnV1hBd0ppWU1CblBNNW9n?=
 =?utf-8?B?YVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b423606-d547-43ae-70a7-08dc74cacfe9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 10:36:00.0865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s4QNmule3xtauQf+RTtwI1m5o/ik4XRibh0aQsj5dBy2T/jb3AuAuXYcJ0EhFwMkBEf0mAmtaJ4TcaioRVL3UrrMukO5sCRlF59N1Fnl0E0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_033609_915130_D770F378 
X-CRM114-Status: UNSURE (   7.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/3] arm: boards: add pr_fmt() prefix to
 wolfvision pf5 board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add pr_fmt() message prefix to WolfVision PF5 board code.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/wolfvision-pf5/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/wolfvision-pf5/board.c b/arch/arm/boards/wolfvision-pf5/board.c
index 797f51bc2e..5a2f4201ba 100644
--- a/arch/arm/boards/wolfvision-pf5/board.c
+++ b/arch/arm/boards/wolfvision-pf5/board.c
@@ -4,6 +4,9 @@
  *
  * Copyright (C) 2024 WolfVision GmbH.
  */
+
+#define pr_fmt(fmt) "WolfVision PF5: " fmt
+
 #include <common.h>
 #include <deep-probe.h>
 #include <globalvar.h>

-- 
2.34.1



