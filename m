Delivery-date: Wed, 28 Jul 2021 14:49:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izn-00067J-Pv
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 14:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izm-0004v7-4W
	for lore@pengutronix.de; Wed, 28 Jul 2021 14:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOq3OxLDcHPuN4Tvh0QdMQytbl1Hca7IMwMW8RhNJpM=; b=Q/lY1BNq+qFzoC
	wx7FH+CDBx/Z+f3/xbc/n+YmQWTnYPD7qYmXfaQ0De8Chu8CR10BncUE4KqDUxqUhxFPOKQM42iiE
	jWPslPbtRVdpdrAsQd3W5wj8NoJN6oi2jRZpHqHYnobaRdkfVKYJRvSN161omiut1h5jctP88Yj7c
	9AVnonrnGlUUBqpiGrHlShq8rerPe5vOkjw32hu+BjABbgcvzkxDRXGgk0It6ON776RObx+WOE5Wm
	bGAT2ThoF88bgLfhwJzAosEFaYUSHgvbrjGQDUfEydR4yv1qA1LaXdJEsImGg4JhrZJiOg2HmOLuY
	dEEIZ53un8XhEE9oLATw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iy2-000i9Y-NU; Wed, 28 Jul 2021 12:47:22 +0000
Received: from mail-mw2nam12on2123.outbound.protection.outlook.com
 ([40.107.244.123] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8ixw-000i8F-L8
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 12:47:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jg1rr5k3wA09j5fBTrPpHa2kzSg5mLZeMVSSCwWlCHPsrkIXSMpSIeyMgASDb8cj/Ng/fwpdVM8uRSEr4YRyUVR5yPrvq93/ayEgBYNieN86nzME4ibl2KkJIMfTxE9RvPs1muloOSdya1TlWqrymvKA6u4CNGdGitDLlxAhjuNG36JmF2THK5iGgxCcGmcOpqJOMbrFyZwG2P+/Dv7F2vyo+T2fC4sNNvmXI+RdAmGA1hBre1C355Zkm8ShA8BUwHgUNU72V92+bX06LjjnS2mHhpnN+qYNxFcQYBOCwX9wjatLIlQFvjh/qW2e9O61M5ZRq5eUXfLeDGXHJWAYYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAtVCJ3bwzua7IyNmHn5WV7Y6B1teMZrc+/nnnqTnas=;
 b=RqTrJTMIHFeaJ+ZB6s9b/qchHCY0JxOmExFYz5NXOxpqFyg0Q1l1wF2/YzjyVsOWDMR2skIVo0xkoBVGhb/ROGdDxoGNE7u9lnXM9MOm7a0tYMGT4hwGwCuvyYok5P0xnMQ3anRmsRZ313i8CDYzg1Wh/DRvjJ80DuS+RDS74ju4AGkheHwLkQwHYWSHapgXu2p2pBZ/Bwpt5EKTZ3hD1AJOhorvXiXnCFC+RDaAr9sKkOGJasfJ5Dx9xsoxEsWmgNHwuqFl2VGrV4YYyt+uH3wzWP0b7EDuuQwMQxWgLSdhJH8KUv9BSFrRdW5TtpFW/UsERjMbV5+zCLRv9eEqOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HAtVCJ3bwzua7IyNmHn5WV7Y6B1teMZrc+/nnnqTnas=;
 b=G1rqGlo1cNomO5AtPBREnON4lPxcH3UyYZhLbNwYy1fU1isYed7cfMeJ2d8Vs6r6zB8bE0QV4OEwUqXXmDbFzWK6P+YiIxUhkxuWXH3TP6nHiWLOWVvTvvCwA7wFvVzmBLWNKSxCGMeBNW2oq7tJtvYoyveBgBDveuOdFuTITRBZVjTGMDjdz6ylfaN20Rhb+OaGtExPonWE4cPKT0n2DvXirM0hItktLw94pEwrspa+o1ZSJXXstWaHS3xe07QooyTnFzcYWxggQjwVrbFDd+XA1KJQQd7MEn8fZDphMRnhkTmHnBMdsJa16oN8en+xdAVT1SDzHRhOriyFRnPkeQ==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4353.namprd16.prod.outlook.com (2603:10b6:208:350::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 12:47:14 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.020; Wed, 28 Jul 2021
 12:47:14 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Wed, 28 Jul 2021 13:47:06 +0100
Message-Id: <1627476428-16318-3-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 28 Jul 2021 12:47:11.0654 (UTC)
 FILETIME=[AF227C60:01D783AE]
X-ClientProxiedBy: BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::23) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:47:13 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Wed, 28 Jul 2021 13:47:11 +0100
Received: from owcbuild.abaco.local (owcbuild.abaco.local [10.1.177.12])	by
 selma.abaco.local (Postfix) with ESMTP id 82609E222F;
 Wed, 28 Jul 2021 13:47:11 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94c06328-2655-49ac-3c49-08d951c5d308
X-MS-TrafficTypeDiagnostic: BL3PR16MB4353:
X-Microsoft-Antispam-PRVS: <BL3PR16MB435322F9C7C88BAA0656D5AD91EA9@BL3PR16MB4353.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IwEwqyr/5pVFjlB4jZPSwbN2JeHtKFwYDTLXa2kUupxJcR7O5F683IPOXLN/YUDYNwo7Ab36rEClOMe31p3OTG0BSD735CXQmz4smXrHI0t9C11geiV5Dz0NA8Ge1z/KrgAdSWugRizKbF72qewX8RjgLT8DGvHmMDwqH989wIay3fi6KYIhfG+oVzeb8kVTPMzx9aAnuKaIwcxpkwvkJ5GmXf+Ra00axcI9wj5xJuND3Tiv1+k9f6N+4XPLUnV2EqR4M8FzOWPogsLebTHZk5PTtPtFJ4K/uAOfTinF0eVqBi3wYMkOdwoHiAnrUYDHwSBANDsqZBP/4dOkjTvUfyKZiWMn/bJM75z7jqugGLxUF3aTKGhZ4xhs/fsMxGjc7+ZFzXSG5nXlyvtYaIE8B7tRZ6p7X5Hxs8B3J+7LSVTTig1d3Jf0LsOQLFk/41cXUnCY3lGmbKn5GRHXt72VWE2U8DSfomYnIzdZysO7MOlzyPJDEx0xKAz0RDDVpSoLBhYoDf5r9nhKavSvfumiDkQgiAO2XUxRNefYWYq0frfOiVBoajtUiFTarDCzvCi5hWCC5SInDWqJO9aFRsk0rJF+rzko/51wh5L8rDv3i3QOplBU8m+4VyK9PZs2PCHmFeDP9VXhhQP3GRHazixt/PqRK2pS/9r7tADh6zgSMm6/KE2nZcozhF7b78NX49bgVGWgyZdxbdiGDXtlmXwZww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(478600001)(86362001)(38100700002)(107886003)(2616005)(66556008)(6266002)(8936002)(66476007)(38350700002)(44832011)(6666004)(8676002)(5660300002)(6916009)(316002)(36756003)(186003)(83380400001)(26005)(66946007)(4326008)(2906002)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WQyP+eTilK89M82ME541MLZ2a+29/YhTTZfL8jifytJDinop0eWoXhswwush?=
 =?us-ascii?Q?gPdPpl/+KrSY1ccjdv0Dzn+EGkCy8Doe3l7WgqQ++/juOYcx1F/SjNOoH9Ye?=
 =?us-ascii?Q?42ygCEpkpXaBymlRzmO3IAQgsbo0fhktNS7E3l0BtS6yOVewjM6zjttwImgq?=
 =?us-ascii?Q?oCEip1WvAjwEWlGMMtujz7aDK4BpEjad3MPW1R1vBbWVBZ5rk21wp2UyP2au?=
 =?us-ascii?Q?Bx2ESArnIusxz+sUNSNkiwSThtivL5wDq8qsv6er4i4Rv4GkBHbyTzE3YNLd?=
 =?us-ascii?Q?f5h1eKUrrnrYiIGswwu734eiq2wt64tJ/XdTxtLHhpk/mU/woXzNKgz5JHY6?=
 =?us-ascii?Q?IZhs4mdCbWeOzFZ4qVyIzBB2zEViKKeTvzLALMvXxqKJSNRySGeRrXL/Khbc?=
 =?us-ascii?Q?Eh+uY1W/lRIsqxEh1wEe/Mj8Azdb4EsPHCooLt2C/o35G+eFYvzTIHhJ1UKF?=
 =?us-ascii?Q?4TOQfZ/iRx+TmOIf/NLaKvk5yoHYlW8bLE+vYqGX7AiyMdNay+BwX7yiJoE1?=
 =?us-ascii?Q?+3y9o0RrJYQfCaUeaAgj3+ZMDVGsE1/p21S59QwDX20AWa7tup5u/zAnyc4U?=
 =?us-ascii?Q?WCHMCphEwIE0OHSZTANDzOY4XmosrDa81QGCchEs1lNIEjzDbOd0oR0IoWRW?=
 =?us-ascii?Q?5KzSgltdIqBwlDjWGo2rf+qyAy+wxiAoF4qGljruUcHsshVqMSDbMT1z0X1Y?=
 =?us-ascii?Q?nzN9omTpPNzLscsz9fFoZOhA28AvxuDk/CLq2LoQC9QVL6nChPrB/Fw3/IAI?=
 =?us-ascii?Q?rbADFKqrXz8ZAlpx5+cUCEKC9YXNwprDKGX80Xf8E6BOogxUvnYjpM2OJzDL?=
 =?us-ascii?Q?cfoILM+8HWX3ffy0mxFC6euFLCwLd6Ys+D8wGlr5aCeLMY0j5UAizCwWwt+D?=
 =?us-ascii?Q?4GcI+a30OS7w8417Peg4LVIoIdLeZzEma6Hxmczm+1Uxu7qdxFJVLmAlFWs/?=
 =?us-ascii?Q?mDw/WviSvdLuUu9OMSuYZ7JNu1mXp7S4PPPP/Sl1eOn9fExi/3y+jAwmNzTU?=
 =?us-ascii?Q?psgkg0RPKFBfGLvfWu6pm0eJP1f3UgZDLuJgN4FVsn1B/mBmaqtd02uS8jAw?=
 =?us-ascii?Q?nVHgJJDBWzAObjz0WXnTGnzuzaSKjyZfSL3FogWk7LF53Bx+f+dkKyXCBWCU?=
 =?us-ascii?Q?zmZKF096UnliRMr8vuykWoYaEhG9XKwubhSOZxdquXA0sHq/jx0cF3JLPBBr?=
 =?us-ascii?Q?g0ZkR1yf9lLYySxb2yCqEmXLsnCs2v1QUUAhs3DdjviYVHxcXtJK3KuJ8qG+?=
 =?us-ascii?Q?tnQznlML7/NF/6BbR9lhE1hXIqAHYbm5JveUcljrd3AOWIPwCjtMW4kxQjm0?=
 =?us-ascii?Q?jHg035slmUjS3AqRoAGV1zkyoi0LjWhpU4e7WYM+Eqw9gw=3D=3D?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94c06328-2655-49ac-3c49-08d951c5d308
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:47:14.2188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6OrKoFDcXfbf5jgDpoLBCuhRfJnHSk3InAHsXpzZVyxZG0zG4fBUAs6WUqw+Kl+HE3biBhKy4yIz4sAcDl35GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_054716_853109_8C1C5820 
X-CRM114-Status: GOOD (  13.05  )
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
Subject: [PATCH 2/4] arm: 64-bit device specific operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for the introduction of the NXP FSL IFC
nand driver, add memcpy_ directional I/O operation.

Code based on NXP Linux support:
git://source.codeaurora.org/external/qoriq/qoriq-components/linux

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/lib64/Makefile |  2 +-
 arch/arm/lib64/io.c     | 98 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 99 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/lib64/io.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 69cb3d8ea1..591727c160 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -1,4 +1,4 @@
-obj-y += stacktrace.o
+obj-y += stacktrace.o io.o
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
diff --git a/arch/arm/lib64/io.c b/arch/arm/lib64/io.c
new file mode 100644
index 0000000000..693cda42b0
--- /dev/null
+++ b/arch/arm/lib64/io.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Based on arch/arm/kernel/io.c
+ *
+ * Copyright (C) 2012 ARM Ltd.
+ */
+
+#include <module.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+#include <io.h>
+
+/*
+ * Copy data from IO memory space to "real" memory space.
+ */
+void memcpy_fromio(void *to, const volatile void __iomem *from, size_t count)
+{
+	while (count && !IS_ALIGNED((unsigned long)from, 8)) {
+		*(u8 *)to = __raw_readb(from);
+		from++;
+		to++;
+		count--;
+	}
+
+	while (count >= 8) {
+		*(u64 *)to = __raw_readq(from);
+		from += 8;
+		to += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		*(u8 *)to = __raw_readb(from);
+		from++;
+		to++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memcpy_fromio);
+
+/*
+ * Copy data from "real" memory space to IO memory space.
+ */
+void memcpy_toio(volatile void __iomem *to, const void *from, size_t count)
+{
+	while (count && !IS_ALIGNED((unsigned long)to, 8)) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
+		to++;
+		count--;
+	}
+
+	while (count >= 8) {
+		__raw_writeq(*(u64 *)from, to);
+		from += 8;
+		to += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		__raw_writeb(*(u8 *)from, to);
+		from++;
+		to++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memcpy_toio);
+
+/*
+ * "memset" on IO memory space.
+ */
+void memset_io(volatile void __iomem *dst, int c, size_t count)
+{
+	u64 qc = (u8)c;
+
+	qc |= qc << 8;
+	qc |= qc << 16;
+	qc |= qc << 32;
+
+	while (count && !IS_ALIGNED((unsigned long)dst, 8)) {
+		__raw_writeb(c, dst);
+		dst++;
+		count--;
+	}
+
+	while (count >= 8) {
+		__raw_writeq(qc, dst);
+		dst += 8;
+		count -= 8;
+	}
+
+	while (count) {
+		__raw_writeb(c, dst);
+		dst++;
+		count--;
+	}
+}
+EXPORT_SYMBOL(memset_io);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

