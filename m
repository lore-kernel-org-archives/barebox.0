Delivery-date: Thu, 03 Apr 2025 10:33:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G1J-007kUk-1s
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 10:33:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G1H-0003kx-FU
	for lore@pengutronix.de; Thu, 03 Apr 2025 10:33:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/8d7SsFcCqcwyavs/UICuVQ6HchMmxDtzaYcnTiciAE=; b=gzwjPccstzx7qtXNZ55j5P2qIN
	nr8hi5jKvNvHCOaRjTAe4THMv9Tj/YhPducwQijxIKyEJXOTxIWL8MLQnabUQT9ltsFPS/aV3P30N
	e7X3GrIr9NQa3sis2QLKEsnEj6VClU1IjhKPNW6IoEieqlRdOIWfdpXol+kOPQpRzTmXzIRZXewiu
	eFfS84Eejl7wJdflTaFV9FXrhqSDGaeHK/61r/BuQHFXN2vyvdxtaEnFf97P0rQo5xOJ6q1Do0JUh
	n4oTuTYf282e8/8oHFSShL1i5BK5RMbwiu9lL9z5YpUJOoLYkUIEtN9ZH7LBjYx8Zryj80yx4cuKw
	qOmit+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G0Y-00000008H16-21qb;
	Thu, 03 Apr 2025 08:33:06 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G0U-00000008Gzv-1mlH
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 08:33:04 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so786993e87.2
        for <barebox@lists.infradead.org>; Thu, 03 Apr 2025 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743669180; x=1744273980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/8d7SsFcCqcwyavs/UICuVQ6HchMmxDtzaYcnTiciAE=;
        b=FI8UonRNalcAE8AJ8trxYnpV7r3ti5UWfc4FugRNxcusvTxnEzSI+nnZrveiZga+wQ
         qW5KNOIKgwVHXwU8mORgH58cWRt1Ff553bWwTdLUzHLHvHXKU0p9mld7mubpdUOASPWo
         /4xxh4vhOB4EnC08PKr2w/k5JQPgXLF6EnPiJPoI3bE+XwAnxB1pupoeLCuB3o5DNa+x
         h8hCGhyo55Rb2o5s8nmw3rDE61aBTRtQtdk49C5dRD+8i6R9TpMEgYgXtjXtYEHVrxwq
         G2GkdTmiegR8mWMK3GWbqjqJDqaNYf4axvpYH4gYj46hZmNkShNu3N9CafsgPnet09y0
         10+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743669180; x=1744273980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/8d7SsFcCqcwyavs/UICuVQ6HchMmxDtzaYcnTiciAE=;
        b=duLMY1cSA+zP2pyLUL5neYcWKViOsEJF8lzvzC5VmFLDS7wTXJIhbiwvnJPcD9iqlC
         zYjBpOIxwJPAXtO7hdw0IyQOMmPLizdkNa0OQvgqaYTCvMstqFTALh2TKnE0wwWAFk7V
         PcsB9OCx2y4+wgUMIp+os695dzKf3jLQHpii9tpLPEm9jrC+Us9/1owAD1rJ95b+pdXB
         VxPMMJoFeH3Y4wB0UaiGLTkLqLgKjRSltA5pRoIL+tauIvhazTePlyfW1fsDScIjiP7V
         VFhee57ePtKUwfqyzu/e51vFbpiGgBae+iWcLKcmBrONj7Y/Vy+ylI/HRIIo1lF2E2CW
         +4rA==
X-Gm-Message-State: AOJu0Yw3XqmqUM9gm3r/YlZlVIKwgE3YheD4etSq+LMKg8UlQ7Gx6vua
	DY++K0ULbNBgpKLoc/fRoDcdKuQCq/oxDvReW6Wf8/elJnBBPTb3h8gKEg==
X-Gm-Gg: ASbGncukF67FmF/5rYQRQ66xqhS8AxGxlEfriovKVuAOErNowaEoESgn5PctdoE8bVF
	FKchMcCEAKXN//HSaomDiZP1vuRO+Zw7PWUdZQDgw6JDhPj/TXjs6fuXUOjTu6ByziVPYCWgBKY
	TFxiBVB2XsyHzApETsDsxCx+N5aE955W+OQfvmyDHBZ/M/KncP1mKiTxdw3MGSEdk+BIUlhcs/f
	w6RMPrvUxZTf/khQnAvW2hXTqqyu7ajEEIC+RZeyVPgrg5XX4TVcc17DYyyzNhleVroV4j5cWqc
	SQ+1+tfdH9WBqKw1tyhf1jSPuxILxCWkBrvHWVMHrBLRGm0sj0Gt8Cp6AIJzXeLWxmw6tJtmq6R
	MvA==
X-Google-Smtp-Source: AGHT+IEN25QVrxy3rbuKAQ4wN1vZ131QO2Bq3ZWH5CDyjU9AdpGyyoZr2l1zJSOTpbw/T3jsf06TEA==
X-Received: by 2002:a05:6512:110b:b0:549:91dc:22cf with SMTP id 2adb3069b0e04-54b10db73f3mr5601049e87.2.1743669179787;
        Thu, 03 Apr 2025 01:32:59 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d767sm81181e87.202.2025.04.03.01.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:32:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Apr 2025 11:32:36 +0300
Message-Id: <20250403083236.29221-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250403083236.29221-1-eagle.alexander923@gmail.com>
References: <20250403083236.29221-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_013302_773536_94CD4373 
X-CRM114-Status: GOOD (  24.12  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] spi: atmel-quadspi: Updating the driver from the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Updated driver from kernel repository to add limit checking
functionality.
This is the first step to ensure that the driver works properly
with QSPI memory chips larger than 128 MB.
In the updated version, the driver will return an error when
attempting to access memory larger than 128 MB, which will
not lead to data corruption in the rest of the chip.
As a bonus, the driver now supports the sama7g5 architecture.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/spi/atmel-quadspi.c | 891 ++++++++++++++++++++++++++++++------
 1 file changed, 749 insertions(+), 142 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 7a0ecb745a..b6b5f9ad9e 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Driver for Atmel QSPI Controller
  *
@@ -12,25 +12,11 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <driver.h>
-#include <errno.h>
-#include <clock.h>
-#include <xfuncs.h>
-#include <gpio.h>
-#include <of_gpio.h>
-#include <io.h>
-#include <spi/spi.h>
-#include <mach/at91/iomux.h>
-#include <mach/at91/board.h>
-#include <mach/at91/cpu.h>
-#include <linux/clk.h>
-#include <linux/err.h>
-
-#include <linux/kernel.h>
-#include <linux/spi/spi-mem.h>
 #include <of_device.h>
-#include <linux/iopoll.h>
+#include <linux/bitfield.h>
+#include <linux/spi/spi-mem.h>
+#include <spi/spi.h>
 
 /* QSPI register offsets */
 #define QSPI_CR      0x0000  /* Control Register */
