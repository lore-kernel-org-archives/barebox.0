Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3j-0007nl-IR
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:33 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 05960DC1C62
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:37 +0100
Message-Id: <1359127067-30079-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/14] atmel_mci: use linux regs define
To: barebox@lists.infradead.org

to simplify sync and share code

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/at91_mci.h       |  121 ------------------------------
 drivers/mci/atmel-mci-regs.h |  166 ++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/atmel_mci.c      |  121 ++++++++++++++----------------
 3 files changed, 221 insertions(+), 187 deletions(-)
 delete mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel-mci-regs.h

diff --git a/drivers/mci/at91_mci.h b/drivers/mci/at91_mci.h
deleted file mode 100644
index 4025aeb..0000000
--- a/drivers/mci/at91_mci.h
+++ /dev/null
@@ -1,121 +0,0 @@
-/*
- * [origin: Linux kernel arch/arm/mach-at91/include/mach/at91_mci.h]
- *
- * Copyright (C) 2005 Ivan Kokshaysky
- * Copyright (C) SAN People
- *
- * MultiMedia Card Interface (MCI) registers.
- * Based on AT91RM9200 datasheet revision F.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-
-#ifndef AT91_MCI_H
-#define AT91_MCI_H
-
-#define AT91_MCI_CR		0x00		/* Control Register */
-#define		AT91_MCI_MCIEN		(1 <<  0)	/* Multi-Media Interface Enable */
-#define		AT91_MCI_MCIDIS		(1 <<  1)	/* Multi-Media Interface Disable */
-#define		AT91_MCI_PWSEN		(1 <<  2)	/* Power Save Mode Enable */
-#define		AT91_MCI_PWSDIS		(1 <<  3)	/* Power Save Mode Disable */
-#define		AT91_MCI_SWRST		(1 <<  7)	/* Software Reset */
-
-#define AT91_MCI_MR		0x04		/* Mode Register */
-#define		AT91_MCI_CLKDIV		(0xff  <<  0)	/* Clock Divider */
-#define		AT91_MCI_PWSDIV		(7     <<  8)	/* Power Saving Divider */
-#define		AT91_MCI_RDPROOF	(1     << 11)	/* Read Proof Enable [SAM926[03] only] */
-#define		AT91_MCI_WRPROOF	(1     << 12)	/* Write Proof Enable [SAM926[03] only] */
-#define		AT91_MCI_PDCFBYTE	(1     << 13)	/* PDC Force Byte Transfer [SAM926[03] only] */
-#define		AT91_MCI_PDCPADV	(1     << 14)	/* PDC Padding Value */
-#define		AT91_MCI_PDCMODE	(1     << 15)	/* PDC-orientated Mode */
-#define		AT91_MCI_BLKLEN		(0xfff << 18)	/* Data Block Length */
-
-#define AT91_MCI_DTOR		0x08		/* Data Timeout Register */
-#define		AT91_MCI_DTOCYC		(0xf << 0)	/* Data Timeout Cycle Number */
-#define		AT91_MCI_DTOMUL		(7   << 4)	/* Data Timeout Multiplier */
-#define		AT91_MCI_DTOMUL_1		(0 <<  4)
-#define		AT91_MCI_DTOMUL_16		(1 <<  4)
-#define		AT91_MCI_DTOMUL_128		(2 <<  4)
-#define		AT91_MCI_DTOMUL_256		(3 <<  4)
-#define		AT91_MCI_DTOMUL_1K		(4 <<  4)
-#define		AT91_MCI_DTOMUL_4K		(5 <<  4)
-#define		AT91_MCI_DTOMUL_64K		(6 <<  4)
-#define		AT91_MCI_DTOMUL_1M		(7 <<  4)
-
-#define AT91_MCI_SDCR		0x0c		/* SD Card Register */
-#define		AT91_MCI_SDCSEL		(3 << 0)	/* SD Card Selector */
-#define		AT91_MCI_SDCBUS		(3 << 6)	/* 1-bit, 4-bit, or 8-bit bus */
-#define			AT91_MCI_SDCBUS_1BIT	(0 << 6)	/* 1-bit bus */
-#define			AT91_MCI_SDCBUS_4BIT	(2 << 6)	/* 4-bit bus */
-#define			AT91_MCI_SDCBUS_8BIT	(3 << 6)	/* 8-bit bus */
-
-#define AT91_MCI_ARGR		0x10		/* Argument Register */
-
-#define AT91_MCI_CMDR		0x14		/* Command Register */
-#define		AT91_MCI_CMDNB		(0x3f << 0)	/* Command Number */
-#define		AT91_MCI_RSPTYP		(3    << 6)	/* Response Type */
-#define			AT91_MCI_RSPTYP_NONE	(0 <<  6)
-#define			AT91_MCI_RSPTYP_48	(1 <<  6)
-#define			AT91_MCI_RSPTYP_136	(2 <<  6)
-#define			AT91_MCI_RSPTYP_R1B	(3 <<  6)
-#define		AT91_MCI_SPCMD		(7    << 8)	/* Special Command */
-#define			AT91_MCI_SPCMD_NONE	(0 <<  8)
-#define			AT91_MCI_SPCMD_INIT	(1 <<  8)
-#define			AT91_MCI_SPCMD_SYNC	(2 <<  8)
-#define			AT91_MCI_SPCMD_ICMD	(4 <<  8)
-#define			AT91_MCI_SPCMD_IRESP	(5 <<  8)
-#define		AT91_MCI_OPDCMD		(1 << 11)	/* Open Drain Command */
-#define		AT91_MCI_MAXLAT		(1 << 12)	/* Max Latency for Command to Response */
-#define		AT91_MCI_TRCMD		(3 << 16)	/* Transfer Command */
-#define			AT91_MCI_TRCMD_NONE	(0 << 16)
-#define			AT91_MCI_TRCMD_START	(1 << 16)
-#define			AT91_MCI_TRCMD_STOP	(2 << 16)
-#define		AT91_MCI_TRDIR		(1 << 18)	/* Transfer Direction */
-#define			AT91_MCI_TRDIR_RX	(1 << 18)	/* Read Transfer Direction */
-#define			AT91_MCI_TRDIR_TX	(0 << 18)	/* Write Transfer Direction */
-#define		AT91_MCI_TRTYP		(3 << 19)	/* Transfer Type */
-#define			AT91_MCI_TRTYP_BLOCK	(0 << 19)
-#define			AT91_MCI_TRTYP_MULTIPLE	(1 << 19)
-#define			AT91_MCI_TRTYP_STREAM	(2 << 19)
-#define			AT91_MCI_TRTYP_SDIO_BYTE	(4 << 19)
-#define			AT91_MCI_TRTYP_SDIO_BLOCK	(5 << 19)
-
-#define AT91_MCI_BLKR		0x18		/* Block Register */
-#define		AT91_MCI_BLKR_BCNT(n)	((0xffff & (n)) << 0)	/* Block count */
-#define		AT91_MCI_BLKR_BLKLEN(n)	((0xffff & (n)) << 16)	/* Block length */
-
-#define AT91_MCI_RSPR(n)	(0x20 + ((n) * 4))	/* Response Registers 0-3 */
-#define AT91_MCI_RDR		0x30		/* Receive Data Register */
-#define AT91_MCI_TDR		0x34		/* Transmit Data Register */
-
-#define AT91_MCI_SR		0x40		/* Status Register */
-#define		AT91_MCI_CMDRDY		(1 <<  0)	/* Command Ready */
-#define		AT91_MCI_RXRDY		(1 <<  1)	/* Receiver Ready */
-#define		AT91_MCI_TXRDY		(1 <<  2)	/* Transmit Ready */
-#define		AT91_MCI_BLKE		(1 <<  3)	/* Data Block Ended */
-#define		AT91_MCI_DTIP		(1 <<  4)	/* Data Transfer in Progress */
-#define		AT91_MCI_NOTBUSY	(1 <<  5)	/* Data Not Busy */
-#define		AT91_MCI_ENDRX		(1 <<  6)	/* End of RX Buffer */
-#define		AT91_MCI_ENDTX		(1 <<  7)	/* End fo TX Buffer */
-#define		AT91_MCI_SDIOIRQA	(1 <<  8)	/* SDIO Interrupt for Slot A */
-#define		AT91_MCI_SDIOIRQB	(1 <<  9)	/* SDIO Interrupt for Slot B */
-#define		AT91_MCI_RXBUFF		(1 << 14)	/* RX Buffer Full */
-#define		AT91_MCI_TXBUFE		(1 << 15)	/* TX Buffer Empty */
-#define		AT91_MCI_RINDE		(1 << 16)	/* Response Index Error */
-#define		AT91_MCI_RDIRE		(1 << 17)	/* Response Direction Error */
-#define		AT91_MCI_RCRCE		(1 << 18)	/* Response CRC Error */
-#define		AT91_MCI_RENDE		(1 << 19)	/* Response End Bit Error */
-#define		AT91_MCI_RTOE		(1 << 20)	/* Response Time-out Error */
-#define		AT91_MCI_DCRCE		(1 << 21)	/* Data CRC Error */
-#define		AT91_MCI_DTOE		(1 << 22)	/* Data Time-out Error */
-#define		AT91_MCI_OVRE		(1 << 30)	/* Overrun */
-#define		AT91_MCI_UNRE		(1 << 31)	/* Underrun */
-
-#define AT91_MCI_IER		0x44		/* Interrupt Enable Register */
-#define AT91_MCI_IDR		0x48		/* Interrupt Disable Register */
-#define AT91_MCI_IMR		0x4c		/* Interrupt Mask Register */
-
-#endif
diff --git a/drivers/mci/atmel-mci-regs.h b/drivers/mci/atmel-mci-regs.h
new file mode 100644
index 0000000..af1dba0
--- /dev/null
+++ b/drivers/mci/atmel-mci-regs.h
@@ -0,0 +1,166 @@
+/*
+ * Atmel MultiMedia Card Interface driver
+ *
+ * Copyright (C) 2004-2006 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/*
+ * Superset of MCI IP registers integrated in Atmel AVR32 and AT91 Processors
+ * Registers and bitfields marked with [2] are only available in MCI2
+ */
+
+#ifndef __DRIVERS_MMC_ATMEL_MCI_H__
+#define __DRIVERS_MMC_ATMEL_MCI_H__
+
+/* MCI Register Definitions */
+#define ATMCI_CR			0x0000	/* Control */
+# define ATMCI_CR_MCIEN			(  1 <<  0)	/* MCI Enable */
+# define ATMCI_CR_MCIDIS		(  1 <<  1)	/* MCI Disable */
+# define ATMCI_CR_PWSEN			(  1 <<  2)	/* Power Save Enable */
+# define ATMCI_CR_PWSDIS		(  1 <<  3)	/* Power Save Disable */
+# define ATMCI_CR_SWRST			(  1 <<  7)	/* Software Reset */
+#define ATMCI_MR			0x0004	/* Mode */
+# define ATMCI_MR_CLKDIV(x)		((x) <<  0)	/* Clock Divider */
+# define ATMCI_MR_PWSDIV(x)		((x) <<  8)	/* Power Saving Divider */
+# define ATMCI_MR_RDPROOF		(  1 << 11)	/* Read Proof */
+# define ATMCI_MR_WRPROOF		(  1 << 12)	/* Write Proof */
+# define ATMCI_MR_PDCFBYTE		(  1 << 13)	/* Force Byte Transfer */
+# define ATMCI_MR_PDCPADV		(  1 << 14)	/* Padding Value */
+# define ATMCI_MR_PDCMODE		(  1 << 15)	/* PDC-oriented Mode */
+# define ATMCI_MR_CLKODD(x)		((x) << 16)	/* LSB of Clock Divider */
+#define ATMCI_DTOR			0x0008	/* Data Timeout */
+# define ATMCI_DTOCYC(x)		((x) <<  0)	/* Data Timeout Cycles */
+# define ATMCI_DTOMUL(x)		((x) <<  4)	/* Data Timeout Multiplier */
+#define ATMCI_SDCR			0x000c	/* SD Card / SDIO */
+# define ATMCI_SDCSEL_SLOT_A		(  0 <<  0)	/* Select SD slot A */
+# define ATMCI_SDCSEL_SLOT_B		(  1 <<  0)	/* Select SD slot A */
+# define ATMCI_SDCSEL_MASK		(  3 <<  0)
+# define ATMCI_SDCBUS_1BIT		(  0 <<  6)	/* 1-bit data bus */
+# define ATMCI_SDCBUS_4BIT		(  2 <<  6)	/* 4-bit data bus */
+# define ATMCI_SDCBUS_8BIT		(  3 <<  6)	/* 8-bit data bus[2] */
+# define ATMCI_SDCBUS_MASK		(  3 <<  6)
+#define ATMCI_ARGR			0x0010	/* Command Argument */
+#define ATMCI_CMDR			0x0014	/* Command */
+# define ATMCI_CMDR_CMDNB_MASK		(0x3f <<  0)	/* Command Opcode MASK */
+# define ATMCI_CMDR_CMDNB(x)		((x) <<  0)	/* Command Opcode */
+# define ATMCI_CMDR_RSPTYP		(  3 <<  6)	/* response mask */
+# define ATMCI_CMDR_RSPTYP_NONE		(  0 <<  6)	/* No response */
+# define ATMCI_CMDR_RSPTYP_48BIT	(  1 <<  6)	/* 48-bit response */
+# define ATMCI_CMDR_RSPTYP_136BIT	(  2 <<  6)	/* 136-bit response */
+# define ATMCI_CMDR_SPCMD_INIT		(  1 <<  8)	/* Initialization command */
+# define ATMCI_CMDR_SPCMD_SYNC		(  2 <<  8)	/* Synchronized command */
+# define ATMCI_CMDR_SPCMD_INT		(  4 <<  8)	/* Interrupt command */
+# define ATMCI_CMDR_SPCMD_INTRESP	(  5 <<  8)	/* Interrupt response */
+# define ATMCI_CMDR_OPDCMD		(  1 << 11)	/* Open Drain */
+# define ATMCI_CMDR_MAXLAT_5CYC		(  0 << 12)	/* Max latency 5 cycles */
+# define ATMCI_CMDR_MAXLAT_64CYC	(  1 << 12)	/* Max latency 64 cycles */
+# define ATMCI_CMDR_START_XFER		(  1 << 16)	/* Start data transfer */
+# define ATMCI_CMDR_STOP_XFER		(  2 << 16)	/* Stop data transfer */
+# define ATMCI_CMDR_TRDIR_WRITE		(  0 << 18)	/* Write data */
+# define ATMCI_CMDR_TRDIR_READ		(  1 << 18)	/* Read data */
+# define ATMCI_CMDR_BLOCK		(  0 << 19)	/* Single-block transfer */
+# define ATMCI_CMDR_MULTI_BLOCK		(  1 << 19)	/* Multi-block transfer */
+# define ATMCI_CMDR_STREAM		(  2 << 19)	/* MMC Stream transfer */
+# define ATMCI_CMDR_SDIO_BYTE		(  4 << 19)	/* SDIO Byte transfer */
+# define ATMCI_CMDR_SDIO_BLOCK		(  5 << 19)	/* SDIO Block transfer */
+# define ATMCI_CMDR_SDIO_SUSPEND	(  1 << 24)	/* SDIO Suspend Command */
+# define ATMCI_CMDR_SDIO_RESUME		(  2 << 24)	/* SDIO Resume Command */
+#define ATMCI_BLKR			0x0018	/* Block */
+# define ATMCI_BCNT(x)			((x) <<  0)	/* Data Block Count */
+# define ATMCI_BLKLEN(x)		((x) << 16)	/* Data Block Length */
+#define ATMCI_CSTOR			0x001c	/* Completion Signal Timeout[2] */
+# define ATMCI_CSTOCYC(x)		((x) <<  0)	/* CST cycles */
+# define ATMCI_CSTOMUL(x)		((x) <<  4)	/* CST multiplier */
+#define ATMCI_RSPR			0x0020	/* Response 0 */
+#define ATMCI_RSPR1			0x0024	/* Response 1 */
+#define ATMCI_RSPR2			0x0028	/* Response 2 */
+#define ATMCI_RSPR3			0x002c	/* Response 3 */
+#define ATMCI_RDR			0x0030	/* Receive Data */
+#define ATMCI_TDR			0x0034	/* Transmit Data */
+#define ATMCI_SR			0x0040	/* Status */
+#define ATMCI_IER			0x0044	/* Interrupt Enable */
+#define ATMCI_IDR			0x0048	/* Interrupt Disable */
+#define ATMCI_IMR			0x004c	/* Interrupt Mask */
+# define ATMCI_CMDRDY			(  1 <<   0)	/* Command Ready */
+# define ATMCI_RXRDY			(  1 <<   1)	/* Receiver Ready */
+# define ATMCI_TXRDY			(  1 <<   2)	/* Transmitter Ready */
+# define ATMCI_BLKE			(  1 <<   3)	/* Data Block Ended */
+# define ATMCI_DTIP			(  1 <<   4)	/* Data Transfer In Progress */
+# define ATMCI_NOTBUSY			(  1 <<   5)	/* Data Not Busy */
+# define ATMCI_ENDRX			(  1 <<   6)    /* End of RX Buffer */
+# define ATMCI_ENDTX			(  1 <<   7)    /* End of TX Buffer */
+# define ATMCI_SDIOIRQA			(  1 <<   8)	/* SDIO IRQ in slot A */
+# define ATMCI_SDIOIRQB			(  1 <<   9)	/* SDIO IRQ in slot B */
+# define ATMCI_SDIOWAIT			(  1 <<  12)    /* SDIO Read Wait Operation Status */
+# define ATMCI_CSRCV			(  1 <<  13)    /* CE-ATA Completion Signal Received */
+# define ATMCI_RXBUFF			(  1 <<  14)    /* RX Buffer Full */
+# define ATMCI_TXBUFE			(  1 <<  15)    /* TX Buffer Empty */
+# define ATMCI_RINDE			(  1 <<  16)	/* Response Index Error */
+# define ATMCI_RDIRE			(  1 <<  17)	/* Response Direction Error */
+# define ATMCI_RCRCE			(  1 <<  18)	/* Response CRC Error */
+# define ATMCI_RENDE			(  1 <<  19)	/* Response End Bit Error */
+# define ATMCI_RTOE			(  1 <<  20)	/* Response Time-Out Error */
+# define ATMCI_DCRCE			(  1 <<  21)	/* Data CRC Error */
+# define ATMCI_DTOE			(  1 <<  22)	/* Data Time-Out Error */
+# define ATMCI_CSTOE			(  1 <<  23)    /* Completion Signal Time-out Error */
+# define ATMCI_BLKOVRE			(  1 <<  24)    /* DMA Block Overrun Error */
+# define ATMCI_DMADONE			(  1 <<  25)    /* DMA Transfer Done */
+# define ATMCI_FIFOEMPTY		(  1 <<  26)    /* FIFO Empty Flag */
+# define ATMCI_XFRDONE			(  1 <<  27)    /* Transfer Done Flag */
+# define ATMCI_ACKRCV			(  1 <<  28)    /* Boot Operation Acknowledge Received */
+# define ATMCI_ACKRCVE			(  1 <<  29)    /* Boot Operation Acknowledge Error */
+# define ATMCI_OVRE			(  1 <<  30)	/* RX Overrun Error */
+# define ATMCI_UNRE			(  1 <<  31)	/* TX Underrun Error */
+#define ATMCI_DMA			0x0050	/* DMA Configuration[2] */
+# define ATMCI_DMA_OFFSET(x)		((x) <<  0)	/* DMA Write Buffer Offset */
+# define ATMCI_DMA_CHKSIZE(x)		((x) <<  4)	/* DMA Channel Read and Write Chunk Size */
+# define ATMCI_DMAEN			(  1 <<  8)	/* DMA Hardware Handshaking Enable */
+#define ATMCI_CFG			0x0054	/* Configuration[2] */
+# define ATMCI_CFG_FIFOMODE_1DATA	(  1 <<  0)	/* MCI Internal FIFO control mode */
+# define ATMCI_CFG_FERRCTRL_COR		(  1 <<  4)	/* Flow Error flag reset control mode */
+# define ATMCI_CFG_HSMODE		(  1 <<  8)	/* High Speed Mode */
+# define ATMCI_CFG_LSYNC		(  1 << 12)	/* Synchronize on the last block */
+#define ATMCI_WPMR			0x00e4	/* Write Protection Mode[2] */
+# define ATMCI_WP_EN			(  1 <<  0)	/* WP Enable */
+# define ATMCI_WP_KEY			(0x4d4349 << 8)	/* WP Key */
+#define ATMCI_WPSR			0x00e8	/* Write Protection Status[2] */
+# define ATMCI_GET_WP_VS(x)		((x) & 0x0f)
+# define ATMCI_GET_WP_VSRC(x)		(((x) >> 8) & 0xffff)
+#define ATMCI_VERSION			0x00FC  /* Version */
+#define ATMCI_FIFO_APERTURE		0x0200	/* FIFO Aperture[2] */
+
+/* This is not including the FIFO Aperture on MCI2 */
+#define ATMCI_REGS_SIZE		0x100
+
+/* Register access macros */
+#define atmci_readl(port,reg)				\
+	__raw_readl((port)->regs + reg)
+#define atmci_writel(port,reg,value)			\
+	__raw_writel((value), (port)->regs + reg)
+
+/* On AVR chips the Peripheral DMA Controller is not connected to MCI. */
+#ifdef CONFIG_AVR32
+#	define ATMCI_PDC_CONNECTED	0
+#else
+#	define ATMCI_PDC_CONNECTED	1
+#endif
+
+/*
+ * Fix sconfig's burst size according to atmel MCI. We need to convert them as:
+ * 1 -> 0, 4 -> 1, 8 -> 2, 16 -> 3.
+ *
+ * This can be done by finding most significant bit set.
+ */
+static inline unsigned int atmci_convert_chksize(unsigned int maxburst)
+{
+	if (maxburst > 1)
+		return fls(maxburst) - 2;
+	else
+		return 0;
+}
+
+#endif /* __DRIVERS_MMC_ATMEL_MCI_H__ */
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index c8af76a..21c314c 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -1,5 +1,5 @@
 /*
- * Atmel AT91 MCI driver
+ * Atmel MCI driver
  *
  * Copyright (C) 2011 Hubert Feurstein <h.feurstein@gmail.com>
  *
@@ -25,11 +25,11 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-#include "at91_mci.h"
+#include "atmel-mci-regs.h"
 
 struct atmel_mci {
 	struct mci_host		mci;
-	void  __iomem		*base;
+	void  __iomem		*regs;
 	struct device_d		*hw_dev;
 	struct clk		*clk;
 
@@ -41,32 +41,21 @@ struct atmel_mci {
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
 
-#define STATUS_ERROR_MASK	(AT91_MCI_RINDE  \
-				| AT91_MCI_RDIRE \
-				| AT91_MCI_RCRCE \
-				| AT91_MCI_RENDE \
-				| AT91_MCI_RTOE  \
-				| AT91_MCI_DCRCE \
-				| AT91_MCI_DTOE  \
-				| AT91_MCI_OVRE  \
-				| AT91_MCI_UNRE)
-
-static inline u32 atmci_readl(struct atmel_mci *host, u32 offset)
-{
-	return readl(host->base + offset);
-}
-
-static inline void atmci_writel(struct atmel_mci *host, u32 offset,
-				    u32 value)
-{
-	writel(value, host->base + offset);
-}
+#define STATUS_ERROR_MASK	(ATMCI_RINDE  \
+				| ATMCI_RDIRE \
+				| ATMCI_RCRCE \
+				| ATMCI_RENDE \
+				| ATMCI_RTOE  \
+				| ATMCI_DCRCE \
+				| ATMCI_DTOE  \
+				| ATMCI_OVRE  \
+				| ATMCI_UNRE)
 
 static void atmci_ip_reset(struct atmel_mci *host)
 {
-	atmci_writel(host, AT91_MCI_CR, AT91_MCI_SWRST | AT91_MCI_MCIDIS);
-	atmci_writel(host, AT91_MCI_DTOR, 0x7f);
-	atmci_writel(host, AT91_MCI_IDR, ~0UL);
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST | ATMCI_CR_MCIDIS);
+	atmci_writel(host, ATMCI_DTOR, 0x7f);
+	atmci_writel(host, ATMCI_IDR, ~0UL);
 }
 
 static void atmci_set_clk_rate(struct atmel_mci *host,
@@ -87,8 +76,8 @@ static void atmci_set_clk_rate(struct atmel_mci *host,
 	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%d clkIos=%d divider=%d\n",
 		clk_in, clk_ios, divider);
 
-	atmci_writel(host, AT91_MCI_MR, (AT91_MCI_CLKDIV & divider)
-		| AT91_MCI_RDPROOF | AT91_MCI_WRPROOF);
+	atmci_writel(host, ATMCI_MR, ATMCI_MR_CLKDIV(divider)
+		| ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF);
 }
 
 static int atmci_poll_status(struct atmel_mci *host, u32 mask)
@@ -97,12 +86,12 @@ static int atmci_poll_status(struct atmel_mci *host, u32 mask)
 	uint64_t start = get_time_ns();
 
 	do {
-		stat = atmci_readl(host, AT91_MCI_SR);
+		stat = atmci_readl(host, ATMCI_SR);
 		if (stat & STATUS_ERROR_MASK)
 			return stat;
 		if (is_timeout(start, SECOND)) {
 			dev_err(host->hw_dev, "timeout\n");
-			return AT91_MCI_RTOE | stat;
+			return ATMCI_RTOE | stat;
 		}
 		if (stat & mask)
 			return 0;
@@ -115,11 +104,11 @@ static int atmci_pull(struct atmel_mci *host, void *_buf, int bytes)
 	u32 *buf = _buf;
 
 	while (bytes > 3) {
-		stat = atmci_poll_status(host, AT91_MCI_RXRDY);
+		stat = atmci_poll_status(host, ATMCI_RXRDY);
 		if (stat)
 			return stat;
 
-		*buf++ = atmci_readl(host, AT91_MCI_RDR);
+		*buf++ = atmci_readl(host, ATMCI_RDR);
 		bytes -= 4;
 	}
 
@@ -136,15 +125,15 @@ static int atmci_push(struct atmel_mci *host, const void *_buf, int bytes)
 	const u32 *buf = _buf;
 
 	while (bytes > 3) {
-		stat = atmci_poll_status(host, AT91_MCI_TXRDY);
+		stat = atmci_poll_status(host, ATMCI_TXRDY);
 		if (stat)
 			return stat;
 
-		atmci_writel(host, AT91_MCI_TDR, *buf++);
+		atmci_writel(host, ATMCI_TDR, *buf++);
 		bytes -= 4;
 	}
 
-	stat = atmci_poll_status(host, AT91_MCI_TXRDY);
+	stat = atmci_poll_status(host, ATMCI_TXRDY);
 	if (stat)
 		return stat;
 
@@ -169,7 +158,7 @@ static int atmci_transfer_data(struct atmel_mci *host)
 		if (stat)
 			return stat;
 
-		stat = atmci_poll_status(host, AT91_MCI_NOTBUSY);
+		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
 		if (stat)
 			return stat;
 
@@ -181,7 +170,7 @@ static int atmci_transfer_data(struct atmel_mci *host)
 			return stat;
 
 		host->datasize += length;
-		stat = atmci_poll_status(host, AT91_MCI_NOTBUSY);
+		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
 		if (stat)
 			return stat;
 #endif /* CONFIG_MCI_WRITE */
