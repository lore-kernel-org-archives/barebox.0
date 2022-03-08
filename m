Delivery-date: Tue, 08 Mar 2022 17:23:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRccJ-004qBc-Ue
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:23:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRccG-0008OX-B6
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:23:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ/d0aJ+uT7I5kBy2WrtHGk0UNm+92rplN9bLJnOTsI=; b=xM0o/b6abCvp8s
	FbN41Ugxo4Fran7GkwF86MBJHIoxb2ggGoUpcWVudCq4ivDMelNKNxnOgs5L44ElPL3eNYcuAP1LU
	E5CwrB74OH2lAExEPJCUVs0ui1hKvd7VC7E1huZEAwmlX/MbOn1DnDUTdPdTIBQMcr9sbnqoF9YJn
	wYH7ZcsA7GzhVzeV8X3XpWDRMb9/2j7UdIIic1xJ2PpaF0SCQhcd8n56dhQmn+QKIuofMoQqVBaXp
	Ll0b3VLjlMyZEYG4XDd4TMuwjDlT8D4ZyMtL57Hx49d2gph7SQpnXSNFnOHWIC8Hmswljxwjf/RCW
	3FJ432wd3kbucXnc/9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcaB-005AzB-6i; Tue, 08 Mar 2022 16:21:08 +0000
Received: from mail-he1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::626]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcNp-0057hl-Kk
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:08:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EOa4h9Ylea6UA9tduJGa/FixcD8ua6KMMjy2b8C2NPXQ3SW/cYq520uFa0iOhZYGhqv3/6VbMA5EOgBAAY+TPL8Bsfu7DJJL8tm/HaJay/gOB7xj3p5ffwYDYmHp/a7LA//tC5NqWkpnY0jKYkI4UabV7TJ/TWSRx9WXeUD99BF3wuJI8Jp8X/6ORYB1jW9DgKbwIZXSMjOqJQeg3Tb/0PH+xRPfrhVq7ZMVpg8JFkq4R5haAm9ck+gnu4ANPGX587p/Ql6B5eCMH043jfDpYnsYBO3c0L3DuENwvxTTgq8KQf+p0SGH7hI7/ZTy3gjMTYS4w4vQK0EQqvHaKELeZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iC93l0IpZSDPNJODk7WL4t/hg5kq5uhxiilH80QuKsg=;
 b=METzez1TzkfKaoGe9MnatvJX7qmDBoUv2WU2zpHmK57COAy0k0voyLhyrb69lP8HE4nrtxhLwXvdfDVgfbpdozG22muzz4vWIOp7yEAyTnUccTr3hJr20ebD7drDfueyxXzIMuTumkDp3v2mL/iKvB8WTX1kpD7z+854mEyEj75zpK8GD5JwAQ8qkMObafDsmvfuZHc26aZrhZCiqfT/ta3riOckej59eJF8UOXvrDof9MVqBRuV2AokU26slY1XNYeblTxqLfYlO2vzC64zIUhoPXyI0BRkWA2X0d1V+ZYlWc9Xp6tCRtIgYnE7DHJHSgVm0i2rkyrKMVwabncohQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iC93l0IpZSDPNJODk7WL4t/hg5kq5uhxiilH80QuKsg=;
 b=tJWZrTIjaQebTHnAIQ1vAu6hVp4YsPBapvvAECWyI7l7IjtXlBAaGs3auYINru7295lrlK6Guae7pXD3S23C67vCwwpqCGYVZsEZOY+5p7iLgENvOakE7sKQBL5zRrF7UEFnY7az5yrobyK9Kfd1pS2LPuJ8DDq6HSRTnh1OgDc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM5P192MB0036.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:83::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.16; Tue, 8 Mar 2022 16:08:11 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 16:08:11 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  8 Mar 2022 17:07:59 +0100
