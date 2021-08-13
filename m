Delivery-date: Fri, 13 Aug 2021 10:19:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPU-0007Qk-JU
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:19:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPP-000090-Uk
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:19:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vz+nDI10T+1tjF2rPQHyY4oqAX9b7nTInvhUqC6aLcI=; b=CriEKm2jNIMLYl
	zF9RpBwA493HPQHzMtJRX4FtNZfSMy9grA9oQ+usLgqoYX46P9ky3c9wbhf9Th47hCHDA+FviDsZb
	dYRevsaYdk4uYv7nXsFfCcYCIC5YcqMk1Qwc94AtCn5TOygGbNsqqCvXYAqoUkuSTvnhGU1G5+LXL
	s3XdNBK0e82aL25QxlLqUbd6wn0N8yI51pe+bI8QGx4yGz478p+cwpGbQjTnudBTHatzkClxdkhZu
	9L620WUFB/zEqjsc+xyTeQ+AFEzTT9dk8nBeFTQiuZ5h7k9cSl02NNSHGIzKAV4lT5/ViabCZE4yy
	aQKCpHaXOLww4Upa+o+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESNI-00CCn2-82; Fri, 13 Aug 2021 08:17:08 +0000
Received: from mail-bn8nam12on2117.outbound.protection.outlook.com
 ([40.107.237.117] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESN9-00CClx-E7
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:17:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JowM9ucACVD4dn8/2UUJKEE/2ptKjKYUXsGgPvtetsIRx/ickwFnqOM5qzILIvPts4/rk4GcpTJxi8FgJwMFhXBvhCe6LU9ZHBneJSLPgulEn4cC9Ov2GV5GKu4sJQwQ8evMeZ8Lg0svmtVZaWXBQeu7rO3lBccCSNiAczLQXEddqsJ/tLzfrxSDv7Ia6cJ0IFlMUVpLDnVJEBRc7OnjadfSPwjKjU3P6qa69hP+aSSW44ElERTNpPdj9tJ8Bh99OI+oNVFxjUzYlKkl2AdOmLYUcTqUpAvymqw7XJbDn4a1NR5Xmzk0ux3tjDLWPCW/WMG1X7u2EZtdt0qRrLSj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvWEWLUrTjWhes8J2xFhBHApJ4EHXRBjIofpa77uL78=;
 b=Ifue7InDTIPvj7IBqdOmQ8VlzxCYgxP3eDGKVKEdu+IarcS7jTfAT0WGS3f1hZA8tRaF0EtTuAwC1QqQYIxR10VfODWbcWHi4htoaM/on2RZHBi4Vgd9VYjAdsNBxozViwGFPaQRgdU0WpxmYgnzkYZ2P4mJOAEvIaGddDafWntnGFYOGkZcUudx1OExXARrBvHqbjpQz9LQlFDZxnVunshkh77k956+Bq7VUTlnI93frG/VrjW9YVD58x7f7Xh991Tts1Ti+pQJNZUt1pSwAZb7OaNLsNw/do8seZYwZQM3xBntlngROKIiJDnPtJ2K31BgfMFA7pt68n/KZo8Hgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvWEWLUrTjWhes8J2xFhBHApJ4EHXRBjIofpa77uL78=;
 b=rvti4tiznV7AwX5I0Cna501v1RARssEb3DH2bYcOYTO+NHr5DttouyRWjGF7PKXtbHiKat2i4iqBBe2QVUBMDldq9q0WlguWlVzK/Jf7stx2gFQak2CvASymJOcxVF1fuZMxfIzsioeK2fyhoBr4bY4hQwoR3cT042UdENZ4jekC36YFo93ybVwbVZTg7scu04MYFjkwCHQb4X/y5KGbVNxnm8kbn2UyAan25jQ+a5+07TIAX5uew3NjzlPN9Zd31RLr0HuxohWyPSBx8MT370S3hGaKNIE1UlCSJbGEC62TGqSd4gfoSvRWjVhzQiDUWsmVtOXGm6xfigPeN7OVwQ==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4571.namprd16.prod.outlook.com (2603:10b6:208:34a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.18; Fri, 13 Aug
 2021 08:16:56 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 08:16:56 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Fri, 13 Aug 2021 09:16:48 +0100
Message-Id: <1628842608-17031-4-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
References: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 13 Aug 2021 08:16:53.0827 (UTC)
 FILETIME=[932A7930:01D7901B]
X-ClientProxiedBy: BL1PR13CA0120.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::35) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0120.namprd13.prod.outlook.com (2603:10b6:208:2b9::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4436.10 via Frontend
 Transport; Fri, 13 Aug 2021 08:16:55 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Fri, 13 Aug 2021 09:16:53 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id B10CCE3571;
 Fri, 13 Aug 2021 09:16:53 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cc344db-27dc-43eb-94c4-08d95e32b6b8
X-MS-TrafficTypeDiagnostic: BL3PR16MB4571:
X-Microsoft-Antispam-PRVS: <BL3PR16MB45711B5EA4278F5EC6C4266691FA9@BL3PR16MB4571.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:218;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Htk3oGe0RYnLjglONzEuQuggCESTDTDrC01XGoId5TC+bHhAwaGcFV6unW/V8squAIMXkF8w+jhlRydUbtRitDjkXmyd0yGA6mn/VanUjIcOk1+V6Yc7KwhAIuQAxlk3aVAnQsGJXqi3tW9D+ByxZstvibYLXuLcvoG8TyBJVyNH0uMp5Ud4ix/6OvevBUu8n99d0keU+pFE7yo+2A60mz0Z875fjMvlNN0tuZSb4iFA69bJrM6/jJbDO+uJPyzq65ZHBN0Urk5uj+TdPzRKsIAIIUk/qWnFvLbk6lxI2sUS7mwPB90zcf4gW9oeiXbNvuFM42aCZpUvTtKf/KbRTFdisqCHDU3UXG1d8PMGAnvun2AmP2ozDUn5wxgOTEK2YHDB+VAdWvqhs+C8vfG4BK044YxUZXISqtjaylaxkGF15zwSt9KcC7QKZfyM+eJsUXovKOLVsaU/wC7ox6XOYovAbwZ7rXHPsveyO4Io2ttzYVTHYB5TyM8PITF6Rh2D7h0+8W1FEE7MhkrGzT7Bs+Y5e1SqQuenQ5hq8NzlZjLGoOmNnCMx5yhv7xYCTO5kHPBM6MxE58nHDHL0Z9PKFyxkDf3g/D/Jl3YlUM4lFe0vGiW4drQGlcj3P+opARBL8ZCtyIWeIjifF2Jd8hWuIBAjHztNL6DUD9jUinwLUlHE0Y9y1U7LPzL0NRY7r+JXpLBA3DgeUDhyWBNVYIuNDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(346002)(136003)(376002)(396003)(2616005)(2906002)(478600001)(36756003)(26005)(83380400001)(52116002)(6916009)(6666004)(8936002)(107886003)(44832011)(316002)(186003)(8676002)(4326008)(38100700002)(38350700002)(86362001)(66556008)(66946007)(5660300002)(66476007)(6266002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PT++oT4Q5dGHPVF4KslPpYY6nJYTp9MfLeKKneLkkQhbALSerxp049kv+HgP?=
 =?us-ascii?Q?kCCHUwDEPnVdP6x+y0Cu8Ckwo0QwnE7kOoppOMU5Dc4+WHTOKQbVS9O/wuBA?=
 =?us-ascii?Q?lQPnrUYaahwxmNBvB3CvbDK1XS7I+Uz1P2UEpgO5sOuMSetVNz6XkV+miGFj?=
 =?us-ascii?Q?+4tAlBXUQZwE2Cq+05DQWeLtWCYEifQYKSc+MQz5jgH0ddlWESFAdf1Ye6sI?=
 =?us-ascii?Q?o4EiVyZwC3NNv8X5zHKWL4ygDx5fhHyLMQGgdPNr86qRl6mifx3BEaSe9l61?=
 =?us-ascii?Q?7HWWD2sZZPLG7Muawiy+16FXyp4ZTxCstcWEv5rsP15TQ9ujf+1rhURoDsJO?=
 =?us-ascii?Q?gjqz2+o0pqQ2EOwg0zVSSJ2Xt8KpbPERKYU1nSdHWcLPH50TzOh31APsgCSl?=
 =?us-ascii?Q?s9YBNVrJo5G29r+DxR9xYqfGZVupB5NmNNqq5veb4+sRy5TysxWFDNSfg6wK?=
 =?us-ascii?Q?g+oTbFwPEOemt7ccYwBTfidqwVjWIaVggXJJZ7T9YOej7jiIlYTuAjbDk39+?=
 =?us-ascii?Q?r6rcH/tt0CarEtOUZ65vwi11mNGT+j5xQZyzkHUqF9Sd3eGwlmx1n6xkV0A9?=
 =?us-ascii?Q?E0IUQFi1WrBDWurZnaDI6KnNLF3cFINccoQs5vqM5UbLjluZf4VhdxK3gIu1?=
 =?us-ascii?Q?PQeOkTM5+/jLEaIlDpLCUtsnrtj1YGJwHdZ59YSPmVf/pjo0IPDkfTBApgkX?=
 =?us-ascii?Q?KRQGhq7i5TTvD18fG1p/QM2ZukFHlz8d/MfdJ4Cr87P/xk8nJMYr4kPbfrLE?=
 =?us-ascii?Q?lIXU/mmbzLq8uGymffrerNHeuRDkFqi+U5jr4LJr63x11VxKbfnYmxGYLix4?=
 =?us-ascii?Q?5sUVbbH1iX6lpyCnJ9ycbK6f8V0rk8+OBy1dkVyh/lRLPe5B/kpvU6CVt8Xy?=
 =?us-ascii?Q?wAGBdUpwg6DzIb4nWru1MRNJY/uzxa/Vwy+CCJ8GeO14cWRsaq1kIgsA7qh8?=
 =?us-ascii?Q?Dohwp/mtbKvZzKD8xVFInwqTHG8nj0g0055bk3dLNRjm5eHa4epFtlHXY1c7?=
 =?us-ascii?Q?zZ3QBFH7QNmGLf6t90RAUmyfK4JBH8dUhuaCVaiyb+wUhV6YA2CP7aMVOyOk?=
 =?us-ascii?Q?gR12KqTSrvbdGp374/1UMlbxtGG7Kf5aZRrRdf01DznlkkEicPIMw0XLbxHW?=
 =?us-ascii?Q?18BQoXIuK+xuVvHvlkixB4HD+G2/5AoG6gcThbCeELFMDK9XWKUHyCxW0kvr?=
 =?us-ascii?Q?JcpWqRKWerIqItZMuOr6UYHznNTDG866QZhSLRyiNyE931e5d7AHPpocDe1z?=
 =?us-ascii?Q?hD3Qd0WUVVXdBtjCt7WnRdV4FByLvxuPryoRV3VUBtOasMkkih+X4oTARVWw?=
 =?us-ascii?Q?ujWQkXYJWDQPUXYUGyxGatNp?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc344db-27dc-43eb-94c4-08d95e32b6b8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 08:16:55.8055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 90OJHfEEfn+w4oQHxjqc5OqF0cCfazdLrWFGVT/f4npNZqaXcrjvrMFziJPp+gsGYi3CFM1EH+NgoIPSw/UjkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4571
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_011659_520594_8125C75B 
X-CRM114-Status: GOOD (  11.49  )
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
Subject: [PATCH 3/3] ls1046ardb: enable IFC NAND.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the NAND timings and enable the IFC NAND driver.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/arm/configs/layerscape_defconfig | 11 +++++++
 arch/arm/mach-layerscape/Makefile     |  1 +
 arch/arm/mach-layerscape/nand.c       | 44 +++++++++++++++++++++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/nand.c

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
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 854a327c91..99da7b2af0 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -6,3 +6,4 @@ obj-pbl-y += boot.o
 pbl-y += xload-qspi.o xload.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
 obj-$(CONFIG_BOOTM) += pblimage.o
+obj-$(CONFIG_NAND_FSL_IFC) += nand.o
diff --git a/arch/arm/mach-layerscape/nand.c b/arch/arm/mach-layerscape/nand.c
new file mode 100644
index 0000000000..b36c6b3c46
--- /dev/null
+++ b/arch/arm/mach-layerscape/nand.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <init.h>
+#include <of_address.h>
+#include <linux/fsl_ifc.h>
+
+static int rdb_nand_init(void)
+{
+	struct device_node *np;
+	void __iomem *ifc;
+
+	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
+		return 0;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,ifc");
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
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