@@ -201,9 +190,9 @@ static int atmci_finish_data(struct atmel_mci *host, unsigned int stat)
 
 	if (stat & STATUS_ERROR_MASK) {
 		dev_err(host->hw_dev, "request failed (status=0x%08x)\n", stat);
-		if (stat & AT91_MCI_DCRCE)
+		if (stat & ATMCI_DCRCE)
 			data_error = -EILSEQ;
-		else if (stat & (AT91_MCI_RTOE | AT91_MCI_DTOE))
+		else if (stat & (ATMCI_RTOE | ATMCI_DTOE))
 			data_error = -ETIMEDOUT;
 		else
 			data_error = -EIO;
@@ -228,8 +217,8 @@ static void atmci_setup_data(struct atmel_mci *host, struct mci_data *data)
 	dev_dbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
 		nob, blksz);
 
-	atmci_writel(host, AT91_MCI_BLKR, AT91_MCI_BLKR_BCNT(nob)
-		| AT91_MCI_BLKR_BLKLEN(blksz));
+	atmci_writel(host, ATMCI_BLKR, ATMCI_BCNT(nob)
+		| ATMCI_BLKLEN(blksz));
 
 	host->datasize = datasize;
 }
@@ -243,10 +232,10 @@ static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
 	if (!cmd)
 		return 0;
 
