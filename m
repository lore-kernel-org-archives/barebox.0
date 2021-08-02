Delivery-date: Mon, 02 Aug 2021 12:42:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP9-0008Rf-F6
	for lore@lore.pengutronix.de; Mon, 02 Aug 2021 12:42:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP6-0003MS-QW
	for lore@pengutronix.de; Mon, 02 Aug 2021 12:42:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WgO8BPOcl56DqmLl6iFHFvE4xXH9SDyBeMu3nXZUrUk=; b=1ojtWnzfTX8HNM
	d6XF7wIDWbTXgwts6RV4C9J+vlgpWVOo6GxyQk8tOix7x2NmhC/vyiNwKcROzwKHGdZIbihKrebFs
	w6Pgivv7sln6PTO25bGfoXRo+I/seCragzAeU6DQLTNTo+avLRjdwY3tD5l+BNXnyXKH8HODLNxFv
	/NXjfOZbvGuuRz5tsfmb2ZmeUKEzTqtrLgt4s8Fjb9MOPWOjxB7EyXV7jcR5WA7+cEHNm1c9buWFq
	0b+ifefh6Xc4YQh+wZ16SiBIVyHGyPSxbyUkL+/MytNHpl+LI7DgVKtM0Mq3zKRp9iq0JRo811GSU
	GUagSqt1C7XCXJRo166g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAVNE-00FnJ6-0Z; Mon, 02 Aug 2021 10:40:44 +0000
