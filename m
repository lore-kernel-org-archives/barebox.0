Delivery-date: Wed, 28 Jul 2021 14:49:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izl-00066Z-ML
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 14:49:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izk-0004ue-7D
	for lore@pengutronix.de; Wed, 28 Jul 2021 14:49:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsBoG6T+Kera75tVd440BbznLhpjk8F/BlEOvzUY3hw=; b=QbGg/lu7klkpWH
	9SB8FAX458QXQJUu8a/fHPucvlv4AJrRg0zwZ2+e9fuDFHKuGvF3yVBDyAkRGL6Ov7I1m5JLFCTZX
	Wf0/3LGOdr1SLx90LKZqks6YIsEUqCrrPgrv1KKT0urj/+xYlIA/zbMvilQv6j7aTvZL3YhhcsAGC
	c78s/532kXIvBdmqY1LAah9tWRZtUbfH76zWwjTuT4VtKNTqQObCNiSbYpBfSxqmvbK3OinxcyhuJ
	bVwxSX6a3hEJ1b9nC+5qC8Ast1+O85/A+bfA+6REZRlT+r0HtFsE5Emb7rzm/Iu7Bz2L1jtlsB+hJ
	eAGRE2vjDE37UoT+aGng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iyD-000iCl-IK; Wed, 28 Jul 2021 12:47:33 +0000
