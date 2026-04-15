Delivery-date: Wed, 15 Apr 2026 10:13:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvNm-00CLpE-1F
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 10:13:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCvNl-00034q-FT
	for lore@pengutronix.de; Wed, 15 Apr 2026 10:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MO+hfhXMgJcwxRq62R2RhTSZ8w5s76s0iWL2XK801Ik=; b=QPnCBUQTV7OG/WjsX7kwT6uCjE
	ywlzRyN+GwkX3IBsVmXJ8plVki/+yiXj5a6Jmbtnd5+NhOv6vIJlvcDBOcOjjp75x+O14/ZJ03+hT
	RC4Kd5t8VISo+Rq+YA2jLd0IHA8a8oaJigF0PK3TcT4DyRAjlVZrjWuwEhrU/UWFAI+1r1KjphViK
	F4ZnnFnUSY7BW1Ej3fqlUVtFHLLNUG3uMZGu9BCwxv3VPgZIpKvo53g6LXdrGgaxc8QXzYW97cstd
	wgBRcmSS3UO0jkzkIW/b9GBZ0HXjnee/K1ckMnwaaAvH0KgauiberkI2Y6DRD63BelaNhf1yaYf3U
	4zUs7Spg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvNA-00000000mfl-3huj;
	Wed, 15 Apr 2026 08:13:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCvN8-00000000mes-25cy
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 08:13:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wCvN6-0002oP-UO; Wed, 15 Apr 2026 10:13:16 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 15 Apr 2026 10:13:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260415-v2026-03-1-topic-arkona-at300-v2-1-e5ae4c029193@pengutronix.de>
References: <20260415-v2026-03-1-topic-arkona-at300-v2-0-e5ae4c029193@pengutronix.de>
In-Reply-To: <20260415-v2026-03-1-topic-arkona-at300-v2-0-e5ae4c029193@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_011318_692408_0C7EAF77 
X-CRM114-Status: GOOD (  14.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] scripts: ls1046a-rcwtool: add functions to generate
 RCW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add generic functions to generate RCW settings for LS1046a SoCs.