-	if (stat & (AT91_MCI_RTOE | AT91_MCI_DTOE)) {
+	if (stat & (ATMCI_RTOE | ATMCI_DTOE)) {
 		dev_err(host->hw_dev, "command/data timeout\n");
 		return -ETIMEDOUT;
-	} else if ((stat & AT91_MCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
+	} else if ((stat & ATMCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
 		dev_err(host->hw_dev, "cmd crc error\n");
 		return -EILSEQ;
 	}
@@ -254,9 +243,9 @@ static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
 	if (cmd->resp_type & MMC_RSP_PRESENT) {
 		if (cmd->resp_type & MMC_RSP_136) {
 			for (i = 0; i < 4; i++)
-				resp[i] = atmci_readl(host, AT91_MCI_RSPR(0));
+				resp[i] = atmci_readl(host, ATMCI_RSPR);
 		} else {
-			resp[0] = atmci_readl(host, AT91_MCI_RSPR(0));
+			resp[0] = atmci_readl(host, ATMCI_RSPR);
 		}
 	}
 
@@ -295,38 +284,38 @@ static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 	if (host->cmd != NULL)
 		dev_err(host->hw_dev, "error!\n");
 
-	if ((atmci_readl(host, AT91_MCI_SR) & AT91_MCI_CMDRDY) == 0) {
+	if ((atmci_readl(host, ATMCI_SR) & ATMCI_CMDRDY) == 0) {
 		dev_err(host->hw_dev, "mci not ready!\n");
 		return -EBUSY;
 	}
 
 	host->cmd = cmd;
-	cmdval = AT91_MCI_CMDNB & cmd->cmdidx;
+	cmdval = ATMCI_CMDR_CMDNB_MASK & cmd->cmdidx;
 
 	switch (cmd->resp_type) {
 	case MMC_RSP_R1: /* short CRC, OPCODE */
 	case MMC_RSP_R1b:/* short CRC, OPCODE, BUSY */
-		flags |= AT91_MCI_RSPTYP_48;
+		flags |= ATMCI_CMDR_RSPTYP_48BIT;
 		break;
 	case MMC_RSP_R2: /* long 136 bit + CRC */
-		flags |= AT91_MCI_RSPTYP_136;
+		flags |= ATMCI_CMDR_RSPTYP_136BIT;
 		break;
 	case MMC_RSP_R3: /* short */
-		flags |= AT91_MCI_RSPTYP_48;
+		flags |= ATMCI_CMDR_RSPTYP_48BIT;
 		break;
 	case MMC_RSP_NONE:
-		flags |= AT91_MCI_RSPTYP_NONE;
+		flags |= ATMCI_CMDR_RSPTYP_NONE;
 		break;
 	default:
 		dev_err(host->hw_dev, "unhandled response type 0x%x\n",
 				cmd->resp_type);
 		return -EINVAL;
 	}
-	cmdval |= AT91_MCI_RSPTYP & flags;
-	cmdval |= cmdat & ~(AT91_MCI_CMDNB | AT91_MCI_RSPTYP);
+	cmdval |= ATMCI_CMDR_RSPTYP & flags;
+	cmdval |= cmdat & ~(ATMCI_CMDR_CMDNB_MASK | ATMCI_CMDR_RSPTYP);
 
-	atmci_writel(host, AT91_MCI_ARGR, cmd->cmdarg);
-	atmci_writel(host, AT91_MCI_CMDR, cmdval);
+	atmci_writel(host, ATMCI_ARGR, cmd->cmdarg);
+	atmci_writel(host, ATMCI_CMDR, cmdval);
 
 	return 0;
 }
@@ -360,25 +349,25 @@ static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_4BIT);
+		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_4BIT);
 		break;
 	case MMC_BUS_WIDTH_8:
-		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_8BIT);
+		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_8BIT);
 		break;
 	case MMC_BUS_WIDTH_1:
-		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_1BIT);
+		atmci_writel(host, ATMCI_SDCR, ATMCI_SDCBUS_1BIT);
 		break;
 	default:
 		return;
 	}
-	atmci_writel(host, AT91_MCI_SDCR, atmci_readl(host, AT91_MCI_SDCR)
+	atmci_writel(host, ATMCI_SDCR, atmci_readl(host, ATMCI_SDCR)
 		| host->slot_b);
 
 	if (ios->clock) {
 		atmci_set_clk_rate(host, ios->clock);
-		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIEN);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
 	} else {
-		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIDIS);
 	}
 
 	return;
@@ -392,15 +381,15 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 	int ret;
 
 	if (cmd->resp_type != MMC_RSP_NONE)
-		cmdat |= AT91_MCI_MAXLAT;
+		cmdat |= ATMCI_CMDR_MAXLAT_64CYC;
 
 	if (data) {
 		atmci_setup_data(host, data);
 
-		cmdat |= AT91_MCI_TRCMD_START | AT91_MCI_TRTYP_MULTIPLE;
+		cmdat |= ATMCI_CMDR_START_XFER | ATMCI_CMDR_MULTI_BLOCK;
 
 		if (data->flags & MMC_DATA_READ)
-			cmdat |= AT91_MCI_TRDIR_RX;
+			cmdat |= ATMCI_CMDR_TRDIR_READ;
 	}
 
 	ret = atmci_start_cmd(host, cmd, cmdat);
@@ -409,7 +398,7 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 		return ret;
 	}
 
-	stat = atmci_poll_status(host, AT91_MCI_CMDRDY);
+	stat = atmci_poll_status(host, ATMCI_CMDRDY);
 	return atmci_cmd_done(host, stat);
 }
 
@@ -462,7 +451,7 @@ static int atmci_probe(struct device_d *hw_dev)
 		host->mci.host_caps |= MMC_MODE_8BIT;
 	host->slot_b = pd->slot_b;
 
-	host->base = dev_request_mem_region(hw_dev, 0);
+	host->regs = dev_request_mem_region(hw_dev, 0);
 	host->hw_dev = hw_dev;
 	hw_dev->priv = host;
 	host->clk = clk_get(hw_dev, "mci_clk");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
