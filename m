Delivery-date: Wed, 15 May 2024 10:01:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79aD-00FWLJ-2u
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:01:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79a7-00080Z-BH
	for lore@pengutronix.de; Wed, 15 May 2024 10:01:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=; b=mR6lziNH5tAjDMpcA/+AoBySQ3
	WESgS3wS4ZGaTssWVWt5DBMztQh3v7h1RnfeGiN9m9pPV/sxnX2pYk4FIhFbtIBfFR+jq/OnFGGcS
	yK+PRbUpkR0GXNdI6A72KU47d9MjVsogpYY2qnXGBp9i+UDi2nIOgV2c32RqU6+uTfp2OT45R02vB
	/sqaHEHE09q5Zump0ktswZp8dwbY1CoxUYPr3a8r4tM5wPDiNRNRCpjhXAqSd1/mYuIFATxRc2ScG
	JivOTYCQZbdF0aFKKsEQ8NWrmK/qJdQPscR6amqxYiWhtEMP6PrV/FDLzZbrvHgX4NjoBbdNmyzys
	/GLWAz1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZG-00000000s4V-0PNg;
	Wed, 15 May 2024 08:00:54 +0000
Received: from mail-db8eur05on2072f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::72f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZB-00000000s1Y-15Zo
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:00:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6LvBaRNG4rkbtzbj2IwVBeV2JhGEDWzQRHPwqYwysaWzV6D2dcvl7yAriQM61Em9EJHCQ8Zy9oWRR9Rut+QGeP6lnofYmjGOkSKvtkywy0pX6WrmnK/62JdbLg+in53dS7tYrX2DP1ZmH6RkYhyoDyImssgJsYdwwzNx5wA/gs0cF2vAT0YVdQZczkyIGa2gCfSpMM7wHmgIEjtjrTlnWY5KYLBYJ/Y58358Eoe5p/PA1H34fL+wZ76Brn0WDLl6+9a+24fhb1E4u23AHi3uDpIhlR/7hVV5RRWPmF+C+3gzn2hMBXmjoTmKZSuv1rds9hxlpse+iK15dGsN/FD5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=;
 b=CkHAzh4cgRDZN3smB43rJhw4y/N7NBVgXMyXz9OewdUWIOO0gh1qTdZTofjkbVVXAwA/IJNHnLmpsll3U7y8QSRp0lUTqdBzeD3zWVnYQLbSN6UiqQcMeVCdg4xqd1UivTgYJw8QbNjTJjq71pKFwOnjCx0Zycl/CG9z1xS1Qxt1VU1CgMt5Mf0jVGR1bDqdBnI2+/wyHOHic9mndfwxIlY09mxQZKXu/xE8e/9Fc//zhmWWZPvUdrrI4rPT+A+Gv6oKD33RTCRHm5KcAWOFDIDXU6PRAGbYNsuImZG/RkVbwi8v4sbRcj+dNKNiMAIIk8luC6Plj9/b3dgh6cVULg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jf6cIIBffaJ7qiJEtkub39AKwYp6nczcNJPFKaC/77w=;
 b=JNQGSP6/I93FIc7vvcFDq9f9sVwg8t4EMbMI+SpFjsQUo+elBtdbGG5RNwfApNSImFZ12+/+H+ma+VKyz0ZgqNLaM8KA0ND9qKSJCDDfr9glMIPtFKlNKw9uuREbAzFeob74J+cjZ0JME58j1oHbm3kXec87DDrwbGkg2Rx3+IU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAWPR08MB9639.eurprd08.prod.outlook.com (2603:10a6:102:2e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 08:00:40 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 08:00:40 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 10:00:35 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v1-2-a58c8ec94f48@wolfvision.net>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715760038; l=1071;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=TY3qV2dFwnhpMebCmjDBLvDD3M0mvp7e4cAyQ0WJRSY=;
 b=VTpwcPYA3YiPW44N6xF1j+GbzBPPIh7r0Irczge8NYnhyEQMzMk5krmZuxpVVfIZ3GDIdSzaH
 2zLO4YgIL5xAb7s9oHEk3e0DApsr6ZS0alUwYtKf+0UcdzM8GHRnMb7
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR08CA0260.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::33) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB9639:EE_
X-MS-Office365-Filtering-Correlation-Id: a752b80b-8206-4dc1-2698-08dc74b51c8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|52116005|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlJZSnVERGs4TVppaE1TQTJYbmtNVlJydHRWL3F4bWtwZTRMYUppLytybjNB?=
 =?utf-8?B?TjJTbHpOOVJmemVpc3hvL2d6OE1SSTNSSExqN0hxVzVwMVBCQ21OU3Fma042?=
 =?utf-8?B?M2xBSlBSRkJ6K2lQbENzamZwR3lNc0dqUzhKRXhwNzU5eE9KVERjQm9aemNk?=
 =?utf-8?B?ak1tUy9kWlE0OG9RdEZUQ2xkaGk3Z2hpTkxrNStZK1ZpU2VwTElUWWVBcmJl?=
 =?utf-8?B?YlFRU090WVRIeklPREd4ZUhobzNNcVlrMFdOV0pvUVBuSzJXeVB6bWY3NU56?=
 =?utf-8?B?UzFCcDlkTUpVZlVqS0YyODdtc1RtVWFZaGd1bjhib05QUHg2dFNXOUg0L05B?=
 =?utf-8?B?b09jeE05MHlRb0JBNklpRno5dnczSGpZOXBHK1J4Y1lMb0xCYkVEV3lLa054?=
 =?utf-8?B?czhOYVpGcnkwS2VBRnh6NDJRa24xbTRGWU1UQkVNbnFEbHM1K0ZqaFFETFRT?=
 =?utf-8?B?bWJtTGpVNUdIZ0JzSXFlUlFHbmtidFoxSWNyMW5DTVA5dWJKZUViMG1ac2Fj?=
 =?utf-8?B?emFDUkEyaDBBWTh0Tjg2QWtPSHdMNERXYjVmMlZ5UDRTTVNlS2kzSlliK2Vx?=
 =?utf-8?B?R3RicDFZWTh6Q3VsV0tCUFcxRzhjRnRuN3hyTGFFRGEyYklydTVMOWpZOEdi?=
 =?utf-8?B?RWxma3FGS3B6ZlpPeVZ1eUsyU0h4cHNNcTl1SjRacmhZY2hVK3d2bkgxdEta?=
 =?utf-8?B?YllLM0Q3ZUlpMk1SOTBxb09HbU1MM2FkaUJaSkJIa2JadGNBaUR1M2hqMlQy?=
 =?utf-8?B?M1pZUlZmdHVub1lDSDl6RWlKQnF3MGpnbVFialY4MHNJWlNicnNXM3QwQ1Y4?=
 =?utf-8?B?TFdiZzNlZmx0ZnJ1OGlFMVdmVEZIa3dNUzR3amY3elRLVnREcG5nNUhqMm5F?=
 =?utf-8?B?VDZRUkdVbTEvTE03cWt4bU94ZURuMUY4SlJqTTVzQklLbGsrOFRSQWdhSTNw?=
 =?utf-8?B?RktiQjlJcFdSN2hZRTJlemJMQ0wwZDk1UEFtMC9nZnJOV2xPOHVxY2ZTMHQ3?=
 =?utf-8?B?Y0JReXZoMmRzREc5OXpvZTlvdWlCQ2lBdjloRkYxTGFwVlNaUTZzR3FrL1Rv?=
 =?utf-8?B?SEZ2cDZmQlVLVE1nSXA5c3RqWmhOUlUzNUYzVHhlM3NKZ3hzMGdPRC9nTkR4?=
 =?utf-8?B?eGtRV1NVVGxJRlF6N0xkNy94a21SbXUyVkJYR0oyTGZaYmxzdmtIRnpZejQw?=
 =?utf-8?B?UUlLSGU3L1hWcyttdHdCem1BUlgxZ25LUnNCTDl0M3NWcllWTFpabFpWdzdL?=
 =?utf-8?B?VU43SmVsd2VFQzlpbHFpNVZGcW5LeUh6dDU2UnptK3J2YlNPbzQvZm9BcUdy?=
 =?utf-8?B?MEpaS1BRYmRnZEU5MERxYnVRVlQ4ZVRBYmkyaUJtdzBsYk9pMEE1RnhCWjEv?=
 =?utf-8?B?NSszT0ZxdjlKbGswVUd4ZWZIenZwM29mdXVTTll3N3gvOGhVK3JZRG1oL0Rq?=
 =?utf-8?B?UTNNSVFRWXhVajE2RklZTHFzU0diQkVmY2hibW9MMXdlNnFvQnZ4T2JzeTlp?=
 =?utf-8?B?RUh3SXMvZVN2UE8vbFNJWXh6MTRFNHdmemFuNS9vaHZCMWx5QWRGY21JWURh?=
 =?utf-8?B?RVg5eHRnYVhTRC8wUFdHeVYyL2dnUElIZXNXVEc4K3Q0dVhQcThtZmt2dStJ?=
 =?utf-8?B?MkxLYU94VG0wQXBac1VGNXA2STRTY3ZrSmtDVnJLc01HZlhvMU1Ka3JWdUJq?=
 =?utf-8?B?aE1UKy91RjRoNzJKQzlVUGJQYlNrejh0TzlIM3p2bGFlSXlBMXYwVTFpUFVI?=
 =?utf-8?B?eTBwN2tVckUrbWVCWWZnQUpiSXRjS0NHV09kUkk3Q2lUcFZORnk4dzR5ZEJp?=
 =?utf-8?B?V2pKd3E1bWwzdEFJSmdiZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(52116005)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnVScHA2V1YreWNmR0krOS9NYVRsWHdUR2VXTHdiUVYyOHhOajFHRG9xVlpm?=
 =?utf-8?B?ck5XS2IzWlM2bVRmS2J1SUhlMjFUMkNWbldZUmx5T3AzazlpT0V0ZG1lcnNH?=
 =?utf-8?B?KzN2VVkrWUVuVkNpS1ozcVNRL0MrSzYyRlpZRVdhaEsveHRCc1A1UVhZblZi?=
 =?utf-8?B?QlQ0QzJTcy9sRGpmdTUzOUhYdSs5Y1pSUmxpZWsrL3h1aXRjN3pCbGhHOVVw?=
 =?utf-8?B?VTlOTE5LL1JESEpvVFhWTlFzb1hhYkE5d3lvTXREOW5iSkp4RHJqTEJxQzhS?=
 =?utf-8?B?ZC91d1E4aEx5d2dnQi9XVGViZzRIWmxlTGV2V1NZUmRpa2pldnNNUmlsRXFI?=
 =?utf-8?B?TGkvbGMzODJ1Qi9XVWcrdzZ0M21uYWJlSFVrRkxQNktDbmhaNUcvUzNDdkQw?=
 =?utf-8?B?c0lmbitDdVpPdVE0NUVDTVdadHR5M3RrNEExdFp4VGFHME5WZkJ6OVdvbk9D?=
 =?utf-8?B?MEtDM0tGanRtTWhaYW9GUmgzTXZkQTgzR2dyZmE3dC9wTTB1cEZ4d3NoWm5m?=
 =?utf-8?B?WTRvVjkzaXZuMUM4OTNnaVAwc1QyWmNOaFp2cGUvOEdkbTI1V0VvbTVEclB1?=
 =?utf-8?B?Y3hxeXdjVUFMay9XR2NKRlN1eWJ3b21rV2gxK1hCREl6MDJyQzluOXduUXZ2?=
 =?utf-8?B?V2ZFWWU3eXVOa2E1OFJSc3JRT3MvbENpTldjSDVzK3A2Tk1YR080ckJXeFhM?=
 =?utf-8?B?MnpOMG1KUXBWdXlJdERRcW9XWjY4c0JWZXprNlpZeWVWTXFiZ2pHelk4M2VM?=
 =?utf-8?B?NEYrUEtEMS9uZmZSTjhkNHcwejgrU2sxYWZqajdNUWlocEpqVllLT3A4aFZv?=
 =?utf-8?B?NEFKTWd0K00xU0F5Qy9rNE1aV294VFRrQ29EWTIreHphYzM5WGdQSkZiSjk4?=
 =?utf-8?B?eGhVS3NQanRrRHNoMFNta0dRaG1FRHEwbmNUTzIwODh4THJscllaVWRsZ2lD?=
 =?utf-8?B?Z3E1YlpiVzhzL1JWLytiVngvb1pVbkMxZVJGTzhlMFIzYmVXL0U0SFEzWDVi?=
 =?utf-8?B?a0gxOG9RUHpadnJIMnBDSVZrNTh4YmpjcFowa0JKdzN5c0hpTGJXTy9pN0pH?=
 =?utf-8?B?aEZTQmNEalpUK0t3UlgzaDZKUk1CREpTVk1VUzBlZ2hjNVkrMGtRYTNLUVZ5?=
 =?utf-8?B?dGdJeG9mSmhHd09PYnZRUk1tUnVlZlYzTGcrTmdpMlI2VkJXTzQ5UUtvdEZY?=
 =?utf-8?B?d3Fic1FlRGNDL29BdVM4VHRGN3Z6UHdkVlN1aUUrNHRpMEZmbStIWktNenFU?=
 =?utf-8?B?d2cyay9YT211UFR1b1ArQUlRS3hJRmZ2V0kxY0toNEs5UDFmTlE3anFqNnFV?=
 =?utf-8?B?cGRuMUR6ZEVBN1pnUHoyNUZsc0NETzBmS1gzVGh0WWNBUTBscXdqVFY2WVN5?=
 =?utf-8?B?QzNQZjhpL2xSUFJISDk2Ky9jcWNwU3VIR3ZYeWlXem1sUm5BRndDYzMvWmw5?=
 =?utf-8?B?dEgrellDRlBuejc2TFA4UURKSTRuelhOaGtUbnEzUGlCOXdaUUVPWDhXSEIr?=
 =?utf-8?B?bkM5eFNtOThxM3NSWVk2ZFczNXArU2JIejNkOVcyNmNhajBvY3lOMGo1TjFB?=
 =?utf-8?B?TElIQy84blVvaWJlWUY0UldaRVZRMThwVnQ2dzIrOHc4a09JVy9Gb2lmckY0?=
 =?utf-8?B?SDdsRVU4ZlYzQUZpcXdaM1p4OG9PT0ZzRVRvOGxVdis3SmZmcDRJQjE4MUF5?=
 =?utf-8?B?TG1zR01CU2VaUllvYlI4N0JJSGwzTjZNQUNHaGxNckJGUEdaOS9sdWhKTHEr?=
 =?utf-8?B?dTROSFZaRUZBQkIwdXVYVEJMQjVjRGRxRkZCMVlWd3BSdHhiWEdHTXFWWmxr?=
 =?utf-8?B?Tk1kWGJwWU82OE5XaXlhL0NaT3BnSFg0SzFoZ3dsNzBGaUJnY1huT3JuQnhv?=
 =?utf-8?B?QXlWbGZ0Z1JUTFJ2ejlzR2oweVZvdFQ1VnI4MXNPSmJac0xtYTM1dnU5RHJw?=
 =?utf-8?B?UjU3N2J5b3F1YytkTnJZV3k0U0pEMHRlcDFrNzRjZHZsTWxydnJUdnIrU3c2?=
 =?utf-8?B?bTdSTElaZlYrQytuUmdOTTJKa1Z5d0NVeHh6elBXWVQ1Tk50QzBtRVVuM3Bl?=
 =?utf-8?B?U2UzYW1xZVZVT1Y1eFVIU3huSDNwOWtEZE1HbDdxWWpyMGcyVW1QZ0wrVm1U?=
 =?utf-8?B?eFJmdHhTSE9EMkQzUllzcncvV1plSjZpVDl1Q21Sa2NTbktHR3BtL1g4UDQ1?=
 =?utf-8?B?bVE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: a752b80b-8206-4dc1-2698-08dc74b51c8a
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 08:00:39.8688
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4tyIkQIVAn/UBlTCkPnpnDTfdO0BmCH4VvBEZAWffqFR+nufFLPmUMcoOLCK0UxG380tYsFKt4z/BzwJpc5QqA82feKv+lezR3dN2l30Z0Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010049_335381_5EEE112D 
X-CRM114-Status: UNSURE (   9.01  )
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
Subject: [PATCH master 2/3] common: boards: move dependencies to wolfvision
 board code library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since hardware ID detection has been moved to the WolfVision board code
library, move the Kconfig dependencies as well.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/mach-rockchip/Kconfig | 2 --
 common/boards/Kconfig          | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index f373624f5c..e7c0c634aa 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -117,9 +117,7 @@ config MACH_RADXA_CM3
 
 config MACH_WOLFVISION_PF5
 	select ARCH_RK3568
-	select AIODEV
 	select BOARD_WOLFVISION
-	select ROCKCHIP_SARADC
 	bool "WolfVision PF5 mainboard"
 	help
 	  Say Y here if you are using a WolfVision PF5 mainboard
diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index a2a51155ea..586a54d7ca 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -17,3 +17,5 @@ config BOARD_TQ
 
 config BOARD_WOLFVISION
 	bool
+	select AIODEV
+	select ROCKCHIP_SARADC

-- 
2.34.1