This header should be included in a board-specific tool which adds the
specific settings and uses set_val and print_rcw.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/include/ls1046a-rcwtool.h | 147 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/scripts/include/ls1046a-rcwtool.h b/scripts/include/ls1046a-rcwtool.h
new file mode 100644
index 0000000000..5bbfbef033
--- /dev/null
+++ b/scripts/include/ls1046a-rcwtool.h
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2020 Sascha Hauer <s.hauer@pengutronix.de>
+
+/* 
+ * Generate basic IO multiplexing settings (RCW = Reset Configuration Word)
+ * on LS1046a-based SoCs.
+ * Write the output of this tool to a arch/arm/boards/$your-board/$your-board_rcw.cfg
+ * file and add something like
+ *   $(obj)/barebox-$your-board.image: $(obj)/start_$your_board.pblb \
+ *		$(board)/$your-board/$your-board_rcw.cfg
+ *	$(call if_changed,lspbl_spi_image,ls1046a)
+ *  to images/Makefile.layerscape.
+ */
+
+#include <stdio.h>
+#include <stdint.h>
+
+#define BITS_PER_LONG	(sizeof(uint32_t) * 8)
+#define BIT_MASK(nr)	(1UL << (31 - ((nr) % BITS_PER_LONG)))
+#define BIT_WORD(nr)	((nr) / BITS_PER_LONG)
+
+static void set_bit(int nr, uint32_t *addr)
+{
+	uint32_t mask = BIT_MASK(nr);
+	uint32_t *p = ((uint32_t *)addr) + BIT_WORD(nr);
+
+	*p  |= mask;
+}
+
+static void clear_bit(int nr, uint32_t *addr)
+{
+	uint32_t mask = BIT_MASK(nr);
+	uint32_t *p = ((uint32_t *)addr) + BIT_WORD(nr);
+
+	*p &= ~mask;
+}
+
+static uint32_t rcw[16];
+
+static void set_val(const char *name, int start, int end, int val)
+{
+	int i;
+	int width = end - start + 1;
+	uint32_t *addr = rcw;
+
+	printf("# (%3d:%3d) %s: 0x%x\n", start, end, name, val);
+
+	for (i = 0; i < width; i++) {
+		if (val & (1 << ((width - 1) - i)))
+			set_bit(i + start, addr);
+		else
+			clear_bit(i + start, addr);
+	}
+}
+
+static void print_rcw(uint32_t *rcw)
+{
+	int i;
+
+	printf("\n");
+	printf("# PBL preamble and RCW header\n");
+	printf("aa55aa55 01ee0100\n");
+	printf("# RCW\n");
+
+	for (i = 0; i < 16; i++) {
+		printf("%08x ", rcw[i]);
+		if (!((i + 1) % 4))
+			printf("\n");
+	}
+}
+
+#define SYS_PLL_CFG                  "SYS_PLL_CFG                 ",   0,  1
+#define SYS_PLL_RAT                  "SYS_PLL_RAT                 ",   2,  6
+#define MEM_PLL_CFG                  "MEM_PLL_CFG                 ",   8,  9
+#define MEM_PLL_RAT                  "MEM_PLL_RAT                 ",  10, 15
+#define CGA_PLL1_CFG                 "CGA_PLL1_CFG                ",  24, 25
+#define CGA_PLL1_RAT                 "CGA_PLL1_RAT                ",  26, 31
+#define CGA_PLL2_CFG                 "CGA_PLL2_CFG                ",  32, 33
+#define CGA_PLL2_RAT                 "CGA_PLL2_RAT                ",  34, 39
+#define C1_PLL_SEL                   "C1_PLL_SEL                  ",  96, 99
+#define SRDS_PRTCL_S1                "SRDS_PRTCL_S1               ", 128,143
+#define SRDS_PRTCL_S2                "SRDS_PRTCL_S2               ", 144,159
+#define SRDS_PLL_REF_CLK_SEL_S1_PLL1 "SRDS_PLL_REF_CLK_SEL_S1_PLL1", 160,160
+#define SRDS_PLL_REF_CLK_SEL_S1_PLL2 "SRDS_PLL_REF_CLK_SEL_S1_PLL2", 161,161
+#define SRDS_PLL_REF_CLK_SEL_S2_PLL1 "SRDS_PLL_REF_CLK_SEL_S2_PLL1", 162,162
+#define SRDS_PLL_REF_CLK_SEL_S2_PLL2 "SRDS_PLL_REF_CLK_SEL_S2_PLL2", 163,163
+#define SRDS_PLL_PD_S1               "SRDS_PLL_PD_S1              ", 168,169
+#define SRDS_PLL_PD_S2               "SRDS_PLL_PD_S2              ", 170,171
+#define SRDS_DIV_PEX_S1              "SRDS_DIV_PEX_S1             ", 176,177
+#define SRDS_DIV_PEX_S2              "SRDS_DIV_PEX_S2             ", 178,179
+#define DDR_REFCLK_SEL               "DDR_REFCLK_SEL              ", 186,187
+#define SRDS_REFCLK_SEL_S1           "SRDS_REFCLK_SEL_S1          ", 188,188
+#define SRDS_REFCLK_SEL_S2           "SRDS_REFCLK_SEL_S2          ", 189,189
+#define DDR_FDBK_MULT                "DDR_FDBK_MULT               ", 190,191
+#define PBI_SRC                      "PBI_SRC                     ", 192,195
+#define BOOT_HO                      "BOOT_HO                     ", 201,201
+#define SB_EN                        "SB_EN                       ", 202,202
+#define IFC_MODE                     "IFC_MODE                    ", 203,211
+#define HWA_CGA_M1_CLK_SEL           "HWA_CGA_M1_CLK_SEL          ", 224,226
+#define DRAM_LAT                     "DRAM_LAT                    ", 230,231
+#define DDR_RATE                     "DDR_RATE                    ", 232,232
+#define DDR_RSV0                     "DDR_RSV0                    ", 234,234
+#define SYS_PLL_SPD                  "SYS_PLL_SPD                 ", 242,242
+#define MEM_PLL_SPD                  "MEM_PLL_SPD                 ", 243,243
+#define CGA_PLL1_SPD                 "CGA_PLL1_SPD                ", 244,244
+#define CGA_PLL2_SPD                 "CGA_PLL2_SPD                ", 245,245
+#define HOST_AGT_PEX                 "HOST_AGT_PEX                ", 264,266
+#define GP_INFO1                     "GP_INFO1                    ", 288,295
+#define GP_INFO2                     "GP_INFO2                    ", 299,319
+#define UART_EXT                     "UART_EXT                    ", 354,356
+#define IRQ_EXT                      "IRQ_EXT                     ", 357,359
+#define SPI_EXT                      "SPI_EXT                     ", 360,362
+#define SDHC_EXT                     "SDHC_EXT                    ", 363,365
+#define UART_BASE                    "UART_BASE                   ", 366,368
+#define ASLEEP                       "ASLEEP                      ", 369,369
+#define RTC                          "RTC                         ", 370,370
+#define SDHC_BASE                    "SDHC_BASE                   ", 371,371
+#define IRQ_OUT                      "IRQ_OUT                     ", 372,372
+#define IRQ_BASE                     "IRQ_BASE                    ", 373,381
+#define SPI_BASE                     "SPI_BASE                    ", 382,383
+#define IFC_GRP_A_EXT                "IFC_GRP_A_EXT               ", 384,386
+#define IFC_GRP_D_EXT                "IFC_GRP_D_EXT               ", 393,395
+#define IFC_GRP_E1_EXT               "IFC_GRP_E1_EXT              ", 396,398
+#define IFC_GRP_F_EXT                "IFC_GRP_F_EXT               ", 399,401
+#define IFC_GRP_E1_BASE              "IFC_GRP_E1_BASE             ", 405,405
+#define IFC_GRP_D_BASE               "IFC_GRP_D_BASE              ", 407,407
+#define IFC_GRP_A_BASE               "IFC_GRP_A_BASE              ", 412,413
+#define IFC_A_22_24                  "IFC_A_22_24                 ", 415,415
+#define EC1                          "EC1                         ", 416,418
+#define EC2                          "EC2                         ", 419,421
+#define LVDD_VSEL                    "LVDD_VSEL                   ", 422,423
+#define I2C_IPGCLK_SEL               "I2C_IPGCLK_SEL              ", 424,424
+#define EM1                          "EM1                         ", 425,425
+#define EM2                          "EM2                         ", 426,426
+#define EMI2_DMODE                   "EMI2_DMODE                  ", 427,427
+#define EMI2_CMODE                   "EMI2_CMODE                  ", 428,428
+#define USB_DRVVBUS                  "USB_DRVVBUS                 ", 429,429
+#define USB_PWRFAULT                 "USB_PWRFAULT                ", 430,430
+#define TVDD_VSEL                    "TVDD_VSEL                   ", 433,434
+#define DVDD_VSEL                    "DVDD_VSEL                   ", 435,436
+#define EMI1_DMODE                   "EMI1_DMODE                  ", 438,438
+#define EVDD_VSEL                    "EVDD_VSEL                   ", 439,440
+#define IIC2_BASE                    "IIC2_BASE                   ", 441,443
+#define EMI1_CMODE                   "EMI1_CMODE                  ", 444,444
+#define IIC2_EXT                     "IIC2_EXT                    ", 445,447
+#define SYSCLK_FREQ                  "SYSCLK_FREQ                 ", 472,481
+#define HWA_CGA_M2_CLK_SEL           "HWA_CGA_M2_CLK_SEL          ", 509,511

-- 
2.52.0