Message-Id: <20220308160801.782206-2-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308160801.782206-1-joacim.zetterling@westermo.com>
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0091.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::25) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c8e6a9f-56ba-4988-0e7d-08da011dd783
X-MS-TrafficTypeDiagnostic: AM5P192MB0036:EE_
X-Microsoft-Antispam-PRVS: <AM5P192MB0036FC6E99C08826E5D77FF99C099@AM5P192MB0036.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t8VmKx0zmOTds46EDZmBG3ocfGymenPDatvmsjAX26RKP8janUtvhOJ/Q55woEMGn1JhIyvS6iI2PAHQxQcJUUy7tXpIwhsTFDaQVlY2vqutSEmtIrVWAtFSLpxuZaq1l0GHW/HSMvPiDMlS33dMJNyPt9X0E4JzLTBxnLQQupAzXImqj+2HqveO5q5btNRt1wIpj/gHPvVFDXmQ2sW5OF7JSN6+FO4dbFrWAbwKt5SzRcKi3B9e2J30mV4E1b6RbB2Pkv3YJakddho9jWJJ3gG/IKtGcdHJKqHFYUoCZgMydxjcwoiuBMNzrs4J1hdGgwywG+1KO3Hi70vC2mq/6ghfQJ7Z33H+7UK6rz1Wruk3+fZKwRkF2hTS3j7HkRU2gFRTJZ/HdalRn+6kKPidoWyEbZ4e7wMImTwafIFk7nGrQEX1jf5zCABrq+xneACtufQ+dydjhNZa8Tsz2IW5IChz5jgfp79uz1inqraVFQu6DqrGVD8x39D+yKYFL3T4EcApI1UCre3+ssgx8M3Tbe/k17T1HTTkLAjIdCLF2d+iRUf1+z8VWLcyVaOGgAfTQyrTQFpr9xoTXh4cQ2KETv2yxUbFwX2IZNIQV5uiuh0pOgCwLVvBuGf8W0qH/873hP/Mf5/FzH9ziQNFM/Xp9U12TfwZ1dVraHMTnFacGyjjYfIHt24U9++W29oX332sTpkL6UJp/b7nsNvrzuhhpg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(6916009)(36756003)(83380400001)(6666004)(8936002)(44832011)(86362001)(316002)(6486002)(508600001)(2616005)(1076003)(66476007)(2906002)(186003)(26005)(6506007)(66946007)(5660300002)(66556008)(4326008)(6512007)(52116002)(8676002)(36916002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+G4MTiMBtA1I63zwYXT5rE4Rq/DoO8Ey9iXkorKigMArTB7Y7oNKTFMcaq6I?=
 =?us-ascii?Q?6+Yvoi/EGGPn8uIy5wJPYxlmcMPppszHweamupQhe4zpuG8Vr5YXa5koreiR?=
 =?us-ascii?Q?aCQ5IS6Uz9iEsbUW8E0eESJZg/ERd0yvT7sxijSjtCnI/tUbi1eLeRPrFI+N?=
 =?us-ascii?Q?gwNgbaa04cQ8i+Z4p0bYnuXejHmpaoq/WYgNLBs+Uz2ZoeFvOJF1rl5w3cDB?=
 =?us-ascii?Q?co16ccNOGLFgUiMgoO96pKtSlYjBfbgRXPvv4sX8Sw+4w+LG91wlema8sVGZ?=
 =?us-ascii?Q?FqBMMSDUVByWmuG2L4PBlX1TexkJnMBY4PknjSzgooDACaaBSJ9s7y66R413?=
 =?us-ascii?Q?EnkD6YPTMNyVjfPpTiNXRzUoEw6l5wlGMynPJAqBz67YSZTUtPGpML24oO2O?=
 =?us-ascii?Q?Y6JoJqlmeueiijNGtZlZnX9UzjvBItVkvGbjQNUFCesq6/8vlZ8EXQhvhNpz?=
 =?us-ascii?Q?ODfR73HKU43b60wgYEpBo6NO26pPm2VXMTKpfnfeJ8DDW7PlEMPaxQu1q5bn?=
 =?us-ascii?Q?fu7yqqn6NLILaQ6/qCbKfwx2lspt6uClnQBc01Q8R4Pvxdkj/Ree5SsNWB9O?=
 =?us-ascii?Q?n/WSLPdlvYDjgSbR6uT0zLoq/tDjoc7JliI2DVOtmy1yeq1DeE3EFO8KfBTv?=
 =?us-ascii?Q?3NLBZV080h4aTkWwzulbkwcb302BuhTYLfYg3S3/yrQ3DFYdpwuRoa2ZwhM4?=
 =?us-ascii?Q?IS0K7wgudo4OFU32/uRuqxKOzW02uLcW2zXFU0hAGdP/rqwHBPFGKtiCfp9W?=
 =?us-ascii?Q?2f2sVlgnWW33K8EIZSq73mQmDODDG/odO5ooV7fTx96Hte9rD3rVS++hfyTm?=
 =?us-ascii?Q?6Cvq1HjJk1FdnBGJaY2I3i7FeBq2amon6bY9up9dFwYRQPcfgXLILZGkqJQt?=
 =?us-ascii?Q?awX4ihPjJ7CcgmQTWLuNnuGOCe8IMSjlUK8/3Sm/EgRe9ZzJNipurA8GKukH?=
 =?us-ascii?Q?MuzcbQEmmRZ+NQtVOms7QQX30FuAh5/aQafnt3nJlAAtVf3hq+YM/NWOHa7I?=
 =?us-ascii?Q?UBBDnlPCjxUMb9lJWOeXCWnnNNDOVpP4gpeavVRNUS12PzyOfayjKtcLEKEd?=
 =?us-ascii?Q?+0Nt2+waPYKynOxJi4gyJvE6PQ680D8BIEqaT1pDcHvyEsGwDSx0ntMPzqMs?=
 =?us-ascii?Q?zz5+rCbOCrCLprGAi2fIN8ICZIr+ylEKjKFHn9ksgnpI/EEElOBRwXx3gftt?=
 =?us-ascii?Q?qCruqrfEisIYEFxIG9r/1BFKxy766UWq1eBaVHb0Oicada61a3G+kMSPn4YZ?=
 =?us-ascii?Q?V8BayxFdeUdYvN47f4OtmVg2Sc/frJHsHIqPpHKSPlL4w+L1zfFcxg8ImvqB?=
 =?us-ascii?Q?OOzMlqNtnpnr8aYWn3oxMSSCviYKD8f7o2T9245S0KSnBITfYUluLnIHrjPe?=
 =?us-ascii?Q?unQXhHbrNyvBnmeT88mWGSP81dQW4S1bZUHBTtC8MTXo44wtqdqmYtu9xPLH?=
 =?us-ascii?Q?sxN+TAXlD6KHgzL9gXxC5uOf8EeFhgpnzQ1stabCvHscRFUklMq857DtbigZ?=
 =?us-ascii?Q?TD+ZcgJim57ARhIMYnaTzcMJ192OGLt/y364dJbB/T799xK9Qa5JITM5hC7N?=
 =?us-ascii?Q?n6WvCbK/pPOAGFRrSiCanqyjJVASsiq3IHgOiZf9SOJ/J8inEdx1dF/u0VtV?=
 =?us-ascii?Q?ZxftMz4KyWMd0e0c+mk921c=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c8e6a9f-56ba-4988-0e7d-08da011dd783
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 16:08:11.0216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2dXkiqP/TkLk85fJDgpnaa0TzTUHYB7OxhMsY1X0QYv/OgxhWu1isMeM3sMEA8lJFSIoa6oEJx5Ap8ZFkMeI5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0036
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 78.70.143.124
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM5P192MB0036.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_080821_738392_7BE9C762 
X-CRM114-Status: GOOD (  27.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] arch: arm: imx: spi: Add QSPI boot support to the IMX8
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The IMX8 platforms does only support boot from a SD or an EMMC
device. With this functionality also a boot from a QSPI device
is possible. For the moment only the IMX8MN platform is supported.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/Makefile             |   1 +
 arch/arm/mach-imx/include/mach/xload.h |   1 +
 arch/arm/mach-imx/xload-qspi.c         | 145 +++++++++++++++++++++++++
 3 files changed, 147 insertions(+)
 create mode 100644 arch/arm/mach-imx/xload-qspi.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2cafcd77e00d..d844196422df 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -29,3 +29,4 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
 pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
+pbl-y += xload-qspi.o
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 03ec23ebbdb0..1876f3a4bd18 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -11,6 +11,7 @@ int imx6_nand_start_image(void);
 int imx7_esdhc_start_image(int instance);
 int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mn_esdhc_load_image(int instance, bool start);
+int imx8mn_qspi_start_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
 int imx_image_size(void);
diff --git a/arch/arm/mach-imx/xload-qspi.c b/arch/arm/mach-imx/xload-qspi.c
new file mode 100644
index 000000000000..c8305f15ee0a
--- /dev/null
+++ b/arch/arm/mach-imx/xload-qspi.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <asm-generic/sections.h>
+#include <asm/cache.h>
+#include <mach/xload.h>
+#include <mach/imx8mn-regs.h>
+#include <mach/imx-header.h>
+
+#include <io.h>
+#include <regmap.h>
+#include <linux/sizes.h>
+
+#include <mach/atf.h>
+
+#define HDR_SIZE		512
+
+#define IMX8M_QSPI_MMAP		0x8000000
+
+
+static int check_ivt_header_v2(struct imx_flash_header_v2 **header_pointer,
+			    void *buf, u32 offset, u32 ivt_offset)
+{
+	int i, header_count = 1;
+	struct imx_flash_header_v2 *hdr;
+
+	for (i = 0; i < header_count; i++) {
+		hdr = buf + offset + ivt_offset;
+
+		if (!is_imx_flash_header_v2(hdr)) {
+			pr_debug("IVT header not found in QSPI. "
+				 "Found tag: 0x%02x length: 0x%04x "
+				 "version: %02x\n",
+				 hdr->header.tag, hdr->header.length,
+				 hdr->header.version);
+			return -EINVAL;
+		}
+
+		if (IS_ENABLED(CONFIG_ARCH_IMX8MQ) &&
+		    hdr->boot_data.plugin & PLUGIN_HDMI_IMAGE) {
+			/*
+			 * In images that include signed HDMI
+			 * firmware, first v2 header would be
+			 * dedicated to that and would not contain any
+			 * useful for us information. In order for us
+			 * to pull the rest of the bootloader image
+			 * in, we need to re-read header from SD/MMC,
+			 * this time skipping anything HDMI firmware
+			 * related.
+			 */
+			offset += hdr->boot_data.size + hdr->header.length;
+			header_count++;
+		}
+	}
+
+	*header_pointer = hdr;
+	return 0;
+}
+
+static int
+imx8m_qspi_load_image(void __iomem *ahb_addr, ptrdiff_t address,
+		 ptrdiff_t entry, u32 offset, u32 ivt_offset, bool start)
+{
+	void *buf = (void *)address;
+	struct imx_flash_header_v2 *hdr = NULL;
+	int ret, len;
+	void __noreturn (*bb)(void);
+	unsigned int ofs;
+
+	len = imx_image_size();
+
+	/* Read out the data directly from the AHB buffer. */
+	memcpy(buf, __io_virt((void *)ahb_addr), 0x2000);
+
+	ret = check_ivt_header_v2(&hdr, buf, offset, ivt_offset);
+	if (ret)
+		return ret;
+
+	pr_debug("Check ok, loading image\n");
+
+	ofs = offset + hdr->entry - hdr->boot_data.start;
+
+	if (entry != address) {
+		/*
+		 * Passing entry different from address is interpreted
+		 * as a request to place the image such that its entry
+		 * point would be exactly at 'entry', that is:
+		 *
+		 *     buf + ofs = entry
+		 *
+		 * solving the above for 'buf' gives us the
+		 * adjustment that needs to be made:
+		 *
+		 *     buf = entry - ofs
+		 *
+		 */
+		if (WARN_ON(entry - ofs < address)) {
+			/*
+			 * We want to make sure we won't try to place
+			 * the start of the image before the beginning
+			 * of the memory buffer we were given in
+			 * address.
+			 */
+			return -EINVAL;
+		}
+
+		buf = (void *)(entry - ofs);
+	}
+
+	/* Read out the data directly from the AHB buffer. */
+	memcpy(buf, __io_virt((void *)ahb_addr), len + SZ_4K);
+
+	pr_debug("Image loaded successfully\n");
+
+	if (!start)
+		return 0;
+
+	bb = buf + ofs;
+
+	sync_caches_for_execution();
+
+	bb();
+}
+
+/**
+ * imx8mn_qspi_start_image - Load and optionally start an image from the
+ * FlexSPI controller.
+ * @instance: The FlexSPI controller instance (0)
+ * @start: Whether to directly start the loaded image
+ *
+ * This uses imx8m_qspi_load_image() to load an image from QSPI. It is assumed
+ * that the image is the currently running barebox image (This information
+ * is used to calculate the length of the image).
+ * The image is started afterwards.
+ *
+ * Return: If successful, this function does not return (if directly started)
+ * or 0. A negative error code is returned when this function fails.
+ */
+int imx8mn_qspi_start_image(int instance, bool start)
+{
+	void __iomem *ahb_addr = IOMEM(IMX8M_QSPI_MMAP);
+
+	return imx8m_qspi_load_image(ahb_addr, MX8M_DDR_CSD1_BASE_ADDR,
+				MX8M_ATF_BL33_BASE_ADDR, SZ_4K, 0, start);
+}
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

