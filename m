Delivery-date: Wed, 28 Jul 2021 14:49:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izz-00067q-Rj
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 14:49:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izw-0004xX-Bc
	for lore@pengutronix.de; Wed, 28 Jul 2021 14:49:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeH4WwVD/BHY5FWugd2zAhRA85PmQZ6UbziFDYKLWGk=; b=mp7vM9ELXWg+Yd
	pQ73jv5ZCo/3J/qKXoG8SDiXdYOby9wmSjlOY49xu6y/1NDBZH5baOdEKVq0G3/ueShhugVZpY8M4
	C/0X9cKQtt0Ug2DYWpt5yJCOrHlLNlq7bhj35ekqTDpsZJoI5yLmgf+wK6e8/dO/LRQ1xOi9vdhI4
	tfOQwD9QTGgzu61UBU+0Be5uKK+A7eZMogktN9UrV3d28jtvfz3xV/rgxfWGn6GWLBBXDYIhETBgE
	p3Bxe4vJUUhGXZdeedj7pIMnX/kyCCnQl+CkcmVesHCyaJGx/CqtHQILZlwwSKrdhcF5b7PaFDo5s
	6WfPZepoSktfhVjft9+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iyI-000iET-HO; Wed, 28 Jul 2021 12:47:38 +0000
Received: from mail-mw2nam12on2123.outbound.protection.outlook.com
 ([40.107.244.123] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8iy1-000i8F-Ln
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 12:47:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1lTsVu593qSSLUFzMB7ZrV6TZ4jIsgHRBVZBuRTTS28lV+gbDPw4KC3yhs81twv72YM9H/uhgB1QiCXI/EWOdFU8Bz7J9N5Ox9MUoCyEaB0kVtSz7qw7hvMD57HB9mu78GjoA3ei3oEw5AeA0ULY1X0kz52qHvpV1YW+S2ogYX0PfAJM17lLDokfNLE7Tk+MRZl5Tg111dSMC+xDkEzMen5i7moDpF7KbZyJMkM/QBQZkaDFGTPZpdDivx81Ei2iM/danMCQ+tnB5L6svbgNNa3rMnvrL9cQSS8Bev2rPL4LikLZNPHooe9sV20nSAFZ3zdZvmLWER5IyPZXV6Ryw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4BIxEb3JRzXN3VAN9KmmIfQTuF6lDOLCN3/FieSGLw=;
 b=CA6or15eWR+b1d8NcpaBbxChX2pC78ujyhYdSyi3c7Enz4O4IVXHR5jYWwFHy1aw94EuRUvPdwkqWv0z6kIlMuEYv0G8QN96id11pw20WTyWIO774fiC1drlWDNgXqBDBHj/pnLiHDc47g1CX3fxmLH8TMBcw2wTs+PfChBSyyzw0FRarwx3Z7DO7cpFsRBotUkkBJ6FznM5BGoV+G0DUmRj9fnCpD/X5Aj5TwkZeB4MoB09S8Snn+mknjPaeSr7JE0X2x3ZNSZquk+oTZlAwb3xLKzwRTgChdNUSPA63OORmNHEsSFiyWPoDs3tn8EkXVITeAuxUa0g0tBLok5i8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4BIxEb3JRzXN3VAN9KmmIfQTuF6lDOLCN3/FieSGLw=;
 b=seHINmKhT3JxdDmqdm8rkG57lkP57/TI//1WlCH7mfGAzszBaHHP6PrVAVr6iAA0XQCCDR1J7lHgoR5YKNflyGUQ7gpRBkDDegwWzxpwcQkN9c9k0VCToU8vnHNNFhJ7BZ9lqkH4R7DkmdgC5AMWD8sCkYLM4QZusZfBDFSpqH1WkaI7ASorW9r8PernQ4KmGV9zUUCADAJTJZNflI/v3YTzk7eTTxgPfePqd++c+d5E8OfM8a288lrX4fktmdM/FBlFG4bXM7yOrI7yMiz5SyKq3KV1UYGrejTII58eH2oR4uzBf9v+KtbfoIvUXRyZhL0WL9WNuxmsPhaz+WiHpw==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4353.namprd16.prod.outlook.com (2603:10b6:208:350::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 12:47:15 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.020; Wed, 28 Jul 2021
 12:47:15 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Wed, 28 Jul 2021 13:47:07 +0100
Message-Id: <1627476428-16318-4-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 28 Jul 2021 12:47:11.0872 (UTC)
 FILETIME=[AF43C000:01D783AE]
X-ClientProxiedBy: BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::23) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:47:14 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Wed, 28 Jul 2021 13:47:11 +0100
Received: from owcbuild.abaco.local (owcbuild.abaco.local [10.1.177.12])	by
 selma.abaco.local (Postfix) with ESMTP id B4F3BE222F;
 Wed, 28 Jul 2021 13:47:11 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2a9daacd-a42c-44a3-6132-08d951c5d376