Received: from mail-sn1anam02on2104.outbound.protection.outlook.com
 ([40.107.96.104] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAVMt-00FnEE-Et
 for barebox@lists.infradead.org; Mon, 02 Aug 2021 10:40:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ax0c++aAWP1TmvCxUuAFPiNCMSGoYIN8ysgLS30vOO2kmtUcPEcN2VFubxQbWC2Cjl7zHgIqGZXL7xwH0aHght/R0NIEQ8NQ6v58Izqd55IRZ6k3yrpjxPh1bTy2kTp1OrCUG12Finj0dNoIo+01lbu1eOPzNgk71/LVxUnY9Wori5bHOi0z85xuzwmWqre5qS3EwPpNvpiDnXEh5z/GIKDHDIKSNDzmn5OmdAfVjwDWI+rRTwpiKO4MUfpyZY7dKotC8mL8bJXVfweW+VgsGqR1CFUKHpH7j1LujvLZHRf4AbgsQlgiwv6+FcSscnuss5yOz9kImca5rGyfugmUPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvsp0eNJpEUIVNUyEYFjwaRSPQMApzLJN47bREFZSIE=;
 b=BF+WV5yovHpLACuMw09bJepv/8Cq9FbC/K3kt8Mx4Ax2sSugCsicdizELHcR4Fg339FAivs0Gpp/QH1gfN3Qh2Nxt80DHAMBZacmZV1ju9ex5Lje6iII1dWABJj/v9IePGkYvAT8h+QUzmoXQvhhjuzjMZfhNiYJo+AdeEblI1AMoD6oQU2DOwoHfxspZ1uLVeFKmJAO2CY37gMAyivm2PNVISYAEP2Y26DnFLtUkKYuz9+cAR8MEnu3iWxIBvE+5aCeYOyxErlxlcn4gX4XYgy5/4yTZxavIS1/ypJHlhqMpNFi2h/g8vrOrz2Fn20zOzICXGRz1XEU8pvGYkVyqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvsp0eNJpEUIVNUyEYFjwaRSPQMApzLJN47bREFZSIE=;
 b=ZGXcdGaUozI3AqLMYD3lXh3FjSM8Rnq4XNsJMUtm4yE9tdCUI3LQIGmL7YoOAuoRKsccbVKkeb96c15vFcd0oBe9DoW8/b7m9+WtdacdjsE5DUQdL3D6N7s19dC1JoZtn6+qm71u6559cMQqlJTCjfxkdUOvW+SrR6Kk0uOosQtkplD8Zy8kpAJhF9ecr5oKmEKDLOyFSJdZHDlUUfOPqPbWNl/v4rdKzgU5BZVyix+PtQWMUCnmKNxaa2x6FkjDCPhfDvy/s38jqcNWWkn97v1mV8t0w5/yWmKTq/jgkOS4biXWaAaqbG6yU2p6gDujAe4K/WyexXZ0B/8bQ2sawA==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4337.namprd16.prod.outlook.com (2603:10b6:208:33c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Mon, 2 Aug
 2021 10:40:18 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 10:40:18 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Mon,  2 Aug 2021 11:40:04 +0100
Message-Id: <1627900804-15814-4-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 02 Aug 2021 10:40:17.0254 (UTC)
 FILETIME=[C8AA0060:01D7878A]
X-ClientProxiedBy: BL1PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::30) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0235.namprd13.prod.outlook.com (2603:10b6:208:2bf::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4394.12 via Frontend
 Transport; Mon, 2 Aug 2021 10:40:18 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Mon, 2 Aug 2021 11:40:17 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id 2DD19E343F;
 Mon,  2 Aug 2021 11:40:17 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 285eb50d-8cb6-482b-3e69-08d955a1ebd9
X-MS-TrafficTypeDiagnostic: BL3PR16MB4337:
X-Microsoft-Antispam-PRVS: <BL3PR16MB4337AC3EF28486DB6A000B4691EF9@BL3PR16MB4337.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:227;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xn2xVGjHvb2Da5lJDrZEJTaRehpW+aZhMBRqKaYhYhtwXdsu1Lm8jCuCU5WRHzxuWp7GiJE278Kmd5MKT/LTjxszHLnYgocIw/SI+0UJS9Kr6J/aioKU7Qgj43vnqXpd8itNzu+rcK8c2PZ/MG/r2lnbCArR9JhHyZMwqcA6gfG34JXo5tcwgJ1wFQKXCv0tKiwML6nHg6XKtBHVETM6ukZpc3XnjO1iz1mdwaeNS0uHlMGnqKbxkRMn8hN4yRNg8dsDckal2u/1Yb8CiGuoZdBCeuMLoZ3H9lH1cylrP1ijj1y1cGE0mVD0bQZEK1TbghQdUdQB4+9amO/WC2HB13Z+Jwa5J+EDtVdrS4226i62pPWBogqtm689jp/RDwIkglYXwmZR2a18gF+1gkrBcPO/J5vhEoY5iWoNtSWFfFLVn0kH9uF11AaWg+Z3Z5acHDsdoI7Dr0cQJyoPAtGaAPQCLwII2cY3p+ix/TTb/CWCfCW7PndKCgRgMdBoPJqP4kTPvSnNwPYnZrdibrq2nNOuZfreaMlf6VgudJejxImTROes5pwZ/ywvZcbDbAfYSb+pn7/GcTRbErLtIgUb+rUCpgWEk6vc+/A4U7CN5UVVrWx6/5Ao3v1cvjKNTnq/uc5kfB7fuphXICRJYCV8+q9D2a7XNIVNb1RR24FVqs0kOEjok4d2msNWqpOAshxmbDSnr5KkH2WdY08QW1KHQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(376002)(39840400004)(396003)(186003)(26005)(36756003)(107886003)(6266002)(5660300002)(2616005)(8676002)(66476007)(66556008)(4326008)(316002)(6666004)(66946007)(38350700002)(38100700002)(44832011)(83380400001)(52116002)(6916009)(86362001)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K25cXW6yOciSmDQEmt0AvtguLdD9APJhL1dxjOjnlVH2Zeww3Cy9LHmnQX0V?=
 =?us-ascii?Q?uNKTi950fDx24DtrXLtnmq9+L2mrTUegpT1zbsr+RrbIbVPTu//iMIMLU5jh?=
 =?us-ascii?Q?QweyLOv20bGKWj6RueI1pAiahZ8Ih/Ro3cBHLb0cCVQ/tm0yofd+jm2qpbCa?=
 =?us-ascii?Q?1JkzN68q8aK+3It/yH5GJnLJjFHtiRYrttbrCxhhuqVqORc8xiRSqcH5u2l+?=
 =?us-ascii?Q?yOl089aSBdIgNDO5tA3WireVeHKC8IqJi5h2FJyS1PbSDkLI5YEvZyKpMgin?=
 =?us-ascii?Q?EiiB4Zy/lIOV96wMzj//dWcKXgOcirYAyfN3gicjKOTNpywOhsEVRp0dABug?=
 =?us-ascii?Q?9V6v6gBy/YO+DkCu5STXtWqg1uvTxxkiuhrLyctwxdCGl1tpc7bSf0AsPsf3?=
 =?us-ascii?Q?xlV7Ht+deRfCO7ncH7TcO6iUxKkFcDeNxBUbvDb6FiuIY5ViPuL5VBwlhAT6?=
 =?us-ascii?Q?ykclH4jm+4YGagJVxn2ufC5DaRjEp2xvHn2MHsk93PiDtsF0ig8Ja0gcGYJT?=
 =?us-ascii?Q?rei4+tNBunQB/9ccrsu9HePLsJehlIOSjhWsZ6i65NtyAXFj9RlGEdUtdlvU?=
 =?us-ascii?Q?3mlURUlJ06ADZRbqL5XY4E/ZAlVJelCiM/jVesDemR8HjrX6FvS5/QXgMOUk?=
 =?us-ascii?Q?7AvxSQehvSmfp9yKJQSRDUwJEWWvm8k6mNjHS6i37+sSb+WeHNPrJvrCqwSo?=
 =?us-ascii?Q?XJ6V4R4EdcwNQEBYB4t8CrXwUPU8Ynr/8XvTYMzj+9CBndSkt1stOLaDmTO0?=
 =?us-ascii?Q?VNjrlFnPH4JV8094bkqEiy5xaw5VYegIaSIi5d2MxchYBp8Jpfab1iUTrUrx?=
 =?us-ascii?Q?Y9dlhDz0V05ar1O/RXebMkwCBnhVGpRa1TBVSNi5WFsaPU/8K0Bkr8iylFo4?=
 =?us-ascii?Q?pcRwb09xdauleuAGIIB7XtTGLRgFDJtp4Uowj/800y2yBtwThgVqlRtMUwbl?=
 =?us-ascii?Q?mnibq0jmjKRiYlH6k1VOzQkMI5/dnOZP3gYppWlWoILSQsxTf7b3+B1Xe8Uu?=
 =?us-ascii?Q?YAPMQSXlK2j70wVkVy0g9WkK5JXQWW9bMXOuawb1/kN2u53p+VTJ56PkMGQz?=
 =?us-ascii?Q?3U+aPLq76Cy0ouNLznhoM635sLz4gxBlHgHe+fSe1EImyHvG6MUOsAiBMXGp?=
 =?us-ascii?Q?KxREdtwrAbzDZlGvM1Dthu+H2JpY0PBaSMxeeUAxADtsN0Za0xSMCzZLPryf?=
 =?us-ascii?Q?4OVrlO+wJa6KlNgLwxwroJF7fWXTWKnv6WIaV3P9JidHadMV13j5Jsa7txWA?=
 =?us-ascii?Q?zuI2CRhTb+KOX0Lb69PcdXMRnc73Z1Q6/BVvLasiAWCVIhIqrYIRVqi6sTwM?=
 =?us-ascii?Q?QbGiPwOZFMW8qPjfLzCVLrBE?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 285eb50d-8cb6-482b-3e69-08d955a1ebd9
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2021 10:40:18.5819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UaCszxe4kzRbaylWgweYdN4rOvWLSNLMoWAcYVL9FzJ+Aw6bYemF5csimUVwHNkk5j0OltTQRfH4t4VSYPYBxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_034023_544043_D6CB3495 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the NAND timings and enable the IFC NAND driver.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/boards/ls1046ardb/board.c    | 42 +++++++++++++++++++++++++++
 arch/arm/configs/layerscape_defconfig | 11 +++++++
 2 files changed, 53 insertions(+)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index ef68e9c7f9..b2cfba58a8 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -8,10 +8,12 @@
 #include <fs.h>
 #include <envfs.h>
 #include <libfile.h>
+#include <of_address.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
+#include <linux/fsl_ifc.h>
 #include <asm/system.h>
 #include <mach/layerscape.h>
 #include <mach/bbu.h>
@@ -35,6 +37,11 @@ struct nxid {
 	u32 crc;          /* 0xfc - 0xff CRC32 checksum */
 } __packed;
 
+static const struct of_device_id fsl_ifc_of_ids[] = {
+	{ .compatible = "fsl,ifc", },
+	{ },
+};
+
 static int nxid_is_valid(struct nxid *nxid)
 {
 	unsigned char id[] = { 'N', 'X', 'I', 'D' };
@@ -161,3 +168,38 @@ static int rdb_postcore_init(void)
 }
 
 postcore_initcall(rdb_postcore_init);
+
+static int rdb_nand_init(void)
+{
+	struct device_node *np;
+	void __iomem *ifc;
+
+	np = of_find_matching_node(NULL, fsl_ifc_of_ids);
+	if (!np)
+		return -EINVAL;
+
+	ifc = of_iomap(np, 0);
+	if (!ifc)
+		return -EINVAL;
+
+	set_ifc_cspr(ifc, IFC_CS0, CSPR_PHYS_ADDR(0x7e800000) |
+			CSPR_PORT_SIZE_8 | CSPR_MSEL_NAND | CSPR_V);
+	set_ifc_csor(ifc, IFC_CS0, CSOR_NAND_ECC_ENC_EN | CSOR_NAND_ECC_DEC_EN |
+			CSOR_NAND_ECC_MODE_8 |
+			CSOR_NAND_RAL_3 | CSOR_NAND_PGS_4K |
+			CSOR_NAND_SPRZ_224 |  CSOR_NAND_PB(64) |
+			CSOR_NAND_TRHZ_20);
+	set_ifc_amask(ifc, IFC_CS0, IFC_AMASK(64*1024));
+	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM0, FTIM0_NAND_TCCST(0x07) |
+			FTIM0_NAND_TWP(0x18) | FTIM0_NAND_TWCHT(0x07) |
+			FTIM0_NAND_TWH(0x0a));
+	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM1, FTIM1_NAND_TADLE(0x32) |
+			FTIM1_NAND_TWBE(0x39) | FTIM1_NAND_TRR(0x0e)|
+			FTIM1_NAND_TRP(0x18));
+	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM2, FTIM2_NAND_TRAD(0xf) |
+			FTIM2_NAND_TREH(0xa) | FTIM2_NAND_TWHRE(0x1e));
+	set_ifc_ftim(ifc, IFC_CS0, IFC_FTIM3, 0);
+
+	return 0;
+}
+postcore_initcall(rdb_nand_init);
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 394cd95c98..fb8e885353 100644
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
@@ -85,6 +90,10 @@ CONFIG_DP83867_PHY=y
 CONFIG_REALTEK_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
+CONFIG_NAND=y
+CONFIG_NAND_FSL_IFC=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_MUX=y
@@ -112,5 +121,7 @@ CONFIG_FS_NFS=y
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

