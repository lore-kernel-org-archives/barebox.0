Delivery-date: Wed, 15 May 2024 10:01:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79aE-00FWLT-0F
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 10:01:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s79a7-00080f-I3
	for lore@pengutronix.de; Wed, 15 May 2024 10:01:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vnwU+F/4/I1O3zmudxoP4L5cnHqlj9DDVHlTnnTlJ4k=; b=fVexhM89I5B/ZcfyEnmLwLdGwD
	5BodFgwEj+FGH9K5/LCwI0vK2CkCcn5uGQrUyBkbFug52T+mIw9WAURREbBF0h6V7/vVLIy+FKUh0
	U1SGmDV0wp4hPnE5/Dpe6y4QytT6ize/Px+nu6yESdce3DCvCaFpLMGdFHtJYJvA7i39QHbhbHWyo
	j9PwI9UJyUP6BF/xVeey/FslD6zUrrtooBAo4eXlcPKhI09oWbYNqAuu39NiFv+0VyXZsfiDvUQ4B
	AXtzMx3pfndvD9B8dOdUrg6QDtHF1Qm1beKrCk6thLnhjQBCDWs1nEo+/3u04cKeMfR41o0g5onzP
	UJDE9WhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79ZD-00000000s3J-1nW7;
	Wed, 15 May 2024 08:00:51 +0000