X-MS-TrafficTypeDiagnostic: BL3PR16MB4353:
X-Microsoft-Antispam-PRVS: <BL3PR16MB43538175DDE7840D186593AA91EA9@BL3PR16MB4353.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +mrTfMwCZYyv6yduGs/vvJVLoe7xjAtpls+lcJITOKyyzDAueNcOeEMfV3yQ3LZRKxdadKSsjNDhi0+O/E9npXet+JOQeY+K7nIC9GfM/MOlD2MUMJe12Xc58ZnoIQ7aVjhQcm/2FUHzZh1jAZT5PgjReoZpvB2WZMgT9E9SsBdBKnkpBrz7srF2OWhJrnMs/ILmxxOuMdTH4lx3e1WimGaLe20FmlI14pXQlFvZ5l4o/C31cKzPK83lkt5pm5CUFKobvWiewPBMKvcNZSzdHwlmqF5Q7QI0kMVxdojq+kD6XTjIb35xzucJujVGarDlo4FDgYMyrseSF0dCA+sO8R/FPJTwzlIgoCIUJougGAvhbPSHWnsdczndKl3XRvXqwNjYMhnbXsd9ReUYyNxyHoCPUAtDQovS2enOsLsAbiYbdwKSXv/jDgXEyBiomrAL3TtNhJlvKYYeuNovJonAz/BvCzB7HMxcxbzWM3Gxg6VSln8DwrNX4Jf7Eetjq5jGlkqhLwbCAdtauxQBCT6+LdfJqC0iNzve+OQ4rmQhhefXB7wulfMqyK4ZuCle/aQ1JycnBFOebTmI5nTo4TcnKjlxFMA6vwQIuyUu/5z8z+ndI4Td+MnIi/yAMQucqE2NGnW9shRVSYxTHUgbc6zrd8QBgVuned5nYEHw3nzJhiW1hBpRiVe5aEfF2EO/S4cihuVAK7OXTk8SQ4uPVTm/XQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(478600001)(86362001)(38100700002)(107886003)(2616005)(66556008)(6266002)(8936002)(66476007)(38350700002)(44832011)(6666004)(30864003)(8676002)(5660300002)(6916009)(316002)(36756003)(186003)(83380400001)(26005)(66946007)(4326008)(2906002)(52116002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?30xoaO3WB3149rqiwbfGFh6X8DtrPY9+u2n3JQth0rJ0PoXQN6DQpg8mn62J?=
 =?us-ascii?Q?GViylBEwcpwYwlA4K8HYn8SGsLucphsSWuamzL63edjJS6weQ86LNjzJZXs1?=
 =?us-ascii?Q?drjKL9VWNSGDG+BLJwX4YWwboRbhrEtc6kDH9u1ldprgas6e3ixrQoL8AgJw?=
 =?us-ascii?Q?905D7K8wdZk6o0TnrPnGu9tIfv2x2jyb6fxIzPVYoPTVcojkQrLZbSF3NWO6?=
 =?us-ascii?Q?XBnUgqeCLMPDyfEM3DqPB1peQQWtcDw2B02Tkd741Vs9Ct99FvzXszhUhpm0?=
 =?us-ascii?Q?xNVET11cIbw3u/MGhxk1J9CvDOyj6eQmqi8J/UUCO+QZ+iqXDqWbgWWzuxhG?=
 =?us-ascii?Q?rbCY15n/kx4DkhN/15rPtxfXnAfDvXX1XNR1BbkIWueg0WadiBgSQCNocEiN?=
 =?us-ascii?Q?qhA4hBVwFQqvvGV/JnBmWl3HWR9Prz3m3Wzo4+lfucC3V0uDXjye6bXuLfcm?=
 =?us-ascii?Q?ay72PAMEBO1hq9GxN4BA7s5vQgoSfZatYqEB+N/R3dF9WKBPb0BIG/eJQqCU?=
 =?us-ascii?Q?KKzVGG/D2N5DRZ8JFfwfRX9vOe9aNW8z4/e+Liw6XPiaZhMc+Q1VpC3lBUNt?=
 =?us-ascii?Q?ZO1X9f4reUG1cJDuhfKAONHVikF4hnPoVDgtn/+nAzE71ZIlqFh7zkx9g+bl?=
 =?us-ascii?Q?bmAR4vvw2nxNDTmwMTvqgpvDZbzwflf5Tvbe3Fut5EO4a5/Aqp7dP9OB616U?=
 =?us-ascii?Q?Njjo+8EmKJyUCgad76TpJfcQAmBU339th50EoPmD/BTd3Ew/1e+S/SAXaYo8?=
 =?us-ascii?Q?J4OtEgMDlhTIiee/+UMivJsD+Be1yDNp48yC7IoDutLeMTUzU4ICUOI4Yg5e?=
 =?us-ascii?Q?5m/YjpeINlRUeRS5wHJXxLAqSotEiF0jEi9Y5JeQ/qcU12YSfXlwqrX5l3d2?=
 =?us-ascii?Q?ytHwRPYP5pxqRAifh5pRrLjFT4zQrVIcseS/kUw1biiv0uAmq5b+fwKDruuq?=
 =?us-ascii?Q?M22fwV5tOukqR1zJH9tSKa4wMGrufC2yHB23Tj4bCI3K2zd1jYMWFkzC0Fig?=
 =?us-ascii?Q?kjPQPEDbaonfAs/QrdiurEMNWf6eE6Ih92ugPyh9mAg9XG7H0WPWVnIv6oN8?=
 =?us-ascii?Q?5Loee4u1voJjFB7G1DgK3MYsNE4ctUGMcUO3cReFbtMpIUNH6R0xnauC/M/P?=
 =?us-ascii?Q?pTZlZ8zdWRF664Pzh/gBOBeoAqQVWQzbR0xC2KE6VhjalzNpx8v8tqYvMGDD?=
 =?us-ascii?Q?wY1jjWM6C2q67qEcF1TH9gYkI4uNfVq8dYHNTrOVhUIJaIXAnknTolf9v4s7?=
 =?us-ascii?Q?mOdKjyav18YQLMZOVSD2RpcrdGbaVylkBBpQkJairT6H9N4pDzOpBRIyficm?=
 =?us-ascii?Q?mZejZr8USQBqjhnktTTRmeIJ2nUz2qmVHTioN9DcUcn2YQ=3D=3D?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9daacd-a42c-44a3-6132-08d951c5d376
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:47:15.1776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wEWXhb/GIzrY9ECTztHg/14XJP79PSDt+UxWUjE1lCKHLUs9+cmvzzLgsmaiEbt7hckBb88D8boZqp275MQvsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_054721_849109_80B53DCC 
X-CRM114-Status: GOOD (  17.56  )
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
Subject: [PATCH 3/4] nand: add NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the NXP IFC nand driver support. This driver
can be used with the NXP QorIQ cores.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 .../mach-layerscape/include/mach/fsl_ifc.h    |   16 +
 .../mach-layerscape/include/mach/layerscape.h |    3 +
 drivers/mtd/nand/Kconfig                      |    6 +
 drivers/mtd/nand/Makefile                     |    1 +
 drivers/mtd/nand/fsl_ifc.h                    |  116 ++
 drivers/mtd/nand/nand_fsl_ifc.c               | 1037 +++++++++++++++++
 include/linux/fsl_ifc.h                       |  306 +++++
 7 files changed, 1485 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
 create mode 100644 include/linux/fsl_ifc.h

diff --git a/arch/arm/mach-layerscape/include/mach/fsl_ifc.h b/arch/arm/mach-layerscape/include/mach/fsl_ifc.h
new file mode 100644
index 0000000000..385d07cb1f
--- /dev/null
+++ b/arch/arm/mach-layerscape/include/mach/fsl_ifc.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier:     GPL-2.0+ */
+/*
+ * Copyright 2021 Abaco Systems, Inc
+ */
+
+#ifndef __MACH_MTD_FSL_IFC
+#define __MACH_MTD_FSL_IFC
+
+#include <mach/layerscape.h>
+#include <linux/fsl_ifc.h>
+
+
+struct fsl_ifc_data {
+	uint32_t cs;
+};
+#endif
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
index 1f1da0f66e..cb7bbc56b0 100644
--- a/arch/arm/mach-layerscape/include/mach/layerscape.h
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -3,6 +3,9 @@
 
 #define LS1046A_DDR_SDRAM_BASE	0x80000000
 #define LS1046A_DDR_FREQ	2100000000
+#define LS10146A_IFC_ADDR	0x01530000
+
+#define IFC_ADDR	LS10146A_IFC_ADDR
 
 enum bootsource ls1046_bootsource_get(void);
 
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index c69e5ce4e1..046b4f9e8f 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -42,6 +42,12 @@ config NAND_IMX
 	  and later, which use the GPMI NAND controller from the MXS series. 
 	  See the i.MX 'mxs' driver for those chips.
 
+config NAND_FSL_IFC
+    bool
+    select MTD_NAND_ECC_SOFT if ARCH_MPC85XX
+    prompt "FSL IFC NAND driver"
+    depends on ARCH_MPC85XX || ARCH_LAYERSCAPE
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
index 0000000000..c29fd919e7
--- /dev/null
+++ b/drivers/mtd/nand/nand_fsl_ifc.c
@@ -0,0 +1,1037 @@
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
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/nand_ecc.h>
+#include <mach/fsl_ifc.h>
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
+static int match_bank(int bank, phys_addr_t addr)
+{
+	u32 cspr = get_ifc_cspr(bank);
+
+	if (!(cspr & CSPR_V))
+		return 0;
+	if ((cspr & CSPR_MSEL) != CSPR_MSEL_NAND)
+		return 0;
+
+	return (cspr & CSPR_BA) == (addr & CSPR_BA);
+}
+
+static void fsl_ifc_ctrl_init(void)
+{
+	struct fsl_ifc_ctrl *ctrl;
+
+	ifc_ctrl = kzalloc(sizeof(*ifc_ctrl), GFP_KERNEL);
+	if (!ifc_ctrl)
+		return;
+
+	ctrl = ifc_ctrl;
+	ctrl->read_bytes = 0;
+	ctrl->index = 0;
+	ctrl->addr = NULL;
+
+	ctrl->gregs = IOMEM(IFC_ADDR);
+
+	ctrl->version = ifc_in32(ctrl->gregs + FSL_IFC_REV);
+	if (ctrl->version >= FSL_IFC_V2_0_0)
+		ctrl->rregs = IOMEM(IFC_ADDR + 0x10000);
+	else
+		ctrl->rregs = IOMEM(IFC_ADDR + 0x1000);
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
+		return 1;
+	}
+
+	cs = priv->cs;
+	/* Save CSOR and CSOR_ext */
+	csor = get_ifc_csor(cs);
+	csor_ext = get_ifc_csor_ext(cs);
+
+	/* change PageSize 8K and SpareSize 1K*/
+	csor_8k = (csor & ~(CSOR_NAND_PGS_MASK)) | 0x0018C000;
+	set_ifc_csor(cs, csor_8k);
+	set_ifc_csor_ext(cs, 0x0000400);
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
+		return 1;
+	}
+
+	ifc_out32(ctrl->rregs + FSL_IFC_NAND_EVTER_STAT, ifc_ctrl->nand_stat);
+
+	/* Restore CSOR and CSOR_ext */
+	set_ifc_csor(priv->cs, csor);
+	set_ifc_csor_ext(priv->cs, csor_ext);
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
+		fsl_ifc_ctrl_init();
+		if (!ifc_ctrl)
+			return -ENOMEM;
+	}
+	ctrl = priv->ctrl = ifc_ctrl;
+
+	if (priv->dev->device_node) {
+		int bank, banks;
+
+		 /* find which chip select it is connected to */
+		banks = (ctrl->version == FSL_IFC_V1_1_0) ? 4 : 8;
+		for (bank = 0; bank < banks; bank++) {
+			if (match_bank(bank, priv->pbase))
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
+	cspr = get_ifc_cspr(priv->cs);
+	csor = get_ifc_csor(priv->cs);
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
+	struct device_node *np = dev->device_node;
+	struct fsl_ifc_data *pdata = dev->platform_data;
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
+	if (!np) {
+		priv->vbase = dev_request_mem_region(dev, 0);
+		priv->cs = pdata->cs;
+	} else {
+		iores = dev_request_mem_resource(dev, 0);
+		if (IS_ERR(iores)) {
+			ret = -ENOMEM;
+			goto bailout;
+		}
+		priv->pbase = iores->start;
+		priv->vbase = IOMEM(iores->start);
+	}
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
index 0000000000..9881055671
--- /dev/null
+++ b/include/linux/fsl_ifc.h
@@ -0,0 +1,306 @@
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
+#define IFC_BASE_ADDR		((void __iomem *)IFC_ADDR)
+#define FSL_IFC_CSPRX(i)	(0x10 + ((i) * 0xc))
+#define FSL_IFC_CSORX(i)	(0x130 + ((i) * 0xc))
+#define FSL_IFC_CSORX_EXT(i)	(0x134 + ((i) * 0xc))
+#define FSL_IFC_AMASKX(i)	(0xa0 + ((i) * 0xc))
+#define FSL_IFC_CSX_FTIMY(i, j)	((0x1c0 + ((i) * 0x30)) + ((j) * 4))
+
+#define get_ifc_cspr(i) (ifc_in32(IFC_BASE_ADDR + FSL_IFC_CSPRX(i)))
+#define get_ifc_csor(i) (ifc_in32(IFC_BASE_ADDR + FSL_IFC_CSORX(i)))
+#define get_ifc_csor_ext(i) (ifc_in32(IFC_BASE_ADDR + FSL_IFC_CSORX_EXT(i)))
+#define get_ifc_amask(i) (ifc_in32(IFC_BASE_ADDR + FSL_IFC_AMASKX(i)))
+#define get_ifc_ftim(i, j) (ifc_in32(IFC_BASE_ADDR + FSL_IFC_CSX_FTIMY(i, j)))
+
+#define set_ifc_cspr(i, v) (ifc_out32(IFC_BASE_ADDR + FSL_IFC_CSPRX(i), v))
+#define set_ifc_csor(i, v) (ifc_out32(IFC_BASE_ADDR + FSL_IFC_CSORX(i), v))
+#define set_ifc_csor_ext(i, v) (ifc_out32(IFC_BASE_ADDR + FSL_IFC_CSORX_EXT(i),\
+				v))
+#define set_ifc_amask(i, v) (ifc_out32(IFC_BASE_ADDR + FSL_IFC_AMASKX(i), v))
+#define set_ifc_ftim(i, j, v) \
+			(ifc_out32(IFC_BASE_ADDR + FSL_IFC_CSX_FTIMY(i, j), v))
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