Received: from mail-mw2nam12on2123.outbound.protection.outlook.com
 ([40.107.244.123] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8iy0-000i8F-3E
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 12:47:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvlJulaTESMnK1GJTYDG+cs/NWPWlp27eE3zjz3DsUq8ICPZj8XWCDJSSLe0DMdiu1jMj2BCCKAQgVfwsbogFRr+2zGXsevJSJx0zxA+esy/+LlJAUo3XHQmhK8nZpFEV1VD95vBVrE1EkFv2FT9NHcpvV4ZgZ26FqY6SOOASMWOFVOkpGvD4JcaB5QbhF4smL55rd/uX6+85zi2IILQKcGNP8o2xBFwgYLe9m18W5ww9VUGeCvBOK9bYHDAU8pB6d5FJVhyCQ6qHtWZDBIE5tETxeeWZkertq6omqV8x/MjxCxHorwinf87nLZpjlLVijEQRr4HOzHQjX4sidNxHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K3pKsh9APfCweAydBNoebXhwKKzZG4XengqjEMSyN6U=;
 b=i1RXqn7yEJuwglfAIjYEeq3yr775SVS6lArHew2nfXh4QxhlJme8yCMOW2uW97tBJ+y42ACWT659wvu1U/I6ak6lVgOzGnmoDSL5wFnGbP0QyKTza2YbazuN5PCdtzN9/ZMEq1T38WExWUM1vKOLm9UcA1EIB0oRBKCQrG1OVCBkxIpSpd12nersHuEXL58RUMZsrDW4reDdYO/QYBvX0UrDQmZ5w6NRUeNDSZLE0yRAfrx6sP7qyNYu9mjnh1vkydkAUFkm7xK6OpHLub36ainzDg7nnG2UW8OSR8VU7GnXeu4GLvvfgRt8A5DDnXnwYGfGoP8GO3Qcrbx7Y1zBDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K3pKsh9APfCweAydBNoebXhwKKzZG4XengqjEMSyN6U=;
 b=RuWc++nJ3esvQrAY3jLvzFFi/fMllQZkEP/R9il79BCIbCla9SHehvIlGb3+NdvRiGa7mHhFAk4Yoy3aqfXhHwl1MAokuv8hIqJ3E9vHRTBpF8gaWORf8Sj67fcCLnO3DKlI8fcfFSyRdaDR76a8v/VfotfggqaoOYAafmPWOYM11Fd8kwuhLFIkUoWbq24uU0JMHiGflfGZtYSuRmFGXfL8A7yXVGn2MzylBk0J+Eixbm1pRfbSLEuvdlDC967rThGngZ7DcVasEBNVtp0vJQzgQggs3m/bcB9BBSO8xgAAhFU8pzaq3Hfmeb4+VPyYUB39kcOIHF7KKmXNWOQ3TA==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4353.namprd16.prod.outlook.com (2603:10b6:208:350::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 12:47:16 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.020; Wed, 28 Jul 2021
 12:47:16 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Wed, 28 Jul 2021 13:47:08 +0100
Message-Id: <1627476428-16318-5-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 28 Jul 2021 12:47:12.0139 (UTC)
 FILETIME=[AF6C7DB0:01D783AE]
X-ClientProxiedBy: BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::23) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:47:15 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Wed, 28 Jul 2021 13:47:12 +0100
Received: from owcbuild.abaco.local (owcbuild.abaco.local [10.1.177.12])	by
 selma.abaco.local (Postfix) with ESMTP id E1E28E33C6;
 Wed, 28 Jul 2021 13:47:11 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a9b5b5e-a36f-4021-3678-08d951c5d403
X-MS-TrafficTypeDiagnostic: BL3PR16MB4353:
X-Microsoft-Antispam-PRVS: <BL3PR16MB435321B57C4565E7D0F0EB1C91EA9@BL3PR16MB4353.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SrjZw3fo+VC07fpZ3wp6QKx0osa8I1DNXesV5fZFlxV00NSXbLx2AjnyndfRoivCyZWSN3my3zwMpLAqY+XYeZCfyZ8tQQolDXWDhyjjNu41MseWohryxLJW3IBnCbgwKllBzPganJMMlpaCqC0vXk+XyO6eV20+qs5iqKxRc2QazPiIwIn5pOV1Z7xj7AwWPpwuX0wPDfLYQjSMsIf8yJH8hQMFYfKXspgLy30sKT4udg3yNkcFyGJXz1pg992sMiGasRcxIc9PTWIGdTwxqoxv8tcTgA0DraTY5v62BI10+Be0EWnijSUWput2/6+EogEO3fCoMfugmC/t1VZQYDT+X3SvaT01GMtR1lk8Mc5yXyj0qqV3nE4Xn9hpKonimiINlIO/XJ5AgKKS6e1qSYHIJFXo2yCvp/OYR8kn0vtSVSRy4P233xdi2Xh5jRmLVOLxUlJyXdYZ5eec21HqDwiyVP1ZZTsumZkJKyNuxn1/EoWBHtPchfYnDK6q2gMQ17y9NjcjPKYXfGpTEqRxnAnvME1YNY/BzefwXbTUrSnNy48dgejy0TjjWKGUb7qmnH/a7Ys7RvGW4cd2WOFqqyQ77fc6HYPIJlfb6Mh2x+1oIjUaQ8+FjqHHXW930M63MEOGk4JUOu8N+wtKgDiB6WwhasbkLaGER82VdY1acwyTqX/+W9L0Wrtxey8fRAcw/RAEm0BC+lzBPRu6PJ80Fw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(478600001)(86362001)(38100700002)(107886003)(2616005)(66556008)(6266002)(8936002)(66476007)(38350700002)(44832011)(6666004)(8676002)(5660300002)(6916009)(316002)(36756003)(186003)(83380400001)(26005)(66946007)(4326008)(2906002)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vx/KAYZLBWdt9OjMko0eT89z0YATOR6lOW0/kj1hei1vjaNtLeWHYj0DWL34?=
 =?us-ascii?Q?XEfsGpCLC62yMmJADOtOMjaGbAHZ4IajapeL2SlYNnuUBp2krBNyG7su/ZYT?=
 =?us-ascii?Q?RCsT2Lxy0LycaO2DapHnl0Z59Xug5XjvfCe0OkkA7znxW2eIlUFNjpYVR8OE?=
 =?us-ascii?Q?ya4FEOmLU7Y2Q3cq8YajC2yKLse/l1k6qPts7Z0S79uhssgRTuFWXqQJh+4T?=
 =?us-ascii?Q?/D+7hYSY+X9hslesr/HW7H+Yvyup5mQXzURH7S0lDpVtfwXxCGnRvJz9KV4n?=
 =?us-ascii?Q?petY9IiC5GZ0egncrJSl6eAiuBE4CGtdP2IQ9oEsdR5DVOAyp90N2oIsp1YA?=
 =?us-ascii?Q?B7vi/GU9OpjA4MOczmVaXNS827bvoyK7DKvmez2P6mcJdY3w3lxOJTd4dNmb?=
 =?us-ascii?Q?l50WvPyfUIxWTXg26J3xoWTYeNMiP8ggPgjBIKz7fR0Z+jv9mZkA2sHt6VOU?=
 =?us-ascii?Q?pqoY9ASAdGKNxUWAZXAB1Mx+sqChP0hyhSK3Uh87JWAMvldSWWbDDKqTJTr5?=
 =?us-ascii?Q?9qVzTqHHY5vf/V6eoK6XrbkW33QNZ2NhufiOJ1bVGgiaZDtTjOfzQv7Ia1gl?=
 =?us-ascii?Q?9hOO4gM0DhQXbSjtmq5EFxLhOTS2/GnsxbM/JCDSZZBuY420Rcg1bv/h3zaW?=
 =?us-ascii?Q?aoEYkUAtU5gjLtU3dgKVJKP/6iSWX1Ptd1bIJBKtjGKPy83DuIErStTtOPtN?=
 =?us-ascii?Q?KRG7G9e11T8NXn5RW0Wf9RPcYJ0BzRuV3kFXD6Jv4RGR4t+Y6HY1xhcChcsQ?=
 =?us-ascii?Q?iBvM64uH+jjNUF5WoTFMgR0YjUCi+V4xAkT9+UU7DEX59i6+LYSa4XvQu7Cd?=
 =?us-ascii?Q?lg81p8aA/x55fQULAz4scZIqmBsOVDIESpg6G20Jr6x56wDlhpxXaxPQvhGe?=
 =?us-ascii?Q?Ad620svU7GnJNyS1/8d0RJuvm3IqFPICB/5lsZBZf3FSZcSJWP1uoRv7/oIo?=
 =?us-ascii?Q?s2+0sDyFI6LFRC7SfaqsgZF2qmB/pm2gCa+CUGd9f7dfo3+M7uFYeJMa6Eei?=
 =?us-ascii?Q?WoS+Zv4L2HLIvkVhXb8wI8e9PG1HwK6KV2Qcru+KdTwYmlLJrPh3AbSY1oUb?=
 =?us-ascii?Q?gxBZ8G3bdVhekVjSUwhuiL2i88/FKw0aSpxO8sK+xOe6XfZ3aQUWsV3xmiFA?=
 =?us-ascii?Q?8YD6OZJqjVIPo9fNY2N/XjeDY3cF74mP9I/UDZduFcJCq+kGNNi2oUaKpc4z?=
 =?us-ascii?Q?cKm642o7LRH3E/P0HHTGtmb9QI3uiadU4nGRrNttLDih2Es+h692QHxfzMdK?=
 =?us-ascii?Q?oi/xSrEycjDaDuYMJBGzy+LM+dW/rTeg7SbuNxdjD9uLOh0YXdwYD2nu7j6Z?=
 =?us-ascii?Q?RtmgbyDq/LUKz/UDGewTU0FlnrWteoNyZn7pmnqN1lPvCA=3D=3D?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9b5b5e-a36f-4021-3678-08d951c5d403
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:47:15.8397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: slsmMcKeEq+3VzoF9QTGWBKZAESP850g/jkw/XWqDsImGsr+ogB+fMuGPcGUolDsWPa6sIJCUqvDvK1FbtxuoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_054720_174808_8CA009DE 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the NAND timings and enable the IFC NAND driver.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/boards/ls1046ardb/board.c    | 26 ++++++++++++++++++++++++++
 arch/arm/configs/layerscape_defconfig | 12 ++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index ef68e9c7f9..5573d5b486 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -12,6 +12,7 @@
 #include <linux/sizes.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
+#include <linux/fsl_ifc.h>
 #include <asm/system.h>
 #include <mach/layerscape.h>
 #include <mach/bbu.h>
@@ -147,6 +148,31 @@ static int rdb_mem_init(void)
 }
 mem_initcall(rdb_mem_init);
 
