Delivery-date: Fri, 05 Apr 2024 16:05:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCd-00D8A8-1y
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 16:05:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCc-0000XO-8O
	for lore@pengutronix.de; Fri, 05 Apr 2024 16:05:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IsRu2AeBmNeb0EQmTCgirrPxC6MIFo4vwx15TcfScA4=; b=ElBTqRhCTectC23u2UP/NWlKEN
	FF1NSetKAEns1q2Z+BO13yfor3iZuHrzlVw9jw4q0xzsiy8nt49oBcdchQfBy0Hgpv4V52Za1qujC
	y+S1f7jEQ5Ch7UZOMHhfXsW9bsQaudruGrHbSdr0eFAG6kOShui8oWqVRie2x1DzUE28n/fUPi9yP
	4SDyeUQ6JNMZ97vAjLETsY2Y8SU9D1MvuwQjs7ma6uVbG/k9Brm//WjUiB8Tu8LBWMLoYwqY2AUPZ
	TX3ctruX34SXEIhkO1Tnvtqq0P7iYe7/yrLEmkJNeEcZGehpMM6Ds7BKHgxkFovWskjEbAfEuD+W5
	nF9jaWXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskC2-00000007MBQ-1iAJ;
	Fri, 05 Apr 2024 14:05:22 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBy-00000007M0l-0Va9
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 14:05:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWdMyvtGlJR/6yQxkG38MD+GR8BDZYngaZbI9zlzPAGcqbAENrXzdEK1qUrqnEu4hLQj0N1o2Wbro5W4B3cRQBrFvXi5ZmHLCL/6P85ctP+4TpOH3bNr37Cr+u/BKoqRb82fkwfyVQO5YBsm2n9Gvx402lehlsY6W46UYDvmFMwu9BiOCd9atdCPgUOmQQhANDDvw5d4NBMlAA7OfX5ENhZo9p577GDHtdeWx6quSp9hhBTcK7Z0K3hAVpGsbDkTnvghyXLXl1i7HA3kP790+VXm2iweMxqqI4ikZ5tuu6I9u4FIgZrQdmVpaGl94D4B1PqOCNQHF2lREBTicWpIKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IsRu2AeBmNeb0EQmTCgirrPxC6MIFo4vwx15TcfScA4=;
 b=lir33e3wETPvYtmdqDwoBiQ3G6/2jakQUUhLHNRHWUbOvU0TEh8a08ZbKk4Ll9HWd00GBUTwE9DHjqMXcFEl/F9hNJTV3jR/4rpMRTvSbKS338XYNt0KLkD9hGIEFqP5JSHxY28mCK7iHYRlPCq+czmPW7+1afeTJWmgzYvD2RWOCNl9eqe08bFaTv+kqWOc++ZxeomBGePrhNJnh/ntT5uCAVVuTKtDFh/RYDo3NLvpX1SlTrzJWBhWujpdYdGNromnGEe+IfEkMOmp3tQw9ZpVeQ3KH/WGP3cPqpTQVdD8vwCs9RbUZ+M4sOwrT8zDvAM1PDdHCA0P7REFK8Fs9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IsRu2AeBmNeb0EQmTCgirrPxC6MIFo4vwx15TcfScA4=;
 b=uEnkBI9slowO6XIbVsJPXAycLY4bK/2AxCI0kl+a7FcQacLaHlOIvGVvy0PfRmybFjo9aPjYt23wBJL9wbHbzDMq5LzXiSYq0jWLQW8ZzYLFRdB+L6eg8MnWY4By6RV66N6FoRgwOn01mKfCzyUHADeNjh5IsELf4v5VHx0kEGc=
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8462.eurprd08.prod.outlook.com (2603:10a6:150:bc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 14:04:49 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 14:04:49 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 05 Apr 2024 16:04:42 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712325888; l=16812;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=nW2f4nmHAxfQ5MyxRnEJw1xWxiJ1Qu1W47elg2YLKLw=;
 b=9dVUyTekCOcmEx6eE7NFb5ufrlriy1FSDEIQ5uE1LrmcBvouCyvMFtfo3fto+Bw2x+xqVbBJj
 kc3gr830E5/BWLgi1UM1W6oRfHl+Ntf2+JQlmyUx6OXwdP3rRWy7atm
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0202CA0009.eurprd02.prod.outlook.com
 (2603:10a6:803:14::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8462:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g+1eyGSU2+honAXX/Wu0h4lLHCAFRhvUrHWP61LRvMnt/BdpZDtQ9QucFsihYn6OaT5LVajmLcXc1ifBtuT/UC1zkwYNDmvhclPWlXNLUsjUjtibgpE4mscHc2OmAFgpjpF8nF0P5K6LPuN6Cic/VOapo13qZYVwwX80MaJEx84d8dO9X5yMrTqZuWWyf1Czq6QNkGuCk228xVI8ZARuijbjuy9bfTfBrvDxsIMuFt74/KZwczyc/xahHeohFDiwViTsZh7+y6XEWV6jPOS2dykHLZ/UIUOzWOhCz2xmifWtOcq4SYNARuEwPlsmg+1gms/2vW1ESwXgmOEuSdplyCuetvG5i9rgE53FzDlNgB1hBOdvAY+y46jcB4PCnmJB0OAE9FxiRPvolLK8ZgHON85ak4XImzidy6KUMIy4i+Z4t6cNwr36EGS9qayLh1brjsqAORn+1hKT++7elhQhCE2m8ZDjLDZjLtziI/f8rAduDlMbbLxLDSVeD6jEA3pMNYS54H7VXIZUw/0hDWmY5Eo03+QcNZtIwZaiixe+9MrJW/n4tjR3yizfMsYD6gogBvgsNxZOJqbY3kRQXcOKX7b2guJw4jZ5uA3bfeQtKWWhrqjs3VwlMD0Mg5NR1wZvuVdnXU4QagXl/58ayhOvaNXMayIh2IwI0gwmxyBVv/4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTQ5aXNRclZyOWpyT1ZaVlBJeFhhczkrdGpiVDlnQzhJNUZ0SlB5YjBaendl?=
 =?utf-8?B?T2ptVlhCMnhma2s5YTd3SGtCL3hRNmFuc21abHpSM1hmVkRVUnVISVgwT2pt?=
 =?utf-8?B?ZlkyaWZmU3FwUDR5NG1nL2xYQ0VHa2hubHQzOWRpLzJPM2RMRkJLY2xESHQy?=
 =?utf-8?B?TFNpRDFYUHhROVladGpXekhrajlOTGZqSHlCZGF6ZzMyRUZ6by9YYkVPcG1O?=
 =?utf-8?B?Rzh0b0NLOHRzczVmTmRRZmZNTElrNTdXcTdEWnhqelBxanJMdmIyVDFJZk51?=
 =?utf-8?B?UnAzSEduaW9BNVNTa00ra2hjazltYnF6OEpSbEYvUzVvcmZyTTV3ZVlKYjk1?=
 =?utf-8?B?V0c2YVByb3dndzJpdFYwb1NRZUxJbFZQU1R2d2NSWHM0bENzTlJhMVNvcmxl?=
 =?utf-8?B?TnUrRzBQODhMWHpNSlUvTThQUzBlanVWUjNxNW5qTXhHcnBQT2FabTBSQ08v?=
 =?utf-8?B?V3U2RTI5TmN4YlBidTE0aWRDMU1zazlseDM2dnlNQ0dJOEdwb3JqbWVOd2wx?=
 =?utf-8?B?ekVFY211R3RBS2E0b2VMTlQ3YTFMUGc2cEJtUDNJNDVyeURTM3VwdVQyYU5l?=
 =?utf-8?B?bWQvYVl2VHdCUjhTRXJVUFZGeUxsWEREbngycHNLc1IwWUpvRmlmSzFKN1cz?=
 =?utf-8?B?eThTRkpNZlJ0L3kvbVpYc3orUktWZU9qQUlCeVVRUG9ydzNPK293TkdnNnVa?=
 =?utf-8?B?OTNFWWRxT1BRT2xQQmMrUlZUUTU5RkY2czcxbnZhYTBNV0hJbmdIZW9uclBT?=
 =?utf-8?B?ZWVhOVVKYnp1VnFRMHVsU3pFUzN3dElwWEhnMkRoYzE3ZWxmWTljZks5MS9X?=
 =?utf-8?B?elY5VFhuaXczZTBHa1NHN0tNVThFOVFVM2l5bXUyaldIRFVMZ0NTR0duOHVR?=
 =?utf-8?B?R0xRc3R2TUUvazlmYVM3MG9tZ2pEbTNQNlhSR3hTbEVJcjlCTDNCRlpUOVZS?=
 =?utf-8?B?a3pKcEdHWlZ4NmdZZklEOFhvalFtcW0wNUUrOTJBcWFCNCtCd2VpNDhYeTJl?=
 =?utf-8?B?d003L0twcU9XR25RVkZ4bTA4TUdkQzVqVDl5K0h3c0NBOUVETHM2VWlTb3Bk?=
 =?utf-8?B?Zm9Fa3BKdXAzMmJ3VWVoTVhVVkFLOXdMZ05aMElyUVBBUHZhNW0zRmhsdGZw?=
 =?utf-8?B?U2xiRlppRTR0ZjluSFhLb1E4TUxlTVB5M1plZEVzbkVyTlN6TGZtS3NFVGZZ?=
 =?utf-8?B?U3pXcmZqU0hNeElVY1pCRVlweVoyU0dFeFZUWXp2TW9odUwvY1BaMEZRRTZq?=
 =?utf-8?B?ZlI3Z2NOZWZqZDg1cmRqWVRMRWt2UHNhKzVUQi9LMEpUOVYyNmNkaDRyZnhx?=
 =?utf-8?B?KzlrK21xRUthVHdUSDZsVC9xUnZPM29QeUx2WmV6MWJxcHhVenBrUU1NQi9N?=
 =?utf-8?B?V1hWTWZSNnJ5cVowamcwVGtkeW0rck1zUTlhZm1zOWd5amltcDJnKzl5eDd5?=
 =?utf-8?B?TGFRVm1JVmhZbWxCcURqd1RnOHh5SmFyZ084YS9NUzg1NW1lMy8xWjRPdC9M?=
 =?utf-8?B?cHZOT2VITDVJZk5HU3I1YW5rZmR6RmtqZmRJUHlCUEpoekpYcEpaOXRubkVM?=
 =?utf-8?B?ZHZQNmFFRlpsNDNyTWtHR0gxUTFDYXVLNUJlNjNrN211VmM4OHA4YzBMNWlG?=
 =?utf-8?B?QU96V2U4SWE0Z0xYTlJvQmNhRjlRMlJmSFJPN1VrdVVKN3psM1V0REYrQWhF?=
 =?utf-8?B?Ky92Sm9JVGZqSEJFdGJsRFkzRnFuUUJwZlZMd2V1WWs0VTZVYXBGR0w5bjVq?=
 =?utf-8?B?RmRtRERBWnBMYWd4WHpicHEyWVhGSkovYTRCS3ppaWFpRERaNjlMOTJXbDcx?=
 =?utf-8?B?L2dPdk81NnZYNkhuQUp0ejN0emNYUDNNZTB5WnZ5bDlkeEIzWW5jQnBLaS91?=
 =?utf-8?B?Y1hUSXhiaFVFNGFLTGlKcklmdCtMY3FlVGF3WTZGcWVlTFhDVW1TaXJDZDJk?=
 =?utf-8?B?SU41ZUVEM2xzcjJxaGRFTVhRbXlnUktiTnpSbmxKRnUrMkpIdm9YbFFOMmNa?=
 =?utf-8?B?YytHZFR0a0lpQzhTdjZRNGtFNlZzNGdwb0l1Rzk3M2xoQ2lTSlltWFlqUHZO?=
 =?utf-8?B?d3VFTXU3NWYvMVFqd2N6M2l1dDZZenVMZC9NV1EzcWd2QXRQOTBVcXQxbWdI?=
 =?utf-8?B?TDlhTk5yVk91K21qREpocHJuVDI0Z0NVbFJMeXhxWXFPeXV4N09Ick84bHJi?=
 =?utf-8?B?enc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d9193b-92cc-4d95-1de4-08dc55795b65
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 14:04:49.3359
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ZBC6GUy2OZxwxAGPKdJn9umFS5NZzpKXvjybSTL5e1gDMQWNR0/rvj+4VEK0EsLRSgKqE7UziQ5a/ttWXh8kIxKolkaK0ZPlTB7sB8EQjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_070518_242817_44529126 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] DNM: dts: arm64: rockchip: copy pf5 device tree from
 mainline Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device tree for the WolfVision PF5 mainboard and the overlay for
the PF5 IO Expander have been accepted for inclusion in Linux v6.10:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.10-armsoc/dts64

Once the device tree changes are merged and then integrated into
barebox this commit should vanish.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++++
 dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts   | 528 +++++++++++++++++++++
 2 files changed, 665 insertions(+)

diff --git a/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
new file mode 100644
index 0000000000..ebcaeafc38
--- /dev/null
+++ b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree overlay for the WolfVision PF5 IO Expander board.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/rk3568-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	gmac0_clkin: external-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		clock-output-names = "gmac0_clkin";
+		#clock-cells = <0>;
+	};
+
+	usb_host_vbus: usb-host-vbus-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_vbus_en>;
+		regulator-name = "usb_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc1v8_eth: vcc1v8-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc1v8_eth_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "1v8_eth";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_eth: vcc3v3-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-low;
+		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_eth_enn>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "3v3_eth";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
+			  <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
+				 <&gmac0_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&dp83826>;
+	phy-mode = "rmii";
+	phy-supply = <&vcc3v3_eth>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_clkinout
+		     &gmac0_rx_er
+		     &gmac0_rx_bus2
+		     &gmac0_tx_bus2>;
+	status = "okay";
+};
+
+&mdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	dp83826: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
+		reset-assert-us = <1000>;
+		reset-deassert-us = <2000>;
+		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_wake_intn: eth-wake-intn-pinctrl {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		eth_phy_rstn: eth-phy-rstn-pinctrl {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
+			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
+			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_host1_xhci {
+	maximum-speed = "high-speed";
+	phys = <&usb2phy0_host>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&usb_host_vbus>;
+	status = "okay";
+};
diff --git a/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts
new file mode 100644
index 0000000000..170b14f92f
--- /dev/null
+++ b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts
@@ -0,0 +1,528 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree for the WolfVision PF5 mainboard.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/regulator/ti,tps62864.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "WolfVision PF5";
+	compatible = "wolfvision,rk3568-pf5", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac0;
+		mmc0 = &sdhci;
+		rtc0 = &pcf85623;
+		rtc1 = &rk809;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	hdmi_tx: hdmi-tx-connector {
+		compatible = "hdmi-connector";
+		hdmi-pwr-supply = <&hdmi_tx_5v>;
+		type = "a";
+
+		port {
+			hdmi_tx_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	hdmi_tx_5v: hdmi-tx-5v-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmi_tx_5v_en>;
+		regulator-name = "hdmi_tx_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	pdm_codec: pdm-codec {
+		compatible = "dmic-codec";
+		num-channels = <1>;
+		#sound-dai-cells = <0>;
+	};
+
+	pdm_sound: pdm-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "microphone";
+
+		simple-audio-card,cpu {
+			sound-dai = <&pdm>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&pdm_codec>;
+		};
+	};
+
+	vcc12v_cam: vcc12v-cam-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PD1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc12v_cam_en>;
+		regulator-name = "12v_cam";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		vin-supply = <&vcc12v_in>;
+	};
+
+	vcc12v_in: vcc12v-in-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "12v_in";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v8_cam: vcc3v8-cam-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v8_cam_en>;
+		regulator-name = "3v8_cam";
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc5v_in: vcc5v-in-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "5v_in";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_in>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&gpu {
+	mali-supply = <&vcc0v9_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vcc0v9a_image>;
+	avdd-1v8-supply = <&vcc1v8a_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_tx_out: endpoint {
+		remote-endpoint = <&hdmi_tx_in>;
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		vcc1-supply = <&vcc5v_in>;
+		vcc2-supply = <&vcc5v_in>;
+		vcc3-supply = <&vcc5v_in>;
+		vcc4-supply = <&vcc5v_in>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc5v_in>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vcc0v9_logic: DCDC_REG1 {
+				regulator-name = "0v9_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9_gpu: DCDC_REG2 {
+				regulator-name = "0v9_gpu";
+				regulator-always-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v1_ddr4: DCDC_REG3 {
+				regulator-name = "1v1_ddr4";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc0v9_npu: DCDC_REG4 {
+				regulator-name = "0v9_npu";
+				regulator-always-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8: DCDC_REG5 {
+				regulator-name = "1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a_image: LDO_REG1 {
+				regulator-name = "0v9a_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a: LDO_REG2 {
+				regulator-name = "0v9a";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a_pmu: LDO_REG3 {
+				regulator-name = "0v9a_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vcc3v3_acodec: LDO_REG4 {
+				regulator-name = "3v3_acodec";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: LDO_REG5 {
+				regulator-name = "3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc1v8a: LDO_REG7 {
+				regulator-name = "1v8a";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8a_pmu: LDO_REG8 {
+				regulator-name = "1v8a_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8a_image: LDO_REG9 {
+				regulator-name = "1v8a_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sw: SWITCH_REG1 {
+				regulator-name = "3v3_sw";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	regulator@42 {
+		compatible = "ti,tps62869";
+		reg = <0x42>;
+
+		regulators {
+			vcc0v9_cpu: SW {
+				regulator-name = "0v9_cpu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <TPS62864_MODE_FPWM>;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1150000>;
+				vin-supply = <&vcc5v_in>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	pcf85623: rtc@51 {
+		compatible = "nxp,pcf85263";
+		reg = <0x51>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&clk32k_in>;
+		quartz-load-femtofarads = <12500>;
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m0_xfer>;
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4m1_xfer>;
+};
+
+&pdm {
+	pinctrl-0 = <&pdmm0_clk
+		     &pdmm0_sdi0>;
+	status = "okay";
+};
+
+&pinctrl {
+	cam {
+		vcc12v_cam_en: vcc12v-cam-en-pinctrl {
+			rockchip,pins = <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v8_cam_en: vcc3v8-cam-en-pinctrl {
+			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hdmitx {
+		hdmi_tx_5v_en: hdmi-tx-5v-en-pinctrl {
+			rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l-pinctrl {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vcc3v3_acodec>;
+	vccio2-supply = <&vcc1v8>;
+	vccio3-supply = <&vcc3v3_sd>;
+	vccio4-supply = <&vcc1v8>;
+	vccio5-supply = <&vcc1v8>;
+	vccio6-supply = <&vcc3v3_sw>;
+	vccio7-supply = <&vcc3v3_sw>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc1v8a>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc3v3_sw>;
+	vqmmc-supply = <&vcc1v8>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	dr_mode = "peripheral";
+	/* The following quirks are required since the bInterval is 1 and we
+	 * handle steady ISOC streaming. See Usecase 3 in commit 729dcffd1ed3
+	 * ("usb: dwc3: gadget: Add support for disabling U1 and U2 entries").
+	 */
+	snps,dis-u1-entry-quirk;
+	snps,dis-u2-entry-quirk;
+	/*
+	 * Without this quirk the available fifosize seems to be miscalculated
+	 * in cases where many endpoints are used. In one particular situation
+	 * 8 IN EPs and 3 OUT EPs where selected and lead to stalled transfers
+	 * without the resize quirk.
+	 */
+	tx-fifo-resize;
+
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP2>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};

-- 
2.34.1



