Delivery-date: Fri, 13 Aug 2021 10:19:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPR-0007Q5-78
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPM-00008J-PN
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:19:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XB4CxlVP1TsYDpeQ+5vQOP04lTRuAZSs5imp8ZffAYg=; b=SMakcQb12Ibhma
	FpPwjzkCJ51v0neAjTKjHtWzONTpR5Cjv6TEyh+9wgqL4JfngRFtMmpmIniEKT/KZ3sXIUZFlv6Pm
	hQi6dTjt+jbI/IxJYLCL3Q8sNL/XvGs7mAjnPlbc5uJk+bv/jLKqg1Y+sz2PJYYDoZ6swTjLjwjmi
	XS8HcSOP8sHTNMlf/HlTHpgQDjHTpEJg5kyLR/QweaFNYjooTBKzHbB0aNyMV3ZHorI9tF5QB6zEm
	xq68kf41YVfCOZQVP/r1+/M4uyoXLYB1wNFBUE02vqymq+g/pHeoHu73fDXEf5u9eHgHf5pHwANhp
	X53dp5HV1KZX1Xv7fPPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESNO-00CCnx-BD; Fri, 13 Aug 2021 08:17:14 +0000
Received: from mail-bn8nam12on2117.outbound.protection.outlook.com
 ([40.107.237.117] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESND-00CClx-GP
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:17:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpjBDCAc5spwnfyT7jRvb5guPMk8j/bvDsHIaggsbY5+fHnKdMS36vLnWzkAjCR/cZdficpnJiVTMl9M3gf/lrHXGpaPkLjtyt4ga/uzWZuXPxRmBGXx2QTk+/XzurREhDaROx+/sU1d3igHEQoSXGIGN8c8DfCoFtVgB1P6OXmDuueng9GRhAzLNQuPsqLe+zNjA+IzmAx+Ue378v+i6pkf6k/10RkLvGmMXnE+fa+xz2ne9Rlqlq4h3YorbGz4Eo9tKHZSAA5X/2J4zuEO5f9gsTzKyOUfdiKdUFl68TmK5GqB4urmzZ5eFGE77uiCLFmQKVfzXaaYLknWvYsHeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rRVrVZtsbcPUNcJImjMjocIVeieaAJB+Uwg3VFkNv8=;
 b=LXK1POnjuHDgtyczRSK1pvjcYaQXfo8M24WIkFav3ybxjK4upOCLiRvLS0g7VNVbFwXymNC4CWmuAmRYe/p2eLlf9jnPXvVQSACBQaZxiJDgQ0CxRWTdksI3k4hHD+0wc8K7WtzXQnoigQhiRsTWxJCZc/DvYWrmeR7hUwdTk91AyW3RjBbO7JTavLi804YImQGxWuUfldnfPv8g0Vap/FezKlpkqYTOw7uVLV9MquzwNCCrH7BL1CQZW79iu2DPkiswl0oGBC0G4aIlo0T1A0OAzM16prG9z8uXYCYe9xN7U1IGv89LfyGfHYXQZ17Rggdp2gl4Q5hcGzy6WUT1EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+rRVrVZtsbcPUNcJImjMjocIVeieaAJB+Uwg3VFkNv8=;
 b=fxnfCv+p+/wi8i0BWDlOfYnpLUQ/6p89HFnq0BfykXtrqOrbhiOuNUbXVYJllyGLxOhqSLwFi1M8FhnAfmfegeCE3ChIGAcXgfgFyIk0LsEMR0CT8dDIgxE3XhXJ90TVLqZQoLTT6OYqb6wXAE+HmOv6CJBiot62FeDnurtG8Y4X6UXxBRSKDXalKsCVMJahFIK6gH6H0Lk+D4BOsMfDNbCkVYG3C0RtvpeYpwBCViTV6KYNqL90lk/2pTi8gAbIO4YAWvvyNTQoKd7ldD6hA9CCZ1V/o/nhjaIAJGNlFhYIG28+9trfouYblsH26Zyo/v7FRPt8o44PR6ZrEVXZ0g==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4571.namprd16.prod.outlook.com (2603:10b6:208:34a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.18; Fri, 13 Aug
 2021 08:16:55 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 08:16:55 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Fri, 13 Aug 2021 09:16:47 +0100
Message-Id: <1628842608-17031-3-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
References: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 13 Aug 2021 08:16:53.0499 (UTC)
 FILETIME=[92F86CB0:01D7901B]
X-ClientProxiedBy: BL1PR13CA0120.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::35) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0120.namprd13.prod.outlook.com (2603:10b6:208:2b9::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4436.10 via Frontend
 Transport; Fri, 13 Aug 2021 08:16:54 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Fri, 13 Aug 2021 09:16:53 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id 66D50E3571;
 Fri, 13 Aug 2021 09:16:53 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29f1526a-1c52-44f2-2f66-08d95e32b652
X-MS-TrafficTypeDiagnostic: BL3PR16MB4571:
X-Microsoft-Antispam-PRVS: <BL3PR16MB4571F1932625A023965DA5E891FA9@BL3PR16MB4571.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:409;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ier0PtPTlUbfW/dGYWNyfJDMbWy0smWgM4vaMEoG1Vs6MXe/FMnUc+hutOBKd9MHUnI4zlkI9z2gnmN0JdjVjEHLbNQa0MdDEWgVBz94A3eyrgpvQHiZTKS5KsrSyF3YylyXMiMU/iq92RPJIxMzAJNpx0HXKSEHWqLrIZhxo3FynyiasSk8V751Jfp7Ri+aPrGxMuqyJM4KqJ7BRSEv/tgCoLDTxsMb2dDVKSLJy985x/Z1FzBqkKQE298sHKyW6SkTfmd+k0DA2te/q+H5WSDkLXayJ8qmBD0lGNy3NoYXgYVr+PxBt8MeJG2qIUMT6p3wkbtVT7voySpns7ppXHAg0nE6dCS4LjCe6bdIis9zsZx/QnIGfJKOtDncceK/MyBN5ILt4Ej2uDt0PTWbhNBd+UshWzwvhtprQuteF3f9tyeQrO0DeOYYpqf1YCxLB2rxUQnAZXxYT0YjejhQZjPA/XcXvMA/CGUrLnA0KJqPyZOr1ZRecwluxv8r4z1/aKJ0ltcZUBth/g8IQ6PpW8S9C76KEfCxN2vU6lHeQSbLdPMeB60STmynol9KU+3eSf2rNCH0AwsQ+h9HD0RziLCKYQX+ZG8LQ/cXmylcPHFTb2ggZz5IvQ98yp7SOU4BfowkRG8CPeTWfu4+RNLZ2mcaVuVno/0pirgUbbWy6Ff6TppLqRucsGQnEPZhHSI4dm9GOvwxCLjwJq+JR9VbQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(346002)(136003)(376002)(396003)(2616005)(30864003)(2906002)(478600001)(36756003)(26005)(83380400001)(52116002)(6916009)(6666004)(8936002)(107886003)(44832011)(316002)(186003)(8676002)(4326008)(38100700002)(38350700002)(86362001)(66556008)(66946007)(5660300002)(66476007)(6266002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xfO9vfIV1MaXofo9li/3J5lqbX+YWAtip5w4frGMQfoKwQnF6Ac+lZ4RcTvr?=
 =?us-ascii?Q?GyexSYDDFIDVbF3MVpvhjM0lSJwVLcVy/iMRUDexKW/NcFsUY5nRuCw/GF6W?=
 =?us-ascii?Q?o5Q2neXdpC/ydbLr31ffFb29ln1tkueJS6xKVmnNpVXAPpVo/DqOlXUUd/ZM?=
 =?us-ascii?Q?IKX2F3iHnLe8e1IuU92xbQWgtpabYPTcEUlQjeqIWrzCW5K+0HLEp9umhVFP?=
 =?us-ascii?Q?txsmdVb9WN0CWOJKP04/hsIQSfiq9h/w6bq3MXtWWv0Mng6HUpJnqLX1XV9m?=
 =?us-ascii?Q?qBqbQZDIxH1ykmpv0wxq4DJ4kO8IPVa3LBy7K5YGcTmyAzQLSAoJ1RgLih0o?=
 =?us-ascii?Q?hCbIjnLYqBxMPs07mJZTypkldPO7/5bwKvm90eHTMIDS/5v5vOnxD9SKxtRL?=
 =?us-ascii?Q?7vonPiDpM3sLYZl2x1zBe8dFmD91difBLjBF0F2kAbKM40tWMHyOG/BjXNsG?=
 =?us-ascii?Q?6mAT1HQxiRV0biN7W05j6Bc+FWSmtk6INpXQfP1uXidyhu/qDpC5ZS/c5mDT?=
 =?us-ascii?Q?9Bx8v3yFSqJB4BczqzhMDmkMmv1CixhKxCAtu0Of3BNl/f18Twltgt6txSXz?=
 =?us-ascii?Q?yBZ/PHmOvYxZXIcaffy0duZ8w7HxR/E3c9tBvyGmhEDhY8fNxUbvI9suSuL7?=
 =?us-ascii?Q?9P9PJaQBks5xu4FSPdgXPld4nmsKwEc8Y+axywutnNOvdYD5qXd9sF3Jjlee?=
 =?us-ascii?Q?OOD9XKM7UIf9Qv1VVUM0PmPYeN14JHwBredv6IYsQ2Y8ViJMOcBhXopH+O5A?=
 =?us-ascii?Q?Ge0wAQ6fFFJkkP31WVE+Br2zpa31eCBqJkkZUoYB4jPfhMHyROzK/pbLg7Z+?=
 =?us-ascii?Q?c3MyvtV2g4CPmhk1x/LOfQrumBDnLF0k42unUnBps87DvIGmnBiaIhJCYw95?=
 =?us-ascii?Q?V8xldjcUOwJtAaV4BnF484A1jdjRA/7P4hscuW9yEzvCvzKErbD4I4DRuCMk?=
 =?us-ascii?Q?fOauURt7ADbKmcdCxijZmRGklSixLQ/p7Wu5vHdYK3m9TBZaN9HTB35AbPmL?=
 =?us-ascii?Q?GnZ190gJD4oSr5noR9NjDCvPiFJd57I9GF6PzcY3KqRS9LLd1qSU2829e/Qa?=
 =?us-ascii?Q?jOqUe+u+JHCoOK3IDOSgS3CLD5BP/zeKFAOsqk5Sw5EpnYsBuWBKXnoH662D?=
 =?us-ascii?Q?3G/lVwSuZ/Kdrzut0ah2k3U9fOd7o8XD3fbhOoOfWjmh7slEPaeUWshZ2Znm?=
 =?us-ascii?Q?r6VPUgp9rsA75Pt5tyNUv536j5zwqa3cPtWGejz0EpqJBbaRnMYYB8k57fjD?=
 =?us-ascii?Q?71nPJaiwRm7t6HMoKQwoJvPBXeddcDbX1aOn++Fwi4tDdibLGhRx+iByaKR0?=
 =?us-ascii?Q?j2X33PuJ5dC+rE3rH/H4/8/g?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29f1526a-1c52-44f2-2f66-08d95e32b652
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 08:16:55.2001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RLqXoGCX1nqeg38UGF/kvTN0Yho0DRms/iPPFaI+1tEy2slgsoXb58t0e+vAZqjiXhXJDMKcwWMr8DY2ehO+7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4571
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_011703_682834_D3F1F2B9 
X-CRM114-Status: GOOD (  17.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] nand: add NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the NXP IFC nand driver support. This driver
can be used with the NXP QorIQ cores.

Originally, derived from U-boot commit cce573e (2015-10)

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 drivers/mtd/nand/Kconfig        |    7 +
 drivers/mtd/nand/Makefile       |    1 +
 drivers/mtd/nand/fsl_ifc.h      |  116 ++++
 drivers/mtd/nand/nand_fsl_ifc.c | 1038 +++++++++++++++++++++++++++++++
 include/linux/fsl_ifc.h         |  305 +++++++++
 5 files changed, 1467 insertions(+)
 create mode 100644 drivers/mtd/nand/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
 create mode 100644 include/linux/fsl_ifc.h

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index c69e5ce4e1..cf9f1fdc0c 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -42,6 +42,13 @@ config NAND_IMX
 	  and later, which use the GPMI NAND controller from the MXS series. 
 	  See the i.MX 'mxs' driver for those chips.
 
+config NAND_FSL_IFC
+	bool
+	prompt "FSL IFC NAND driver"
+	depends on ARCH_LAYERSCAPE
+	help
+	  Freescale IFC NAND driver for various chips.
+
 config NAND_MXS
 	bool
 	select STMP_DEVICE
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index f6e5b41e94..4fd14ddd63 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -22,3 +22,4 @@ pbl-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
 obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
 obj-$(CONFIG_MTD_NAND_DENALI)		+= nand_denali.o
 obj-$(CONFIG_MTD_NAND_DENALI_DT)	+= nand_denali_dt.o
+obj-$(CONFIG_NAND_FSL_IFC)		+= nand_fsl_ifc.o
diff --git a/drivers/mtd/nand/fsl_ifc.h b/drivers/mtd/nand/fsl_ifc.h
new file mode 100644
index 0000000000..4c89f569f5
--- /dev/null
+++ b/drivers/mtd/nand/fsl_ifc.h
@@ -0,0 +1,116 @@
+/* SPDX-License-Identifier:     GPL-2.0+ */
+/*
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ *
+ */
+
+/*
+ * The actual number of banks implemented depends on the IFC version
+ *    - IFC version 1.0 implements 4 banks.
+ *    - IFC version 1.1 onward implements 8 banks.
+ */
+#define FSL_IFC_BANK_COUNT 8
+
+#define FSL_IFC_REV		0x0000
+#define		FSL_IFC_V1_1_0	0x01010000
+#define		FSL_IFC_V2_0_0	0x02000000
+
+/*
+ * Version 1.1.0 adds offset 0x1000
+ * Version 2.0.0 adds offset 0x10000
+ */
+#define FSL_IFC_NCFGR		0x000
+
+#define		IFC_NAND_SRAM_INIT_EN           0x20000000
+
+/*
+ * NAND Flash Command Registers (NAND_FCR0/NAND_FCR1)
+ */
+#define FSL_IFC_FCR0		0x014
+/* General purpose FCM flash command bytes CMD0-CMD7 */
+#define		IFC_NAND_FCR0_CMD0_SHIFT	24
+#define		IFC_NAND_FCR0_CMD1_SHIFT	16
+#define		IFC_NAND_FCR0_CMD2_SHIFT	8
+#define		IFC_NAND_FCR0_CMD3_SHIFT	0
+#define FSL_IFC_ROW0		0x03c
+#define		IFC_NAND_COL_MS			0x80000000
+#define FSL_IFC_COL0		0x044
+#define FSL_IFC_ROW3		0x06c
+#define FSL_IFC_NAND_BC		0x108
+/*
+ * NAND Flash Instruction Registers (NAND_FIR0/NAND_FIR1/NAND_FIR2)
+ */
+#define FSL_IFC_FIR0		0x110
+/* NAND Machine specific opcodes OP0-OP14*/
+#define		IFC_NAND_FIR0_OP0_SHIFT		26
+#define		IFC_NAND_FIR0_OP1_SHIFT		20
+#define		IFC_NAND_FIR0_OP2_SHIFT		14
+#define		IFC_NAND_FIR0_OP3_SHIFT		8
+#define		IFC_NAND_FIR0_OP4_SHIFT		2
+#define FSL_IFC_FIR1		0x114
+#define		IFC_NAND_FIR1_OP5_SHIFT		26
+#define		IFC_NAND_FIR1_OP6_SHIFT		20
+#define		IFC_NAND_FIR1_OP7_SHIFT		14
+#define		IFC_NAND_FIR1_OP8_SHIFT		8
+#define FSL_IFC_NAND_CSEL	0x15c
+#define		IFC_NAND_CSEL_SHIFT		26
+#define FSL_IFC_NANDSEQ_STRT	0x164
+#define		IFC_NAND_SEQ_STRT_FIR_STRT	0x80000000
+/* NAND Event and Error Status Register */
+#define FSL_IFC_NAND_EVTER_STAT	0x16c
+#define		IFC_NAND_EVTER_STAT_OPC		0x80000000
+#define		IFC_NAND_EVTER_STAT_FTOER	0x08000000
+#define		IFC_NAND_EVTER_STAT_WPER	0x04000000
+/* NAND Flash Page Read Completion Event Status Register */
+#define FSL_IFC_PGRDCMPL_EVT_STAT 0x174
+/* NAND Event and Error Enable Register (NAND_EVTER_EN) */
+#define FSL_IFC_EVTER_EN	0x180
+#define		IFC_NAND_EVTER_EN_OPC_EN	0x80000000
+#define		IFC_NAND_EVTER_EN_PGRDCMPL_EN	0x20000000
+#define		IFC_NAND_EVTER_EN_FTOER_EN	0x08000000
+#define		IFC_NAND_EVTER_EN_WPER_EN	0x04000000
+
+#define FSL_IFC_NAND_FSR	0x1e0
+#define FSL_IFC_ECCSTAT(v)	(0x1e8 + (4 * v))
+#define		IFC_NAND_EVTER_STAT_ECCER	0x02000000
+
+/*
+ * Instruction opcodes to be programmed
+ * in FIR registers- 6bits
+ */
+enum ifc_nand_fir_opcodes {
+	IFC_FIR_OP_NOP,
+	IFC_FIR_OP_CA0,
+	IFC_FIR_OP_CA1,
+	IFC_FIR_OP_CA2,
+	IFC_FIR_OP_CA3,
+	IFC_FIR_OP_RA0,
+	IFC_FIR_OP_RA1,
+	IFC_FIR_OP_RA2,
+	IFC_FIR_OP_RA3,
+	IFC_FIR_OP_CMD0,
+	IFC_FIR_OP_CMD1,
+	IFC_FIR_OP_CMD2,
+	IFC_FIR_OP_CMD3,
+	IFC_FIR_OP_CMD4,
+	IFC_FIR_OP_CMD5,
+	IFC_FIR_OP_CMD6,
+	IFC_FIR_OP_CMD7,
+	IFC_FIR_OP_CW0,
+	IFC_FIR_OP_CW1,
+	IFC_FIR_OP_CW2,
+	IFC_FIR_OP_CW3,
+	IFC_FIR_OP_CW4,
+	IFC_FIR_OP_CW5,
+	IFC_FIR_OP_CW6,
+	IFC_FIR_OP_CW7,
+	IFC_FIR_OP_WBCD,
+	IFC_FIR_OP_RBCD,
+	IFC_FIR_OP_BTRD,
+	IFC_FIR_OP_RDSTAT,
+	IFC_FIR_OP_NWAIT,
+	IFC_FIR_OP_WFR,
+	IFC_FIR_OP_SBRD,
+	IFC_FIR_OP_UA,
+	IFC_FIR_OP_RB,
+};
diff --git a/drivers/mtd/nand/nand_fsl_ifc.c b/drivers/mtd/nand/nand_fsl_ifc.c
new file mode 100644
index 0000000000..64dc9c225f
--- /dev/null
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -0,0 +1,1038 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Integrated Flash Controller NAND Machine Driver
+ *
+ * Copyright (c) 2012 Freescale Semiconductor, Inc
+ *
+ * Authors: Dipen Dudhat <Dipen.Dudhat@freescale.com>
+ *
+ */
+
+#include <config.h>
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <nand.h>
+#include <errno.h>
+#include <clock.h>
+#include <io.h>
+#include <of_address.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/nand_ecc.h>
+#include <linux/fsl_ifc.h>
+#include <asm-generic/io.h>
+#include "fsl_ifc.h"
+
+#define ERR_BYTE	0xFF
+#define IFC_TIMEOUT_MS	500
+/* overview of the fsl ifc controller */
+struct fsl_ifc_ctrl {
+	struct nand_controller controller;
+	/* device info */
+	void __iomem *rregs;  /* Run-time register		      */
+	void __iomem *gregs;  /* Global registers		      */
+	uint32_t version;
+	uint32_t page;       /* Last page written to / read from      */
+	uint32_t read_bytes; /* Number of bytes read during command   */
+	uint32_t column;     /* Saved column from SEQIN               */
+	uint32_t index;      /* Pointer to next byte to 'read'        */
+	uint32_t nand_stat;  /* status read from NEESR after last op  */
+	uint32_t oob;        /* Non zero if operating on OOB data     */
+	uint32_t eccread;    /* Non zero for a full-page ECC read     */
+	uint32_t max_bitflips; /* Saved during READ0 cmd              */
+	void __iomem *addr;  /* Address of assigned IFC buffer        */
+};
+
+/* mtd information per set */
+struct fsl_ifc_mtd {
+	struct device_d *dev;
+	struct nand_chip chip;
+	struct fsl_ifc_ctrl *ctrl;
+	uint32_t cs;		/* On which chipsel NAND is connected    */
+	uint32_t bufnum_mask;	/* bufnum = page & bufnum_mask */
+	void __iomem *vbase;    /* Chip select base virtual address     */
+	phys_addr_t pbase;	/* Chip select physical address		*/
+};
+
+static struct fsl_ifc_ctrl *ifc_ctrl;
+
+/* Generic flash bbt descriptors */
+static uint8_t bbt_pattern[] = {'B', 'b', 't', '0' };
+static uint8_t mirror_pattern[] = {'1', 't', 'b', 'B' };
+
+static struct nand_bbt_descr bbt_main_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE |
+		   NAND_BBT_2BIT | NAND_BBT_VERSION,
+	.offs =	2, /* 0 on 8-bit small page */
+	.len = 4,
+	.veroffs = 6,
+	.maxblocks = 4,
+	.pattern = bbt_pattern,
+};
+
+static struct nand_bbt_descr bbt_mirror_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE |
+		   NAND_BBT_2BIT | NAND_BBT_VERSION,
+	.offs =	2, /* 0 on 8-bit small page */
+	.len = 4,
+	.veroffs = 6,
+	.maxblocks = 4,
+	.pattern = mirror_pattern,
+};
+
+static int fsl_ifc_ooblayout_ecc(struct mtd_info *mtd, int section,
+		struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section)
+		return -ERANGE;
+
+	oobregion->offset = 8;
+	oobregion->length = chip->ecc.total;
+
+	return 0;
+}
+
+static int fsl_ifc_ooblayout_free(struct mtd_info *mtd, int section,
+		struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section > 1)
+		return -ERANGE;
+
+	if (mtd->writesize == 512 && !(chip->options & NAND_BUSWIDTH_16)) {
+		if (!section) {
+			oobregion->offset = 0;
+			oobregion->length = 5;
+		} else {
+			oobregion->offset = 6;
+			oobregion->length = 2;
+		}
+
+		return 0;
+	}
+
+	if (!section) {
+		oobregion->offset = 2;
+		oobregion->length = 6;
+	} else {
+		oobregion->offset = chip->ecc.total + 8;
+		oobregion->length = mtd->oobsize - oobregion->offset;
+	}
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops fsl_ifc_ooblayout_ops = {
+	.ecc = fsl_ifc_ooblayout_ecc,
+	.free = fsl_ifc_ooblayout_free,
+};
+
+/*
+ * Set up the IFC hardware block and page address fields, and the ifc nand
+ * structure addr field to point to the correct IFC buffer in memory
+ */
+static void set_addr(struct mtd_info *mtd, int column, int page_addr, int oob)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	int buf_num;
+
+	if (page_addr != -1) {
+		ctrl->page = page_addr;
+		/* Program ROW0/COL0 */
+		ifc_out32(ctrl->rregs + FSL_IFC_ROW0, page_addr);
+		buf_num = page_addr & priv->bufnum_mask;
+		ctrl->addr = priv->vbase + buf_num * (mtd->writesize * 2);
+	}
+
+	ifc_out32(ctrl->rregs + FSL_IFC_COL0, (oob ? IFC_NAND_COL_MS : 0) |
+						column);
+	ctrl->index = column;
+
+	/* for OOB data point to the second half of the buffer */
+	if (oob)
+		ctrl->index += mtd->writesize;
+}
+
+/* returns nonzero if entire page is blank */
+static int check_read_ecc(struct mtd_info *mtd, struct fsl_ifc_ctrl *ctrl,
+			  uint32_t eccstat, uint32_t bufnum)
+{
+	return (eccstat >> ((3 - bufnum % 4) * 8)) & 15;
+}
+
+/* execute IFC NAND command and wait for it to complete */
+static void fsl_ifc_run_command(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint64_t time_start;
+	uint32_t eccstat;
+	int i;
+
+	/* set the chip select for NAND Transaction */
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_CSEL,
+			priv->cs << IFC_NAND_CSEL_SHIFT);
+
+	/* start read/write seq */
+	ifc_out32(ctrl->rregs + FSL_IFC_NANDSEQ_STRT,
+			IFC_NAND_SEQ_STRT_FIR_STRT);
+
+	ctrl->nand_stat = 0;
+
+	/* wait for NAND Machine complete flag or timeout */
+	time_start = get_time_ns();
+	while (!is_timeout(time_start, IFC_TIMEOUT_MS * MSECOND)) {
+		ctrl->nand_stat = ifc_in32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT);
+
+		if (ctrl->nand_stat & IFC_NAND_EVTER_STAT_OPC)
+			break;
+	}
+
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT, ctrl->nand_stat);
+
+	if (ctrl->nand_stat & IFC_NAND_EVTER_STAT_FTOER)
+		pr_err("%s: Flash Time Out Error\n", __func__);
+	if (ctrl->nand_stat & IFC_NAND_EVTER_STAT_WPER)
+		pr_err("%s: Write Protect Error\n", __func__);
+
+	ctrl->max_bitflips = 0;
+
+	if (ctrl->eccread) {
+		int errors;
+		int bufnum = ctrl->page & priv->bufnum_mask;
+		int sector_start = bufnum * chip->ecc.steps;
+		int sector_end = sector_start + chip->ecc.steps - 1;
+
+		eccstat = ifc_in32(ctrl->rregs +
+				FSL_IFC_ECCSTAT(sector_start / 4));
+
+		for (i = sector_start; i <= sector_end; i++) {
+			if ((i != sector_start) && !(i % 4)) {
+				eccstat = ifc_in32(ctrl->rregs +
+						FSL_IFC_ECCSTAT(i / 4));
+			}
+			errors = check_read_ecc(mtd, ctrl, eccstat, i);
+
+			if (errors == 15) {
+				/*
+				 * Uncorrectable error.
+				 * We'll check for blank pages later.
+				 *
+				 * We disable ECCER reporting due to erratum
+				 * IFC-A002770 -- so report it now if we
+				 * see an uncorrectable error in ECCSTAT.
+				 */
+				ctrl->nand_stat |= IFC_NAND_EVTER_STAT_ECCER;
+				continue;
+			}
+
+			mtd->ecc_stats.corrected += errors;
+			ctrl->max_bitflips = max_t(unsigned int,
+					ctrl->max_bitflips, errors);
+		}
+
+		ctrl->eccread = 0;
+	}
+}
+
+static void
+fsl_ifc_do_read(struct nand_chip *chip, int oob, struct mtd_info *mtd)
+{
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+
+	/* Program FIR/IFC_NAND_FCR0 for Small/Large page */
+	if (mtd->writesize > 512) {
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			  (IFC_FIR_OP_CA0 << IFC_NAND_FIR0_OP1_SHIFT) |
+			  (IFC_FIR_OP_RA0 << IFC_NAND_FIR0_OP2_SHIFT) |
+			  (IFC_FIR_OP_CMD1 << IFC_NAND_FIR0_OP3_SHIFT) |
+			  (IFC_FIR_OP_RBCD << IFC_NAND_FIR0_OP4_SHIFT));
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR1, 0x0);
+
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			  (NAND_CMD_READ0 << IFC_NAND_FCR0_CMD0_SHIFT) |
+			  (NAND_CMD_READSTART << IFC_NAND_FCR0_CMD1_SHIFT));
+	} else {
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			  (IFC_FIR_OP_CA0 << IFC_NAND_FIR0_OP1_SHIFT) |
+			  (IFC_FIR_OP_RA0  << IFC_NAND_FIR0_OP2_SHIFT) |
+			  (IFC_FIR_OP_RBCD << IFC_NAND_FIR0_OP3_SHIFT));
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR1, 0);
+
+		if (oob)
+			ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+				  NAND_CMD_READOOB << IFC_NAND_FCR0_CMD0_SHIFT);
+		else
+			ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+				  NAND_CMD_READ0 << IFC_NAND_FCR0_CMD0_SHIFT);
+	}
+}
+
+/* cmdfunc send commands to the IFC NAND Machine */
+static void fsl_ifc_cmdfunc(struct nand_chip *chip, uint32_t command,
+			     int column, int page_addr)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+
+	/* clear the read buffer */
+	ctrl->read_bytes = 0;
+	if (command != NAND_CMD_PAGEPROG)
+		ctrl->index = 0;
+
+	switch (command) {
+	/* READ0 read the entire buffer to use hardware ECC. */
+	case NAND_CMD_READ0: {
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0);
+		set_addr(mtd, 0, page_addr, 0);
+
+		ctrl->read_bytes = mtd->writesize + mtd->oobsize;
+		ctrl->index += column;
+
+		if (chip->ecc.mode == NAND_ECC_HW)
+			ctrl->eccread = 1;
+
+		fsl_ifc_do_read(chip, 0, mtd);
+		fsl_ifc_run_command(mtd);
+		return;
+	}
+
+	/* READOOB reads only the OOB because no ECC is performed. */
+	case NAND_CMD_READOOB:
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, mtd->oobsize - column);
+
+		set_addr(mtd, column, page_addr, 1);
+
+		ctrl->read_bytes = mtd->writesize + mtd->oobsize;
+
+		fsl_ifc_do_read(chip, 1, mtd);
+		fsl_ifc_run_command(mtd);
+
+		return;
+
+	case NAND_CMD_RNDOUT:
+		if (chip->ecc.mode == NAND_ECC_HW)
+			break;
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0);
+		set_addr(mtd, column, -1, 0);
+		ctrl->read_bytes = mtd->writesize + mtd->oobsize;
+
+		/* For write size greater than 512 */
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			(IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			(IFC_FIR_OP_CA0 << IFC_NAND_FIR0_OP1_SHIFT) |
+			(IFC_FIR_OP_CMD1 << IFC_NAND_FIR0_OP3_SHIFT));
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR1, 0x0);
+
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			(NAND_CMD_RNDOUT << IFC_NAND_FCR0_CMD0_SHIFT) |
+			(NAND_CMD_RNDOUTSTART << IFC_NAND_FCR0_CMD1_SHIFT));
+
+		fsl_ifc_run_command(mtd);
+		return;
+
+	case NAND_CMD_READID:
+	case NAND_CMD_PARAM: {
+		int timing = IFC_FIR_OP_RB;
+		int len = 8;
+
+		if (command == NAND_CMD_PARAM) {
+			timing = IFC_FIR_OP_RBCD;
+			len = 256 * 3;
+		}
+
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			  (IFC_FIR_OP_UA  << IFC_NAND_FIR0_OP1_SHIFT) |
+			  (timing << IFC_NAND_FIR0_OP2_SHIFT));
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			  command << IFC_NAND_FCR0_CMD0_SHIFT);
+		ifc_out32(ctrl->rregs + FSL_IFC_ROW3, column);
+
+		/*
+		 * although currently it's 8 bytes for READID, we always read
+		 * the maximum 256 bytes(for PARAM)
+		 */
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, len);
+		ctrl->read_bytes = len;
+
+		set_addr(mtd, 0, 0, 0);
+		fsl_ifc_run_command(mtd);
+		return;
+	}
+
+	/* ERASE1 stores the block and page address */
+	case NAND_CMD_ERASE1:
+		set_addr(mtd, 0, page_addr, 0);
+		return;
+
+	/* ERASE2 uses the block and page address from ERASE1 */
+	case NAND_CMD_ERASE2:
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			  (IFC_FIR_OP_RA0 << IFC_NAND_FIR0_OP1_SHIFT) |
+			  (IFC_FIR_OP_CMD1 << IFC_NAND_FIR0_OP2_SHIFT));
+
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			  (NAND_CMD_ERASE1 << IFC_NAND_FCR0_CMD0_SHIFT) |
+			  (NAND_CMD_ERASE2 << IFC_NAND_FCR0_CMD1_SHIFT));
+
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0);
+		ctrl->read_bytes = 0;
+		fsl_ifc_run_command(mtd);
+		return;
+
+	/* SEQIN sets up the addr buffer and all registers except the length */
+	case NAND_CMD_SEQIN: {
+		uint32_t nand_fcr0;
+
+		ctrl->column = column;
+		ctrl->oob = 0;
+
+		if (mtd->writesize > 512) {
+			nand_fcr0 =
+				(NAND_CMD_SEQIN << IFC_NAND_FCR0_CMD0_SHIFT) |
+				(NAND_CMD_STATUS << IFC_NAND_FCR0_CMD1_SHIFT) |
+				(NAND_CMD_PAGEPROG << IFC_NAND_FCR0_CMD2_SHIFT);
+
+			ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+				  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+				  (IFC_FIR_OP_CA0 << IFC_NAND_FIR0_OP1_SHIFT) |
+				  (IFC_FIR_OP_RA0 << IFC_NAND_FIR0_OP2_SHIFT) |
+				  (IFC_FIR_OP_WBCD << IFC_NAND_FIR0_OP3_SHIFT) |
+				  (IFC_FIR_OP_CMD2 << IFC_NAND_FIR0_OP4_SHIFT));
+			ifc_out32(ctrl->rregs + FSL_IFC_FIR1,
+				  (IFC_FIR_OP_CW1 << IFC_NAND_FIR1_OP5_SHIFT) |
+				  (IFC_FIR_OP_RDSTAT <<
+					IFC_NAND_FIR1_OP6_SHIFT) |
+				  (IFC_FIR_OP_NOP << IFC_NAND_FIR1_OP7_SHIFT));
+		} else {
+			nand_fcr0 = ((NAND_CMD_PAGEPROG <<
+					IFC_NAND_FCR0_CMD1_SHIFT) |
+				    (NAND_CMD_SEQIN <<
+					IFC_NAND_FCR0_CMD2_SHIFT) |
+				    (NAND_CMD_STATUS <<
+					IFC_NAND_FCR0_CMD3_SHIFT));
+
+			ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+				  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+				  (IFC_FIR_OP_CMD2 << IFC_NAND_FIR0_OP1_SHIFT) |
+				  (IFC_FIR_OP_CA0 << IFC_NAND_FIR0_OP2_SHIFT) |
+				  (IFC_FIR_OP_RA0 << IFC_NAND_FIR0_OP3_SHIFT) |
+				  (IFC_FIR_OP_WBCD << IFC_NAND_FIR0_OP4_SHIFT));
+			ifc_out32(ctrl->rregs + FSL_IFC_FIR1,
+				  (IFC_FIR_OP_CMD1 << IFC_NAND_FIR1_OP5_SHIFT) |
+				  (IFC_FIR_OP_CW3 << IFC_NAND_FIR1_OP6_SHIFT) |
+				  (IFC_FIR_OP_RDSTAT <<
+					IFC_NAND_FIR1_OP7_SHIFT) |
+				  (IFC_FIR_OP_NOP << IFC_NAND_FIR1_OP8_SHIFT));
+
+			if (column >= mtd->writesize)
+				nand_fcr0 |=
+				NAND_CMD_READOOB << IFC_NAND_FCR0_CMD0_SHIFT;
+			else
+				nand_fcr0 |=
+				NAND_CMD_READ0 << IFC_NAND_FCR0_CMD0_SHIFT;
+		}
+
+		if (column >= mtd->writesize) {
+			/* OOB area --> READOOB */
+			column -= mtd->writesize;
+			ctrl->oob = 1;
+		}
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0, nand_fcr0);
+		set_addr(mtd, column, page_addr, ctrl->oob);
+		return;
+	}
+
+	/* PAGEPROG reuses all of the setup from SEQIN and adds the length */
+	case NAND_CMD_PAGEPROG:
+		if (ctrl->oob)
+			ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC,
+				  ctrl->index - ctrl->column);
+		else
+			ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0);
+
+		fsl_ifc_run_command(mtd);
+		return;
+
+	case NAND_CMD_STATUS:
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+			  (IFC_FIR_OP_RB << IFC_NAND_FIR0_OP1_SHIFT));
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			  NAND_CMD_STATUS << IFC_NAND_FCR0_CMD0_SHIFT);
+		ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 1);
+		set_addr(mtd, 0, 0, 0);
+		ctrl->read_bytes = 1;
+
+		fsl_ifc_run_command(mtd);
+
+		/*
+		 * The chip always seems to report that it is
+		 * write-protected, even when it is not.
+		 */
+		if (chip->options & NAND_BUSWIDTH_16)
+			out_be16(ctrl->addr, in_be16(ctrl->addr) |
+					NAND_STATUS_WP);
+		else
+			out_8(ctrl->addr, in_8(ctrl->addr) | NAND_STATUS_WP);
+		return;
+
+	case NAND_CMD_RESET:
+		ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+			  IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT);
+		ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+			  NAND_CMD_RESET << IFC_NAND_FCR0_CMD0_SHIFT);
+		fsl_ifc_run_command(mtd);
+		return;
+
+	default:
+		pr_err("%s: error, unsupported command 0x%x.\n",
+			__func__, command);
+	}
+}
+
+/* Write buf to the IFC NAND Controller Data Buffer */
+static void fsl_ifc_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint32_t bufsize = mtd->writesize + mtd->oobsize;
+
+	if (len <= 0) {
+		pr_info("%s of %d bytes", __func__, len);
+		ctrl->nand_stat = 0;
+		return;
+	}
+
+	if ((uint32_t)len > bufsize - ctrl->index) {
+		pr_err("%s beyond end of buffer (%d requested, %u available)\n",
+			__func__, len, bufsize - ctrl->index);
+		len = bufsize - ctrl->index;
+	}
+
+	memcpy_toio(ctrl->addr + ctrl->index, buf, len);
+	ctrl->index += len;
+}
+
+/*
+ * read a byte from either the IFC hardware buffer if it has any data left
+ * otherwise issue a command to read a single byte.
+ */
+static uint8_t fsl_ifc_read_byte(struct nand_chip *chip)
+{
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint32_t offset;
+
+	/*
+	 * If there are still bytes in the IFC buffer, then use the
+	 * next byte.
+	 */
+	if (ctrl->index < ctrl->read_bytes) {
+		offset = ctrl->index++;
+		return in_8(ctrl->addr + offset);
+	}
+
+	return ERR_BYTE;
+}
+
+/*
+ * Read two bytes from the IFC hardware buffer
+ * read function for 16-bit buswith
+ */
+static uint8_t fsl_ifc_read_byte16(struct nand_chip *chip)
+{
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint16_t data;
+
+	/*
+	 * If there are still bytes in the IFC buffer, then use the
+	 * next byte.
+	 */
+	if (ctrl->index < ctrl->read_bytes) {
+		data = ifc_in16(ctrl->addr + ctrl->index);
+		ctrl->index += 2;
+		return (uint8_t)data;
+	}
+
+	return ERR_BYTE;
+}
+
+/* Read from the IFC Controller Data Buffer */
+static void fsl_ifc_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
+{
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	int avail;
+
+	if (len < 0)
+		return;
+
+	avail = min((uint32_t)len, ctrl->read_bytes - ctrl->index);
+	memcpy_fromio(buf, ctrl->addr + ctrl->index, avail);
+
+	ctrl->index += avail;
+
+	if (len > avail)
+		pr_err("%s beyond end of buffer (%d requested, %d available)\n",
+		       __func__, len, avail);
+}
+
+/* This function is called after Program and Erase Operations to
+ * check for success or failure.
+ */
+static int fsl_ifc_wait(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint32_t nand_fsr;
+	int status;
+
+	/* Use READ_STATUS command, but wait for the device to be ready */
+	ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+		  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+		  (IFC_FIR_OP_RDSTAT << IFC_NAND_FIR0_OP1_SHIFT));
+	ifc_out32(ctrl->rregs + FSL_IFC_FCR0, NAND_CMD_STATUS <<
+		  IFC_NAND_FCR0_CMD0_SHIFT);
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 1);
+	set_addr(mtd, 0, 0, 0);
+	ctrl->read_bytes = 1;
+
+	fsl_ifc_run_command(mtd);
+
+	nand_fsr = ifc_in32(ctrl->rregs + FSL_IFC_NAND_FSR);
+	status = nand_fsr >> 24;
+
+	/* Chip sometimes reporting write protect even when it's not */
+	return status | NAND_STATUS_WP;
+}
+
+/*
+ * The controller does not check for bitflips in erased pages,
+ * therefore software must check instead.
+ */
+static int
+check_erased_page(struct nand_chip *chip, u8 *buf, struct mtd_info *mtd)
+{
+	u8 *ecc = chip->oob_poi;
+	const int ecc_size = chip->ecc.bytes;
+	const int pkt_size = chip->ecc.size;
+	int i, res, bitflips = 0;
+	struct mtd_oob_region oobregion = { };
+
+
+	mtd_ooblayout_ecc(mtd, 0, &oobregion);
+	ecc += oobregion.offset;
+	for (i = 0; i < chip->ecc.steps; i++) {
+		res = nand_check_erased_ecc_chunk(buf, pkt_size, ecc, ecc_size,
+		NULL, 0, chip->ecc.strength);
+
+		if (res < 0) {
+			pr_err("fsl-ifc: NAND Flash ECC Uncorrectable Error\n");
+			mtd->ecc_stats.failed++;
+		} else if (res > 0) {
+			mtd->ecc_stats.corrected += res;
+		}
+		bitflips = max(res, bitflips);
+		buf += pkt_size;
+		ecc += ecc_size;
+	}
+
+	return bitflips;
+}
+
+static int fsl_ifc_read_page(struct nand_chip *chip, uint8_t *buf,
+		int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct fsl_ifc_mtd *priv = chip->priv;
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+
+	nand_read_page_op(chip, page, 0, buf, mtd->writesize);
+	/*fsl_ifc_read_buf(chip, buf, mtd->writesize); */
+	if (oob_required)
+		fsl_ifc_read_buf(chip, chip->oob_poi, mtd->oobsize);
+
+	if (ctrl->nand_stat & IFC_NAND_EVTER_STAT_ECCER) {
+		if (!oob_required)
+			fsl_ifc_read_buf(chip, chip->oob_poi, mtd->oobsize);
+
+		return check_erased_page(chip, buf, mtd);
+	}
+
+	if (ctrl->nand_stat != IFC_NAND_EVTER_STAT_OPC)
+		mtd->ecc_stats.failed++;
+
+	return ctrl->max_bitflips;
+}
+
+/*
+ * ECC will be calculated automatically, and errors will be detected in
+ * waitfunc.
+ */
+static int fsl_ifc_write_page(struct nand_chip *chip, const uint8_t *buf,
+		int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
+	fsl_ifc_write_buf(chip, chip->oob_poi, mtd->oobsize);
+
+	return nand_prog_page_end_op(chip);
+}
+
+static int match_bank(struct fsl_ifc_ctrl *ctrl, int bank, phys_addr_t addr)
+{
+	u32 cspr = get_ifc_cspr(ctrl->gregs, bank);
+
+	if (!(cspr & CSPR_V))
+		return 0;
+	if ((cspr & CSPR_MSEL) != CSPR_MSEL_NAND)
+		return 0;
+
+	return (cspr & CSPR_BA) == (addr & CSPR_BA);
+}
+
+static int fsl_ifc_ctrl_init(void)
+{
+	struct fsl_ifc_ctrl *ctrl;
+	struct device_node *np;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,ifc");
+	if (!np)
+		return -EINVAL;
+
+	ifc_ctrl = kzalloc(sizeof(*ifc_ctrl), GFP_KERNEL);
+	if (!ifc_ctrl)
+		return -ENOMEM;
+
+	ctrl = ifc_ctrl;
+	ctrl->read_bytes = 0;
+	ctrl->index = 0;
+	ctrl->addr = NULL;
+
+	ctrl->gregs = of_iomap(np, 0);
+
+	ctrl->version = ifc_in32(ctrl->gregs + FSL_IFC_REV);
+	if (ctrl->version >= FSL_IFC_V2_0_0)
+		ctrl->rregs = ctrl->gregs + 0x10000;
+	else
+		ctrl->rregs = ctrl->gregs + 0x1000;
+
+	/* clear event registers */
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT, ~0U);
+	ifc_out32(ctrl->rregs + FSL_IFC_PGRDCMPL_EVT_STAT, ~0U);
+
+	/* Enable error and event for any detected errors */
+	ifc_out32(ctrl->rregs + FSL_IFC_EVTER_EN,
+		  IFC_NAND_EVTER_EN_OPC_EN |
+		  IFC_NAND_EVTER_EN_PGRDCMPL_EN |
+		  IFC_NAND_EVTER_EN_FTOER_EN |
+		  IFC_NAND_EVTER_EN_WPER_EN);
+
+	ifc_out32(ctrl->rregs + FSL_IFC_NCFGR, 0x0);
+
+	return 0;
+}
+
+static void fsl_ifc_select_chip(struct nand_chip *chip, int cs)
+{
+}
+
+static int fsl_ifc_sram_init(struct fsl_ifc_mtd *priv, uint32_t ver)
+{
+	struct fsl_ifc_ctrl *ctrl = priv->ctrl;
+	uint32_t cs = 0, csor = 0, csor_8k = 0, csor_ext = 0;
+	uint32_t ncfgr = 0;
+	uint32_t time_start;
+
+	if (ctrl->version > FSL_IFC_V1_1_0) {
+		ncfgr = ifc_in32(ctrl->rregs + FSL_IFC_NCFGR);
+		ifc_out32(ctrl->rregs + FSL_IFC_NCFGR,
+				ncfgr | IFC_NAND_SRAM_INIT_EN);
+
+		/* wait for  SRAM_INIT bit to be clear or timeout */
+		time_start = get_time_ns();
+		while (!is_timeout(time_start, IFC_TIMEOUT_MS * MSECOND)) {
+			ifc_ctrl->nand_stat =
+				ifc_in32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT);
+
+			if (!(ifc_ctrl->nand_stat & IFC_NAND_SRAM_INIT_EN))
+				return 0;
+		}
+		pr_err("fsl-ifc: Failed to Initialise SRAM\n");
+		return -EIO;
+	}
+
+	cs = priv->cs;
+	/* Save CSOR and CSOR_ext */
+	csor = get_ifc_csor(ctrl->gregs, cs);
+	csor_ext = get_ifc_csor_ext(ctrl->gregs, cs);
+
+	/* change PageSize 8K and SpareSize 1K*/
+	csor_8k = (csor & ~(CSOR_NAND_PGS_MASK)) | 0x0018C000;
+	set_ifc_csor(ctrl->gregs, cs, csor_8k);
+	set_ifc_csor_ext(ctrl->gregs, cs, 0x0000400);
+
+	/* READID */
+	ifc_out32(ctrl->rregs + FSL_IFC_FIR0,
+		  (IFC_FIR_OP_CW0 << IFC_NAND_FIR0_OP0_SHIFT) |
+		  (IFC_FIR_OP_UA  << IFC_NAND_FIR0_OP1_SHIFT) |
+		  (IFC_FIR_OP_RB << IFC_NAND_FIR0_OP2_SHIFT));
+	ifc_out32(ctrl->rregs + FSL_IFC_FCR0,
+		  NAND_CMD_READID << IFC_NAND_FCR0_CMD0_SHIFT);
+	ifc_out32(ctrl->rregs + FSL_IFC_ROW3, 0x0);
+
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_BC, 0x0);
+
+	/* Program ROW0/COL0 */
+	ifc_out32(ctrl->rregs + FSL_IFC_ROW0, 0x0);
+	ifc_out32(ctrl->rregs + FSL_IFC_COL0, 0x0);
+
+	/* set the chip select for NAND Transaction */
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_CSEL,
+			priv->cs << IFC_NAND_CSEL_SHIFT);
+
+	/* start read seq */
+	ifc_out32(ctrl->rregs + FSL_IFC_NANDSEQ_STRT,
+			IFC_NAND_SEQ_STRT_FIR_STRT);
+
+	time_start = get_time_ns();
+	while (!is_timeout(time_start, IFC_TIMEOUT_MS * MSECOND)) {
+		ifc_ctrl->nand_stat =
+			ifc_in32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT);
+
+		if (ifc_ctrl->nand_stat & IFC_NAND_EVTER_STAT_OPC)
+			break;
+	}
+
+	if (ifc_ctrl->nand_stat != IFC_NAND_EVTER_STAT_OPC) {
+		pr_err("fsl-ifc: Failed to Initialise SRAM\n");
+		return -EIO;
+	}
+
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT, ifc_ctrl->nand_stat);
+
+	/* Restore CSOR and CSOR_ext */
+	set_ifc_csor(ctrl->gregs, priv->cs, csor);
+	set_ifc_csor_ext(ctrl->gregs, priv->cs, csor_ext);
+
+	return 0;
+}
+
+static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
+{
+	struct fsl_ifc_ctrl *ctrl;
+	struct nand_chip *nand = &priv->chip;
+	struct mtd_info *mtd = nand_to_mtd(&priv->chip);
+	uint32_t cspr = 0, csor = 0;
+	int ret = 0;
+
+	if (!ifc_ctrl) {
+		ret = fsl_ifc_ctrl_init();
+		if (ret)
+			return ret;
+	}
+	ctrl = priv->ctrl = ifc_ctrl;
+
+	if (priv->dev->device_node) {
+		int bank, banks;
+
+		 /* find which chip select it is connected to */
+		banks = (ctrl->version == FSL_IFC_V1_1_0) ? 4 : 8;
+		for (bank = 0; bank < banks; bank++) {
+			if (match_bank(ifc_ctrl, bank, priv->pbase))
+				break;
+		}
+		priv->cs = bank;
+		if (bank >= banks) {
+			pr_err("%s: address did not match any chip selects\n",
+				__func__);
+			return -ENODEV;
+		}
+	}
+
+	/*mtd->priv = nand; */
+	mtd->dev.parent = priv->dev;
+
+	/*
+	 * Fill in nand_chip structure
+	 * set up function call table
+	 */
+	nand->legacy.write_buf = fsl_ifc_write_buf;
+	nand->legacy.read_buf = fsl_ifc_read_buf;
+	nand->legacy.select_chip = fsl_ifc_select_chip;
+	nand->legacy.cmdfunc = fsl_ifc_cmdfunc;
+	nand->legacy.waitfunc = fsl_ifc_wait;
+
+	/* set up nand options */
+	nand->bbt_td = &bbt_main_descr;
+	nand->bbt_md = &bbt_mirror_descr;
+
+	/* set up nand options */
+	nand->options = NAND_NO_SUBPAGE_WRITE;
+	nand->bbt_options = NAND_BBT_USE_FLASH;
+
+	cspr = get_ifc_cspr(ctrl->gregs, priv->cs);
+	csor = get_ifc_csor(ctrl->gregs, priv->cs);
+
+	if (cspr & CSPR_PORT_SIZE_16) {
+		nand->legacy.read_byte = fsl_ifc_read_byte16;
+		nand->options |= NAND_BUSWIDTH_16;
+	} else {
+		nand->legacy.read_byte = fsl_ifc_read_byte;
+	}
+
+	nand->controller = &ifc_ctrl->controller;
+	nand->priv = priv;
+
+	nand->ecc.read_page = fsl_ifc_read_page;
+	nand->ecc.write_page = fsl_ifc_write_page;
+
+	/* Hardware generates ECC per 512 Bytes */
+	nand->ecc.size = 512;
+	nand->ecc.bytes = 8;
+
+	nand->legacy.chip_delay = 30;
+
+	switch (csor & CSOR_NAND_PGS_MASK) {
+	case CSOR_NAND_PGS_512:
+		if (!(nand->options & NAND_BUSWIDTH_16)) {
+			/* Avoid conflict with bad block marker */
+			bbt_main_descr.offs = 0;
+			bbt_mirror_descr.offs = 0;
+		}
+
+		nand->ecc.strength = 4;
+		priv->bufnum_mask = 15;
+		break;
+
+	case CSOR_NAND_PGS_2K:
+		nand->ecc.strength = 4;
+		priv->bufnum_mask = 3;
+		break;
+
+	case CSOR_NAND_PGS_4K:
+		if ((csor & CSOR_NAND_ECC_MODE_MASK) ==
+		    CSOR_NAND_ECC_MODE_4) {
+			nand->ecc.strength = 4;
+		} else {
+			nand->ecc.strength = 8;
+			nand->ecc.bytes = 16;
+		}
+
+		priv->bufnum_mask = 1;
+		break;
+
+	case CSOR_NAND_PGS_8K:
+		if ((csor & CSOR_NAND_ECC_MODE_MASK) ==
+		    CSOR_NAND_ECC_MODE_4) {
+			nand->ecc.strength = 4;
+		} else {
+			nand->ecc.strength = 8;
+			nand->ecc.bytes = 16;
+		}
+
+		priv->bufnum_mask = 0;
+		break;
+
+
+	default:
+		pr_err("ifc nand: bad csor %#x: bad page size\n", csor);
+		return -ENODEV;
+	}
+
+	/* Must also set CSOR_NAND_ECC_ENC_EN if DEC_EN set */
+	if (csor & CSOR_NAND_ECC_DEC_EN) {
+		nand->ecc.mode = NAND_ECC_HW;
+		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
+	} else {
+		nand->ecc.mode = NAND_ECC_SOFT;
+		nand->ecc.algo = NAND_ECC_HAMMING;
+	}
+
+	if (ctrl->version >= FSL_IFC_V1_1_0) {
+		ret = fsl_ifc_sram_init(priv, ctrl->version);
+		if (ret)
+			return ret;
+	}
+
+	if (ctrl->version >= FSL_IFC_V2_0_0)
+		priv->bufnum_mask = (priv->bufnum_mask * 2) + 1;
+
+	return 0;
+}
+
+static int fsl_ifc_nand_probe(struct device_d *dev)
+{
+	struct fsl_ifc_mtd *priv;
+	struct resource *iores;
+	struct mtd_info *mtd;
+	int ret = 0;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = -ENOMEM;
+		goto bailout;
+	}
+	priv->pbase = iores->start;
+	priv->vbase = IOMEM(iores->start);
+
+	if (fsl_ifc_chip_init(priv)) {
+		ret = -ENOMEM;
+		goto bailout;
+	}
+
+	ret = nand_scan_ident(&priv->chip, 1, NULL);
+	if (ret)
+		goto bailout;
+
+	ret = nand_scan_tail(&priv->chip);
+	if (ret)
+		goto bailout;
+
+	mtd = nand_to_mtd(&priv->chip);
+	return add_mtd_nand_device(mtd, "nand");
+bailout:
+	kfree(priv);
+	return ret;
+}
+
+static __maybe_unused struct of_device_id fsl_nand_compatible[] = {
+	{
+		.compatible = "fsl,ifc-nand",
+	}, {
+	}
+};
+
+static struct driver_d fsl_ifc_driver = {
+	.name = "fsl_nand",
+	.probe = fsl_ifc_nand_probe,
+	.of_compatible = DRV_OF_COMPAT(fsl_nand_compatible),
+};
+device_platform_driver(fsl_ifc_driver);
+
+MODULE_AUTHOR("Freescale Semiconductor, Inc.");
+MODULE_DESCRIPTION("FSL IFC NAND driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/fsl_ifc.h b/include/linux/fsl_ifc.h
new file mode 100644
index 0000000000..2ff0626357
--- /dev/null
+++ b/include/linux/fsl_ifc.h
@@ -0,0 +1,305 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later  */
+/*
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ * Author: Dipen Dudhat <dipen.dudhat@freescale.com>
+ *
+ */
+
+#ifndef __FSL_IFC_H
+#define __FSL_IFC_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/log2.h>
+
+/* Big-Endian */
+#define ifc_in32(a)			ioread32be(a)
+#define ifc_out32(a, v)			iowrite32be(v, a)
+#define ifc_in16(a)			ioread16be(a)
+#define ifc_out16(a, v)			iowrite16be(v, a)
+
+/*
+ * CSPR - Chip Select Property Register
+ */
+#define CSPR_BA				0xFFFF0000
+#define CSPR_BA_SHIFT			16
+#define CSPR_PORT_SIZE			0x00000180
+#define CSPR_PORT_SIZE_SHIFT		7
+#define CSPR_PORT_SIZE_8		0x00000080
+#define CSPR_PORT_SIZE_16		0x00000100
+#define CSPR_PORT_SIZE_32		0x00000180
+/* Write Protect */
+#define CSPR_WP				0x00000040
+#define CSPR_WP_SHIFT			6
+#define CSPR_MSEL			0x00000006
+#define CSPR_MSEL_SHIFT			1
+#define CSPR_MSEL_NOR			0x00000000
+#define CSPR_MSEL_NAND			0x00000002
+#define CSPR_MSEL_GPCM			0x00000004
+#define CSPR_V				0x00000001
+#define CSPR_V_SHIFT			0
+
+/* Convert an address into the right format for the CSPR Registers */
+#define CSPR_PHYS_ADDR(x)		(((uint64_t)x) & 0xffff0000)
+
+/*
+ * Address Mask Register
+ */
+#define IFC_AMASK_MASK			0xFFFF0000
+#define IFC_AMASK_SHIFT			16
+#define IFC_AMASK(n)			(IFC_AMASK_MASK << \
+					(ilog2(n) - IFC_AMASK_SHIFT))
+
+/*
+ * Chip Select Option Register IFC_NAND Machine
+ */
+#define CSOR_NAND_ECC_ENC_EN		0x80000000
+#define CSOR_NAND_ECC_MODE_MASK		0x30000000
+/* 4 bit correction per 520 Byte sector */
+#define CSOR_NAND_ECC_MODE_4		0x00000000
+/* 8 bit correction per 528 Byte sector */
+#define CSOR_NAND_ECC_MODE_8		0x10000000
+#define CSOR_NAND_ECC_DEC_EN		0x04000000
+/* Row Address Length */
+#define CSOR_NAND_RAL_MASK		0x01800000
+#define CSOR_NAND_RAL_SHIFT		20
+#define CSOR_NAND_RAL_1			0x00000000
+#define CSOR_NAND_RAL_2			0x00800000
+#define CSOR_NAND_RAL_3			0x01000000
+#define CSOR_NAND_RAL_4			0x01800000
+/* Page Size 512b, 2k, 4k */
+#define CSOR_NAND_PGS_MASK		0x00180000
+#define CSOR_NAND_PGS_SHIFT		16
+#define CSOR_NAND_PGS_512		0x00000000
+#define CSOR_NAND_PGS_2K		0x00080000
+#define CSOR_NAND_PGS_4K		0x00100000
+#define CSOR_NAND_PGS_8K		0x00180000
+/* Spare region Size */
+#define CSOR_NAND_SPRZ_MASK		0x0000E000
+#define CSOR_NAND_SPRZ_SHIFT		13
+#define CSOR_NAND_SPRZ_16		0x00000000
+#define CSOR_NAND_SPRZ_64		0x00002000
+#define CSOR_NAND_SPRZ_128		0x00004000
+#define CSOR_NAND_SPRZ_210		0x00006000
+#define CSOR_NAND_SPRZ_218		0x00008000
+#define CSOR_NAND_SPRZ_224		0x0000A000
+#define CSOR_NAND_SPRZ_CSOR_EXT	0x0000C000
+/* Pages Per Block */
+#define CSOR_NAND_PB_MASK		0x00000700
+#define CSOR_NAND_PB_SHIFT		8
+#define CSOR_NAND_PB(n)			((ilog2(n) - 5) << CSOR_NAND_PB_SHIFT)
+/* Time for Read Enable High to Output High Impedance */
+#define CSOR_NAND_TRHZ_MASK		0x0000001C
+#define CSOR_NAND_TRHZ_SHIFT		2
+#define CSOR_NAND_TRHZ_20		0x00000000
+#define CSOR_NAND_TRHZ_40		0x00000004
+#define CSOR_NAND_TRHZ_60		0x00000008
+#define CSOR_NAND_TRHZ_80		0x0000000C
+#define CSOR_NAND_TRHZ_100		0x00000010
+/* Buffer control disable */
+#define CSOR_NAND_BCTLD			0x00000001
+
+/*
+ * Chip Select Option Register - NOR Flash Mode
+ */
+/* Enable Address shift Mode */
+#define CSOR_NOR_ADM_SHFT_MODE_EN	0x80000000
+/* Page Read Enable from NOR device */
+#define CSOR_NOR_PGRD_EN		0x10000000
+/* AVD Toggle Enable during Burst Program */
+#define CSOR_NOR_AVD_TGL_PGM_EN		0x01000000
+/* Address Data Multiplexing Shift */
+#define CSOR_NOR_ADM_MASK		0x0003E000
+#define CSOR_NOR_ADM_SHIFT_SHIFT	13
+#define CSOR_NOR_ADM_SHIFT(n)	((n) << CSOR_NOR_ADM_SHIFT_SHIFT)
+/* Type of the NOR device hooked */
+#define CSOR_NOR_NOR_MODE_ASYNC_NOR	0x00000000
+#define CSOR_NOR_NOR_MODE_AVD_NOR	0x00000020
+/* Time for Read Enable High to Output High Impedance */
+#define CSOR_NOR_TRHZ_MASK		0x0000001C
+#define CSOR_NOR_TRHZ_SHIFT		2
+#define CSOR_NOR_TRHZ_20		0x00000000
+#define CSOR_NOR_TRHZ_40		0x00000004
+#define CSOR_NOR_TRHZ_60		0x00000008
+#define CSOR_NOR_TRHZ_80		0x0000000C
+#define CSOR_NOR_TRHZ_100		0x00000010
+/* Buffer control disable */
+#define CSOR_NOR_BCTLD			0x00000001
+
+/*
+ * Flash Timing Registers (FTIM0 - FTIM2_CSn)
+ */
+/*
+ * FTIM0 - NAND Flash Mode
+ */
+#define FTIM0_NAND			0x7EFF3F3F
+#define FTIM0_NAND_TCCST_SHIFT		25
+#define FTIM0_NAND_TCCST(n)		((n) << FTIM0_NAND_TCCST_SHIFT)
+#define FTIM0_NAND_TWP_SHIFT	16
+#define FTIM0_NAND_TWP(n)	((n) << FTIM0_NAND_TWP_SHIFT)
+#define FTIM0_NAND_TWCHT_SHIFT	8
+#define FTIM0_NAND_TWCHT(n)	((n) << FTIM0_NAND_TWCHT_SHIFT)
+#define FTIM0_NAND_TWH_SHIFT	0
+#define FTIM0_NAND_TWH(n)	((n) << FTIM0_NAND_TWH_SHIFT)
+/*
+ * FTIM1 - NAND Flash Mode
+ */
+#define FTIM1_NAND			0xFFFF3FFF
+#define FTIM1_NAND_TADLE_SHIFT	24
+#define FTIM1_NAND_TADLE(n)	((n) << FTIM1_NAND_TADLE_SHIFT)
+#define FTIM1_NAND_TWBE_SHIFT	16
+#define FTIM1_NAND_TWBE(n)	((n) << FTIM1_NAND_TWBE_SHIFT)
+#define FTIM1_NAND_TRR_SHIFT	8
+#define FTIM1_NAND_TRR(n)	((n) << FTIM1_NAND_TRR_SHIFT)
+#define FTIM1_NAND_TRP_SHIFT	0
+#define FTIM1_NAND_TRP(n)	((n) << FTIM1_NAND_TRP_SHIFT)
+/*
+ * FTIM2 - NAND Flash Mode
+ */
+#define FTIM2_NAND			0x1FE1F8FF
+#define FTIM2_NAND_TRAD_SHIFT	21
+#define FTIM2_NAND_TRAD(n)	((n) << FTIM2_NAND_TRAD_SHIFT)
+#define FTIM2_NAND_TREH_SHIFT	11
+#define FTIM2_NAND_TREH(n)	((n) << FTIM2_NAND_TREH_SHIFT)
+#define FTIM2_NAND_TWHRE_SHIFT	0
+#define FTIM2_NAND_TWHRE(n)	((n) << FTIM2_NAND_TWHRE_SHIFT)
+/*
+ * FTIM0 - NOR Flash Mode
+ */
+#define FTIM0_NOR			0xF03F3F3F
+#define FTIM0_NOR_TACSE_SHIFT		28
+#define FTIM0_NOR_TACSE(n)		((n) << FTIM0_NOR_TACSE_SHIFT)
+#define FTIM0_NOR_TEADC_SHIFT		16
+#define FTIM0_NOR_TEADC(n)		((n) << FTIM0_NOR_TEADC_SHIFT)
+#define FTIM0_NOR_TAVDS_SHIFT		8
+#define FTIM0_NOR_TAVDS(n)		((n) << FTIM0_NOR_TAVDS_SHIFT)
+#define FTIM0_NOR_TEAHC_SHIFT		0
+#define FTIM0_NOR_TEAHC(n)		((n) << FTIM0_NOR_TEAHC_SHIFT)
+/*
+ * FTIM1 - NOR Flash Mode
+ */
+#define FTIM1_NOR			0xFF003F3F
+#define FTIM1_NOR_TACO_SHIFT		24
+#define FTIM1_NOR_TACO(n)		((n) << FTIM1_NOR_TACO_SHIFT)
+#define FTIM1_NOR_TRAD_NOR_SHIFT	8
+#define FTIM1_NOR_TRAD_NOR(n)		((n) << FTIM1_NOR_TRAD_NOR_SHIFT)
+#define FTIM1_NOR_TSEQRAD_NOR_SHIFT	0
+#define FTIM1_NOR_TSEQRAD_NOR(n)	((n) << FTIM1_NOR_TSEQRAD_NOR_SHIFT)
+/*
+ * FTIM2 - NOR Flash Mode
+ */
+#define FTIM2_NOR			0x0F3CFCFF
+#define FTIM2_NOR_TCS_SHIFT		24
+#define FTIM2_NOR_TCS(n)		((n) << FTIM2_NOR_TCS_SHIFT)
+#define FTIM2_NOR_TCH_SHIFT		18
+#define FTIM2_NOR_TCH(n)		((n) << FTIM2_NOR_TCH_SHIFT)
+#define FTIM2_NOR_TWPH_SHIFT		10
+#define FTIM2_NOR_TWPH(n)		((n) << FTIM2_NOR_TWPH_SHIFT)
+#define FTIM2_NOR_TWP_SHIFT		0
+#define FTIM2_NOR_TWP(n)		((n) << FTIM2_NOR_TWP_SHIFT)
+
+/*
+ * FTIM0 - Normal GPCM Mode
+ */
+#define FTIM0_GPCM			0xF03F3F3F
+#define FTIM0_GPCM_TACSE_SHIFT		28
+#define FTIM0_GPCM_TACSE(n)		((n) << FTIM0_GPCM_TACSE_SHIFT)
+#define FTIM0_GPCM_TEADC_SHIFT		16
+#define FTIM0_GPCM_TEADC(n)		((n) << FTIM0_GPCM_TEADC_SHIFT)
+#define FTIM0_GPCM_TAVDS_SHIFT		8
+#define FTIM0_GPCM_TAVDS(n)		((n) << FTIM0_GPCM_TAVDS_SHIFT)
+#define FTIM0_GPCM_TEAHC_SHIFT		0
+#define FTIM0_GPCM_TEAHC(n)		((n) << FTIM0_GPCM_TEAHC_SHIFT)
+/*
+ * FTIM1 - Normal GPCM Mode
+ */
+#define FTIM1_GPCM			0xFF003F00
+#define FTIM1_GPCM_TACO_SHIFT		24
+#define FTIM1_GPCM_TACO(n)		((n) << FTIM1_GPCM_TACO_SHIFT)
+#define FTIM1_GPCM_TRAD_SHIFT		8
+#define FTIM1_GPCM_TRAD(n)		((n) << FTIM1_GPCM_TRAD_SHIFT)
+/*
+ * FTIM2 - Normal GPCM Mode
+ */
+#define FTIM2_GPCM			0x0F3C00FF
+#define FTIM2_GPCM_TCS_SHIFT		24
+#define FTIM2_GPCM_TCS(n)		((n) << FTIM2_GPCM_TCS_SHIFT)
+#define FTIM2_GPCM_TCH_SHIFT		18
+#define FTIM2_GPCM_TCH(n)		((n) << FTIM2_GPCM_TCH_SHIFT)
+#define FTIM2_GPCM_TWP_SHIFT		0
+#define FTIM2_GPCM_TWP(n)		((n) << FTIM2_GPCM_TWP_SHIFT)
+
+/*
+ * General Control Register (GCR)
+ */
+#define IFC_GCR_MASK			0x8000F800
+/* reset all IFC hardware */
+#define IFC_GCR_SOFT_RST_ALL		0x80000000
+/* Turnaroud Time of external buffer */
+#define IFC_GCR_TBCTL_TRN_TIME		0x0000F800
+#define IFC_GCR_TBCTL_TRN_TIME_SHIFT	11
+
+/*
+ * Clock Control Register (CCR)
+ */
+#define IFC_CCR_MASK			0x0F0F8800
+/* Clock division ratio */
+#define IFC_CCR_CLK_DIV_MASK		0x0F000000
+#define IFC_CCR_CLK_DIV_SHIFT		24
+#define IFC_CCR_CLK_DIV(n)		((n-1) << IFC_CCR_CLK_DIV_SHIFT)
+/* IFC Clock Delay */
+#define IFC_CCR_CLK_DLY_MASK		0x000F0000
+#define IFC_CCR_CLK_DLY_SHIFT		16
+#define IFC_CCR_CLK_DLY(n)		((n) << IFC_CCR_CLK_DLY_SHIFT)
+
+#ifndef __ASSEMBLY__
+#include <asm/io.h>
+
+#define FSL_IFC_CSPRX(i)	(0x10 + ((i) * 0xc))
+#define FSL_IFC_CSORX(i)	(0x130 + ((i) * 0xc))
+#define FSL_IFC_CSORX_EXT(i)	(0x134 + ((i) * 0xc))
+#define FSL_IFC_AMASKX(i)	(0xa0 + ((i) * 0xc))
+#define FSL_IFC_CSX_FTIMY(i, j)	((0x1c0 + ((i) * 0x30)) + ((j) * 4))
+
+#define get_ifc_cspr(base, i) (ifc_in32(base + FSL_IFC_CSPRX(i)))
+#define get_ifc_csor(base, i) (ifc_in32(base + FSL_IFC_CSORX(i)))
+#define get_ifc_csor_ext(base, i) (ifc_in32(base + FSL_IFC_CSORX_EXT(i)))
+#define get_ifc_amask(base, i) (ifc_in32(base + FSL_IFC_AMASKX(i)))
+#define get_ifc_ftim(base, i, j) (ifc_in32(base + FSL_IFC_CSX_FTIMY(i, j)))
+
+#define set_ifc_cspr(base, i, v) (ifc_out32(base + FSL_IFC_CSPRX(i), v))
+#define set_ifc_csor(base, i, v) (ifc_out32(base + FSL_IFC_CSORX(i), v))
+#define set_ifc_csor_ext(base, i, v) (ifc_out32(base + FSL_IFC_CSORX_EXT(i),\
+				v))
+#define set_ifc_amask(base, i, v) (ifc_out32(base + FSL_IFC_AMASKX(i), v))
+#define set_ifc_ftim(base, i, j, v) \
+			(ifc_out32(base + FSL_IFC_CSX_FTIMY(i, j), v))
+
+#define FSL_IFC_GCR_OFFSET	0x40c
+#define FSL_IFC_CCR_OFFSET	0x44c
+
+enum ifc_chip_sel {
+	IFC_CS0,
+	IFC_CS1,
+	IFC_CS2,
+	IFC_CS3,
+	IFC_CS4,
+	IFC_CS5,
+	IFC_CS6,
+	IFC_CS7,
+};
+
+enum ifc_ftims {
+	IFC_FTIM0,
+	IFC_FTIM1,
+	IFC_FTIM2,
+	IFC_FTIM3,
+};
+
+#ifdef CONFIG_FSL_ERRATUM_IFC_A002769
+#undef CSPR_MSEL_NOR
+#define CSPR_MSEL_NOR	CSPR_MSEL_GPCM
+#endif
+
+#endif /* __ASSEMBLY__ */
+#endif /* __FSL_IFC_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