+static int rdb_nand_init(void)
+{
+	/* NAND mapping and timings. Only for Linux use. */
+	set_ifc_cspr(IFC_CS0, CSPR_PHYS_ADDR(0x7e800000) | CSPR_PORT_SIZE_8 |
+				CSPR_MSEL_NAND | CSPR_V);
+	set_ifc_csor(IFC_CS0, CSOR_NAND_ECC_ENC_EN | CSOR_NAND_ECC_DEC_EN |
+			CSOR_NAND_ECC_MODE_8 |
+			CSOR_NAND_RAL_3 | CSOR_NAND_PGS_4K |
+			CSOR_NAND_SPRZ_224 |  CSOR_NAND_PB(64) |
+			CSOR_NAND_TRHZ_20);
+	set_ifc_amask(IFC_CS0, IFC_AMASK(64*1024));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM0, FTIM0_NAND_TCCST(0x07) |
+			FTIM0_NAND_TWP(0x18) | FTIM0_NAND_TWCHT(0x07) |
+			FTIM0_NAND_TWH(0x0a));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM1, FTIM1_NAND_TADLE(0x32) |
+			FTIM1_NAND_TWBE(0x39) | FTIM1_NAND_TRR(0x0e)|
+			FTIM1_NAND_TRP(0x18));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM2, FTIM2_NAND_TRAD(0xf) |
+			FTIM2_NAND_TREH(0xa) | FTIM2_NAND_TWHRE(0x1e));
+	set_ifc_ftim(IFC_CS0, IFC_FTIM3, 0);
+
+	return 0;
+}
+core_initcall(rdb_nand_init);
+
 static int rdb_postcore_init(void)
 {
 	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 394cd95c98..5c31c9319d 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -34,6 +34,10 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UBI=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_UMOUNT=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
@@ -69,6 +73,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_NAND=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
@@ -85,6 +90,11 @@ CONFIG_DP83867_PHY=y
 CONFIG_REALTEK_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
+CONFIG_NAND=y
+CONFIG_NAND_FSL_IFC=y
+CONFIG_MTD_NAND_ECC_SOFT=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_MUX=y
@@ -112,5 +122,7 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