@@ -42,6 +28,7 @@
 #define QSPI_IDR     0x0018  /* Interrupt Disable Register */
 #define QSPI_IMR     0x001c  /* Interrupt Mask Register */
 #define QSPI_SCR     0x0020  /* Serial Clock Register */
+#define QSPI_SR2     0x0024  /* SAMA7G5 Status Register */
 
 #define QSPI_IAR     0x0030  /* Instruction Address Register */
 #define QSPI_ICR     0x0034  /* Instruction Code Register */
@@ -52,16 +39,32 @@
 #define QSPI_SMR     0x0040  /* Scrambling Mode Register */
 #define QSPI_SKR     0x0044  /* Scrambling Key Register */
 
+#define QSPI_REFRESH	0x0050	/* Refresh Register */
+#define QSPI_WRACNT	0x0054	/* Write Access Counter Register */
+#define QSPI_DLLCFG	0x0058	/* DLL Configuration Register */
+#define QSPI_PCALCFG	0x005C	/* Pad Calibration Configuration Register */
+#define QSPI_PCALBP	0x0060	/* Pad Calibration Bypass Register */
+#define QSPI_TOUT	0x0064	/* Timeout Register */
+
 #define QSPI_WPMR    0x00E4  /* Write Protection Mode Register */
 #define QSPI_WPSR    0x00E8  /* Write Protection Status Register */
 
 #define QSPI_VERSION 0x00FC  /* Version Register */
 
+#define SAMA7G5_QSPI0_MAX_SPEED_HZ	200000000
+#define SAMA7G5_QSPI1_SDR_MAX_SPEED_HZ	133000000
 
 /* Bitfields in QSPI_CR (Control Register) */
 #define QSPI_CR_QSPIEN                  BIT(0)
 #define QSPI_CR_QSPIDIS                 BIT(1)
+#define QSPI_CR_DLLON			BIT(2)
+#define QSPI_CR_DLLOFF			BIT(3)
+#define QSPI_CR_STPCAL			BIT(4)
+#define QSPI_CR_SRFRSH			BIT(5)
 #define QSPI_CR_SWRST                   BIT(7)
+#define QSPI_CR_UPDCFG			BIT(8)
+#define QSPI_CR_STTFR			BIT(9)
+#define QSPI_CR_RTOUT			BIT(10)
 #define QSPI_CR_LASTXFER                BIT(24)
 
 /* Bitfields in QSPI_MR (Mode Register) */
@@ -69,12 +72,14 @@
 #define QSPI_MR_LLB                     BIT(1)
 #define QSPI_MR_WDRBT                   BIT(2)
 #define QSPI_MR_SMRM                    BIT(3)
+#define QSPI_MR_DQSDLYEN		BIT(3)
 #define QSPI_MR_CSMODE_MASK             GENMASK(5, 4)
 #define QSPI_MR_CSMODE_NOT_RELOADED     (0 << 4)
 #define QSPI_MR_CSMODE_LASTXFER         (1 << 4)
 #define QSPI_MR_CSMODE_SYSTEMATICALLY   (2 << 4)
 #define QSPI_MR_NBBITS_MASK             GENMASK(11, 8)
 #define QSPI_MR_NBBITS(n)               ((((n) - 8) << 8) & QSPI_MR_NBBITS_MASK)
+#define QSPI_MR_OENSD			BIT(15)
 #define QSPI_MR_DLYBCT_MASK             GENMASK(23, 16)
 #define QSPI_MR_DLYBCT(n)               (((n) << 16) & QSPI_MR_DLYBCT_MASK)
 #define QSPI_MR_DLYCS_MASK              GENMASK(31, 24)
@@ -88,6 +93,13 @@
 #define QSPI_SR_CSR                     BIT(8)
 #define QSPI_SR_CSS                     BIT(9)
 #define QSPI_SR_INSTRE                  BIT(10)
+#define QSPI_SR_LWRA			BIT(11)
+#define QSPI_SR_QITF			BIT(12)
+#define QSPI_SR_QITR			BIT(13)
+#define QSPI_SR_CSFA			BIT(14)
+#define QSPI_SR_CSRA			BIT(15)
+#define QSPI_SR_RFRSHD			BIT(16)
+#define QSPI_SR_TOUT			BIT(17)
 #define QSPI_SR_QSPIENS                 BIT(24)
 
 #define QSPI_SR_CMD_COMPLETED	(QSPI_SR_INSTRE | QSPI_SR_CSR)
@@ -100,9 +112,22 @@
 #define QSPI_SCR_DLYBS_MASK             GENMASK(23, 16)
 #define QSPI_SCR_DLYBS(n)               (((n) << 16) & QSPI_SCR_DLYBS_MASK)
 
+/* Bitfields in QSPI_SR2 (SAMA7G5 Status Register) */
+#define QSPI_SR2_SYNCBSY		BIT(0)
+#define QSPI_SR2_QSPIENS		BIT(1)
+#define QSPI_SR2_CSS			BIT(2)
+#define QSPI_SR2_RBUSY			BIT(3)
+#define QSPI_SR2_HIDLE			BIT(4)
+#define QSPI_SR2_DLOCK			BIT(5)
+#define QSPI_SR2_CALBSY			BIT(6)
+
+/* Bitfields in QSPI_IAR (Instruction Address Register) */
+#define QSPI_IAR_ADDR			GENMASK(31, 0)
+
 /* Bitfields in QSPI_ICR (Read/Write Instruction Code Register) */
 #define QSPI_ICR_INST_MASK              GENMASK(7, 0)
 #define QSPI_ICR_INST(inst)             (((inst) << 0) & QSPI_ICR_INST_MASK)
+#define QSPI_ICR_INST_MASK_SAMA7G5	GENMASK(15, 0)
 #define QSPI_ICR_OPT_MASK               GENMASK(23, 16)
 #define QSPI_ICR_OPT(opt)               (((opt) << 16) & QSPI_ICR_OPT_MASK)
 
@@ -115,6 +140,9 @@
 #define QSPI_IFR_WIDTH_QUAD_IO          (4 << 0)
 #define QSPI_IFR_WIDTH_DUAL_CMD         (5 << 0)
 #define QSPI_IFR_WIDTH_QUAD_CMD         (6 << 0)
+#define QSPI_IFR_WIDTH_OCT_OUTPUT	(7 << 0)
+#define QSPI_IFR_WIDTH_OCT_IO		(8 << 0)
+#define QSPI_IFR_WIDTH_OCT_CMD		(9 << 0)
 #define QSPI_IFR_INSTEN                 BIT(4)
 #define QSPI_IFR_ADDREN                 BIT(5)
 #define QSPI_IFR_OPTEN                  BIT(6)
@@ -125,19 +153,60 @@
 #define QSPI_IFR_OPTL_4BIT              (2 << 8)
 #define QSPI_IFR_OPTL_8BIT              (3 << 8)
 #define QSPI_IFR_ADDRL                  BIT(10)
+#define QSPI_IFR_ADDRL_SAMA7G5		GENMASK(11, 10)
 #define QSPI_IFR_TFRTYP_MEM		BIT(12)
 #define QSPI_IFR_SAMA5D2_WRITE_TRSFR	BIT(13)
 #define QSPI_IFR_CRM                    BIT(14)
