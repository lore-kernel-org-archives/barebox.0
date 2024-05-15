Delivery-date: Wed, 15 May 2024 12:36:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C06-00Fg9J-2d
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 12:36:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7C06-0003Ob-2f
	for lore@pengutronix.de; Wed, 15 May 2024 12:36:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Content-Transfer-Encoding:Content-Type:Message-Id:Date:Subject:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S7TNUNfqQ8R10EaXL4g5r1O+a6+8mtYB2eSCDkb05ak=; b=VzUtbk0vGoq9CpDjJCfVBYDA/w
	eiXeRFqYIqVjMp2LI2bTnx5imU2W4D8Hr03b1dFN/qCcrCoviZsfzkppDjZHeL4eUuNDBuxaUbKiR
	JJ9vEQCaOBhdFyfjgGiLxJVReoKrzauW7OAWpuWt1XJY+tDBk3HlmPjjpc3rAvM1gBTjB4kBimi/s
	sc4R7ID093Ma24Pe9RgE6K9vj2phhyChUE4PGWJwBDCVYAlyefA3Al70FUwCb5RayBl+L5+Z6QbrO
	KEfLyhbeNRUOSBMw2EJ9gOwm0GpI6GaMvFTuLEP4GeKQKg2Sc0/S3AAnIpPbm+2gHpP8IjAwhiWNH
	9FEb/Pbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BzY-00000001FT0-0ryS;
	Wed, 15 May 2024 10:36:12 +0000
Received: from mail-am6eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2612::700] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BzT-00000001FSF-490T
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 10:36:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hnq7bD7sxo8cI02t0+lve9BHXrJ7FaS4grCC8tl2WxU4m94AXjPx83CrwiTmypwdEZ6aMEUcqkCTVhlIEASZJCnukkYthpBS6dllQK0jA11plICdR7UA/uw4JAn5JbNQN/Bx+7uXejbWio9yJFLTR2befoAADvjz94APrbllGIu7NeBvL710vxdYopCXnBHKFjKJP16+b3k9VUQkJ4nV0XFpiJ2z46kLIGrrL8C2XZYCRV8zkMJ3UGPm/THzetxbGlvaGYNV1hqSNF+OUAIzNZ+YFdn9VVUXvv8DeiGogQ3I3T3V6y+ajPi8soPJJEert8Bcf9M7S2W6WcikV0K6ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7TNUNfqQ8R10EaXL4g5r1O+a6+8mtYB2eSCDkb05ak=;
 b=f8BfkBY6htgZz0gCJLRj8v9tEt+BNDl6hxeulhrd3X4dEg91Lf9Pg85Icts5LRDeWuM+Qky+h0QI+SVNgQxgecPKbOrevX2NnhPdLaX+SJYNhiinOmMCwu3P+XH32ClwRrTDD37nkCda3DMcy5cE1BtHFT0mpSRDCL9CK3xkjQLNM+DwqC3c0WMyTEYZA8T7iNWK6oBlms6zOgfcFGJT27UiPs16kCZ32lhCg147lcJ/Psm3YYB2zXLy5hHPLSrsJZvJObMPSoILfYCs+MZtuDLAchAqbg02YdurWknrccIGxy7mv58YZQTQxer1U5ipMxAlovsrG5hjj7r8JosSRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7TNUNfqQ8R10EaXL4g5r1O+a6+8mtYB2eSCDkb05ak=;
 b=DfpW1OcTD2MI5b4DCii4RPP2E51628fI8xeCCgek6Cn5pK3j5IMWfvx+pZZeZqY4/XI0DWcndj1z0DlewucCA9vsOTbgMLhUbs4zwUijJQVDxepTZE2iyRqz3WalZdxYwZQFadSwldel3Pvo4r/ifZVuBzMRrYV5AVfZLz7RmzU=
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
 10:35:59 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed, 15 May 2024 12:35:54 +0200
