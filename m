Delivery-date: Fri, 05 Apr 2024 16:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCc-00D89E-0R
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 16:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCa-0000Ua-Gv
	for lore@pengutronix.de; Fri, 05 Apr 2024 16:05:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0ZDrAdsAuc0EBbjGL3T3yYtHyian9uopKyrnIR1mss=; b=BSDG7g1aZbmU1Az8OmWhGl5dsN
	fdjtv1iBxpo2/Fw6UZOEixU4tMMRgePenZwHIDO2qMzDhEyTEVm7u2ZpzDxSV5BInG1O7jjLoZ1kt
	4BdFMN5SNRzRO/yJ9Iy51qujOWP+J6g5vkDuq56cOtu+L2lSyAt0W/UC+3UI69Y/yL5vs0/7a9Oyt
	AZti1+dtzmBAxo2LMjkmfJ9PIiN7KwuASQ6JHRfEYEqX2zTZbgSYVzilm+zCAdeM8SNuKr0jikm4t
	7L+3Zfw4cC8ryCjFhKyqR476BeJWnxWZWWGfPczXIeQ4xqO0wU1iYoIM+ahH6H9VkTpqs4VnhRjPX
	CAu0EGKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBy-00000007M9k-3jT2;
	Fri, 05 Apr 2024 14:05:18 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBu-00000007M0l-1spr
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 14:05:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIUCfuKivFWGZujf+Fj9GeIm7VQ75lz5KqeXptRzXAHa0vy+5sOMDFEJ4i6NFPy6p6D1MFiRc2cOiXt0TfGBadHQv9E53SKMYmcAgjHPSHtkVCWrS1WR7Fr53S+4psbJwlTHFl+HiAkE6iCywcmKBzpqRvhSGmzBoA3+tcnM9ltI+EjPJ+Nh0V3t+0CxqbfXu/bD+rFxfkZ8RzGjt8susUZ060itgUX9ddp9IzXxDu2pZEEQbfzgenx9VrPE8HLbatFOrKu/sUSZN9F0RK81zVylYSVJUUVA4PATv5HhQAOAWoPPY+wmWs2en0wl2XrXCnkeJVm6mJ6r04VoHEf4Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0ZDrAdsAuc0EBbjGL3T3yYtHyian9uopKyrnIR1mss=;
 b=NNx2Gue1JZ2HPlG8OJOVynWVBU04wlPrbmpbfqPhjN33703kaFUXIJHLn3L/XEz5UWVMMgGT4HM+uIcjoCOuB+wjfxjElE5+S4vkQsy0pGdUpH0IEFH0hbCEla0a7OFj2pkZhZxL6uqtdrMT6fwmJCPXI5y4Q7mECCFLrsCuulNsrCPRkNzdGR3M0ivJMHX6aeW7Qfs3Tzzk022hS8sHEz1OW2GjsNEXWZyH9Oz1VZ+dybm7Sgzt49uC0fN1n4Jvr7dzAsQY/pCo3H9dHljQnBcf0hA9n6N0voFnEAh214bThYeSoLOCQ9lfqKvTs5yuWoD+eHNYfBs4dnYcBJWBGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0ZDrAdsAuc0EBbjGL3T3yYtHyian9uopKyrnIR1mss=;
 b=I05OFwgcxVXdXL7zn/iNillitQlq+yswZsifI0idDJQhvK4hZZLjDx1peHyuzmAVzCX5vGGDv+gc+GDd82diCTkRX+O7XKE3GcCHhpAm4mWl1LaX2UOyFG93h8Pg5CPIRauRHAKLMlTIiLBbiXlEfATwZ/AScgAe1Vq9wUnNPk4=
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8462.eurprd08.prod.outlook.com (2603:10a6:150:bc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 14:04:50 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 14:04:50 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 05 Apr 2024 16:04:43 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-feature-wolfvision-pf5-v1-2-e4a29c0e7fe1@wolfvision.net>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712325888; l=5864;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=ZbGVLKULSt6r0Rr9hdpfU9Tcvt6BJL8m/TiKRA1VRmE=;
 b=RPLIo0GqtBIlS22ksqUhIosrf/xAwK9A70kFOvU1I2TkdSRqutvXVASQVFNC6hSbTXxe41aLL
 Zy49f2bG+vjAX5vdhEnObbdasm0aJx4jJZUKfQmYBZOokey//u2xq1a
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
X-Microsoft-Antispam-Message-Info: lxQ9Y9InyDj3AtTKrPCWa1vJhPqQhCfm/TbyrNKE6PfrDM451vuMFvQ4wyfkvidJ/l6ZYgGIPrh13QvdNvaTk9dsk4zBeNmZnaQ1Qi8yMEOhBLA/yGJUj5XUbYqL/u58SIC8VuIf2tBPxPWOIKuy9NuAJ/rnxeeGH2p+kI2SZ59uJ7Y6NOeaccVLCopebfHlJUVhBww6JewaxEhJbQb3Od5rfNJr2457tuSm+8johJnHOwgTI8/Ve1Th24o19DKt3Eqfas0HFKY9v3B8BVXkm3Y4pSh0zztVUcE38KfJQjbUcTcQrF3EjID6GAr9orQFp1NeKDNlkRtDMLGX0SZrV9W0XjGqdfMrBNgwCoV/qwHSDsVkHxtBcPGVgHjpHjMvFuox0vkIfo7hmlM3P8YSHOTPgB57myCxQK70kHFElGHyh56JA5AUW5lXqkP+D69FOJfJV+KCX87LMzso1BuIU5ZAmTjz8kJ1xQdx8PyZvnTCIqZWp7bj6/K/fH05UqCrTgc1bepf80SwroaNAZ75J/pM9TzXlxXX8mexoTfZc+cSOBj2N0ezz71aDdIFp6tuQxaq+wq2zm3c/hKcyJtnCPG6bQ+eIzQZRTQ3C+0pBaGnLDoRqjuxVOCLb4MIVUufhI9EwrPxECmGQwKhOrw7O37xJjwVK1EnwpVFp4mS4fpmsh/F1vjcaAPFS8biU9WN/7IqmiZwc48EzYjPjQxDjy4QAJdFg1yCMS0rS8BFVYg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjVwQzIwUzEwREhlZisxeXA4Z1JXS0hFWmpOSGZoSnNLaFNVdXkweVdJc3pm?=
 =?utf-8?B?QmZKUE43N29PNGU3RmxnN080SWNvWGdTU1oxdHc4a1lWdVdLVlNjeEtxNG5w?=
 =?utf-8?B?YnZCSXZCc2R4alpuNkg0R295anNtQUx0cEtUbnBNb3F2QWlsd1hpaDI2azFa?=
 =?utf-8?B?K1NNd1k0YTdJSUJ4MDBxZEtlQzF4SXFRa3d1R0NqT2NsbHBsRjRXby9lVU1T?=
 =?utf-8?B?eUEzQ2JQY3RoTW9iMWRCcG43YkxBWXJwSFdhUUM2YUtOa1RCM3ZnMzZNazJP?=
 =?utf-8?B?dTkrbUxBUWVHNk9FbEEzZzVkeENzR3NzeTZraCtNenFxdzBYZFp4MzV6am9l?=
 =?utf-8?B?Y3pyZlNlL2ZPM21jbkhRYXBHS3hLaWlHbGF5S1JSOEJyRHN3SkQwVEJmYWpB?=
 =?utf-8?B?bkU0V251YWs3bE80Ri9VVnFtaGpXcWQwRGFKaFFtS3AzamliZTh4NkFkSSt5?=
 =?utf-8?B?Uko5MkJ1djBxdmFBQ2hxV1lRL2NIOVVsTHBZZ2Q3ci9NaVJwZ0pjVU9xQVdv?=
 =?utf-8?B?bkhmaGFmZU1oQTV5QUUwL3kwN1pLVXN6elF3RjVOU0lnN3R1aHNiVHZwZVY5?=
 =?utf-8?B?ZkxSL01YZEhWeElQSlFkR3VJUCtpaWd3NEowVHAzZ3JJcGtIMnp4M3Vwd1FY?=
 =?utf-8?B?THAwdlZydTlUUkp4VDE4R3JBa1JqRkpsVUl6ekNtTDA1UVJIazBwTTRQWGgv?=
 =?utf-8?B?TkM3a1kxTWYzREx5SURIUUQ1OFJXZ0pjTTFwaHdFN1ZiU2t6NU42WHFuc0FR?=
 =?utf-8?B?VGtxQjdxOGdlQU1MQSsvdUFDclZOOHZDdTlxWjl6dFNmVVFWbzByZTR1UHo4?=
 =?utf-8?B?c2gzN2pJaHRXOW1FdUdxNDh3b0xpWE1pejNTaHdMODY4N2lRSGJuWElhSHA0?=
 =?utf-8?B?Y0NLb1ZCdk5ZR0Q1QlRiL2V6RFVOdWdqUlNjM2NoNEpTWS9XbjFVZWVFWTlh?=
 =?utf-8?B?dUhNTUhsNXJodXdLZUVBSHJuWDVhd1VPSjB6UWF1TmFkd2R6QkJXUUtoTktl?=
 =?utf-8?B?YkdQTkxqTG5CcnhhYWRRRVBTRGZQeVVJcDJBdXlTWjdIenh5cHpmSnJtZlZ1?=
 =?utf-8?B?V3ZXMUdQNys3c1NKN1d1OHJqZTZQanVPcGh5cTBidzE5QS9JOGNKeWFzM0dO?=
 =?utf-8?B?aGErZURjcjh2YUxZVVVOSW9EMmpSZGhPQTUxcE8ybnZhMEZkSEwyZk01bzNN?=
 =?utf-8?B?ekNPYll3cFd1RGsrek1sZEVDYmV6cWdtandQeTZCUnpRc1lEU21WN0pCdzNG?=
 =?utf-8?B?Z3BYRU5KWWhGT05vaHFNV1I3aW1RT3B0ZGE5eFZmWjE1ZzhrenZnaFpyWDhR?=
 =?utf-8?B?SG1WcE93ZEt4ZUUzMEVldjFRRm02ZEpIZlBZdXhYa294Z25JMGpwMlRKcTYz?=
 =?utf-8?B?VFFWVTkzakxwMW1XQ2tvMitZMDBIQk9LdGZIVXRqWFpVc09RZEVJcXFRaGRC?=
 =?utf-8?B?MUNKVHI3L0I2R0xSOUZVYXFqVmxIeXN4QmtCbTVpN1JlTUg2M1NzdGYxeVlM?=
 =?utf-8?B?WkR2R1NTNWcvY3o4Sis5a2VpZUtuaDdGTk9RbG1zR3NZNWhqeDd0enY4VVdn?=
 =?utf-8?B?NkdIV0ViQVJBdHpBRUk4ano5TWxWVi8zZkF4a2pjeTIrWENWUDl6SWdQQXpu?=
 =?utf-8?B?V1l0WU1kMVRKT2V1RkNBMCtqYWFidmEwVUZ1SzFRVm5EaHRJc0wvRmZnU21S?=
 =?utf-8?B?QTc0bTdCVEl2cDBNMHc5a0szSFgySTRvZEVCa1dBY0Y0anJ0aXRwci9qRTVY?=
 =?utf-8?B?WXh5NEtaRUp5RUJIUDlBR1Q4ZVZTMTlRLzhaOXpvNjFSQk9QQy9GV1IzamxZ?=
 =?utf-8?B?SmtwVVlRaEMxM0orSW1BYm1YRFJwQXZZbHFoYjh0NUhBU3UrczB0OHRTelRT?=
 =?utf-8?B?NHgzSGxTUmExVllIUHVwbDV2SFRTVXRxSWlGOHJZaTI5WGk1L2pXK2pNamVJ?=
 =?utf-8?B?YmZpZDJMVTBVMDBkUTlsKzJEREdRa1JwcjEzbnF0Q3o4MWUrc2FyR3MwUUlC?=
 =?utf-8?B?L0cvbEV2blAxWDEyMTI3eGF5S0Y5QXM3bVRNM1BZTXJpanBPMGhEdXJGMHN5?=
 =?utf-8?B?bFgzb1dGZC9TVTI3dUJ4VzZGWGVwVE55ZjJJc3NEQUc1VFBJMk1YSnZQRUNn?=
 =?utf-8?B?M1NZcUZ5V0xhZ3BjcmdwT1RqaEFtY0l6VDk3WXpyQTF6QzdBdzNrVFluYmll?=
 =?utf-8?B?UWc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ab6f87ab-044d-497f-1eae-08dc55795ba0
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 14:04:49.7437
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wLkf0qbmg+R898XEdarS3IIewNUPMCLcxkZTmzqK4mGh7dlMkN1bnGg1ABpQha0DXA7br5idCFft5cpQPoZLL1JybvprNJinqR5h8MF7vlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_070514_549811_CD5A37B0 
X-CRM114-Status: GOOD (  16.45  )
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
Subject: [PATCH 2/4] common: add wolfvision board code library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add board code library for all WolfVision boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 common/boards/Kconfig              |   3 +
 common/boards/Makefile             |   1 +
 common/boards/wolfvision/Makefile  |   2 +
 common/boards/wolfvision/common.c  | 145 +++++++++++++++++++++++++++++++++++++
 include/boards/wolfvision/common.h |  32 ++++++++
 5 files changed, 183 insertions(+)

diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index f6d4a56f88..a2a51155ea 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -14,3 +14,6 @@ config BOARD_PHYTEC_SOM_IMX8M_DETECTION
 config BOARD_TQ
 	select CRC_ITU_T
 	bool
+
+config BOARD_WOLFVISION
+	bool
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 147c36643d..3f8ac57b2f 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
 obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
 obj-$(CONFIG_BOARD_TQ) += tq/
+obj-$(CONFIG_BOARD_WOLFVISION) += wolfvision/
diff --git a/common/boards/wolfvision/Makefile b/common/boards/wolfvision/Makefile
new file mode 100644
index 0000000000..b2be4b73f4
--- /dev/null
+++ b/common/boards/wolfvision/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-pbl-y += common.o
diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
new file mode 100644
index 0000000000..188931c24c
--- /dev/null
+++ b/common/boards/wolfvision/common.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Common board code functions WolfVision boards.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+#include <common.h>
+#include <aiodev.h>
+#include <net.h>
+#include <state.h>
+
+#include <boards/wolfvision/common.h>
+
+#define WV_RK3568_HWID_TOLERANCE 50
+
+int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
+{
+	int ret;
+
+	if (overlay->filename) {
+		if (*files) {
+			char *old = *files;
+			*files = basprintf("%s %s", old, overlay->filename);
+			free(old);
+		} else {
+			*files = basprintf("%s", overlay->filename);
+		}
+	}
+
+	if (overlay->data) {
+		struct device_node *node =
+			of_unflatten_dtb(overlay->data, INT_MAX);
+
+		if (!node) {
+			pr_err("Cannot unflatten dtbo\n");
+			return -EINVAL;
+		}
+
+		ret = of_overlay_apply_tree(of_get_root_node(), node);
+
+		of_delete_node(node);
+
+		if (ret) {
+			pr_err("Cannot apply overlay: %s\n", strerror(-ret));
+			return ret;
+		}
+
+		of_clk_init();
+		of_probe();
+	}
+
+	return 0;
+}
+
+int wolfvision_register_ethaddr(void)
+{
+	struct device_node *eth0;
+	struct state *state;
+	char mac[ETH_ALEN];
+	int ret;
+
+	ret = of_device_ensure_probed_by_alias("state");
+	if (ret)
+		return ret;
+
+	state = state_by_name("state");
+	if (!state)
+		return -ENOENT;
+
+	ret = state_read_mac(state, "mac-address", mac);
+	if (ret)
+		return ret;
+
+	if (!is_valid_ether_addr(mac))
+		return -EINVAL;
+
+	eth0 = of_find_node_by_alias(of_get_root_node(), "ethernet0");
+	if (eth0)
+		of_eth_register_ethaddr(eth0, mac);
+
+	return 0;
+}
+
+int wolfvision_rk3568_get_hwid(int chan_idx)
+{
+	const int values[WV_RK3568_HWID_MAX] = {
+		0,    112,  225,  337,	450,  562,  675,  787,	900,
+		1012, 1125, 1237, 1350, 1462, 1575, 1687, 1800,
+	};
+	struct aiochannel *chan;
+	int ret, hwid, voltage;
+	char *chan_name;
+
+	chan_name = basprintf("saradc.in_value%d_mV", chan_idx);
+	chan = aiochannel_by_name(chan_name);
+	free(chan_name);
+	if (IS_ERR(chan))
+		return PTR_ERR(chan);
+
+	ret = aiochannel_get_value(chan, &voltage);
+	if (ret)
+		return ret;
+
+	for (hwid = 0; hwid < ARRAY_SIZE(values); hwid++)
+		if (abs(voltage - values[hwid]) < WV_RK3568_HWID_TOLERANCE)
+			return hwid;
+
+	return -EINVAL;
+};
+
+int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
+				int num_extensions, char **overlays)
+{
+	int i, hwid, ret;
+
+	ret = of_device_ensure_probed_by_alias("saradc");
+	if (ret)
+		return ret;
+
+	for (i = 0; i < num_extensions; i++) {
+		const struct wv_rk3568_extension *extension = &extensions[i];
+		const struct wv_overlay *overlay;
+
+		ret = wolfvision_rk3568_get_hwid(extension->adc_chan);
+		if (ret < 0) {
+			pr_warning("Could not retrieve %s HWID (%d)\n",
+				   extension->name, ret);
+			return ret;
+		}
+
+		hwid = ret;
+		overlay = &extension->overlays[hwid];
+		if (overlay->name) {
+			pr_info("Detected %s %s\n", overlay->name,
+				extension->name);
+			wolfvision_apply_overlay(overlay, overlays);
+		} else {
+			pr_warning("Detected unknown %s HWID %d\n",
+				   extension->name, hwid);
+		}
+	}
+
+	return 0;
+}
diff --git a/include/boards/wolfvision/common.h b/include/boards/wolfvision/common.h
new file mode 100644
index 0000000000..a9bf6acbbb
--- /dev/null
+++ b/include/boards/wolfvision/common.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Common board code functions WolfVision boards.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+#ifndef _BOARDS_WOLFVISION_COMMON_H
+#define _BOARDS_WOLFVISION_COMMON_H
+
+#define WV_RK3568_HWID_MAX 17
+
+struct wv_overlay {
+	const char *name;
+	const char *filename;
+	const void *data;
+};
+
+struct wv_rk3568_extension {
+	int adc_chan;
+	const char *name;
+	const struct wv_overlay overlays[WV_RK3568_HWID_MAX];
+};
+
+int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files);
+
+int wolfvision_register_ethaddr(void);
+
+int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
+				int num_extensions, char **overlays);
+
+#endif /* _BOARDS_WOLFVISION_COMMON_H */

-- 
2.34.1