+#define QSPI_IFR_DDREN			BIT(15)
 #define QSPI_IFR_NBDUM_MASK             GENMASK(20, 16)
 #define QSPI_IFR_NBDUM(n)               (((n) << 16) & QSPI_IFR_NBDUM_MASK)
+#define QSPI_IFR_END			BIT(22)
+#define QSPI_IFR_SMRM			BIT(23)
 #define QSPI_IFR_APBTFRTYP_READ		BIT(24)	/* Defined in SAM9X60 */
+#define QSPI_IFR_DQSEN			BIT(25)
+#define QSPI_IFR_DDRCMDEN		BIT(26)
+#define QSPI_IFR_HFWBEN			BIT(27)
+#define QSPI_IFR_PROTTYP		GENMASK(29, 28)
+#define QSPI_IFR_PROTTYP_STD_SPI	0
+#define QSPI_IFR_PROTTYP_TWIN_QUAD	1
+#define QSPI_IFR_PROTTYP_OCTAFLASH	2
+#define QSPI_IFR_PROTTYP_HYPERFLASH	3
 
 /* Bitfields in QSPI_SMR (Scrambling Mode Register) */
 #define QSPI_SMR_SCREN                  BIT(0)
 #define QSPI_SMR_RVDIS                  BIT(1)
+#define QSPI_SMR_SCRKL                  BIT(2)
+
+/* Bitfields in QSPI_REFRESH (Refresh Register) */
+#define QSPI_REFRESH_DELAY_COUNTER	GENMASK(31, 0)
+
+/* Bitfields in QSPI_WRACNT (Write Access Counter Register) */
+#define QSPI_WRACNT_NBWRA		GENMASK(31, 0)
+
+/* Bitfields in QSPI_DLLCFG (DLL Configuration Register) */
+#define QSPI_DLLCFG_RANGE		BIT(0)
+
+/* Bitfields in QSPI_PCALCFG (DLL Pad Calibration Configuration Register) */
+#define QSPI_PCALCFG_AAON		BIT(0)
+#define QSPI_PCALCFG_DAPCAL		BIT(1)
+#define QSPI_PCALCFG_DIFFPM		BIT(2)
+#define QSPI_PCALCFG_CLKDIV		GENMASK(6, 4)
+#define QSPI_PCALCFG_CALCNT		GENMASK(16, 8)
+#define QSPI_PCALCFG_CALP		GENMASK(27, 24)
+#define QSPI_PCALCFG_CALN		GENMASK(31, 28)
+
+/* Bitfields in QSPI_PCALBP (DLL Pad Calibration Bypass Register) */
+#define QSPI_PCALBP_BPEN		BIT(0)
+#define QSPI_PCALBP_CALPBP		GENMASK(11, 8)
+#define QSPI_PCALBP_CALNBP		GENMASK(19, 16)
+
+/* Bitfields in QSPI_TOUT (Timeout Register) */
+#define QSPI_TOUT_TCNTM			GENMASK(15, 0)
 
 /* Bitfields in QSPI_WPMR (Write Protection Mode Register) */
 #define QSPI_WPMR_WPEN                  BIT(0)
+#define QSPI_WPMR_WPITEN		BIT(1)
+#define QSPI_WPMR_WPCREN		BIT(2)
 #define QSPI_WPMR_WPKEY_MASK            GENMASK(31, 8)
 #define QSPI_WPMR_WPKEY(wpkey)          (((wpkey) << 8) & QSPI_WPMR_WPKEY_MASK)
 
@@ -146,19 +215,65 @@
 #define QSPI_WPSR_WPVSRC_MASK           GENMASK(15, 8)
 #define QSPI_WPSR_WPVSRC(src)           (((src) << 8) & QSPI_WPSR_WPVSRC)
 
+#define ATMEL_QSPI_TIMEOUT		(1000 * USEC_PER_MSEC)
+#define ATMEL_QSPI_SYNC_TIMEOUT		(300 * USEC_PER_MSEC)
+#define QSPI_DLLCFG_THRESHOLD_FREQ	90000000U
+
+/* Use PIO for small transfers. */
+#define ATMEL_QSPI_DMA_MIN_BYTES	16
+/**
+ * struct atmel_qspi_pcal - Pad Calibration Clock Division
+ * @pclk_rate: peripheral clock rate.
+ * @pclk_div: calibration clock division. The clock applied to the calibration
+ *           cell is divided by pclk_div + 1.
+ */
+struct atmel_qspi_pcal {
+	u32 pclk_rate;
+	u8 pclk_div;
+};
+
+#define ATMEL_QSPI_PCAL_ARRAY_SIZE	8
+static const struct atmel_qspi_pcal pcal[ATMEL_QSPI_PCAL_ARRAY_SIZE] = {
+	{25000000, 0},
+	{50000000, 1},
+	{75000000, 2},
+	{100000000, 3},
+	{125000000, 4},
+	{150000000, 5},
+	{175000000, 6},
+	{200000000, 7},
+};
+
 struct atmel_qspi_caps {
+	u32 max_speed_hz;
 	bool has_qspick;
+	bool has_gclk;
 	bool has_ricr;
+	bool octal;
 };
 
