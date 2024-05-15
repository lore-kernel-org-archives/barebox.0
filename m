Delivery-date: Wed, 15 May 2024 12:36:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C06-00Fg90-1Z
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 12:36:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C05-0003Ne-OJ
	for lore@pengutronix.de; Wed, 15 May 2024 12:36:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mqmG/Y4fSwGuFtPtjR7lWop5VYyvdeyglO+F1okscuM=; b=UX4h9bmwH+rVmyO0/cJj0kee8w
	lbpoaK1NmQ5TqZ0Y874BSwqOme9Tk4GxwuuuPAs/3h9C1GjYUuMstLL9yxZsGWzCMWuZpDID77ahm
	uv/V4bQiMf543sFBj0h8oA1MsBhNp8IyAD1wbX5prTLln9dbPObPyHuWqj7ui5tw5NAvzQ4VtRmQ5
	IOeP/OLc+PVx4GmotYlfBjXHlsKF1hV7vjdaulnznm6x+rhSktKXw2XSh9JpRJj3iNlp0vJ33RUyw
	x+7Y31fLiphQaGV6vNnjNJDLAKTDo3yrSvGPKM0e6oo6R/pvDjv6XYnUiAJijzj4WqJXmMnW+BjEl
	Ga5TNa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Bzc-00000001FUn-2mM9;
	Wed, 15 May 2024 10:36:16 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BzZ-00000001FSF-0cpU
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 10:36:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGhV7wCbx10vhzFNzqx010jpUMppU6Shqn1AdPdnM//JwEBf5GxoAQwTKQWyus+Yudq93AurEcLs9cxF8cC31pI+pStAgN+8vXohxkdoKEesUO7OqvDNTxoyVcmhi+j0DgHbjLLJ/qI1bJafRcIWvmyex2GAtWq68DqnGPJRZs3hQfFbJxlEDXLkW0RGkPn4nfgjXMYQyx1g7WOOuGvfLbivxcDf5SHcoxBgTzDnalFpDjqr9RtcJ2lXSi+8+9TvdsBhoyJu1WmdRYLy2ys370MJZIrHlTFOrlaAt6140z2HDlZ8K/tEn85/OHhjhAYXyxwFO8aF9k+Su5DQhRyX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mqmG/Y4fSwGuFtPtjR7lWop5VYyvdeyglO+F1okscuM=;
 b=PxaMvuAISgqLf7YHrymvA3jb4oJLaKoada1JGut+KMnKzbfZJZA+d+liy2neY9s/l3lzT5iu/w2gyuQYGrZRVcIxO6tQXMnF6ngtRH869dAriBFyBqgnmTI8h044MvGpc98kwbhpXCjQGMMkCepasb9zK3FQ8FerVMpsCI97QiF1/6am6w7Fm4m7F2E5dyTXBju92WHMFJNoOOYcPOvViXn5QqsrxEhOtH2hc8uO/TZ4jcwN67OvWRrnroXTJ9dNeO7l+rI+/K/vkSgGdpXl37fgpyzih+mDwsK2wtMZqDPHgJHMGz0I4elR16kBg9q1HQYSRj3bfcYNoReqyMC18g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mqmG/Y4fSwGuFtPtjR7lWop5VYyvdeyglO+F1okscuM=;
 b=R6Th2rkH1njFDOo7iEVE9YkHUUHKlnATPvbFZZfIxtCFdgM9djtevMgAu5FWe0RwWYIURMgiTXgbOjrtDYmYP2aKNMNuCrAivDhYWNVI+b1X0a7H+Kj69/0iq9Kv30PylPAZ9qi6Sndei6eFaEWo4FqkJUPzL0v5UYnHk5ghZFI=
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
Date: Wed, 15 May 2024 12:35:57 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v2-3-7c2aff3f7465@wolfvision.net>
References: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715769359; l=1675;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=RZ61tzkJ7q3VkNomW+uUuZhSCNsufJa+eCPin18rBBw=;
 b=GrGwSrUqcH9+z83QY+Wdhwv3oA6bWHdeqmc+M9O7fq+YqFcvh15z30gTSBLs6HP9nuL2309jO
 PZehCn4qgbCAY2IMgYcH2U3Hg7Yu8KDpfhHevt8StAz5vnr6l1Hc8ua
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR09CA0156.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::40) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB6083:EE_
X-MS-Office365-Filtering-Correlation-Id: 06a5ba54-95fc-41f4-1940-08dc74cad054
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|366007|1800799015|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUJSOERZc1lZQ3c0dys2dTlNSUVxendCV2JwM0pCOVQ3YVo0Z2wrUE1NU1Vw?=
 =?utf-8?B?OGNES3VwRGR5L09hc0dCdiswSTYydElJOUt5K2E1U0xWUk9ac0R3dmV1L2lp?=
 =?utf-8?B?eGdYeHg3TDV0NzJ4ci9ldDJmOWFPeUlUWGFoWEFzRXJxYkpRNktQaVZXdjg1?=
 =?utf-8?B?dlc0eEF2ZzRJS0QvZzBFS09UU0pCUXVua0N3a3Jpcm5aZzRRajBDbDU4L05I?=
 =?utf-8?B?WEtKMExJMy91S2dkQWhZNzJPK1YyVmQxNU5vSVE5T0NrMnhqWlNzSnJZMWsr?=
 =?utf-8?B?Y0EwWVNuUVV5NGV2NGhiVGszaXp0V0JsYnREYjNrOEQ5dGNNemhRUnVMbC95?=
 =?utf-8?B?V09mbEU3RmJHOVV1cFdJalFOdzJKUENQd2lxNGlaaDFsT0VSQ2RrK0lQZUVU?=
 =?utf-8?B?RkJpQUJVSUk0aUxieXFob05VT000YmlsOEZSaGEwbUx4RWZFTlVGRlV4alBK?=
 =?utf-8?B?V0Ixb3RHNnVyL0ZrSnE4UThLZmtpS2dXZlVLaGVoZkw4WXlNQ2RNMVZDbzd2?=
 =?utf-8?B?NWROV2wvTXM3UC85dUhrTnpPaGtleFlnZTZwdjEvM0VYT1RFV3ZDUDRRR3FK?=
 =?utf-8?B?aTEvdDBkYld5RkZ6RmdvazA3cWRqTDRmbEtoa1pOa2k1NjBOQ1VuY29WOHdI?=
 =?utf-8?B?UWtIYW1ldUVSK0tqVmZlQzViUTU5My8zeXBLK21yV2hLWjYyQ0twV1hmVW9v?=
 =?utf-8?B?THRGcVVlakdxZk9VTlBPbm1sb2wxbTcyTmkrT2tRVGowS3dEQWZkdzBMTHJZ?=
 =?utf-8?B?aGVVTStWVVZFNCtCclF1bHRseFY2Q2pNVGZnRDI0TWFvY2hmQmhSNktmaXZC?=
 =?utf-8?B?ZW5sUGFzazM3MGdqZEEvaUg0Tzdta09uVFUrb1ZTZTY4Y05OOUJaWEY4RVds?=
 =?utf-8?B?OGw4WXN3eERjQkdrK1ZZd3FGamt3Y01YU1J4aEFlUitsbW1RT3JYVU4xaGZY?=
 =?utf-8?B?RnoybG43VkRYeFZWbklkT2o3RTBReEVpL1RZbmlXbkt2bkJOZEVoeTRLbzBr?=
 =?utf-8?B?bnFOTWhvSE11a3FxWlZHT3hlRk9PVjUxODBCd0sxaGVaajR5V3JxOWpwdS91?=
 =?utf-8?B?U291UThEWlZiZXdsQ2NNdm5VYTVBU2V2Y3lQS2IycGw3dkJKQ0hNaGdXSFdm?=
 =?utf-8?B?Q3d0S1NBTzU4cVpVYStRL0tqT0VicFZOdUptWnV0VWp4N2tnQk5iSldtUTNL?=
 =?utf-8?B?b1pDTmpSMzlTRDBHclgwaTQvOGFZdnQ5WktMbGZqWVFRUTJFMFFid21GYTBo?=
 =?utf-8?B?MEVCTm1oRWtJY21CY1hMOXdDZmNGR1liSE1uaGw0RUFJbmVxNlI0aDFPNmVB?=
 =?utf-8?B?bmtJamMrMHp3Vy9MbmpVQnRFNThIMm55dkR1VktKZHBSWUtKSUdFaStlclZU?=
 =?utf-8?B?VlVkMHhDVVBlZkpLUksycEUzQkdxTVJaZmVZUS9Ib0hIaW12ZCsxc0U5Z0lp?=
 =?utf-8?B?eUtOQjQ1UGxWUmhBSVB0aWNkMHZkU1ZuVDZGbDlsaWZod2VBYUt3QjBLUXRk?=
 =?utf-8?B?c1JJMEtRdWJuSFl0V0lJQmppRkswalhiNUd2TnpQbXNVVXJzeVVPMlNlN0Vv?=
 =?utf-8?B?ZmpLWWhoSWZDSzZjZTRkNW9LZFR4RktkKzVnd3dOSjlTSnFDMndneFA2Um5M?=
 =?utf-8?B?NkovVW1aVVhNYUM3SzY5a0QvZEtrS3NhS041U0ZkaG5FWlVtZUlLNHJZV0Rt?=
 =?utf-8?B?dzdXQkhTOTMzRG9jVjY1VEZOaWZENVc3RkJLcW9tMW83Zm8zNUI3OFdlNWl3?=
 =?utf-8?B?ZlYwci9FZlFoVEU0V1RuOVlZc2FBQVM0dFRBd2pqSG9UeXBZQTV0R3U4MURt?=
 =?utf-8?B?Nm5CelQyQUZ4bDBISUlFQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(366007)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXBST2hQTWpDOEJ6OG1rNHNHOEhxSnVvb1k3RVlSMFFUbmRlbUhYZVVtSUJa?=
 =?utf-8?B?NnFFWUsvb3FDWnhGRFh6OW9odDcvR1ZWVDBsZUYzeTVhVk9Fejg3M0w1bktS?=
 =?utf-8?B?TWxqQzRUWmJTdWZQeWs5TTY0YjRQSWVSTGxHcGVJR0lYY2N5RnZud1g2a3Ev?=
 =?utf-8?B?eVdWanZsQlBUNDN6SkZXWmtpaDg4ZDlOczYzUEZsOXYyRzlsa1kxSXdTYkFF?=
 =?utf-8?B?YVh4LzRZZi9LZ3BSOWY4RUhPNTNLcmJCU1M4VS91Unh6ajZMRTg4OUZjMndz?=
 =?utf-8?B?cmRzRnpCWjFXczB1dkxEUEZwSVdaTU05M1BuQnd3WHFhRnM2TjIzVXo3eVYz?=
 =?utf-8?B?K2xXcmIxM0tjcWlJWW9OaGtBcU1xNlRHdythd3MxeCtINVIvQnJkMXkwaWJo?=
 =?utf-8?B?MGJkNFJKUk1vWkFyOUE3V2RIOWRXUzF4b0wzRXMvZ1N1Y1loVXdmdmxyQ25G?=
 =?utf-8?B?ZERFY0xnNitlclQ1Q0tCL0diaGw0TWNBbUFQR1p1SklHcFQ1RW5TdjhoVmZ6?=
 =?utf-8?B?Nzg3NTJlTWZHZldLek1RcSthK1dSOGV5dWcybDluZFhYdzNOT3VKWFAyM0dj?=
 =?utf-8?B?ZytMdDRMRVhCNEV5LzQ2L004S2I5aUkrNW1MVGcyZzI3M1dNSnNMVFBvcjl3?=
 =?utf-8?B?V0FDMVg0aXlkTXZzek1rY3k3TlJibHo0cVc2RHFUZnVNZWNjSWVDWFk0VTNr?=
 =?utf-8?B?dVJNNlFKRmpQUEVvSFI5NjA2U0JDSklsZ3Eva2d2aWk0VnRjY2RVUEd1Y2J1?=
 =?utf-8?B?bjI4REFxREhkYWtHZmlld0x1dTZvOHpkaTlGRlQ1bDZLazBsaHViK3BSNDlO?=
 =?utf-8?B?SldVWTU3dEkwYVV3M3N6YTRSYTRHSWtWVCtEbHZqb2UwT01JZGZpZ0VWa3J6?=
 =?utf-8?B?R3YwWkFpckZSR3NFQXE5QTN0QXg3Ym1aVFZaRGZPWnNtL1dqTy9ESFhJV1Fp?=
 =?utf-8?B?a1o3V1pjWkZYS3lJbFZxNjdmWStmam0vWTd0NG55cEZyU2QwUmJmd1h4VTJx?=
 =?utf-8?B?U1RwTFV6NzVFK3NkWGNyd1A4dUdJWWxHV1J4L1h0dTJCejZ1aklpelUrNWZE?=
 =?utf-8?B?UHdKYVdObXU0UjRuM0pwUnB0YU05UFphTXBVdzBUcS81c2FCVXJLM05WQlNB?=
 =?utf-8?B?ZU9zclN2MmY4elNsalpmYkUrdkhGQzlnblhKRjlUTVdqUDdUOEFoRnZFOGJU?=
 =?utf-8?B?bnFBOE5xMjFvU2FtSWZUTWhQTTF5NHpxZVhlMy9JZWhwdld2WlZpclNtbys2?=
 =?utf-8?B?elRSQldubmExdXhaVjI4VWM0c1NsNWQ0dXArZHV3ZGZrbkFvTHN2ZTJZZkxn?=
 =?utf-8?B?eHMwNGtIZDVEdG00THNhYVdlbzA3Q0VBR3pGczh4OXlCYk1SV0d4bEFlR1Vi?=
 =?utf-8?B?RnJUWlVvZm1TOFdKdVpHL1lNQ1U4Nm82ejNpOXBrRmZkK05CaFJENHRuYzBy?=
 =?utf-8?B?Z3BzbkFFRGJsandVS2FQWWs2MDhiblR4Rm9WRUovUVE4MjdqYkpIemhDUDV3?=
 =?utf-8?B?QnVJTHZsWUFOOUFCcmg4SFAwdnhOYXdreE5qWm1VMGp6aHhHYnJlQXRUdWhs?=
 =?utf-8?B?dHhmM0o5bGpwc3BHNTZBWXg4bnBUdmNVV1B6VldHVUN4QzBNQXFaa1p1MnpC?=
 =?utf-8?B?QVhRT0NINlVDNmVxYkpFUmF3YlF1S2w3bUZuWlhFS2FYQkhQb2pkcGwrRFpH?=
 =?utf-8?B?NTVaVHJlN21tS0FpdktoTnRFbEtoam9yYmNia3lSWU1NRTVvSEYzNzhRVmx6?=
 =?utf-8?B?T0ZDOWpUVTZmRlROb2JPTDI4NUNmazBoRDNJVElhQ0MyNHJWczRMSUZycWZy?=
 =?utf-8?B?RktHZWRUN3NucHY2UTNVQkpZcFl2RGlKOXRhU1gvaXFLRXRKcXVkNk8rZmdZ?=
 =?utf-8?B?eExuVlowalJtMjA4MFc2V09XTVVMdm5BV3o1Uy9maURHb2tJMWRDcTVrSHVl?=
 =?utf-8?B?U3duNDNUNzdDSjArdWdCUnhSUVhpbE9UVFg5cm9QREE0Q3Rqam8zUml0N0VZ?=
 =?utf-8?B?WnFmZUpHbFd3Z2RqbE02L09zaURyWU1UV2xTUWs3UmRYcWEvNjZjZlk1SUUr?=
 =?utf-8?B?dEFQOEw4ZlA1WjdGZm1JNlFueDVjdFNkZlA5U3M1Tk9LMWtMSEhaaEpWMnBP?=
 =?utf-8?B?Rmg3SVdybjBqWmg5VXZHSzJDbHRyT0lhejN6dTJaMWJnRkk2OGw2WnM1TVM1?=
 =?utf-8?B?Q0E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 06a5ba54-95fc-41f4-1940-08dc74cad054
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 10:36:00.7859
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Y/Qs2ASH9o8q+qJf1b4O0h+ogjD1LzJLrPSIKblv+ZLH4CyR8ZvgA1JlH3VjXF1Y101QLJ3dDpFkKccwk44l0IG4hKm3a1HcE5YLUxRwwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_033613_256685_2A0BA190 
X-CRM114-Status: GOOD (  13.58  )
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
Subject: [PATCH master v2 3/3] common: boards: wolfvision: fix handling of
 overlays parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the char **overlays parameter to wolfvision_rk3568_detect_hw is NULL,
the overlay file names are not collected.

If overlays points to a NULL pointer, it is initialized properly with
an empty string. This is convenient as the call to
    globalvar_set("of.overlay.filepattern", my_resulting_string);
that usually follows actually resets the global filepattern variable
from its default "*" to "". Thereby, a paradoxical situation in which no
extensions are detected but all available overlays are applied (due to "*")
is avoided.

Nevertheless, it is still possible to pass an existing string to this
method and let the method append overlay file names.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 common/boards/wolfvision/common.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
index f483918cec..08836096b9 100644
--- a/common/boards/wolfvision/common.c
+++ b/common/boards/wolfvision/common.c
@@ -20,7 +20,7 @@ int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
 {
 	int ret;
 
-	if (overlay->filename) {
+	if (overlay->filename && files) {
 		if (*files) {
 			char *old = *files;
 			*files = basprintf("%s %s", old, overlay->filename);
@@ -115,6 +115,9 @@ int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
 	if (ret)
 		return ret;
 
+	if (overlays && !*overlays)
+		*overlays = xstrdup("");
+
 	for (i = 0; i < num_extensions; i++) {
 		const struct wv_rk3568_extension *extension = &extensions[i];
 		const struct wv_overlay *overlay;

-- 
2.34.1



