Delivery-date: Wed, 31 Jul 2024 10:05:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LP-004jXK-1A
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LO-0004Pv-8p
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMqVvsGs69qIRfoIAsQJhGTzjh45vOeOHbDGoPvbizs=; b=VTdxXJrQDCI1lszXt9sPkcGdPO
	snMLrBmYLEgBVZV/CxgvHivOznZaE2WirdfOkjggBHNstfF+3V/DWxUIPd0HCjRgFT8+bFYStxIvT
	1ttjM6bI4VIaH+3efyDOVr4X3T9FsXY/IfvxiqYJ4rq4qlzC6LoGSze5LAU7QwL2Uxf2P8IUK4/ZQ
	hIZ/LuNwIYqwc/FytjsP+b3aof4Ml5PkDPKrvBlV0LRwYle5WD3Yd9byomclRNwOUWJLqPghtqWCm
	csYOj0SJFNLwZXVWLT7DovbEH+7mJuSrWxCMIiFx1zzLdOr7e9tC7CW7hqHEIa/YJhlU/NVkcuHqn
	+VlcMJgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ks-00000000F9Z-0JXJ;
	Wed, 31 Jul 2024 08:05:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Km-00000000F60-0obz
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fMqVvsGs69qIRfoIAsQJhGTzjh45vOeOHbDGoPvbizs=; b=DtNTszDIQlJEjrNkzfodv5OpTg
	B01IJMdd6+zUpkuymFcmheI3WzsAjHUUERKWD8GWtUgHT87tRci2lC1x4maamxwOoqUvaPSDEkHr9
	ZtAN4UOWB60CI5xoK+N8arO/5zRvwm8f/7mmz/et38MMv1oFwzaDm675/cqNre+2WQiU+28k1HHvn
	jt2+clwWMchuh+shS2IVqah+Pb2GLG4HX3ixejKXQATQkwru0c8GoAecOc2Lvrc6/i/rX7fXwKAcu
	wMWpZ639/FAj19XNh8eQ1Xoh1bxZqsp8Gz9hGWGY+bOWC21lXmNvyjJVS+E41Bfl1E0YXTHB0JGHf
	G0aOUgSw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kh-00000005ATt-3SWc
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003yJ-ME; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfp-7M; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-0R;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:06 +0200
Message-Id: <20240731080510.364706-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_090516_933226_1318ADF2 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/10] mci: describe more command structure in mci.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but adds a number of definitions
that will come in handy when adding erase support in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 include/mci.h | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 4f1ff9dc57c8..610040937ee5 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -14,6 +14,7 @@
 #define _MCI_H_
 
 #include <linux/list.h>
+#include <linux/bits.h>
 #include <block.h>
 #include <fs.h>
 #include <regulator.h>
@@ -28,6 +29,7 @@
 #define SD_VERSION_1_0		(SD_VERSION_SD | 0x100)
 #define SD_VERSION_1_10		(SD_VERSION_SD | 0x1a0)
 #define SD_VERSION_2		(SD_VERSION_SD | 0x200)
+#define SD_VERSION_3		(SD_VERSION_SD | 0x300)
 
 /* Firmware revisions for MMC cards */
 #define MMC_VERSION_MMC		0x10000
@@ -59,7 +61,8 @@
 /* Mask of all caps for bus width */
 #define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
 
-#define SD_DATA_4BIT		0x00040000
+#define SD_DATA_4BIT			BIT(18)
+#define SD_DATA_STAT_AFTER_ERASE	BIT(23)
 
 #define IS_SD(x) (x->version & SD_VERSION_SD)
 
@@ -90,11 +93,21 @@
 #define MMC_CMD_SPI_READ_OCR		58
 #define MMC_CMD_SPI_CRC_ON_OFF		59
 
+  /* class 5 */
+#define MMC_ERASE_GROUP_START    35   /* ac   [31:0] data addr   R1  */
+#define MMC_ERASE_GROUP_END      36   /* ac   [31:0] data addr   R1  */
+#define MMC_ERASE                38   /* ac                      R1b */
+
 #define SD_CMD_SEND_RELATIVE_ADDR	3
 #define SD_CMD_SWITCH_FUNC		6
 #define SD_CMD_SEND_IF_COND		8
 
