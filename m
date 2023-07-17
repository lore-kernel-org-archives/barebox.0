Delivery-date: Mon, 17 Jul 2023 18:56:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWt-000nBA-NS
	for lore@lore.pengutronix.de; Mon, 17 Jul 2023 18:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qLRWq-00079A-5a
	for lore@pengutronix.de; Mon, 17 Jul 2023 18:56:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8BrX4BeMzSuoNqXHB+v5bfQdUEIflb5/xHu6ZNK9Tc=; b=4ZnZDWC+aXmMuz0SWLz3zFWR5R
	5vw0QDxAzGE5V1XyQQxEVoef2wbH9A1w5xYZzcQvBtFvCIVpCpl8MaqTUPhIMpcf1yE0M8VoaGar9
	DxqwAFOKT9PNTpz//t9zPohKo2bXHx7mUun8+WdkX7ytAe/sG/rkNxNunNk2y4N2YtFBI1KUmvQCV
	z7qWnD4uz+wZb36R2Skcm+WJr8gTWvLeIzQi2ezXFvLlRc54w9v6ghQrgwbxCbWU0VOy2kiC9z8Tj
	sjqRbT3OpzkTyCWi244Tk6mZkjLzy8m/kVfC0331v5mrmCvOKJp8RB0FtsUxyT5/RNjexDHl0bRNe
	LZ75obMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRVJ-004bK1-02;
	Mon, 17 Jul 2023 16:55:21 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRUo-004bEJ-1P
	for barebox@lists.infradead.org;
	Mon, 17 Jul 2023 16:54:54 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id D1ADD8A4118
	for <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1689612887;
	bh=UQ4CjgLUiskqEHNjDzDkI8jA3pxwBqYAg8lkd/08R4Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=w1hTvEglzkhnkiOb5ScN3STpq/XSGNiz+uBQ9OlI79YGdik8/eIZ1uwRuAU47jdEC
	 kaTzR1rrXhov2/sfaOnFVz6OcZz4+9tNU/LpC/fE4dTGqwb73fiDjv6ID7FFfsasov
	 /GNOncD6y/Bp8R+I3U7F+PYxuV/Vnu9cwbsPkTW0=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id B4F448A3DD8 for <barebox@lists.infradead.org>; Mon,
 17 Jul 2023 18:54:47 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01lp0100.outbound.protection.outlook.com [104.47.25.100]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 399178A4246 for
 <barebox@lists.infradead.org>; Mon, 17 Jul 2023 18:54:46 +0200 (CEST)
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15) by MRZP264MB2332.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:30::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 16:54:44 +0000
Received: from PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca]) by PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 ([fe80::7036:a43b:43f6:bca%3]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:54:44 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <cdaa.64b57256.391ce.2>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zf/eJisR0CClX8L3WJHijRH8uhmpj5PeO+41YNTk3AMDXrH8iXBWasEHd7hb5Jotsi6FmevNwa1DHeB16oiyRV9CtbYIPXzkPQcEOYCaz9IFdQh+9XzCOkDclizZeXXiuW4d3YxfQ2BVN3Ml8yZrqqb/PNfcCuVr6ZK2GEP4CZNJIRQY2GwdeZuCo5zEXFMYrHa7HnoTzcfpZ3SSq5NKK4elNdYJeUsav0swIsbsrDsVsIfmb5Wv8bBWEsY4gcQVkZw4AvI73EZgr3nbU9IdEw4ULx9zreebx/zV0qapVG5YagSVbDWAUFDzmNkdacjYbhbvgjPZlMo5zmHu+34RJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8BrX4BeMzSuoNqXHB+v5bfQdUEIflb5/xHu6ZNK9Tc=;
 b=W4P+GWHNEhRrbhhIPU+wy8oU2aojar6qzgm9O534QO0/K3F4oFywBLWZ87MT66eWpzP6fD8wZL/fhepnimC8P+qu1ztXj9SForBI4e+N9HBWpW0xjh1b46jPPRNN8yPLkFQHtQpxA4Z9xgi9/Dg26zYugR3xRhlyMKRlQHfsnBr5w1QzjuRaV1jR99EPlffxaJCy/kKHpQHSDWJL6nEPy0V1nxqXYIQBBr1sDLTLYmF2SaSNI4oqoUlZYkyt9CHwAHTArdT/PV59Qtku/OlUMK97trl5L1KfbtUxf4upyf2LbQWBkkr5K1SnTXxN6j5H5VPYCZgK6E1Mu4lteh+EPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8BrX4BeMzSuoNqXHB+v5bfQdUEIflb5/xHu6ZNK9Tc=;
 b=bpEO4LRlhsa3vQMFeDCyUuRSP8n7Ct+q6S574agGuVkSaJU++xkF+ckiA5eq6ScFy8Kj/R64PE9UNLWSkwAC3RzgPzwbtUw3/g7fyhSFLdRNHeu7XfF7GzQOtCswir/O/MZikVq9CrUl6TTgAXfeFBAraabgDdWiGtA6YmArlQmHvzf2hWbYWkivw/PGqPGTYxgysvCJ5tc/VPfBBXTQqC8u49ZHmZHiDIAoO74jgPSNjbroEHOUgmeI0r4DVKAewgUc012zNF/HSVpYnN9uK3oArWeiV0wZJ/1PwscAa44jifQAw8Mbb2DbOdjVu4tez9uFbA4BFwja2bDcVxvO2g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jul 2023 18:54:28 +0200
Message-ID: <20230717165428.27286-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230717165428.27286-1-jmaselbas@kalray.eu>
References: <20230717165428.27286-1-jmaselbas@kalray.eu>
X-ClientProxiedBy: LO2P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::14) To PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f0::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB2606:EE_|MRZP264MB2332:EE_
X-MS-Office365-Filtering-Correlation-Id: f152aa13-4f8a-4eed-f4c3-08db86e68534
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GF4E0FaIMzgSFAa3J+gyqT/U1rfEAVCmMuZ0jGWGDd0Jgbdb/f3FGZow+mxS3HOtzLk9zO5UzzOz1u0Q8z/SiIX2ibdXt8SmdVAN0eM00vxYdKVFSfObwXLjKv6hd4sz1WM0p5D+a0J63Hp60KlN5QHYSH9SwttzSUCpq1cVpoHxcBArpFi7pFx2N1il5EnSJFIhU49Ltuy6Z2ORehFAmbrX/D+UVRrGMxciEC5ZXr9Bi0Gnko9pGDdupuc8Xgq6mSrMqxuPxW6+jwP68SsVdMoIqyWyp5/7eBp3UWbAtrORMn1p/F3A7wiRzAU8dnhsFIJFZp5+nYRlRI9dccmxI1B1n1AVnRiNb2EXr/5z3+Fu8+kZOzvGnncPOLWpwgy5ZTMO1oliCN1mNexcgogPfpnfBSwKJtXlYD1tA1fA375Pbil0j8hHfx73Zj4kGlCsOBJCR7OBCkUH3OEwekCzYSNNR1cQOWblNr1D/Ws8Bc7sLofCOwcou6SIwfBF435ZKf3zdqSpYjGgo5/QdYNCTQmrRVHO5jWJ0oMJv3U/Hqs6H78ZxOaHHgP2VEDgBHkhKmo+xq1ue7axj58L0PauyHPk2tXEt2KTSN5+YpnT3CKR/4Cj0Lgydso4sv4xRI/4
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(346002)(136003)(39850400004)(376002)(451199021)(83380400001)(478600001)(52116002)(30864003)(42882007)(186003)(2616005)(6486002)(1076003)(26005)(6512007)(6506007)(107886003)(6666004)(66476007)(66946007)(38350700002)(66556008)(36756003)(38100700002)(41300700001)(83170400001)(2906002)(4326008)(8676002)(6916009)(8936002)(5660300002)(316002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 3yVW3gekoKpHaarfMfOUE0/CMpfGroqjWjR4ItYKQrcnxdUudJZYdSzIsO9kXc5P9KGX1AT0i0rqB0rmX7Tb30u0u95J9tGef6vwKhniYoeXHbmz5guVN+knYxnOH0bXHJUFG7wnArym7nHAEeKN850BxrPeX16nfRuDNmuVnTdOARsr9G5g4ANR3YD3b792jyF37xjcf78gBCWaplQVe9rRDZqjwianC5mUhBW28N9WMCKLMo/nok+3h54IyjRZMaaCRXS0QyLrvVvQJs65Jhe4tygnSCcw8KQydSIf1bzZWm8IpHlPqdmPqjMjJjCjT0XHW1jPQukNP46fu5TcYcX8tYrzLbVDW18q2jot8GdI8ZJUlmh+3kd5g0JoUxZjfw8kIxv4uOeT76wNmCBkp5DZ6AXXQ8h8a+fHkzN1bexYmmsyEg37o1YoIajxJTrzMBkM4AhWdnVBcKuBsZhqfRsoWs/ruZNgQura84PAOrgfdeJKa9/9MCVuPLqRdrm0fIHYwtBo0x5FCefjDDtw5WiNQxnrVPv5JNPIitrAbrvybRgvu8l4nLJqX+lsNcTG24BRn6y+nlEmwupkFXie5e/kXyPuANK3mi+S5rdOWK2lqArRTSspEy/DW2cFvfLvvkr6Ol4v6ZwDxmyuB6eIob0Jj82qpawYVLw2PPadnUXuUdDy15um69j+3ixsE7JKLLmUiYMywlitOeTnL2Ufui6gemRFHneSe5BzfMY7T/zTVoM/WoOZNbR9E0WOfZk/U5UcbIffg+0henJl5BNlYZQuffXVJtWpiH5+aUEDAOA6hu6mlih9vLa5UFSKcagfavxQ68V1jLieq2lhoDHQKeHaBwe42PvJgtc0vJbKouWdM7NMYwUS6gLWb10r0M5GSo5Vw5Hwma0VqadHuscVaO38uINCw50aMknPDeaeAdP9yzWjaP7PcWbJX13uWMHv
 a2qKF8xadEVieDETyZbyX+nzevUvMOWGP7Odio/l2Vp+mda2khNsXc7oq8Bhk/07OuhNYmanHcpZLekCIvscYgf4NO/lPli4WPWRIEFGR+7IeL0hmmZsgRs61HTowPcKCTY8l1rVduWBLVn8vL2xdh4d76SkMqKmMtF39LIYABQuhw+L5Bq9h51NcMz83WAWG4XM4o9qzmLj+QieNe72uyn6k3ZXemjP0wo9amIJq9teNrccBMyAHmgIrMdjBQZ0gXEPwLudFEQw0OuCMbRRR3A6SJSgPePXvOVmBRWKvz+doW3bDSw1/mw9Uq5KSdUn+bVBZUbToPkw/O2V7KqB7snxiUMvk5JgOiptkpW2kJ9IjnT9V3Yzovym21UEYgyR2CTItte2luE0C/THIlI4GFYQ0Iqo45CSRyjzXhfP9hOZRz/I4Af2KyPusPdFr8z8FLHDGgbJMJN/Bfco1ahgP94HKl/5VMOGmjwdiLXFW3THuyNqQ5a514NmsTOGCOvURzQ3Ulggp4SKGyI1QyCetShEZCfg/Uf6Oxm25QuqSjxAuM4g4RYVXkcycFy878DDb25tErFI3Gzeq7w4XIy3Y3y95+aHFVz2aXGLbG1m+O8=
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: f152aa13-4f8a-4eed-f4c3-08db86e68534
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB2606.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:54:44.0110
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CWAGoh7WM9InRoy1c2/INXobpL2DoCauEvove/GPpNBax5wpmFcvPXwCjssC+BSu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2332
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_095450_761670_003DD47C 
X-CRM114-Status: GOOD (  16.74  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] mtd: spi-nor: Add Synopsys DesignWare Octal SPI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/Kconfig       |   6 +
 drivers/mtd/spi-nor/Makefile      |   1 +
 drivers/mtd/spi-nor/dw-ospi-nor.c | 960 ++++++++++++++++++++++++++++++
 3 files changed, 967 insertions(+)
 create mode 100644 drivers/mtd/spi-nor/dw-ospi-nor.c

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index 2beb26006e..b34c69203e 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -26,4 +26,10 @@ config SPI_CADENCE_QUADSPI
 	help
 	  This enables support for the Cadence Quad SPI controller and NOR flash.
 
+config SPI_SYNOPSYS_OCTALSPI_NOR
+	tristate "Synopsys DesignWare Octal SPI controller"
+	help
+	  This enables support for the Synopsys DesignWare Octal SPI controller
+	  and NOR flash.
+
 endif
diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 457a2f0488..61cf789182 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
 obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
+obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o
diff --git a/drivers/mtd/spi-nor/dw-ospi-nor.c b/drivers/mtd/spi-nor/dw-ospi-nor.c
new file mode 100644
index 0000000000..13033f9500
--- /dev/null
+++ b/drivers/mtd/spi-nor/dw-ospi-nor.c
@@ -0,0 +1,960 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2018 Vincent Chardon, Kalray Inc.
+// SPDX-FileCopyrightText: 2023 Jules Maselbas, Kalray Inc.
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/spi-nor.h>
+#include <of.h>
+#include <spi/spi.h>
+
+/* Register offsets */
+#define DW_SPI_CTRL0			0x00
+#define DW_SPI_CTRL1			0x04
+#define DW_SPI_SSIENR			0x08
+#define DW_SPI_MWCR			0x0c
+#define DW_SPI_SER			0x10
+#define DW_SPI_BAUDR			0x14
+#define DW_SPI_TXFTLR			0x18
+#define DW_SPI_RXFTLR			0x1c
+#define DW_SPI_TXFLR			0x20
+#define DW_SPI_RXFLR			0x24
+#define DW_SPI_SR			0x28
+#define DW_SPI_IMR			0x2c
+#define DW_SPI_ISR			0x30
+#define DW_SPI_RISR			0x34
+#define DW_SPI_TXOICR			0x38
+#define DW_SPI_RXOICR			0x3c
+#define DW_SPI_RXUICR			0x40
+#define DW_SPI_MSTICR			0x44
+#define DW_SPI_ICR			0x48
+#define DW_SPI_DMACR			0x4c
+#define DW_SPI_DMATDLR			0x50
+#define DW_SPI_DMARDLR			0x54
+#define DW_SPI_IDR			0x58
+#define DW_SPI_VERSION			0x5c
+#define DW_SPI_DR			0x60
+#define DW_SPI_SPI_CTRL0		0xf4
+
+/* Bit fields in CTRLR0 */
+#define SPI_DFS_OFFSET			0
+#define SPI_DFS_MASK			0x1f
+#define SPI_DFS_8_BITS			0x7
+
+#define SPI_FRF_OFFSET			6
+#define SPI_FRF_SPI			0x0
+#define SPI_FRF_SSP			0x1
+#define SPI_FRF_MICROWIRE		0x2
+#define SPI_FRF_RESV			0x3
+
+#define SPI_MODE_OFFSET			8
+#define SPI_SCPH_OFFSET			8
+#define SPI_SCOL_OFFSET			9
+
+#define SPI_TMOD_OFFSET			10
+#define SPI_TMOD_MASK			(0x3 << SPI_TMOD_OFFSET)
+#define SPI_TMOD_TR			0x0		/* xmit & recv */
+#define SPI_TMOD_TO			0x1		/* xmit only */
+#define SPI_TMOD_RO			0x2		/* recv only */
+#define SPI_TMOD_EPROMREAD		0x3		/* eeprom read mode */
+
+#define SPI_SLVOE_OFFSET		12
+#define SPI_SRL_OFFSET			13
+#define SPI_SSTE_OFFSET			14
+
+#define SPI_CFS_OFFSET			16
+#define SPI_CFS_MASK			(0xf << SPI_CFS_OFFSET)
+
+#define SPI_SPI_FRF_OFFSET		22
+#define SPI_SPI_FRF_MASK		(0x3 << SPI_SPI_FRF_OFFSET)
+#define SPI_STANDARD_FORMAT		0
+#define SPI_DUAL_FORMAT			1
+#define SPI_QUAD_FORMAT			2
+#define SPI_OCTAL_FORMAT		3
+
+#define DW_SPI_CTRL1_NDF_MASK		0xffff
+
+#define SPI_TXFTLR_TXFTHR_OFFSET	16
+
+/* Bit fields in SR, 7 bits */
+#define SR_MASK				0x7f
+#define SR_BUSY				BIT(0)
+#define SR_TF_NOT_FULL			BIT(1)
+#define SR_TF_EMPT			BIT(2)
+#define SR_RF_NOT_EMPT			BIT(3)
+#define SR_RF_FULL			BIT(4)
+#define SR_TX_ERR			BIT(5)
+#define SR_DCOL				BIT(6)
+
+/* Bit fields in ISR, IMR, RISR, 7 bits */
+#define SPI_INT_TXEI			BIT(0)
+#define SPI_INT_TXOI			BIT(1)
+#define SPI_INT_RXUI			BIT(2)
+#define SPI_INT_RXOI			BIT(3)
+#define SPI_INT_RXFI			BIT(4)
+#define SPI_INT_MSTI			BIT(5)
+
+/* Bit fields in DMACR */
+#define SPI_DMA_RDMAE			BIT(0)
+#define SPI_DMA_TDMAE			BIT(1)
+
+/* Bit fields in SPI_CTRL0 */
+#define SPI_SPI_CTRL0_INST_L8		(0x2 << 8) /* two bit value */
+#define SPI_SPI_CTRL0_WAIT_8_CYCLE	(0x8 << 11)/* five bit value */
+#define SPI_SPI_CTRL0_EN_CLK_STRETCH    BIT(30)
+
+#define SPI_SPI_CTRL0_ADDR_L_OFFSET	2
+#define SPI_SPI_CTRL0_ADDR_L_MASK	(0xf << SPI_SPI_CTRL0_ADDR_L_OFFSET)
+#define SPI_SPI_CTRL0_ADDR_L24		0x6 /* 3 bytes address */
+#define SPI_SPI_CTRL0_ADDR_L32		0x8 /* 4 bytes address */
+
+/* TX/RX FIFO maximum size */
+#define TX_FIFO_MAX_SIZE 256
+#define RX_FIFO_MAX_SIZE 256
+
+/* TX/RX interrupt level threshold, max is 256 */
+#define SPI_INT_THRESHOLD	32
+
+#define DW_SPI_MAX_CHIPSELECT	16
+
+struct dw_spi_flash_pdata {
+	struct mtd_info	mtd;
+	struct spi_nor nor;
+	u32 clk_rate;
+};
+
+struct dw_spi_nor {
+	struct device *dev;
+	struct clk *clk;
+	unsigned int sclk;
+	void __iomem *regs;
+	unsigned int master_ref_clk_hz;
+	struct dw_spi_flash_pdata f_pdata[DW_SPI_MAX_CHIPSELECT];
+	bool clk_strech_en;
+	int supported_cs;
+	int current_cs;
+	unsigned int tx_fifo_len;
+	int rx_fifo_len;
+};
+
+static u32 dw_readl(struct dw_spi_nor *dws, u32 offset)
+{
+	return readl(dws->regs + offset);
+}
+
+static void dw_writel(struct dw_spi_nor *dws, u32 offset, u32 val)
+{
+	writel(val, dws->regs + offset);
+}
+
+static void dw_spi_enable_chip(struct dw_spi_nor *dws, int enable)
+{
+	dw_writel(dws, DW_SPI_SSIENR, (enable ? 1 : 0));
+}
+
+/* Disable IRQ bits */
+static void dw_spi_mask_intr(struct dw_spi_nor *dws, u32 mask)
+{
+	u32 new_mask;
+
+	new_mask = dw_readl(dws, DW_SPI_IMR) & ~mask;
+	dw_writel(dws, DW_SPI_IMR, new_mask);
+}
+
+/*
+ * This does disable the SPI controller, interrupts, and re-enable the
+ * controller back. Transmit and receive FIFO buffers are cleared when the
+ * device is disabled.
+ */
+static void dw_spi_reset_chip(struct dw_spi_nor *dw_spi)
+{
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_spi_mask_intr(dw_spi, 0xff);
+	dw_spi_enable_chip(dw_spi, 1);
+}
+
+static int dw_spi_set_cs(struct dw_spi_nor *dw_spi, int cs)
+{
+	if (cs > dw_spi->supported_cs) {
+		dev_err(dw_spi->dev, "invalid chip select\n");
+		return -EINVAL;
+	}
+
+	dw_spi_enable_chip(dw_spi, 0);
+
+	if (cs == -1) {
+		/* no slave */
+		dw_writel(dw_spi, DW_SPI_SER, 0);
+	} else {
+		dw_writel(dw_spi, DW_SPI_SER, BIT(cs));
+	}
+	dw_spi->current_cs = cs;
+
+	dw_spi_enable_chip(dw_spi, 1);
+
+	return 0;
+}
+
+static void dw_spi_hw_init(struct dw_spi_nor *dw_spi)
+{
+	u32 ctrl0;
+	u32 spi_ctrl0;
+
+	dw_spi_reset_chip(dw_spi);
+	dw_spi_enable_chip(dw_spi, 0);
+
+	/* the line will automatically toggle between consecutive data frame */
+	ctrl0 = dw_readl(dw_spi, DW_SPI_CTRL0);
+	ctrl0 &= ~(SPI_DFS_MASK);
+	ctrl0 |= SPI_DFS_8_BITS;
+	ctrl0 &= ~(BIT(SPI_SSTE_OFFSET));
+	dw_writel(dw_spi, DW_SPI_CTRL0, ctrl0);
+
+	/* SPI_CTRL0 is initializtion */
+	spi_ctrl0 = SPI_SPI_CTRL0_INST_L8;
+	spi_ctrl0 |= SPI_SPI_CTRL0_ADDR_L32 << SPI_SPI_CTRL0_ADDR_L_OFFSET;
+	spi_ctrl0 |= SPI_SPI_CTRL0_WAIT_8_CYCLE;
+	spi_ctrl0 |= SPI_SPI_CTRL0_EN_CLK_STRETCH;
+
+	dw_writel(dw_spi, DW_SPI_SPI_CTRL0, spi_ctrl0);
+
+	dw_spi_enable_chip(dw_spi, 1);
+}
+
+static int dw_spi_of_get_flash_pdata(struct device *dev,
+				     struct dw_spi_flash_pdata *f_pdata,
+				     struct device_node *np)
+{
+	struct dw_spi_nor *dw_spi = dev->priv;
+	unsigned int max_clk_rate = dw_spi->master_ref_clk_hz / 2;
+
+	if (!np)
+		return 0;
+
+	if (of_property_read_u32(np, "spi-max-frequency", &f_pdata->clk_rate)) {
+		dev_err(dev, "couldn't determine spi-max-frequency\n");
+		return -ENXIO;
+	}
+
+	dev_dbg(dev, "spi-max-frequency = %u\n", f_pdata->clk_rate);
+
+	/* SPI clock cannot go higher than half the master ref clock */
+	if (f_pdata->clk_rate > max_clk_rate) {
+		f_pdata->clk_rate = max_clk_rate;
+		dev_warn(dev, "limiting SPI frequency to %u\n",
+			 f_pdata->clk_rate);
+	}
+
+	return 0;
+}
+
+static int dw_spi_find_chipselect(struct spi_nor *nor)
+{
+	int cs = -1;
+	struct dw_spi_nor *dw_spi = nor->priv;
+
+	for (cs = 0; cs < dw_spi->supported_cs; cs++)
+		if (nor == &dw_spi->f_pdata[cs].nor)
+			break;
+	return cs;
+}
+
+static int dw_spi_wait_not_busy(struct dw_spi_nor *dw_spi)
+{
+	if (wait_on_timeout(100 * MSECOND,
+			    !(dw_readl(dw_spi, DW_SPI_SR) & SR_BUSY))) {
+		dev_err(dw_spi->dev, "Timeout, wait not busy.\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static bool dw_spi_tx_fifo_not_full(struct dw_spi_nor *dw_spi)
+{
+	return (dw_readl(dw_spi, DW_SPI_SR) & SR_TF_NOT_FULL) != 0;
+}
+
+static bool dw_spi_tx_fifo_empty(struct dw_spi_nor *dw_spi)
+{
+	return (dw_readl(dw_spi, DW_SPI_SR) & SR_TF_EMPT) != 0;
+}
+
+static bool dw_spi_rx_fifo_not_empty(struct dw_spi_nor *dw_spi)
+{
+	return (dw_readl(dw_spi, DW_SPI_SR) & SR_RF_NOT_EMPT) != 0;
+}
+
+static int dw_spi_is_enhanced(enum spi_nor_protocol proto)
+{
+	return proto != SNOR_PROTO_1_1_1;
+}
+
+static int dw_spi_rx_tx_fifo_overflow(struct dw_spi_nor *dw_spi)
+{
+	return dw_readl(dw_spi, DW_SPI_RISR) & (SPI_INT_RXOI | SPI_INT_TXOI);
+}
+
+static int dw_spi_config_baudrate_div(struct dw_spi_nor *dws, unsigned int sclk)
+{
+	unsigned int div;
+
+	dws->sclk = sclk;
+	div = dws->master_ref_clk_hz / sclk;
+	/* divisor value must be even */
+	div += div % 2;
+
+	dev_dbg(dws->dev, "configure clock divider (%u/%u) -> %u\n",
+		dws->master_ref_clk_hz, sclk, div);
+	dw_spi_enable_chip(dws, 0);
+	dw_writel(dws, DW_SPI_BAUDR, div);
+	dw_spi_enable_chip(dws, 1);
+
+	if (dw_readl(dws, DW_SPI_BAUDR) != div) {
+		dev_err(dws->dev, "Unable to configure clock divider\n");
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static int dw_spi_prep_slave_cfg(struct spi_nor *nor)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	int cs = dw_spi_find_chipselect(nor);
+	struct dw_spi_flash_pdata *f_pdata;
+	unsigned int sclk;
+	int ret;
+
+	/* switch chip select */
+	if (dw_spi->current_cs != cs) {
+		ret = dw_spi_set_cs(dw_spi, cs);
+		if (ret)
+			return ret;
+	}
+
+	/* setup baudrate divisor */
+	f_pdata = &dw_spi->f_pdata[dw_spi->current_cs];
+	sclk = f_pdata->clk_rate;
+	if (dw_spi->sclk != sclk) {
+		ret = dw_spi_config_baudrate_div(dw_spi, sclk);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void dw_spi_set_ctrl0(struct dw_spi_nor *dw_spi, u8 tmod, u8 frf)
+{
+	u32 ctrl0;
+
+	/* spi mode configuration */
+	ctrl0 = dw_readl(dw_spi, DW_SPI_CTRL0);
+	ctrl0 &= ~(SPI_TMOD_MASK | SPI_SPI_FRF_MASK);
+	ctrl0 |= tmod << SPI_TMOD_OFFSET;
+	ctrl0 |= frf << SPI_SPI_FRF_OFFSET;
+
+	dw_spi_enable_chip(dw_spi, 0);
+	dev_dbg(dw_spi->dev, "Setting ctrl0 to %x\n", ctrl0);
+	dw_writel(dw_spi, DW_SPI_CTRL0, ctrl0);
+	dw_spi_enable_chip(dw_spi, 1);
+}
+
+static int dw_spi_prep(struct spi_nor *nor, u8 tmod, u8 frf)
+{
+	int ret;
+	struct dw_spi_nor *dw_spi = nor->priv;
+
+	ret = dw_spi_prep_slave_cfg(nor);
+	if (ret)
+		return ret;
+
+	dw_spi_set_ctrl0(dw_spi, tmod, frf);
+
+	return 0;
+}
+
+static int dw_spi_set_addr_len(struct spi_nor *nor)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	u32 val, addr_l;
+
+	val = dw_readl(dw_spi, DW_SPI_SPI_CTRL0);
+	val &= ~SPI_SPI_CTRL0_ADDR_L_MASK;
+
+	if (nor->addr_width == 3) {
+		addr_l = SPI_SPI_CTRL0_ADDR_L24;
+	} else if (nor->addr_width == 4) {
+		addr_l = SPI_SPI_CTRL0_ADDR_L32;
+	} else {
+		dev_err(nor->dev, "unsupported addr_width %d\n",
+			nor->addr_width);
+		return -EINVAL;
+	}
+
+	val |= addr_l << SPI_SPI_CTRL0_ADDR_L_OFFSET;
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_SPI_CTRL0, val);
+	dw_spi_enable_chip(dw_spi, 1);
+
+	return 0;
+}
+
+static int dw_spi_prep_enhanced(struct spi_nor *nor,
+				enum spi_nor_protocol proto, u8 tmod)
+{
+	int ret;
+	u8 frf;
+
+	switch (proto) {
+	case SNOR_PROTO_1_1_2:
+		dev_dbg(nor->dev, "dual mode\n");
+		frf = SPI_DUAL_FORMAT;
+		break;
+	case SNOR_PROTO_1_1_4:
+		dev_dbg(nor->dev, "quad mode\n");
+		frf = SPI_QUAD_FORMAT;
+		break;
+	default:
+		dev_err(nor->dev, "unsupported enhanced mode %d\n",
+			nor->read_proto);
+		return -EINVAL;
+	}
+
+	ret = dw_spi_set_addr_len(nor);
+	if (ret)
+		return ret;
+
+	return dw_spi_prep(nor, tmod, frf);
+}
+
+static int dw_spi_prep_std(struct spi_nor *nor, u8 tmod)
+{
+	return dw_spi_prep(nor, tmod, SPI_STANDARD_FORMAT);
+}
+
+static int dw_spi_read_enhanced(struct spi_nor *nor, const u8 opcode,
+				int address, u8 *rxbuf, size_t n_rx)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	u32 offset = 0;
+	int ret;
+
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_CTRL1, n_rx - 1);
+	dw_spi_enable_chip(dw_spi, 1);
+
+	ret = dw_spi_wait_not_busy(dw_spi);
+	if (ret)
+		return ret;
+
+	/* send the opcode and the address */
+	dw_writel(dw_spi, DW_SPI_DR, opcode);
+	dw_writel(dw_spi, DW_SPI_DR, address);
+
+	while (n_rx) {
+		if (dw_spi_rx_fifo_not_empty(dw_spi)) {
+			rxbuf[offset++] = dw_readl(dw_spi, DW_SPI_DR);
+			n_rx--;
+		}
+
+		/* check RX/TX overflow */
+		if (dw_spi_rx_tx_fifo_overflow(dw_spi))
+			return -EIO;
+	}
+
+	return 0;
+}
+
+static int dw_spi_read_std(struct spi_nor *nor, const u8 opcode, int address,
+			   u8 *rxbuf, unsigned int n_rx)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	int tx_cnt = n_rx, rx_cnt = n_rx, skip_rx, cur_rx = 0;
+	int ret = 0, i, txfhr, rx_free;
+	u32 tmp_val;
+
+	ret = dw_spi_wait_not_busy(dw_spi);
+	if (ret)
+		return ret;
+
+	/* clear interrupts */
+	dw_readl(dw_spi, DW_SPI_ICR);
+
+	/* TX fifo must not became empty during the frame transfer:
+	 * use TXFTHR (Transfert Start FIFO level) to avoid the frame
+	 * to start during the first phase computation */
+	skip_rx = 1 /* opcode */ + nor->addr_width;
+	txfhr = min_t(unsigned int, skip_rx + n_rx, dw_spi->tx_fifo_len) - 1;
+	rx_free = dw_spi->rx_fifo_len - skip_rx;
+
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_TXFTLR, txfhr << SPI_TXFTLR_TXFTHR_OFFSET);
+	dw_writel(dw_spi, DW_SPI_RXFTLR, dw_spi->rx_fifo_len / 2);
+	dw_spi_enable_chip(dw_spi, 1);
+
+	/* opcode phase */
+	dw_writel(dw_spi, DW_SPI_DR, opcode);
+
+	/* address phase in TR mode */
+	for (i = nor->addr_width - 1; i >= 0; i--)
+		dw_writel(dw_spi, DW_SPI_DR, (address >> (8 * i)) & 0xff);
+
+	while (rx_cnt) {
+		/* push dummy bytes to receive data */
+		while (tx_cnt && dw_spi_tx_fifo_not_full(dw_spi) &&
+		       rx_free > 0) {
+			dw_writel(dw_spi, DW_SPI_DR, 0xff);
+			tx_cnt--;
+			rx_free--;
+		}
+
+		if (dw_spi_rx_fifo_not_empty(dw_spi)) {
+			tmp_val = dw_readl(dw_spi, DW_SPI_DR);
+			rx_free++;
+			if (skip_rx) {
+				skip_rx--;
+				continue;
+			}
+
+			rxbuf[cur_rx++] = tmp_val;
+			rx_cnt--;
+		}
+		if (dw_spi_rx_tx_fifo_overflow(dw_spi))
+			return -EIO;
+	}
+
+	return n_rx;
+}
+
+static int dw_spi_wait_tx_end(struct dw_spi_nor *dw_spi)
+{
+	int res;
+
+	/* As specified in ssi_user_guide p63 the BUSY bit cannot be polled
+	 * immediately. As indicated in ssi_databook p40 the TFE bit shall
+	 * be tested before testing busy bit
+	 */
+	res = wait_on_timeout(100 * MSECOND, dw_spi_tx_fifo_empty(dw_spi));
+	if (res < 0) {
+		dev_err(dw_spi->dev, "SPI write failure, TX FIFO is never empty\n");
+		return res;
+	}
+
+	return dw_spi_wait_not_busy(dw_spi);
+}
+
+static int dw_spi_write_enhanced(struct spi_nor *nor, u8 opcode, u32 address,
+				 u8 *txbuf, unsigned int n_tx)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	size_t tx_cnt = 0;
+
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_CTRL1, n_tx - 1);
+	dw_spi_enable_chip(dw_spi, 1);
+
+	dw_writel(dw_spi, DW_SPI_DR, opcode);
+	dw_writel(dw_spi, DW_SPI_DR, address);
+
+	/* send data */
+	while (tx_cnt < n_tx) {
+		if (dw_spi_tx_fifo_not_full(dw_spi)) {
+			dw_writel(dw_spi, DW_SPI_DR, txbuf[tx_cnt]);
+			tx_cnt++;
+		}
+	}
+
+	return dw_spi_wait_tx_end(dw_spi);
+}
+
+static int dw_spi_write_std(struct spi_nor *nor, const u8 *opbuf,
+			    unsigned int n_op, u8 *txbuf, unsigned int n_tx)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	int op_cnt = 0, tx_cnt = 0, txfhr;
+
+	txfhr = min_t(unsigned int, dw_spi->tx_fifo_len, n_op + n_tx) - 1;
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_TXFTLR, txfhr << SPI_TXFTLR_TXFTHR_OFFSET);
+	dw_spi_enable_chip(dw_spi, 1);
+
+	/* send opcodes */
+	while (op_cnt < n_op) {
+		if (dw_spi_tx_fifo_not_full(dw_spi)) {
+			dw_writel(dw_spi, DW_SPI_DR, opbuf[op_cnt]);
+			op_cnt++;
+		}
+	}
+
+	/* send data */
+	while (tx_cnt < n_tx) {
+		if (dw_spi_tx_fifo_not_full(dw_spi)) {
+			dw_writel(dw_spi, DW_SPI_DR, txbuf[tx_cnt]);
+			tx_cnt++;
+		}
+	}
+
+	return dw_spi_wait_tx_end(dw_spi);
+}
+
+static int dw_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+{
+	int i, ret;
+
+	ret = dw_spi_prep_std(nor, SPI_TMOD_TR);
+	if (ret)
+		return ret;
+
+	ret = dw_spi_read_std(nor, opcode, -1, buf, len);
+
+	dev_dbg(nor->dev, "read_reg opcode 0x%02x: ", opcode);
+	for (i = 0; i < len; i++)
+		pr_debug("%02x ", buf[i]);
+	pr_debug("\n");
+
+	return ret;
+}
+
+static int dw_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+{
+	int i, ret;
+
+	dev_dbg(nor->dev, "write_reg opcode 0x%02x: ", opcode);
+	for (i = 0; i < len; i++)
+		pr_debug("%02x ", buf[i]);
+	pr_debug("\n");
+
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
+	ret = dw_spi_prep_std(nor, SPI_TMOD_TO);
+	if (ret)
+		return ret;
+
+	return dw_spi_write_std(nor, &opcode, 1, buf, len);
+}
+
+static void dw_spi_write(struct spi_nor *nor, loff_t to,
+			 size_t len, size_t *retlen, const u_char *buf)
+{
+	u8 opcode[8];
+	unsigned int opcode_len = 0;
+	int i, ret;
+	struct dw_spi_nor *dw_spi = nor->priv;
+
+	*retlen = 0;
+	dev_dbg(dw_spi->dev, "write %ld bytes at @0x%llx\n", len, to);
+
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return;
+
+	if (dw_spi_is_enhanced(nor->write_proto)) {
+		if (dw_spi_prep_enhanced(nor, nor->write_proto, SPI_TMOD_TO))
+			return;
+
+		ret = dw_spi_write_enhanced(nor, nor->program_opcode, to,
+					    (u8 *)buf, len);
+	} else {
+		if (dw_spi_prep_std(nor, SPI_TMOD_TO))
+			return;
+
+		opcode[0] = nor->program_opcode;
+		opcode_len = 1 + nor->addr_width;
+		for (i = 0; i < nor->addr_width; i++)
+			opcode[1 + i] =
+				(to >> (8 * (nor->addr_width - 1 - i))) & 0xff;
+
+		ret = dw_spi_write_std(nor, opcode, opcode_len, (u8 *)buf, len);
+	}
+
+	if (ret == 0)
+		*retlen = len;
+}
+
+static int dw_spi_read(struct spi_nor *nor, loff_t from,
+		       size_t len, size_t *retlen, u_char *buf)
+{
+	struct dw_spi_nor *dw_spi = nor->priv;
+	size_t to_read, orig_len = len;
+	u8 *ptr = (u8 *)buf;
+	loff_t offset = from;
+	int ret = 0, enhanced = dw_spi_is_enhanced(nor->read_proto);
+	size_t chunk;
+
+	*retlen = 0;
+	dev_dbg(nor->dev, "read %ld bytes from @0x%llx\n", len, from);
+
+	if (enhanced)
+		ret = dw_spi_prep_enhanced(nor, nor->read_proto, SPI_TMOD_RO);
+	else
+		ret = dw_spi_prep_std(nor, SPI_TMOD_TR);
+	if (ret)
+		return ret;
+
+	/*
+	 * If clock stretching is not supported, we have no way to prevent RX
+	 * overflow except reducing the number received data to the size of the
+	 * RX fifo
+	 */
+	if (dw_spi->clk_strech_en && enhanced)
+		chunk = DW_SPI_CTRL1_NDF_MASK;
+	else
+		chunk = dw_spi->rx_fifo_len;
+
+	while (len) {
+		to_read = min(chunk, len);
+
+		if (enhanced)
+			ret = dw_spi_read_enhanced(nor, nor->read_opcode,
+						   offset, ptr, to_read);
+		else
+			ret = dw_spi_read_std(nor, nor->read_opcode,
+					      offset, ptr, to_read);
+		if (ret < 0)
+			return ret;
+
+		offset += to_read;
+		ptr += to_read;
+		len -= to_read;
+	}
+	*retlen = orig_len;
+
+	return ret;
+}
+
+static int dw_spi_erase(struct spi_nor *nor, loff_t offs)
+{
+	int ret = 0;
+	int i;
+	u8 buf[SPI_NOR_MAX_ADDR_WIDTH]; /* addr is 3 or 4 bytes */
+
+	dev_dbg(nor->dev, "erase(%0x) @0x%llx\n", nor->erase_opcode, offs);
+
+	for (i = nor->addr_width - 1; i >= 0; i--) {
+		buf[i] = offs & 0xff;
+		offs >>= 8;
+	}
+
+	ret = dw_spi_prep_std(nor, SPI_TMOD_TO);
+	if (ret)
+		return ret;
+
+	/* Caller is responsible for enabling write,
+	 * only send the erase sector command */
+	ret = nor->write_reg(nor, nor->erase_opcode, buf,
+			     nor->addr_width);
+
+	/* Caller is responsible to wait for operation completion */
+	return ret;
+}
+
+static int dw_spi_setup_flash(struct device *dev,
+			      struct dw_spi_flash_pdata *f_pdata,
+			      struct device_node *np)
+{
+	const struct spi_nor_hwcaps hwcaps = {
+		.mask = SNOR_HWCAPS_READ |
+			SNOR_HWCAPS_READ_FAST |
+			SNOR_HWCAPS_READ_1_1_2 |
+			SNOR_HWCAPS_READ_1_1_4 |
+			SNOR_HWCAPS_PP |
+			SNOR_HWCAPS_PP_1_1_4,
+	};
+	struct dw_spi_nor *dw_spi = dev->priv;
+	struct mtd_info *mtd;
+	struct spi_nor *nor;
+	int ret;
+
+	ret = dw_spi_of_get_flash_pdata(dev, f_pdata, np);
+	if (ret)
+		goto probe_failed;
+
+	nor = &f_pdata->nor;
+	mtd = &f_pdata->mtd;
+	nor->mtd = mtd;
+
+	if (np) {
+		nor->dev = kzalloc(sizeof(*nor->dev), GFP_KERNEL);
+		if (!nor->dev)
+			return -ENOMEM;
+
+		dev_set_name(nor->dev, np->name);
+
+		nor->dev->of_node = np;
+		nor->dev->id = DEVICE_ID_SINGLE;
+		nor->dev->parent = dev;
+		ret = register_device(nor->dev);
+		if (ret)
+			return ret;
+
+		mtd->dev.parent = nor->dev;
+	} else {
+		nor->dev = dev;
+	}
+
+	nor->priv = dw_spi;
+	mtd->priv = nor;
+
+	nor->read_reg = dw_spi_read_reg;
+	nor->write_reg = dw_spi_write_reg;
+	nor->read = dw_spi_read;
+	nor->write = dw_spi_write;
+	nor->erase = dw_spi_erase;
+
+	ret = spi_nor_scan(nor, NULL, &hwcaps, false);
+	if (ret)
+		goto probe_failed;
+
+	ret = add_mtd_device(mtd, NULL, DEVICE_ID_DYNAMIC);
+	if (ret)
+		goto probe_failed;
+
+	return 0;
+
+probe_failed:
+	dev_err(dev, "probing for flashchip failed\n");
+	return ret;
+}
+
+static void dw_spi_detect_hw_params(struct dw_spi_nor *dw_spi)
+{
+	int fifo;
+
+	/* Detect supported slave number */
+	dw_spi_enable_chip(dw_spi, 0);
+	dw_writel(dw_spi, DW_SPI_SER, 0xffff);
+	dw_spi_enable_chip(dw_spi, 1);
+	dw_spi->supported_cs = hweight32(dw_readl(dw_spi, DW_SPI_SER));
+
+	dw_spi_set_cs(dw_spi, -1);
+	dw_spi->sclk = 0;
+
+	/* Detect the FIFO depth */
+	dw_spi_enable_chip(dw_spi, 0);
+	for (fifo = 1; fifo < TX_FIFO_MAX_SIZE; fifo++) {
+		dw_writel(dw_spi, DW_SPI_TXFTLR, fifo);
+		if (fifo != dw_readl(dw_spi, DW_SPI_TXFTLR))
+			break;
+	}
+	dw_writel(dw_spi, DW_SPI_TXFTLR, 0);
+	dw_spi->tx_fifo_len = (fifo == 1) ? 0 : fifo;
+	dev_dbg(dw_spi->dev, "Detected TX FIFO size: %u bytes\n",
+		dw_spi->tx_fifo_len);
+
+	for (fifo = 1; fifo < RX_FIFO_MAX_SIZE; fifo++) {
+		dw_writel(dw_spi, DW_SPI_RXFTLR, fifo);
+		if (fifo != dw_readl(dw_spi, DW_SPI_RXFTLR))
+			break;
+	}
+	dw_writel(dw_spi, DW_SPI_RXFTLR, 0);
+	dw_spi->rx_fifo_len = (fifo == 1) ? 0 : fifo;
+	dev_dbg(dw_spi->dev, "Detected RX FIFO size: %u bytes\n",
+		dw_spi->tx_fifo_len);
+	dw_spi_enable_chip(dw_spi, 1);
+}
+
+static int dw_spi_probe(struct device *dev)
+{
+	struct dw_spi_nor *dw_spi;
+	struct resource *iores;
+	struct device_node *np = dev->of_node;
+	struct dw_spi_flash_pdata *f_pdata = NULL;
+	int ret;
+
+	dw_spi = kzalloc(sizeof(*dw_spi), GFP_KERNEL);
+	if (!dw_spi)
+		return -ENOMEM;
+
+	dw_spi->dev = dev;
+	dev->priv = dw_spi;
+
+	dw_spi->clk = clk_get(dev, NULL);
+	if (IS_ERR(dw_spi->clk)) {
+		dev_err(dev, "unable to get spi clk\n");
+		ret = PTR_ERR(dw_spi->clk);
+		goto probe_failed;
+	}
+
+	dw_spi->master_ref_clk_hz = clk_get_rate(dw_spi->clk);
+	if (dw_spi->master_ref_clk_hz == 0) {
+		dev_err(dev, "unable to get spi clk rate\n");
+		ret = PTR_ERR(dw_spi->clk);
+		goto probe_failed;
+	}
+
+	clk_enable(dw_spi->clk);
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "dev_request_mem_region failed\n");
+		ret = PTR_ERR(iores);
+		goto probe_failed;
+	}
+	dw_spi->regs = IOMEM(iores->start);
+
+	dw_spi_hw_init(dw_spi);
+
+	dw_spi_detect_hw_params(dw_spi);
+
+	/* Get clock stretching mode support from device-tree */
+	dw_spi->clk_strech_en = of_property_read_bool(dev->of_node,
+						      "clock-stretching");
+	dev_dbg(dev, "clock stretching %s supported\n",
+		dw_spi->clk_strech_en ? "is" : "is not");
+
+	if (!dev->of_node) {
+		f_pdata = &dw_spi->f_pdata[0];
+
+		ret = dw_spi_setup_flash(dev, f_pdata, np);
+		if (ret)
+			goto probe_failed;
+	} else {
+		/* Get flash device data */
+		for_each_available_child_of_node(dev->of_node, np) {
+			unsigned int cs;
+
+			if (of_property_read_u32(np, "reg", &cs)) {
+				dev_err(dev, "couldn't determine chip select\n");
+				ret = -ENXIO;
+				goto probe_failed;
+			}
+			if (cs > dw_spi->supported_cs) {
+				dev_err(dev, "chip select %d out of range (%d supported)\n",
+					cs, dw_spi->supported_cs);
+				ret = -ENXIO;
+				goto probe_failed;
+			}
+			f_pdata = &dw_spi->f_pdata[cs];
+
+			ret = dw_spi_setup_flash(dev, f_pdata, np);
+			if (ret)
+				goto probe_failed;
+		}
+	}
+
+	dev_info(dev, "Synopsys Octal SPI NOR flash driver\n");
+	return 0;
+
+probe_failed:
+	dev_err(dev, "probe failed: %d\n", ret);
+	return ret;
+}
+
+static __maybe_unused struct of_device_id dw_spi_dt_ids[] = {
+	{ .compatible = "snps,ospi-nor", },
+	{ /* sentinel */ }
+};
+
+static struct driver dw_spi_driver = {
+	.name           = "dw_ospi_nor",
+	.probe          = dw_spi_probe,
+	.of_compatible  = DRV_OF_COMPAT(dw_spi_dt_ids),
+};
+device_platform_driver(dw_spi_driver);
-- 
2.17.1







