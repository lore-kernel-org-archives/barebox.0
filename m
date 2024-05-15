Delivery-date: Wed, 15 May 2024 10:01:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79aA-00FWKr-1m
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:01:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79a5-0007zc-Bq
	for lore@pengutronix.de; Wed, 15 May 2024 10:01:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=; b=K01Iw5IgSdWzGwb4MQcfoxB7lh
	X+QjATKYdI7FIPVB0a+NrCVbLz02USd1LBk/sCROmmbot6mD/0IorWva/qkRjBKV2MPD4kYYabAA0
	Y3JsQajj2pm3D/VYcRVgzqiiawNkhYgJcU4zmZOQSkqjCR1BJ4Ef3ZNosQKXHsbJkIFXpB1NqFoL9
	dd+Uzenmi1M5OT4Io6hTlJOAXkqu2MZz3vB1t4ZhtxI6LKhVpiexGSOMbrrR5hgZTtYV7KAbMWI4Q
	7zh+ixZ2F3kGbLaH7FXSiwAOY36TALptevqP3afl3pW4nw800EbX9NQ525lbB3Gmxb1EJeexlAH77
	1L85GIvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZG-00000000s4i-34Fj;
	Wed, 15 May 2024 08:00:54 +0000
Received: from mail-db8eur05on2072f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::72f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZC-00000000s1Y-3ulO
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:00:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQPAqoKDWUND4dbRgSsQCbWaV9jfzkroF6eVXCOFyNwYm4YpwLiLzuvBJmmz9II4LyJr8MiiwpdvSrwMb+Gk+wmwB+iWFnkYpXw2/1GynuMe/pQjklviBccrrBzYis6hDxgi8YpCl4jclgtRM7wUgdwfQVuS0KkSqD5QOcD1YfGxQS1CuuNUMSnPKzFKJhGeiC6zU38RltSv1o/ydDy4DSp+9c8qwkkX0Hww0mSoJDhNSpa/npeYKEEvHQkbqgGea0BcN1aNvd0Um3w4swPGmvhB1FZDiD9+JtQ+uHqB3ZCql6navVIsmvaFUlICwPxw4In6pNmsvAfVqdkUNLYMJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=;
 b=LnJrucGaVJ0aXTxX/wcwMN4kchwow+s0XobGHT8LahsvLHCJ8sfmPOhXXwKyhi0zPsfHjfVDrU/rA4rgxuCKcxMn9oF3VFuc3+6we6PiW2GehJLCLs0dMDJ20qRBsNiJwjH2DLg3nUAx4x+OeElLYh4PGT0br8xaAL1ROQmEYaQs5/hjAYBvZbPorTSecl2QyPJbN9QiIEZQtP5W1huP0YhC1adekSYhqGfNc7rpVulSvqUc1/Dj7yyfmzvPFKXPisShqW2o6g5e7pLDqg6ulHfEjI8YzgM0AuUIc5emS92y2f/XZTP+osYI1mvG2KNWBknp8X73usJb3gPSYLhPtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awICBV+ST1HBebdHtbBEp5QfB4w3UywVZALP0BhcjZI=;
 b=WnldYA7scFtUrgV/hCVSR1XAO6E6E6DwO/AGl7tWc0OHs+e34k/ih1I2dTBpk6jsoNyacPgy5MIZ7NyPhYP9jspftf/2hyVZo2t0LnEw3r31nyhJ1Tix3JqdcuMEZqbsDtx4+/CzCpqI4rfupCr20qx1S/inKMks2A9a8JiyBvY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAWPR08MB9639.eurprd08.prod.outlook.com (2603:10a6:102:2e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 08:00:39 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%7]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 08:00:39 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 10:00:34 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v1-1-a58c8ec94f48@wolfvision.net>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715760038; l=645;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=7BcMkuZb40dj6a26qawkFfrDqn3Wu9sjjtMftYyYZKY=;
 b=1cvB5XiB9qazLRf3uqyQJyKmF8WrbSRa9o70f5rCxhvOGXHl2+VH41ZU0VT6tQzfzHzZFQW9r
 wpcDuTTSyUCAFsYcEAyCN4nAvn8R9T9E9FSJ0YCNpT2GAwKaBaYIOIU
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR08CA0260.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::33) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB9639:EE_
X-MS-Office365-Filtering-Correlation-Id: 4203cd7d-297f-47ff-44fb-08dc74b51c58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|52116005|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1o4K3FIYXFqT1RTVFlRcHlCRVhvSTFJK3ljSGxhOEhHS0prNzJkdGhCWVFQ?=
 =?utf-8?B?SE9pMW9QR3BZTHdMdm9uejFkMy9WWGViMXRVS1FEYy82djdaRkFWTWVwaGg1?=
 =?utf-8?B?eVhQVUZwSFQ0V1gzTE15RkFQWHFDR2Rncm5DZStXUmdwRkNMRHhBN21IdC9r?=
 =?utf-8?B?Y2E5NTlTcVYwQjJIeVUxU3RWcWpiWm0rbUJNTklCN2FBWkxMYVpkYzZkQlFS?=
 =?utf-8?B?Q2RUcUQ2Unk5bjM1bDkxcm1WVkozVjhjV2p4SUJkWmJMMlptY3FsUEh2dnNH?=
 =?utf-8?B?QjdQZ1I4YlFjZzRhbjM2cDYxSGVyT242VjNHN1diUit5THFpYUxUTVNLSzUv?=
 =?utf-8?B?a3dJQTZYN1JyWUlWYWVHbGFOb0FUZTR5TUY1YjNScHJuNVRZK3dROG9lSTNW?=
 =?utf-8?B?Y0NMbTBwdHIwYjhtVFJoaHdxMUxsUTVHUHhIMkNXK2xRazZQdi9tK1Q5VVR1?=
 =?utf-8?B?UjZacllKbVBXZDBBQUlQTUVRMXVnQzFHSlN3VEpXWnBsY3hPckkwSXkyVXAz?=
 =?utf-8?B?cEVtSjV1a2FpQ21DL0YxR2lZcy9lNEUzRHZpaytDTFl0NERFK1dMVnkxTStl?=
 =?utf-8?B?QnRYU3BVRm1OelNBNm9COXNoK1hvR0t6T3hHK3l5WGNZSGgvRjE2Kzh4b0g2?=
 =?utf-8?B?dG9GM1EyWkJVTU8zckk5Q2RkUCtZaFRJYWE3QnV0V0ZsV2VaRzdLclN6clNi?=
 =?utf-8?B?V3NEcGlzWk5jbndTS3U3Wkc1Y3VmRDFvMnF1cDdqMEp0a3VrdEZJVVhCemhR?=
 =?utf-8?B?WnRkcVRrQU1XY09naGRXakY0SEhvaGJaTGFIcnhXUnRJQ1JzaHc3eDNwMkdp?=
 =?utf-8?B?ZVVGUWVmRFdGMWRyNjJoZDE1dGplb2E0alkrcnZlNWpJaUxSeDdlL1p5eHRp?=
 =?utf-8?B?OGVEa3ArWlYyRFcrNlVUenR6Q0h2VURkSFhUWDRyeFVKZ20xWTRkQmkxSGJw?=
 =?utf-8?B?MmpDRDhPWUhRdThTLzdxVnhheGhNNmVQdHB3NlRBUUdKZUlpUEo3bUFBcnE3?=
 =?utf-8?B?a2ZvYm1UUkpFUWdpMThzN0E2b3B2ZHlFL01Wc25ZQXRTNmlWWXR3RVVkSThH?=
 =?utf-8?B?N2YzVTVFeUpVa0ZUaStNdWM0OVoyckp2Qi91b0dXZTRXcGhPQjhXSndKYU9J?=
 =?utf-8?B?c0J1aDVsRWlBVGk5NmZVeFo2YWxydkwzakl1aEFTWjFhaWh1YkhRZVNyY2or?=
 =?utf-8?B?RjN5NXkzSzZzUXk2SmMxZUUzRUwyWFZrZXRnQytSdEh2VEFkczhLUFRCVkdJ?=
 =?utf-8?B?eWJLMXNoUE9aWXN3YkFXbVE4YVBzTmVqblo3T21qUVp0OElUUnR3c1lDc050?=
 =?utf-8?B?ZUJrUXhnRlF5MDdyYU1POFNuY1BaSGQ0ZGx5MHFqMHpJSll5ZWJCaE1obGxP?=
 =?utf-8?B?cElLVUpNbFdQU0s3M25BM05EMGpPY3dPSlhhNWVEaVFGY2ZTS1pxQXdJTWs2?=
 =?utf-8?B?cFhLL2p1ck1CSDVCOFhOUzZtVU45RXBkUTZhQU9uOGVnQW5zRG0rOTZaS3NN?=
 =?utf-8?B?TU1Pd1RKRnF0YmI1R2w2T0ZJYStBeW1ZY2JPMzR6YWlPbkN4WjRDeDZJVWxi?=
 =?utf-8?B?RXpCRWtWdERuSXllNWcwOTloZGtJWjZtcDQyZVdzOWFhMk1oZW5wTTJKYUFV?=
 =?utf-8?B?WjVDMFdRenRGMzU1ek1vWXlabElZa2ZoTDZIYVFNUzIwdWZlZ2FNQzVkaUlI?=
 =?utf-8?B?dGdtSTE1YUFWMkY2WFdWV0hZb2s4b2JhaWNUYzdJOFpuUFB6L1VhTFFXdVdJ?=
 =?utf-8?B?M2d6dy8wcmEydVVBQTZOSUVOdXp1MUhjNy9QNDZEOEtLNGN3ek04anhETXZY?=
 =?utf-8?B?NmsvWkpQeWo1dmdsMmpPUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(52116005)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2dXZEgwREFDa1JpSE1Gem45eDlnK2ozYnJBeGxYMEphNExqZW1RbWgzcStK?=
 =?utf-8?B?Wm8rU1VYazZoQWFUT1NRSjBhYU95K1FDWjVKRUhxWHJ1YldLc3hFZWtnK0Jk?=
 =?utf-8?B?czZOOW50cjEreDBCcTdaaVZWZVJtdkFpUzE3S2NwZkw0RmZlT01Za3lGUjJr?=
 =?utf-8?B?Wm9QazJZeEdIaHFUVnViQnpRbGVqUjJ4L2xReHBTUVd3MndHSWFhTlUzeWs1?=
 =?utf-8?B?VXRxaXEzaXdRdGlaNGRZbk81bzNoM1lTYVJtajNGdjc4blhhOUdaRWs1RUww?=
 =?utf-8?B?VmdSc1lUcTFWV2RhQ1A1RVBwdmVsMzFMbXpBVlE5YnVxY0JxbVBEZHFkRitm?=
 =?utf-8?B?cnlUNDNEeVM3cHB4dHppUGIyV2MyVEhIT3R1Y1dMSzNtZkVCaitkMUR5V05z?=
 =?utf-8?B?d3RmdjdadHJrcG9hWDdUNWtlNzYySm01RVdabTVFNU05b09iRmwxWVRtNmYx?=
 =?utf-8?B?czBiQ2pQZmZYVUF1SnpzOGt4Z0FLRjN6b2ZzMEplTG00VDd4Z1djbjFISjcz?=
 =?utf-8?B?eU1xRy9aQThHR1h4RWVQMWorQlNDN0FQYm1XbzNPaktiRWw2YTlTaFFjOG11?=
 =?utf-8?B?M0xYeDNOcDhMckdkZXp0M3hsUlRqekt5V05qOFVFaVhxR1ZNbDdkMjlxaEha?=
 =?utf-8?B?SnJ2amZSc21hRmEwTHVFS3R1eHkrOWxCWFcwY0xPUzl4N2lpVStYMUFUYW5w?=
 =?utf-8?B?SmlyUkg2bWdLckdnWGhyaWJiTGpTQWJHM2RUT3ZKRXBsUnhBd0E2Mmx4Mkpl?=
 =?utf-8?B?NGh5ZTlpeEkvL1NYeXBnSFI1dzUzMVR5VG54anFNaGZGSC9Nd3hqNDQrYXRJ?=
 =?utf-8?B?YkdCNWpSRzNRSnQ3d3NhWkl6WElpU3JuSjA4UjV2V0dBZlNIclNMNzVqa1Jv?=
 =?utf-8?B?MVd0RW5qa1QxWVN1TldVZDNqcGdyZjdzUENwcHdkODJmQS8vc0psakJvTG52?=
 =?utf-8?B?ZHRtUkZKVktMeDc2VisrYmFLdC93clNZOVVQVkMybExubjU2elJXRVM5bFcx?=
 =?utf-8?B?RVBZajBBa3VlVVRjblc0T0hhdG44WHJlckVqdTZwakRKMzcxZ1VHTTd1YzhO?=
 =?utf-8?B?ZWRrQjZRSGVQSWY0bU1nc0pDWkRYc1pieWtFMTZOWjFwQUtEVWFFWFMvTmxz?=
 =?utf-8?B?YWZkbUdTVmZMK0dOVnJZNlEvOGtDcmxmRmh2R0p3NVkvcHh3cmthdXpYdmNj?=
 =?utf-8?B?QWVjcUNsbEdFaUw0SUxkeU5NU2ZNNWdNRVpqR2ZMNVJSSnpxazJzQTJrdXdl?=
 =?utf-8?B?UGpBYmRJTU9ydWxPS2dCU1pvVUZOdS9xdzd3NXFGVlc1QmpsSnZHMGx6SGE4?=
 =?utf-8?B?SVZ5YitEUFZCY2xNb01MRjNWS2FtVUZHYml1NW11V1RiZ1NRZzhIRjdCY3dM?=
 =?utf-8?B?dkFkQmpKTU16clFFSEpDWWpiV0JrNXlxZUsvMVlTSFpVVmhyVDdwZGFLdVpQ?=
 =?utf-8?B?YjhJVkZjTzV1Ulp3cmpUWkVlaFdYQmxQNzVIVzJzbFo5cUZkUXMySVRSQjQv?=
 =?utf-8?B?azNRZ0IwcHVmcHArRThkei90d3FkeWljdVBZRVFQNTFwWEx4MmFkRTRXTzQ3?=
 =?utf-8?B?U0NOam1RdnY2cUV1T0xsTVJ6MVFpSElPQUR5dFo0VGh1SEhiOGZhN0FZc1RI?=
 =?utf-8?B?emU1TlovVjNNNCtEM1Y5RVZzOStocVVQaEx0RWw5R29RYUtESVlPOEsvWVpR?=
 =?utf-8?B?VXVEcUJzUWxxVWZhMlhmalJUUXcvV08wOW9hQkxOTXc0ZnpESStZcktXMnpD?=
 =?utf-8?B?U0lqRE9WR3BMa2ZNNlJTT2w1RTRtd0w2anFiWEdGRzY2SGxsYkovZ0FPcGIr?=
 =?utf-8?B?N1J6T2R5YnhUSTdZVkIvUXZ1dDAzNThGVkRTNUJaL2RBV1lIWFRMUWNHN2pU?=
 =?utf-8?B?S053Tm81LzUwWnlxakVONkc2U21zZS9HMUtkOW1aSHJVVTRLRzV5OEJVZHR0?=
 =?utf-8?B?TEg2NG9nOE02MEZpaXlZVlRzYytha29WR3g4cEF5ZTd6ODZiREptL1diQVFR?=
 =?utf-8?B?SW9ZUFV3dFE2YnFNemJ2ZUphYzNBR1cxZEpNTytJazI2WnRkcmptYkViVjlW?=
 =?utf-8?B?Qi90WHVWSXRnQi9GQW9rUHR4TitVdGlUeDN1S0FhU0xvck1Bc3NRUS8yRlJY?=
 =?utf-8?B?a3h2SXVuWjc0S3NWWnhPUUNLd1pDbWl4SXJ3MU8xMHArc2t0MzVYdTZ1VXp3?=
 =?utf-8?B?SHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 4203cd7d-297f-47ff-44fb-08dc74b51c58
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 08:00:39.3835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ysmyMwSYHoU1bSISOcnxZ2KAlLPuPJ15bGRUEnTfclmQDpAL3IMdWXFTY9AiyHy/tERB0eH6UPDw9rKCfs+Ik41oc0MennZ4+ioHh1i9e8o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010051_015697_8C1DA883 
X-CRM114-Status: UNSURE (   7.31  )
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
Subject: [PATCH master 1/3] arm: boards: add pr_fmt() prefix to wolfvision
 pf5 board code
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