Message-Id: <20240515-b4-pf5-fixup-v2-0-7c2aff3f7465@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAqQRGYC/22OTQ7CIBCFr9LM2jFAIaGuvIfposXBkig0gFXTc
 HcJbl1+7+X97JAoOkpw6naItLnkgq8gDh2YZfI3QnetDIIJyRRXOEtcrULr3s8VuWFWz2oQPe+
 hRtZI1Wh1F3hMKVOEseqLSznET1vZeHP/F24cGU5KG01mkFbq8yvc7e/W0VOGsZTyBfyiz6S1A
 AAA
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715769359; l=1326;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=GQTZ7cO6/czuC35fGrVcg+HOuZR0CzuzAsgVGD2ahoc=;
 b=ItHroMd2IT9/oaoKlfN+IrC8jx40jTz7P0Ixdn5dFORU/6Cv7Ah+C1HFpLtZSX+hbL/QNoLMR
 FEFd6z/U+WbBnAfGwenYOR0LgCR8zCM7C80VCDhxSJt8zntnRh9Ndlt
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR09CA0156.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::40) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM9PR08MB6083:EE_
X-MS-Office365-Filtering-Correlation-Id: e55660c4-fc5e-4246-efc6-08dc74cacfb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|366007|1800799015|376005|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDNJaFptSEZUNmNOM0dDODNzbGFXeDM4VEdEdkpENmNUQTR1TTYyQnRzZWQ1?=
 =?utf-8?B?YkJ6bmpGUjZNdmwxa1JDMU1BSjM4d09pSGloSVduS0FpMXFaelk1enFKQklw?=
 =?utf-8?B?dU5yTHlJM242WmN0UFF0TkE3eWpKQldNNDVScWdobGRGRitqVlozZm5WQkcw?=
 =?utf-8?B?dnlRZFIrWGdjUVI0Y1hzTVFtSDRncmtqakxKSzhqem9FdUVDSHJqRVlrNk13?=
 =?utf-8?B?cmZNb1dLQys0WHVrNU0zM2YxQ3lWYzZWQlJ3djIrV1JYWnZSVVZ3ZjB6YnJS?=
 =?utf-8?B?WW80S3hXUjFWYjJCdlUyTXBTQjhObVpYTStrOGtSSFNZMjcyeU9lQWllTDQ5?=
 =?utf-8?B?djlwVFRGcFpnelliNGsrM3ZkRGQ0SzdQRVp1NUVnREdSVHdUU0Vnc09iaElh?=
 =?utf-8?B?cVQreEs4NG1obHJ5WGplN2Z5Uy9hem9UK3RrRUd1WnJMM0JLRWhWV1pQVHRj?=
 =?utf-8?B?UDdhUnhBSExVUUFDd0IzcXNRT2FpcVJjamNJeStrRVZ6dzRaRll4TGJSZCtO?=
 =?utf-8?B?ci91L3NKQTlhT1VHa1JDTEJrQkhzTGZHRVBBdVRZYnYwcWc4S2lCWlBLRDZU?=
 =?utf-8?B?d0hOWE9XTG10ZXBlYjMxQWFmYmdFRlpKVkdBMDJnWnlKM1hMNGpoemNjZ3pQ?=
 =?utf-8?B?NlJTT2w4WEl1NXczdzdGTUhhZWd6VmdxMDI3T2F5YXhXMFhhbUlXV1d1ektj?=
 =?utf-8?B?T09PVUlZV3NxOWd5a3Z4VDRWeFJCU1U4VEovWTFxZTNKZjF1QjRaVDl6eWtq?=
 =?utf-8?B?ZlFBVkxUUmw2aEFBQVBYcFFoRlczZ3U0VmZRZXZIdFRjRVhmZEZZc241Ky81?=
 =?utf-8?B?SkxaK3hOK040cE9NbUI4dFozSm02TDVsdFgwenJyY1RJaUxCUFJSTkc0OW1h?=
 =?utf-8?B?NXd2QXJYRDg5U1RyVHNhNWlkQTMxQktVY21ZbGxrMmtTbjBEVElaeGN6MlJh?=
 =?utf-8?B?UkhtYWE3QXZTaC9TNVl3VjZ6L0RxbkUrek9FRXEyNFJqMGxCQTgvUHZoMGt3?=
 =?utf-8?B?WHd5a2RqSjl6NW1XNExRVGp3ZVo5NnlGbU43V0tORUplSE5wclh4eHVtN1RK?=
 =?utf-8?B?dEtTUFMrc3BlODh4WTMvcmV0SVg3K2NueFVhR3FrOGl4ZjNNRW1sR1RrZHhj?=
 =?utf-8?B?UUQzK2cxY1M4ZlZnMHZpRFVaWTkwQURRelo1Nm5WNkxVMGROMTcxN096Mmg3?=
 =?utf-8?B?aEJjS1hRZWlEWHRBV3VneDRselI2V3pKaWVpc3UrM3Z6N0FrSWllQU51QUFZ?=
 =?utf-8?B?MHdVWTdxRVB3WTBsVFNTdlhlK29xdjRoSGdCekRwbnRmUXNzbXMreWw5VzF5?=
 =?utf-8?B?cTlDMjl2eXIvK0dnY1JqNkN3MUg3bUJrNTUrYVovM1lCUjNrejRrdnJONUFF?=
 =?utf-8?B?L2NOYmtjOEhGZnkzSkdvc3R2RVNvUjR6Q2RzUk9OT0NMTExsY1VUQTQ4WjNY?=
 =?utf-8?B?QmdOSFNDOW15YkhnVWdDb0ZiTlFzbnhtd3pGOUV0RTUyOEhncHJUZk9BbklF?=
 =?utf-8?B?ZytEMzhISjV4Yzh6UGR1VmRCVzVRY242RWJBOUpTT09XbmliYkRsWFFwVnVp?=
 =?utf-8?B?TElPVGx2ZHRaVlJNZmNreitudDJlOVBNRnIxNVdiVVJqQmkvOUFGT05LSWVq?=
 =?utf-8?B?Rmx3V1dGc2N6WE52aEdHd0FIK053dXJNR1pTUUpFMlVDZDNSc0orTzVFbUEz?=
 =?utf-8?B?VDNXTTBQc1VsVzliOURDU0JUZ1BYQnZleHdCcmdXcTVpNjdVTEx1cFZnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(366007)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXZ4WjRTeE9jZWltY01jWVB1bEZqeHpPM3NCMmFKOUEyY09jQkZUMHBRN2ZS?=
 =?utf-8?B?Vmt0UTB4ZmQzdHZxT3dsVHVQUVRxWUNSKyt0emlyOEJhZVYvMG52Q0xIVkRN?=
 =?utf-8?B?aEFndjBBVThFRmk1Nm1IUkcxVGl6YmxWYlQySThnVlBIVW9SNDZzdG9DOGtF?=
 =?utf-8?B?THpTVmlWNjNzWlJkRWliWlRBOEtUaS9MR0VvZGxwODBQRHp1ODY2SW0zSW9E?=
 =?utf-8?B?Tjg1aVZvSkZHMDUrZlYxbkdpWW91a3BIdGRrVXdKbnVpRlZWejc2ZjRkL0RE?=
 =?utf-8?B?V0IrUUlyeWhlYU5JVTBSYThHM2ZNVUswNVlOVkVyZDVuY3UreUlFbDNRT012?=
 =?utf-8?B?N2UxcFJ2azRuUUZWc0ZLQXFBRklGMTBVdElNQVQ1bHNXUERmak9uaDR0VGVj?=
 =?utf-8?B?MjBnM21ObFlzOGFnNVVXMWlQNmRFK1kzLyt0Q0FpMU1oYUxGWlBrK3diT2tD?=
 =?utf-8?B?TS8xNGJKOVlDbnk5V0ZDeUwwcThYUTc3TWdiZVVSOGxUc3dxcFVMSHJ2OHlQ?=
 =?utf-8?B?UitndUFtWStIdUdrM01aVUlZZFVudVRMK3hTR3grRGFRV0dGOVlsd0xXeGRZ?=
 =?utf-8?B?NE1PZnBGVUx3NFJtejFKOFJVaElSZ21RY2k1Q0x6MWNDaVArWkRXbnE1TTMz?=
 =?utf-8?B?Uit4SE5VL1lLanZ4RDdXVG42V0tkbkZBQkVianRacGFhc01wRjZoSzhWKzJS?=
 =?utf-8?B?RG5lMUNvbGcyQWxOMGZSM242TFRIUlFiZFFXNXJLOUNGeVpCSDlpVWlUZkM0?=
 =?utf-8?B?ZTljM2lEcTJiNllYeU81dHdEaXd5dE5DVzFFVU5pdXRYdUg1NXpVakVpeUw4?=
 =?utf-8?B?all5K3BMMUxZV0pYVVBheHJuNVpJdGNnY0YyaW5kSk43VVM5ak03cGxHSEh5?=
 =?utf-8?B?YllmQ3IrNm1QUFR0dXdCd1UzNEd0bVp5QzlrMzRYY09qS0hqQzc3QmNpYVRw?=
 =?utf-8?B?cEVCM0xXeVZjRjM2c3JmN25pNnY0YmtxYXByeG9sdmI2UjlLdmg5T0hxZ3Vw?=
 =?utf-8?B?cmc3WGJvalAzVWhLS2NiYTJtUVNQMkhVS1hYU29MYWFIYnovQ0pHM3dtTm83?=
 =?utf-8?B?MHlQY3dOSGpiQXRIRktkbnNReTNrQTlMUVVJNHRPWUx0VURlbTE4WWVnb1Z0?=
 =?utf-8?B?bituR1VYNksxSzg5ZzM1K3lEL1JSNzRkbDNRMTBSWno0VHUvVHNTOWdmUEVW?=
 =?utf-8?B?Tk1BcFFuV0FYTXF0eFB2VWdDWkhYZlJISm9zSFVCZFh5NVc4Y0FyVlAwNCtN?=
 =?utf-8?B?Mk94SzYySkxCYnMxZllhSmxtZHB3VVFacXpibUI4cE53RlpJY21lQ0Y3aVdn?=
 =?utf-8?B?bmNhU2FaZDBiTm0yZllCU2pqQ1FyUzdpRkg2TkJNVnB4NVlwZC81ZVJKeUVu?=
 =?utf-8?B?WXRTYVg1dktJQlgxSU1xM1NaWnIyUmVGM1VNeDQwRmt3S3NpZ1VuZEpSWS9p?=
 =?utf-8?B?Y25FSTJaQkNBY2VoK3l4OElxKzhmNDBXbU1XWFE4aVZ6Q0NLdldjTnV3UmE3?=
 =?utf-8?B?UmVMa2RyTGx0ZE85LzVVZ0tsN1BLSm96M2FNZWlSLzY1VFRUTzdJTUxRQi9a?=
 =?utf-8?B?bTNnUzFHTUpOUlJqRWRPaG5PWUlnOWhBSWF3SlcvWlFyY0haYmxqbVZQOFI0?=
 =?utf-8?B?WG1VbFJJeWZOVy91bTRQcC9uY2xGRXBUKzhHb1A3bmxQMTZlQ2YvR3N5bjhR?=
 =?utf-8?B?N3duTzJWVmNTRGVKQ2hVNnZyaXREYnFwbUZCTnZxMEd3TStFMlEvQmlDQlVY?=
 =?utf-8?B?WWpaU3dsSWdrQUQ2aWpUMGNXeFMweWplQitmNWEzWTRXV2VpMW5qVXpZaDNx?=
 =?utf-8?B?V1N2WnpNY2JiWjlzM28veEVnRXRGZW9Jbm5sRTdQZzZoZ2FSdmJQNzBXZnNn?=
 =?utf-8?B?VkM2RlNLRUgvSTNicXZxUEp4Ym9mRDhhNjdzdVFYYXRHaVI5L003T212UVlS?=
 =?utf-8?B?TC9OUmJGVkcySDI0REw2dFRQSzJJaFlVRU4rUEJMNTQ3VXovNjRYOGUydDJX?=
 =?utf-8?B?UFFGOGhLbUVSbVBwUXZrdUtBSWVmSytJWUVuMFVTMEdzVzIzdXNJQ0FjMCtk?=
 =?utf-8?B?SmpIaVBUUzg1YVhRMlhyMUhiUHp5a2NIaWpQUHNZWXNiNnU3N3ZtZDVubWt1?=
 =?utf-8?B?ZFEwV3JpMmg0Z3NzbUFoM09HNUk4S202bDhQWEx5UUJ0YnZqUnhaWEc3TG9K?=
 =?utf-8?B?d2c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e55660c4-fc5e-4246-efc6-08dc74cacfb5
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 10:35:59.7457
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w1ND+JPNdUxObHr9Q2jCx7WjVwggX7D/56QvL6hK8DN7PsxQK02uUBW3v6nqcfkO6/3x48snYYnf2bRw0uThgZkBQdLH0Sqmy15MDfTBXqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_033608_079530_05D206B9 
X-CRM114-Status: UNSURE (   8.77  )
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
Subject: [PATCH master v2 0/3] Fixes for WolfVision board code library and
 PF5 mainboard code
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
Changes in v2:
- replace basprintf() with xstrdup() to avoid compiler warning
- Link to v1: https://lore.kernel.org/r/20240515-b4-pf5-fixup-v1-0-a58c8ec94f48@wolfvision.net

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