+struct atmel_qspi_ops;
+
 struct atmel_qspi {
-	struct spi_controller ctlr;
+	struct spi_controller	ctlr;
 	void __iomem		*regs;
 	void __iomem		*mem;
 	struct clk		*pclk;
 	struct clk		*qspick;
+	struct clk		*gclk;
 	const struct atmel_qspi_caps *caps;
+	const struct atmel_qspi_ops *ops;
+	resource_size_t		mmap_size;
 	u32			mr;
+	u32			scr;
+	u32			target_max_speed_hz;
+};
+
+struct atmel_qspi_ops {
+	int (*set_cfg)(struct atmel_qspi *aq, const struct spi_mem_op *op,
+		       u32 *offset);
+	int (*transfer)(struct spi_mem *mem, const struct spi_mem_op *op,
+			u32 offset);
 };
 
 struct atmel_qspi_mode {
@@ -178,6 +293,51 @@ static const struct atmel_qspi_mode atmel_qspi_modes[] = {
 	{ 4, 4, 4, QSPI_IFR_WIDTH_QUAD_CMD },
 };
 
+static const struct atmel_qspi_mode atmel_qspi_sama7g5_modes[] = {
+	{ 1, 1, 1, QSPI_IFR_WIDTH_SINGLE_BIT_SPI },
+	{ 1, 1, 2, QSPI_IFR_WIDTH_DUAL_OUTPUT },
+	{ 1, 1, 4, QSPI_IFR_WIDTH_QUAD_OUTPUT },
+	{ 1, 2, 2, QSPI_IFR_WIDTH_DUAL_IO },
+	{ 1, 4, 4, QSPI_IFR_WIDTH_QUAD_IO },
+	{ 2, 2, 2, QSPI_IFR_WIDTH_DUAL_CMD },
+	{ 4, 4, 4, QSPI_IFR_WIDTH_QUAD_CMD },
+	{ 1, 1, 8, QSPI_IFR_WIDTH_OCT_OUTPUT },
+	{ 1, 8, 8, QSPI_IFR_WIDTH_OCT_IO },
+	{ 8, 8, 8, QSPI_IFR_WIDTH_OCT_CMD },
+};
+
+static u32 atmel_qspi_read(struct atmel_qspi *aq, u32 offset)
+{
+	return readl_relaxed(aq->regs + offset);
+}
+
+static void atmel_qspi_write(u32 value, struct atmel_qspi *aq, u32 offset)
+{
+	writel_relaxed(value, aq->regs + offset);
+}
+
+static int atmel_qspi_reg_sync(struct atmel_qspi *aq)
+{
+	u32 val;
+	int ret;
+
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 !(val & QSPI_SR2_SYNCBSY),
+				 ATMEL_QSPI_SYNC_TIMEOUT);
+	return ret;
+}
+
+static int atmel_qspi_update_config(struct atmel_qspi *aq)
+{
+	int ret;
+
+	ret = atmel_qspi_reg_sync(aq);
+	if (ret)
+		return ret;
+	atmel_qspi_write(QSPI_CR_UPDCFG, aq, QSPI_CR);
+	return atmel_qspi_reg_sync(aq);
+}
+
 static inline bool atmel_qspi_is_compatible(const struct spi_mem_op *op,
 					    const struct atmel_qspi_mode *mode)
 {
@@ -201,15 +361,34 @@ static int atmel_qspi_find_mode(const struct spi_mem_op *op)
 		if (atmel_qspi_is_compatible(op, &atmel_qspi_modes[i]))
 			return i;
 
-	return -ENOTSUPP;
+	return -EOPNOTSUPP;
+}
+
+static int atmel_qspi_sama7g5_find_mode(const struct spi_mem_op *op)
+{
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(atmel_qspi_sama7g5_modes); i++)
+		if (atmel_qspi_is_compatible(op, &atmel_qspi_sama7g5_modes[i]))
+			return i;
+
+	return -EOPNOTSUPP;
 }
 
 static bool atmel_qspi_supports_op(struct spi_mem *mem,
 				   const struct spi_mem_op *op)
 {
+	struct atmel_qspi *aq = spi_controller_get_devdata(mem->spi->controller);
 	if (!spi_mem_default_supports_op(mem, op))
 		return false;
 
+	if (aq->caps->octal) {
+		if (atmel_qspi_sama7g5_find_mode(op) < 0)
+			return false;
+		else
+			return true;
+	}
+
 	if (atmel_qspi_find_mode(op) < 0)
 		return false;
 
@@ -221,6 +400,25 @@ static bool atmel_qspi_supports_op(struct spi_mem *mem,
 	return true;
 }
 
+/*
+ * If the QSPI controller is set in regular SPI mode, set it in
+ * Serial Memory Mode (SMM).
+ */
+static int atmel_qspi_set_serial_memory_mode(struct atmel_qspi *aq)
+{
+	int ret = 0;
+
+	if (!(aq->mr & QSPI_MR_SMM)) {
+		aq->mr |= QSPI_MR_SMM;
+		atmel_qspi_write(aq->mr, aq, QSPI_MR);
+
+		if (aq->caps->has_gclk)
+			ret = atmel_qspi_update_config(aq);
+	}
+
+	return ret;
+}
+
 static int atmel_qspi_set_cfg(struct atmel_qspi *aq,
 			      const struct spi_mem_op *op, u32 *offset)
 {
@@ -237,7 +435,7 @@ static int atmel_qspi_set_cfg(struct atmel_qspi *aq,
 		return mode;
 	ifr |= atmel_qspi_modes[mode].config;
 
-	if (op->dummy.buswidth && op->dummy.nbytes)
+	if (op->dummy.nbytes)
 		dummy_cycles = op->dummy.nbytes * 8 / op->dummy.buswidth;
 
 	/*
@@ -292,82 +490,248 @@ static int atmel_qspi_set_cfg(struct atmel_qspi *aq,
 	if (dummy_cycles)
 		ifr |= QSPI_IFR_NBDUM(dummy_cycles);
 
-	/* Set data enable */
-	if (op->data.nbytes)
+	/* Set data enable and data transfer type. */
+	if (op->data.nbytes) {
 		ifr |= QSPI_IFR_DATAEN;
 
-	/*
-	 * If the QSPI controller is set in regular SPI mode, set it in
-	 * Serial Memory Mode (SMM).
-	 */
-	if (aq->mr != QSPI_MR_SMM) {
-		writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
-		aq->mr = QSPI_MR_SMM;
+		if (op->addr.nbytes)
+			ifr |= QSPI_IFR_TFRTYP_MEM;
 	}
 
+	mode = atmel_qspi_set_serial_memory_mode(aq);
+	if (mode < 0)
+		return mode;
+
 	/* Clear pending interrupts */
-	(void)readl_relaxed(aq->regs + QSPI_SR);
+	(void)atmel_qspi_read(aq, QSPI_SR);
 
-	if (aq->caps->has_ricr) {
-		if (!op->addr.nbytes && op->data.dir == SPI_MEM_DATA_IN)
-			ifr |= QSPI_IFR_APBTFRTYP_READ;
+	/* Set QSPI Instruction Frame registers. */
+	if (op->addr.nbytes && !op->data.nbytes)
+		atmel_qspi_write(iar, aq, QSPI_IAR);
 
-		/* Set QSPI Instruction Frame registers */
-		writel_relaxed(iar, aq->regs + QSPI_IAR);
+	if (aq->caps->has_ricr) {
 		if (op->data.dir == SPI_MEM_DATA_IN)
-			writel_relaxed(icr, aq->regs + QSPI_RICR);
+			atmel_qspi_write(icr, aq, QSPI_RICR);
 		else
-			writel_relaxed(icr, aq->regs + QSPI_WICR);
-		writel_relaxed(ifr, aq->regs + QSPI_IFR);
+			atmel_qspi_write(icr, aq, QSPI_WICR);
 	} else {
-		if (op->data.dir == SPI_MEM_DATA_OUT)
+		if (op->data.nbytes && op->data.dir == SPI_MEM_DATA_OUT)
 			ifr |= QSPI_IFR_SAMA5D2_WRITE_TRSFR;
 
-		/* Set QSPI Instruction Frame registers */
-		writel_relaxed(iar, aq->regs + QSPI_IAR);
-		writel_relaxed(icr, aq->regs + QSPI_ICR);
-		writel_relaxed(ifr, aq->regs + QSPI_IFR);
+		atmel_qspi_write(icr, aq, QSPI_ICR);
 	}
 
+	atmel_qspi_write(ifr, aq, QSPI_IFR);
+
 	return 0;
 }
 
-static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
+static int atmel_qspi_wait_for_completion(struct atmel_qspi *aq, u32 irq_mask)
 {
-	struct atmel_qspi *aq = spi_controller_get_devdata(mem->spi->controller);
-	u32 sr, imr, offset;
 	int err;
+	u32 sr;
 
-	err = atmel_qspi_set_cfg(aq, op, &offset);
-	if (err)
-		return err;
+	atmel_qspi_write(irq_mask, aq, QSPI_IER);
+
+	err = readl_poll_timeout(aq->regs + QSPI_SR, sr,
+				 (sr & irq_mask) == irq_mask,
+				 ATMEL_QSPI_TIMEOUT);
+
+	atmel_qspi_write(irq_mask, aq, QSPI_IDR);
+
+	return err;
+}
+
+static int atmel_qspi_transfer(struct spi_mem *mem,
+			       const struct spi_mem_op *op, u32 offset)
+{
+	struct atmel_qspi *aq = spi_controller_get_devdata(mem->spi->controller);
 
 	/* Skip to the final steps if there is no data */
-	if (op->data.nbytes) {
-		/* Dummy read of QSPI_IFR to synchronize APB and AHB accesses */
-		(void)readl_relaxed(aq->regs + QSPI_IFR);
+	if (!op->data.nbytes)
+		return atmel_qspi_wait_for_completion(aq,
+						      QSPI_SR_CMD_COMPLETED);
 
-		/* Send/Receive data */
-		if (op->data.dir == SPI_MEM_DATA_IN)
-			memcpy_fromio(op->data.buf.in, aq->mem + offset,
-				       op->data.nbytes);
+	/* Dummy read of QSPI_IFR to synchronize APB and AHB accesses */
+	(void)atmel_qspi_read(aq, QSPI_IFR);
+
+	/* Send/Receive data */
+	if (op->data.dir == SPI_MEM_DATA_IN) {
+		memcpy_fromio(op->data.buf.in, aq->mem + offset,
+			      op->data.nbytes);
+	} else {
+		memcpy_toio(aq->mem + offset, op->data.buf.out,
+			    op->data.nbytes);
+	}
+
+	/* Synchronize AHB and APB accesses again */
+	barrier();
+
+	/* Release the chip-select */
+	atmel_qspi_write(QSPI_CR_LASTXFER, aq, QSPI_CR);
+
+	return atmel_qspi_wait_for_completion(aq, QSPI_SR_CMD_COMPLETED);
+}
+
+static int atmel_qspi_sama7g5_set_cfg(struct atmel_qspi *aq,
+				      const struct spi_mem_op *op, u32 *offset)
+{
+	u32 iar, icr, ifr;
+	int mode, ret;
+
+	iar = 0;
+	icr = FIELD_PREP(QSPI_ICR_INST_MASK_SAMA7G5, op->cmd.opcode);
+	ifr = QSPI_IFR_INSTEN;
+
+	mode = atmel_qspi_sama7g5_find_mode(op);
+	if (mode < 0)
+		return mode;
+	ifr |= atmel_qspi_sama7g5_modes[mode].config;
+
+	if (op->dummy.buswidth && op->dummy.nbytes) {
+	/* Temporary disable until spi-mem is updated */
+/*
+		if (op->addr.dtr && op->dummy.dtr && op->data.dtr)
+			ifr |= QSPI_IFR_NBDUM(op->dummy.nbytes * 8 /
+					      (2 * op->dummy.buswidth));
 		else
-			memcpy_toio(aq->mem + offset, op->data.buf.out,
-				     op->data.nbytes);
+*/
+			ifr |= QSPI_IFR_NBDUM(op->dummy.nbytes * 8 /
+					      op->dummy.buswidth);
+	}
+
+	if (op->addr.buswidth && op->addr.nbytes) {
+		ifr |= FIELD_PREP(QSPI_IFR_ADDRL_SAMA7G5, op->addr.nbytes - 1) |
+		       QSPI_IFR_ADDREN;
+		iar = FIELD_PREP(QSPI_IAR_ADDR, op->addr.val);
+	}
+
+	/* Temporary disable until spi-mem is updated */
+/*
+	if (op->addr.dtr && op->dummy.dtr && op->data.dtr) {
+		ifr |= QSPI_IFR_DDREN;
+		if (op->cmd.dtr)
+			ifr |= QSPI_IFR_DDRCMDEN;
+
+		ifr |= QSPI_IFR_DQSEN;
+	}
+*/
+
+	if (op->cmd.buswidth == 8 || op->addr.buswidth == 8 ||
+	    op->data.buswidth == 8)
+		ifr |= FIELD_PREP(QSPI_IFR_PROTTYP, QSPI_IFR_PROTTYP_OCTAFLASH);
+
+	/* offset of the data access in the QSPI memory space */
+	*offset = iar;
+
+	/* Set data enable */
+	if (op->data.nbytes) {
+		ifr |= QSPI_IFR_DATAEN;
+
+		if (op->addr.nbytes)
+			ifr |= QSPI_IFR_TFRTYP_MEM;
+	}
+
+	ret = atmel_qspi_set_serial_memory_mode(aq);
+	if (ret < 0)
+		return ret;
+
+	/* Clear pending interrupts */
+	(void)atmel_qspi_read(aq, QSPI_SR);
+
+	/* Set QSPI Instruction Frame registers */
+	if (op->addr.nbytes && !op->data.nbytes)
+		atmel_qspi_write(iar, aq, QSPI_IAR);
+
+	if (op->data.dir == SPI_MEM_DATA_IN) {
+		atmel_qspi_write(icr, aq, QSPI_RICR);
+	} else {
+		atmel_qspi_write(icr, aq, QSPI_WICR);
+		if (op->data.nbytes)
+			atmel_qspi_write(FIELD_PREP(QSPI_WRACNT_NBWRA,
+						    op->data.nbytes),
+					 aq, QSPI_WRACNT);
+	}
+
+	atmel_qspi_write(ifr, aq, QSPI_IFR);
+
+	return atmel_qspi_update_config(aq);
+}
 
-		/* Release the chip-select */
-		writel_relaxed(QSPI_CR_LASTXFER, aq->regs + QSPI_CR);
+static int atmel_qspi_sama7g5_transfer(struct spi_mem *mem,
+				       const struct spi_mem_op *op, u32 offset)
+{
+	struct atmel_qspi *aq =
+		spi_controller_get_devdata(mem->spi->controller);
+	u32 val;
+	int ret;
+
+	if (!op->data.nbytes) {
+		/* Start the transfer. */
+		ret = atmel_qspi_reg_sync(aq);
+		if (ret)
+			return ret;
+		atmel_qspi_write(QSPI_CR_STTFR, aq, QSPI_CR);
+
+		return atmel_qspi_wait_for_completion(aq, QSPI_SR_CSRA);
+	}
+
+	/* Send/Receive data. */
+	if (op->data.dir == SPI_MEM_DATA_IN) {
+		memcpy_fromio(op->data.buf.in, aq->mem + offset,
+			      op->data.nbytes);
+
+		if (op->addr.nbytes) {
+			ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+						 !(val & QSPI_SR2_RBUSY),
+						 ATMEL_QSPI_SYNC_TIMEOUT);
+			if (ret)
+				return ret;
+		}
+	} else {
+		memcpy_toio(aq->mem + offset, op->data.buf.out, op->data.nbytes);
+
+		ret = atmel_qspi_wait_for_completion(aq, QSPI_SR_LWRA);
+		if (ret)
+			return ret;
 	}
 
-	/* Poll INSTruction End and Chip Select Rise flags. */
-	imr = QSPI_SR_CMD_COMPLETED;
-	return readl_poll_timeout(aq->regs + QSPI_SR, sr, (sr & imr) == imr,
-				  1000000);
+	/* Release the chip-select. */
+	ret = atmel_qspi_reg_sync(aq);
+	if (ret)
+		return ret;
+	atmel_qspi_write(QSPI_CR_LASTXFER, aq, QSPI_CR);
+
+	return atmel_qspi_wait_for_completion(aq, QSPI_SR_CSRA);
+}
+
+static int atmel_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
+{
+	struct atmel_qspi *aq = spi_controller_get_devdata(mem->spi->controller);
+	u32 offset;
+	int err;
+
+	/*
+	 * Check if the address exceeds the MMIO window size. An improvement
+	 * would be to add support for regular SPI mode and fall back to it
+	 * when the flash memories overrun the controller's memory space.
+	 */
+	if (op->addr.val + op->data.nbytes > aq->mmap_size)
+		return -EOPNOTSUPP;
+
+	if (op->addr.nbytes > 4)
+		return -EOPNOTSUPP;
+
+	err = aq->ops->set_cfg(aq, op, &offset);
+	if (!err)
+		err = aq->ops->transfer(mem, op, offset);
+
+	return err;
 }
 
-static const char *atmel_qspi_get_name(struct spi_mem *mem)
+static const char *atmel_qspi_get_name(struct spi_mem *spimem)
 {
-	return dev_name(&mem->spi->dev);
+	return dev_name(&spimem->spi->dev);
 }
 
 static const struct spi_controller_mem_ops atmel_qspi_mem_ops = {
@@ -376,16 +740,172 @@ static const struct spi_controller_mem_ops atmel_qspi_mem_ops = {
 	.get_name = atmel_qspi_get_name
 };
 
+static int atmel_qspi_set_pad_calibration(struct atmel_qspi *aq)
+{
+	unsigned long pclk_rate;
+	u32 status, val;
+	int i, ret;
+	u8 pclk_div = 0;
+
+	pclk_rate = clk_get_rate(aq->pclk);
+	if (!pclk_rate)
+		return -EINVAL;
+
+	for (i = 0; i < ATMEL_QSPI_PCAL_ARRAY_SIZE; i++) {
+		if (pclk_rate <= pcal[i].pclk_rate) {
+			pclk_div = pcal[i].pclk_div;
+			break;
+		}
+	}
+
+	/*
+	 * Use the biggest divider in case the peripheral clock exceeds
+	 * 200MHZ.
+	 */
+	if (pclk_rate > pcal[ATMEL_QSPI_PCAL_ARRAY_SIZE - 1].pclk_rate)
+		pclk_div = pcal[ATMEL_QSPI_PCAL_ARRAY_SIZE - 1].pclk_div;
+
+	/* Disable QSPI while configuring the pad calibration. */
+	status = atmel_qspi_read(aq, QSPI_SR2);
+	if (status & QSPI_SR2_QSPIENS) {
+		ret = atmel_qspi_reg_sync(aq);
+		if (ret)
+			return ret;
+		atmel_qspi_write(QSPI_CR_QSPIDIS, aq, QSPI_CR);
+	}
+
+	/*
+	 * The analog circuitry is not shut down at the end of the calibration
+	 * and the start-up time is only required for the first calibration
+	 * sequence, thus increasing performance. Set the delay between the Pad
+	 * calibration analog circuitry and the calibration request to 2us.
+	 */
+	atmel_qspi_write(QSPI_PCALCFG_AAON |
+			 FIELD_PREP(QSPI_PCALCFG_CLKDIV, pclk_div) |
+			 FIELD_PREP(QSPI_PCALCFG_CALCNT,
+				    2 * (pclk_rate / 1000000)),
+			 aq, QSPI_PCALCFG);
+
+	/* DLL On + start calibration. */
+	atmel_qspi_write(QSPI_CR_DLLON | QSPI_CR_STPCAL, aq, QSPI_CR);
+
+	/* Check synchronization status before updating configuration. */
+	ret =  readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				  (val & QSPI_SR2_DLOCK) &&
+				  !(val & QSPI_SR2_CALBSY),
+				  ATMEL_QSPI_TIMEOUT);
+
+	/* Refresh analogic blocks every 1 ms.*/
+	atmel_qspi_write(FIELD_PREP(QSPI_REFRESH_DELAY_COUNTER,
+				    aq->target_max_speed_hz / 1000),
+			 aq, QSPI_REFRESH);
+
+	return ret;
+}
+
+static int atmel_qspi_set_gclk(struct atmel_qspi *aq)
+{
+	u32 status, val;
+	int ret;
+
+	/* Disable DLL before setting GCLK */
+	status = atmel_qspi_read(aq, QSPI_SR2);
+	if (status & QSPI_SR2_DLOCK) {
+		atmel_qspi_write(QSPI_CR_DLLOFF, aq, QSPI_CR);
+
+		ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+					 !(val & QSPI_SR2_DLOCK),
+					 ATMEL_QSPI_TIMEOUT);
+		if (ret)
+			return ret;
+	}
+
+	if (aq->target_max_speed_hz > QSPI_DLLCFG_THRESHOLD_FREQ)
+		atmel_qspi_write(QSPI_DLLCFG_RANGE, aq, QSPI_DLLCFG);
+	else
+		atmel_qspi_write(0, aq, QSPI_DLLCFG);
+
+	ret = clk_set_rate(aq->gclk, aq->target_max_speed_hz);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "Failed to set generic clock rate.\n");
+		return ret;
+	}
+
+	/* Enable the QSPI generic clock */
+	ret = clk_prepare_enable(aq->gclk);
+	if (ret)
+		dev_err(aq->ctlr.dev, "Failed to enable generic clock.\n");
+
+	return ret;
+}
+
+static int atmel_qspi_sama7g5_init(struct atmel_qspi *aq)
+{
+	u32 val;
+	int ret;
+
+	ret = atmel_qspi_set_gclk(aq);
+	if (ret)
+		return ret;
+
+	if (aq->caps->octal) {
+		ret = atmel_qspi_set_pad_calibration(aq);
+		if (ret)
+			return ret;
+	} else {
+		atmel_qspi_write(QSPI_CR_DLLON, aq, QSPI_CR);
+		ret =  readl_poll_timeout(aq->regs + QSPI_SR2, val,
+					  (val & QSPI_SR2_DLOCK),
+					  ATMEL_QSPI_TIMEOUT);
+	}
+
+	/* Set the QSPI controller by default in Serial Memory Mode */
+	aq->mr |= QSPI_MR_DQSDLYEN;
+	ret = atmel_qspi_set_serial_memory_mode(aq);
+	if (ret < 0)
+		return ret;
+
+	/* Enable the QSPI controller. */
+	atmel_qspi_write(QSPI_CR_QSPIEN, aq, QSPI_CR);
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 val & QSPI_SR2_QSPIENS,
+				 ATMEL_QSPI_SYNC_TIMEOUT);
+	if (ret)
+		return ret;
+
+	if (aq->caps->octal) {
+		ret = readl_poll_timeout(aq->regs + QSPI_SR, val,
+					 val & QSPI_SR_RFRSHD,
+					 ATMEL_QSPI_TIMEOUT);
+	}
+
+	atmel_qspi_write(QSPI_TOUT_TCNTM, aq, QSPI_TOUT);
+	return ret;
+}
+
+static int atmel_qspi_sama7g5_setup(struct spi_device *spi)
+{
+	struct atmel_qspi *aq = spi_controller_get_devdata(spi->controller);
+
+	/* The controller can communicate with a single peripheral device (target). */
+	aq->target_max_speed_hz = spi->max_speed_hz;
+
+	return atmel_qspi_sama7g5_init(aq);
+}
+
 static int atmel_qspi_setup(struct spi_device *spi)
 {
-	struct atmel_qspi *aq = container_of(spi->controller, struct atmel_qspi,
-					     ctlr);
+	struct spi_controller *ctrl = spi->controller;
+	struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
 	unsigned long src_rate;
-	u32 scr, scbr;
+	u32 scbr;
 
 	if (!spi->max_speed_hz)
 		return -EINVAL;
 
+	if (aq->caps->has_gclk)
+		return atmel_qspi_sama7g5_setup(spi);
+
 	src_rate = clk_get_rate(aq->pclk);
 	if (!src_rate)
 		return -EINVAL;
@@ -395,40 +915,134 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	if (scbr > 0)
 		scbr--;
 
-	scr = QSPI_SCR_SCBR(scbr);
-	writel_relaxed(scr, aq->regs + QSPI_SCR);
+	aq->scr &= ~QSPI_SCR_SCBR_MASK;
+	aq->scr |= QSPI_SCR_SCBR(scbr);
+	atmel_qspi_write(aq->scr, aq, QSPI_SCR);
+
+	return 0;
+}
+
+static int atmel_qspi_set_cs_timing(struct spi_device *spi)
+{
+	struct spi_controller *ctrl = spi->controller;
+	struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
+	unsigned long clk_rate;
+	u32 cs_inactive;
+	u32 cs_setup;
+	u32 cs_hold;
+	int delay;
+
+	clk_rate = clk_get_rate(aq->pclk);
+	if (!clk_rate)
+		return -EINVAL;
+
+	/* hold */
+	delay = spi_delay_to_ns(&spi->cs_hold, NULL);
+	if (aq->mr & QSPI_MR_SMM) {
+		if (delay > 0)
+			dev_warn(aq->ctlr.dev,
+				 "Ignoring cs_hold, must be 0 in Serial Memory Mode.\n");
+		cs_hold = 0;
+	} else {
+		delay = spi_delay_to_ns(&spi->cs_hold, NULL);
+		if (delay < 0)
+			return delay;
+
+		cs_hold = DIV_ROUND_UP((delay * DIV_ROUND_UP(clk_rate, 1000000)), 32000);
+	}
+
+	/* setup */
+	delay = spi_delay_to_ns(&spi->cs_setup, NULL);
+	if (delay < 0)
+		return delay;
+
+	cs_setup = DIV_ROUND_UP((delay * DIV_ROUND_UP(clk_rate, 1000000)),
+				1000);
+
+	/* inactive */
+	delay = spi_delay_to_ns(&spi->cs_inactive, NULL);
+	if (delay < 0)
+		return delay;
+	cs_inactive = DIV_ROUND_UP((delay * DIV_ROUND_UP(clk_rate, 1000000)), 1000);
+
+	aq->scr &= ~QSPI_SCR_DLYBS_MASK;
+	aq->scr |= QSPI_SCR_DLYBS(cs_setup);
+	atmel_qspi_write(aq->scr, aq, QSPI_SCR);
+
+	aq->mr &= ~(QSPI_MR_DLYBCT_MASK | QSPI_MR_DLYCS_MASK);
+	aq->mr |= QSPI_MR_DLYBCT(cs_hold) | QSPI_MR_DLYCS(cs_inactive);
+	atmel_qspi_write(aq->mr, aq, QSPI_MR);
 
 	return 0;
 }
 
 static int atmel_qspi_init(struct atmel_qspi *aq)
 {
+	int ret;
+
+	if (aq->caps->has_gclk) {
+		ret = atmel_qspi_reg_sync(aq);
+		if (ret)
+			return ret;
+		atmel_qspi_write(QSPI_CR_SWRST, aq, QSPI_CR);
+		return 0;
+	}
+
 	/* Reset the QSPI controller */
-	writel_relaxed(QSPI_CR_SWRST, aq->regs + QSPI_CR);
+	atmel_qspi_write(QSPI_CR_SWRST, aq, QSPI_CR);
 
 	/* Set the QSPI controller by default in Serial Memory Mode */
-	writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
-	aq->mr = QSPI_MR_SMM;
+	ret = atmel_qspi_set_serial_memory_mode(aq);
+	if (ret < 0)
+		return ret;
 
 	/* Enable the QSPI controller */
-	writel_relaxed(QSPI_CR_QSPIEN, aq->regs + QSPI_CR);
-
+	atmel_qspi_write(QSPI_CR_QSPIEN, aq, QSPI_CR);
 	return 0;
 }
 