+  /* class 5 */
+#define SD_ERASE_WR_BLK_START    32   /* ac   [31:0] data addr   R1  */
+#define SD_ERASE_WR_BLK_END      33   /* ac   [31:0] data addr   R1  */
+
 #define SD_CMD_APP_SET_BUS_WIDTH	6
+#define SD_CMD_APP_SD_STATUS		13
 #define SD_CMD_APP_SEND_OP_COND		41
 #define SD_CMD_APP_SEND_SCR		51
 
@@ -110,6 +123,35 @@
 /** card's response in its OCR if it is a high capacity card */
 #define OCR_HCS			0x40000000
 
+/*
+ * Card Command Classes (CCC)
+ */
+#define CCC_BASIC		(1<<0)	/* (0) Basic protocol functions */
+					/* (CMD0,1,2,3,4,7,9,10,12,13,15) */
+					/* (and for SPI, CMD58,59) */
+#define CCC_STREAM_READ		(1<<1)	/* (1) Stream read commands */
+					/* (CMD11) */
+#define CCC_BLOCK_READ		(1<<2)	/* (2) Block read commands */
+					/* (CMD16,17,18) */
+#define CCC_STREAM_WRITE	(1<<3)	/* (3) Stream write commands */
+					/* (CMD20) */
+#define CCC_BLOCK_WRITE		(1<<4)	/* (4) Block write commands */
+					/* (CMD16,24,25,26,27) */
+#define CCC_ERASE		(1<<5)	/* (5) Ability to erase blocks */
+					/* (CMD32,33,34,35,36,37,38,39) */
+#define CCC_WRITE_PROT		(1<<6)	/* (6) Able to write protect blocks */
+					/* (CMD28,29,30) */
+#define CCC_LOCK_CARD		(1<<7)	/* (7) Able to lock down card */
+					/* (CMD16,CMD42) */
+#define CCC_APP_SPEC		(1<<8)	/* (8) Application specific */
+					/* (CMD55,56,57,ACMD*) */
+#define CCC_IO_MODE		(1<<9)	/* (9) I/O mode */
+					/* (CMD5,39,40,52,53) */
+#define CCC_SWITCH		(1<<10)	/* (10) High speed switch */
+					/* (CMD6,34,35,36,37,50) */
+					/* (11) Reserved */
+					/* (CMD?) */
+
 #define MMC_VDD_165_195		0x00000080	/* VDD voltage 1.65 - 1.95 */
 #define MMC_VDD_20_21		0x00000100	/* VDD voltage 2.0 ~ 2.1 */
 #define MMC_VDD_21_22		0x00000200	/* VDD voltage 2.1 ~ 2.2 */
@@ -139,6 +181,21 @@
 #define SD_SWITCH_CHECK		0
 #define SD_SWITCH_SWITCH	1
 
+/*
+ * Erase/trim/discard
+ */
+#define MMC_ERASE_ARG			0x00000000
+#define MMC_SECURE_ERASE_ARG		0x80000000
+#define MMC_TRIM_ARG			0x00000001
+#define MMC_DISCARD_ARG			0x00000003
+#define MMC_SECURE_TRIM1_ARG		0x80000001
+#define MMC_SECURE_TRIM2_ARG		0x80008000
+#define MMC_SECURE_ARGS			0x80000000
+#define MMC_TRIM_OR_DISCARD_ARGS	0x00008003
+
+#define SD_ERASE_ARG			0x00000000
+#define SD_DISCARD_ARG			0x00000001
+
 /*
  * EXT_CSD fields
  */
@@ -338,6 +395,8 @@
 #define EXT_CSD_TIMING_HS400	3	/* HS400 */
 #define EXT_CSD_DRV_STR_SHIFT	4	/* Driver Strength shift */
 
+#define EXT_CSD_SEC_FEATURE_TRIM_EN	(1 << 4) /* Support secure & insecure trim */
+
 #define R1_ILLEGAL_COMMAND		(1 << 22)
 #define R1_STATUS(x)			(x & 0xFFF9A000)
 #define R1_CURRENT_STATE(x)		((x & 0x00001E00) >> 9)	/* sx, b (4 bits) */
-- 
2.39.2