Received: from mail-db8eur05on2072f.outbound.protection.outlook.com ([2a01:111:f400:7e1a::72f] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s79Z9-00000000s1Y-1IxH
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 08:00:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsjSrRBBlZgKMIfo9jBv/j+utUtduSFHOfz9kRPaJ4m/R1+9gF6bxKEIQfx4io1DoVo2H2kKW4X4bAJqEBI9257HOmylw71p/GexluQ6hwlGabM3a0VYhBEP9zeXw1RYL7TPHUdX3LljkCB7XCX0HEisaW2eJNQj6Gy5BoBq19G4ULu+2UK9dTJ9Luskd5ntfgYu88hWIqQerc5NeO0Ji/y7pePFTAHQGr9mi3QM/uCjv7mVBOOphdyMTLU0AGvFQ4eRuufiEcGcAb1QmPtf2+MdHG/IZlYACxhtrlark3RiyBkCpO1DHKniLScXtE1ucnnA7+pZ/SWVtke6d/wBKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnwU+F/4/I1O3zmudxoP4L5cnHqlj9DDVHlTnnTlJ4k=;
 b=nLzWTC93q4YEVyY+Gkmnp42eFsMs2I6hC3tDWQRXawKJOTWUwPpNMMxtUPR0Xv/WBXOop6ztKZhsW5Zc0T+XBqzvW8N6ox3SVgLY45JTAlyKK27yBV0B1oCd5Z7mV6kD0/acg7SJwwn1SPnDV5/K2SyuK0va4/R9tZXla6NmJjPSIsj99ZPblegQZ7kCvsfE/ZOqOXLYUX9nf1kerUeYy409Wpbah0qIM84kGLOKnidNwJ8jaFdEQtrWzZ21DEav50DEPT7TF9YA83j8unFBpCYfFCrcIoHwcxBO/g6I1Ict2SQE/xaKWL9Y/1goduhYu9fNN4W8CW12l9dDglTEpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnwU+F/4/I1O3zmudxoP4L5cnHqlj9DDVHlTnnTlJ4k=;
 b=Wl7+Ugy8BJ0tAoNYSQkeaqptgQZL81rXjoDgQZ7csJ/CHY+o39AzsigIv2aCi5xpsX507zE15j8aZrGBhoaxq0JFYqVBFVf/lL1H6aQRtBTQRaR3LHpzADUSkVT1HRUafCe9+vVM3LlQPXKo3UBHdnhcMpH70ZEKmqqyCBO+H1w=
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
Date: Wed, 15 May 2024 10:00:36 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240515-b4-pf5-fixup-v1-3-a58c8ec94f48@wolfvision.net>
References: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
In-Reply-To: <20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715760038; l=1677;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=YZ1SfmU6LOfLG+M1idzyjQ8hUBfI1x63OLu+pTe2iKI=;
 b=HFZleB0zhEgL4LOqzXe1r06ElLVzrOV9Riys5jurs8K/sGlYm41HABwOk0G3z7mAaDDOn0dug
 NZTKhwgznbeCa8H+jxd6i1Zg8KfL/fcWaYh/kiLN+IKi088riUJdDVN
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR08CA0260.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::33) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB9639:EE_
X-MS-Office365-Filtering-Correlation-Id: 356c9533-5ade-4b72-36ce-08dc74b51cd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|52116005|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0Q0bzJUL0NXR2UxUXFPTUpmenJvZkZ0UnM5L1l5ZFJVSi9COFZOQjFmZmdN?=
 =?utf-8?B?aWxkbUVISE5Zd3ZTNk5DbW5saXh4QUM2V3RrcExsdWlNd2RBU0ZaRUtzdXhM?=
 =?utf-8?B?Z09YdWNMb0dlZVlBUDYvRDY0TXY3QklwbGtBWjI3UVJDc21BdU5kS3UyZGp3?=
 =?utf-8?B?WXhkaytibGJuMzdUYzRXQmNWd21qMlc4MVB5bFRNUEo0aHRYOWVucURWOHg4?=
 =?utf-8?B?TzZuYUZYMktnekJ1WEw0bXoxeEQ5VEExVFhmd2lVOEFMR1k5eFUvbHkwd01m?=
 =?utf-8?B?QnBQMlpkdXo5eWEzZFRaRjVSNEtiamFuS1Y0VVIvVC9nS3VUaUcyQms1MmVD?=
 =?utf-8?B?cEMwdjFjV2Zkb29WZ2lWbi9xK3dGWkRkR290ZkRHbDc3clpuWUh4R0N0WitW?=
 =?utf-8?B?R1cxcFhkQ3ZNZFBDOERyWW5CSEJEMVF3TTgzZGluZ0R5RGk0MSswSGNkeFl0?=
 =?utf-8?B?bHAzeE0zbHRjOHVLYUpzRTZZYXR4amZjS3FmVk5CK3VPRHB6NnVtTklUMlVH?=
 =?utf-8?B?a1J2VlNyTEFRcTk5RDdVWWgydUhsTGhkTXMvd0J1dk9mU2J3T1g3bkRpTkFF?=
 =?utf-8?B?aXZTUzlENlIwenpycmtRR2I1ckpqbE5ycDVvRkVrZys4YTZ4RWxza2NMQktv?=
 =?utf-8?B?Z3pmUUt2Z2lOMHovSzl3dHpTM1NZblB4b1ZZeVpIYmRvR3VQemhRZS91amZO?=
 =?utf-8?B?bU9CTmlBRHZ2SzU5NW5iWDljY0lpdmVlQjJoejZab1NWK1NZM0hZTFFCZXhR?=
 =?utf-8?B?TGVWanpnV0lRd1FQRkdZVzQzcjJSRjB1dUtOd0EwdGdQKzR0Z00yOHYwMFJt?=
 =?utf-8?B?V3paNzR4aWJwUnI0VEljOThUb2tnNkh4UkxFRFhwNEx0eFE0YjVYYUxEQVVL?=
 =?utf-8?B?MHRsTUk5d2lZMGxyQWZqL1N0VE5LbC9pTnB2RU01Wk5GUnVtbXI4V1dkZXZw?=
 =?utf-8?B?U3hRakF2RnN6MWkvM0NYWTZtZ252bXhpRlppSUNmdHRtcHluTXkrdHc1eWVI?=
 =?utf-8?B?dlpvUnlLNFdrZk44NE02ZGhxNmpuTUg3TDZRVHZuUGlWelRKaDA5U3pnMUxB?=
 =?utf-8?B?SmZ4bnVpNGkrOGlnN2xDQUpTQzFueDdmK1Z5bFAxaGdWVWlOLzNoaEFiVSs2?=
 =?utf-8?B?VERYMEFBOFZQSndvU2xGRFczU2FMdzNmS29uYWNTLzFTOHNLZzFWdmhmeGxJ?=
 =?utf-8?B?cjBUaGNrQzV3L3NpTlhlSzg2d0l2UldYNld4TjdWbU9vS1JnYTYzaDNxbTJt?=
 =?utf-8?B?bmVCci96SzhMY3d0ZG81Mk5BNDlWelNMbmpYZXB4TU1aVGVNSnN2OVNYVU83?=
 =?utf-8?B?QngydCtaYlI5MjNhYzRBcUtwakxqR0dlUVhtN3pWbm53Y0g1MkNBRS9LdDdT?=
 =?utf-8?B?ZXR1bjQzYkdSeE5NbWs4L1hBazhsbzViMWNlbGJEeE9nTVVPMUJYMUN4aDFV?=
 =?utf-8?B?eUdjSEVzbUxuRkM4UXRDdktBQ0ZnQjJnazlpYU4zeW53SDE3TTNnZWY0MXVM?=
 =?utf-8?B?ckRhTUxnaDhNTjQvajVNTGx2cDluTUFxYlJud054S3pMTWVuV0dWV0VoMmRK?=
 =?utf-8?B?Qmd3QVlDcXIva2Fuc1lZUFFsakhITERJRFZmY2xBaVA5Skt1TzIvMVhjazcw?=
 =?utf-8?B?b0p2b0NDZFBFNzZ0REdwQUkySS9GKzdYQ3g4UU9ka1R4TzB5ZDhscnZ6a2gr?=
 =?utf-8?B?eEJJdHZYbkQyMkRHNy9zUU82cXZNb3pnZDFTckVwQTJRbmF5RmFlREdJbEZW?=
 =?utf-8?B?K3B5dHVqbmJxaWl2SmpzZGdUVno5aFllVUo3aTJPRmUxZ2w3MjVrWGhGYzN1?=
 =?utf-8?B?OFVWWXI1RlJ4d3ZWaHQ5UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(52116005)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmUvZEFsSnBESFBUTEN3OUtpZ0VBVDd1TnNwK253RVM0eGRNaG5jb1lOSFhI?=
 =?utf-8?B?WWNBSTB4N3NpcVdvb1Q0c1lPZFR6ZGhyQm9uOUtwcGpuMGRZSkdxWXZQTVJO?=
 =?utf-8?B?KzdTYlJOazBXSWZDM25OakZ3blFxZHhvNzAvWVprL0xDZXVPR1BFeWdaS0dq?=
 =?utf-8?B?d25ibkpjN3Rudm9CcEgyNUQ4cGVBVVpoQzg3djVUbzhmMlBod01WZmdia3Uw?=
 =?utf-8?B?V2tBU0s2SytxaG15bEJObHpzaTBkanA1WExtRUlHQ29HbFN4OWhVOXFIdW1W?=
 =?utf-8?B?U29EQlhrZklnMmFmbzVhbW5NOTdhanJrbFhib0VEcnJvTEhHQlNRaEN4Mlh2?=
 =?utf-8?B?SU9lWC80ZHBaeEdJVzZreWJOdWVJVDVpcHB5cytDZ0t6eWxseFdtdTFMa0px?=
 =?utf-8?B?cUpidXlZSHlGT20vUkNiU3RPV2w0Q2JkNkV4ZUIxWnF2eWd3NkR3U2NuZW9U?=
 =?utf-8?B?U1c4dXFtM1dlUk1vWnVpVm9sRVlGQ0VWUDNvYnhBWXkxdWhrdXo3VGpCdGhi?=
 =?utf-8?B?MVkydWZZTVRTaEh0K1dSOExMY0JydFRSNEp6WUZGZDloYXVobG1MWCtOVWxX?=
 =?utf-8?B?Q1djaFVaYlJqWUdUUnR4bWl4clV0NFcvK1M3NHlQQkRMMnhBRkIrZkFhdVR5?=
 =?utf-8?B?ZmNmam50QzNwZ3d6S2JuOFdhNnZsYmQwTWpVQUZ1NjhMVHpLWnZhOW5wMU5F?=
 =?utf-8?B?U2pld3dOdDdla1p0NExCUHpvTDA5MHVuc2U4WHUvUk1UVkJpNU9tOEswSFFH?=
 =?utf-8?B?VURkQWhEN1M0VjRtSTZHVVFWZk91SmhXOUtuUXlwRzVRd1ZocXZrZnM1MWxr?=
 =?utf-8?B?aGxYNkV6MTFENzE4ZFk0QURheHVHRUs2b2tVbWI3NVg0Q0hDU0FlS0k2elNL?=
 =?utf-8?B?Tm5XR29VcS8xeTUrT1VhV3oyQ0hDdW9tcjdlTnE4bFZWUXYrbHlWd2dqdC8y?=
 =?utf-8?B?Ly9GYWxpVnRVVkVFcGROTkpsMERqWEh0d1lBNUNtVXAzbkozQjJWNnhHYTlE?=
 =?utf-8?B?RGNadTJTVnoxRFdFbEFTYkJXS0VkbVdzVDJ5QVFsc05TTXZuKzRyU1JJK2U3?=
 =?utf-8?B?Z0lxSkdFUTNLcnF5ZTJkOHlyUm9YRlk5RVZINmVtZG1rZWlrc0NpWjFnUTNQ?=
 =?utf-8?B?TkgyNEVxU0dmZFZrWlAya0dxeVBObnRDblFoT3Mzd0k3QmlkUnM0blVOWnFJ?=
 =?utf-8?B?RDBISm1HYkhrWnBIWXBIQmY0eUM4dHZqSWtTTkZsVnl4cUVWZXo2N1dWN2M5?=
 =?utf-8?B?NkkwblZiZHNuUDRwNllXblJ3RnYzRUZTQmhGREtMTUtDZlNKNUFJOFRvaHZH?=
 =?utf-8?B?UlFqbStuQUpBNTh5T25MU09aWmtQWUxiR2VhU1lZbzlUWnAzRUwwMkt5azBH?=
 =?utf-8?B?bXZZbEdSREwrUmt1QjZNcTJUWmF2VFlHQ0lDdzRURVlqaW9aNm1nYVVpZTN5?=
 =?utf-8?B?SXR5c2swLytxVTVYZzhJR2NUUnRBSXYxblFTL2dmTjdZNy9RcTI2RFEvaXRX?=
 =?utf-8?B?OTRUZzJoRWF4U054eW1meXk1Mlo2eUpXT0hCWTEzQjFacEFZa01oclhVRmZY?=
 =?utf-8?B?ejRLZjVqdFVmRElMV2RheE9JWkh0SlZuYWlVWFRqdTdydnRablBtMjZMTFgx?=
 =?utf-8?B?VGtvTUFTSVQyWWtTTkVZbUpIblJBaXMwUjRCL1htMERKNzJCRG1XMTJRdmND?=
 =?utf-8?B?WnFKeUlHc3hVR1JYUkt3clpqVXdtWlEvSlNiU1FQYndOZVJvL2QwR2xBa1lv?=
 =?utf-8?B?aXVBQWozM0pEaDZkTHprOStDeXFLVDh4VnpHdXJyRk9KRDQ5c1Z1ZHdqK2ZJ?=
 =?utf-8?B?R3VxZ0hGcnRLQklqVlZTWkQxcnNSYjVWbE1peFhWZEd3UWJPQ1BmOXE2OFFS?=
 =?utf-8?B?Wk14cjBQWVQxbjZxbVRaK1pwWVlKcGY5bFR5UkpHMkYxU0ZvcVVYdVBIamtY?=
 =?utf-8?B?LytKbDg4SWF1YS9XZWpBMEhFQ3NqN29FV0F1anZXSGE0R2dibFdQTjdZRHBv?=
 =?utf-8?B?TER4aTNRSU55ZVlpdVd1TWRGU2VIclF1QVNKaGMyUkZIVnhjZGNNaHEvSG5D?=
 =?utf-8?B?NkZaeUt5QnJNbHduRjlwRHNjSWQwbU5XZW13OXJxZUliL3pTaHk2MGJGZysw?=
 =?utf-8?B?Ny9tKzhMY293cEd5YXRnR1dlM0o4amNDZFRwWjFYYjJrajNJU0N6aGhTWGdj?=
 =?utf-8?B?Q1E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 356c9533-5ade-4b72-36ce-08dc74b51cd9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 08:00:40.2773
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y+ncUdmMCjYprnBPq0H7rnLhsHHww+6a+AxM7W/LQsGbto5N6SYfBlVHfv63aLCw8m34KQNrHmsiFJaDezYqjQYa+cs8tRSYKX8VmLeTOns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9639
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_010047_545003_F69C8335 
X-CRM114-Status: GOOD (  13.68  )
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
Subject: [PATCH master 3/3] common: boards: wolfvision: fix handling of
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
index f483918cec..6cb76250dd 100644
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
+		*overlays = basprintf("");
+
 	for (i = 0; i < num_extensions; i++) {
 		const struct wv_rk3568_extension *extension = &extensions[i];
 		const struct wv_overlay *overlay;

-- 
2.34.1