+static const struct atmel_qspi_ops atmel_qspi_ops = {
+	.set_cfg = atmel_qspi_set_cfg,
+	.transfer = atmel_qspi_transfer,
+};
+
+static const struct atmel_qspi_ops atmel_qspi_sama7g5_ops = {
+	.set_cfg = atmel_qspi_sama7g5_set_cfg,
+	.transfer = atmel_qspi_sama7g5_transfer,
+};
+
 static int atmel_qspi_probe(struct device *dev)
 {
 	struct spi_controller *ctrl;
 	struct atmel_qspi *aq;
-	int err = 0;
+	struct resource *res;
+	int err;
 
 	aq = xzalloc(sizeof(*aq));
 	ctrl = &aq->ctlr;
 
-	/* ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_TX_DUAL | SPI_TX_QUAD; */
+	aq->caps = of_device_get_match_data(dev);
+	if (!aq->caps)
+		return dev_err_probe(dev, -EINVAL,
+				     "Could not retrieve QSPI caps\n");
 
 	ctrl->dev = dev;
+
+	/* Temporary disable until spi-mem is updated */
+/*
+	ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_TX_DUAL | SPI_TX_QUAD;
+	if (aq->caps->octal)
+		ctrl->mode_bits |= SPI_RX_OCTAL | SPI_TX_OCTAL;
+*/
+
+	if (aq->caps->has_gclk)
+		aq->ops = &atmel_qspi_sama7g5_ops;
+	else
+		aq->ops = &atmel_qspi_ops;
+
+	ctrl->max_speed_hz = aq->caps->max_speed_hz;
 	ctrl->setup = atmel_qspi_setup;
+	ctrl->set_cs_timing = atmel_qspi_set_cs_timing;
 	ctrl->bus_num = -1;
 	ctrl->mem_ops = &atmel_qspi_mem_ops;
 	ctrl->num_chipselect = 1;
@@ -437,88 +1051,68 @@ static int atmel_qspi_probe(struct device *dev)
 
 	/* Map the registers */
 	aq->regs = dev_request_mem_region_by_name(dev, "qspi_base");
-	if (IS_ERR(aq->regs)) {
-		dev_err(dev, "missing registers\n");
-		err = PTR_ERR(aq->regs);
-		goto exit;
-	}
+	if (IS_ERR(aq->regs))
+		return dev_err_probe(dev, PTR_ERR(aq->regs),
+				     "missing registers\n");
 
 	/* Map the AHB memory */
-	aq->mem = dev_request_mem_region_by_name(dev, "qspi_mmap");
-	if (IS_ERR(aq->mem)) {
-		dev_err(dev, "missing AHB memory\n");
-		err = PTR_ERR(aq->mem);
-		goto exit;
-	}
+	res = dev_request_mem_resource_by_name(dev, "qspi_mmap");
+	if (IS_ERR(res))
+		return dev_err_probe(dev, PTR_ERR(res),
+				     "missing AHB memory\n");
+
+	aq->mem = IOMEM(res->start);
+	aq->mmap_size = resource_size(res);
 
 	/* Get the peripheral clock */
-	aq->pclk = clk_get(dev, "pclk");
+	aq->pclk = clk_get_enabled(dev, "pclk");
 	if (IS_ERR(aq->pclk))
-		aq->pclk = clk_get(dev, NULL);
-
-	if (IS_ERR(aq->pclk)) {
-		dev_err(dev, "missing peripheral clock\n");
-		err = PTR_ERR(aq->pclk);
-		goto exit;
-	}
+		aq->pclk = clk_get_enabled(dev, NULL);
 
-	/* Enable the peripheral clock */
-	err = clk_enable(aq->pclk);
-	if (err) {
-		dev_err(dev, "failed to enable the peripheral clock\n");
-		goto exit;
-	}
-
-	aq->caps = of_device_get_match_data(dev);
-	if (!aq->caps) {
-		dev_err(dev, "Could not retrieve QSPI caps\n");
-		err = -EINVAL;
-		goto exit;
-	}
+	if (IS_ERR(aq->pclk))
+		return dev_err_probe(dev, PTR_ERR(aq->pclk),
+				     "missing peripheral clock\n");
 
 	if (aq->caps->has_qspick) {
 		/* Get the QSPI system clock */
-		aq->qspick = clk_get(dev, "qspick");
-		if (IS_ERR(aq->qspick)) {
-			dev_err(dev, "missing system clock\n");
-			err = PTR_ERR(aq->qspick);
-			goto disable_pclk;
-		}
-
-		/* Enable the QSPI system clock */
-		err = clk_enable(aq->qspick);
-		if (err) {
-			dev_err(dev, "failed to enable the QSPI system clock\n");
-			goto disable_pclk;
-		}
+		aq->qspick = clk_get_enabled(dev, "qspick");
+		if (IS_ERR(aq->qspick))
+			return dev_err_probe(dev, PTR_ERR(aq->qspick),
+					     "missing system clock\n");
+	} else if (aq->caps->has_gclk) {
+		/* Get the QSPI generic clock */
+		aq->gclk = clk_get(dev, "gclk");
+		if (IS_ERR(aq->gclk))
+			return dev_err_probe(dev, PTR_ERR(aq->gclk),
+					     "missing Generic clock\n");
 	}
 
 	err = atmel_qspi_init(aq);
 	if (err)
-		goto disable_qspick;
-
-	err = spi_register_controller(ctrl);
-	if (err)
-		goto disable_qspick;
-
-	return 0;
+		return err;
 
-disable_qspick:
-	clk_disable(aq->qspick);
-disable_pclk:
-	clk_disable(aq->pclk);
-exit:
-	return err;
+	return spi_register_controller(ctrl);
 }
 
-static const struct atmel_qspi_caps atmel_sama5d2_qspi_caps = {};
+static __maybe_unused const struct atmel_qspi_caps atmel_sama5d2_qspi_caps = {};
 
-static const struct atmel_qspi_caps atmel_sam9x60_qspi_caps = {
+static __maybe_unused const struct atmel_qspi_caps atmel_sam9x60_qspi_caps = {
 	.has_qspick = true,
 	.has_ricr = true,
 };
 
-static const struct of_device_id atmel_qspi_dt_ids[] = {
+static __maybe_unused const struct atmel_qspi_caps atmel_sama7g5_ospi_caps = {
+	.max_speed_hz = SAMA7G5_QSPI0_MAX_SPEED_HZ,
+	.has_gclk = true,
+	.octal = true,
+};
+
+static __maybe_unused const struct atmel_qspi_caps atmel_sama7g5_qspi_caps = {
+	.max_speed_hz = SAMA7G5_QSPI1_SDR_MAX_SPEED_HZ,
+	.has_gclk = true,
+};
+
+static __maybe_unused const struct of_device_id atmel_qspi_dt_ids[] = {
 	{
 		.compatible = "atmel,sama5d2-qspi",
 		.data = &atmel_sama5d2_qspi_caps,
@@ -527,13 +1121,26 @@ static const struct of_device_id atmel_qspi_dt_ids[] = {
 		.compatible = "microchip,sam9x60-qspi",
 		.data = &atmel_sam9x60_qspi_caps,
 	},
+	{
+		.compatible = "microchip,sama7g5-ospi",
+		.data = &atmel_sama7g5_ospi_caps,
+	},
+	{
+		.compatible = "microchip,sama7g5-qspi",
+		.data = &atmel_sama7g5_qspi_caps,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, atmel_qspi_dt_ids);
 
 static struct driver atmel_qspi_driver = {
-	.name	= "atmel_qspi",
-	.of_compatible	= atmel_qspi_dt_ids,
+	.name		= "atmel_qspi",
 	.probe		= atmel_qspi_probe,
+	.of_compatible	= DRV_OF_COMPAT(atmel_qspi_dt_ids),
 };
 device_platform_driver(atmel_qspi_driver);
+
+MODULE_AUTHOR("Cyrille Pitchen <cyrille.pitchen@atmel.com>");
+MODULE_AUTHOR("Piotr Bugalski <bugalski.piotr@gmail.com");
+MODULE_DESCRIPTION("Atmel QSPI Controller driver");
+MODULE_LICENSE("GPL v2");
-- 
2.39.1



