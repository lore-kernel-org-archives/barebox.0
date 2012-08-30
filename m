Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75IK-0004jz-1q
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:00:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 Aug 2012 15:00:14 +0100
Message-Id: <1346335217-9686-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/5] ppc/asm/fsl_i2c.h is removed
To: barebox@lists.infradead.org

The i2c-imx driver is able to support the I2C bus on the 85xx machines
with minor modifications. It already defines register offsets. Therefore,
this header file is no longer needed.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/fsl_i2c.h |   86 ----------------------------------------
 1 files changed, 0 insertions(+), 86 deletions(-)
 delete mode 100644 arch/ppc/include/asm/fsl_i2c.h

diff --git a/arch/ppc/include/asm/fsl_i2c.h b/arch/ppc/include/asm/fsl_i2c.h
deleted file mode 100644
index 4f71341..0000000
--- a/arch/ppc/include/asm/fsl_i2c.h
+++ /dev/null
@@ -1,86 +0,0 @@
-/*
- * Freescale I2C Controller
- *
- * Copyright 2006 Freescale Semiconductor, Inc.
- *
- * Based on earlier versions by Gleb Natapov <gnatapov@mrv.com>,
- * Xianghua Xiao <x.xiao@motorola.com>, Eran Liberty (liberty@freescale.com),
- * and Jeff Brown.
- * Some bits are taken from linux driver writen by adrian@humboldt.co.uk.
- *
- * This software may be used and distributed according to the
- * terms of the GNU Public License, Version 2, incorporated
- * herein by reference.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * Version 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#ifndef _ASM_FSL_I2C_H_
-#define _ASM_FSL_I2C_H_
-
-#include <asm/types.h>
-
-typedef struct fsl_i2c {
-
-	u8 adr;		/* I2C slave address */
-	u8 res0[3];
-#define I2C_ADR		0xFE
-#define I2C_ADR_SHIFT	1
-#define I2C_ADR_RES	~(I2C_ADR)
-
-	u8 fdr;		/* I2C frequency divider register */
-	u8 res1[3];
-#define IC2_FDR		0x3F
-#define IC2_FDR_SHIFT	0
-#define IC2_FDR_RES	~(IC2_FDR)
-
-	u8 cr;		/* I2C control redister	*/
-	u8 res2[3];
-#define I2C_CR_MEN	0x80
-#define I2C_CR_MIEN	0x40
-#define I2C_CR_MSTA	0x20
-#define I2C_CR_MTX	0x10
-#define I2C_CR_TXAK	0x08
-#define I2C_CR_RSTA	0x04
-#define I2C_CR_BCST	0x01
-
-	u8 sr;		/* I2C status register */
-	u8 res3[3];
-#define I2C_SR_MCF	0x80
-#define I2C_SR_MAAS	0x40
-#define I2C_SR_MBB	0x20
-#define I2C_SR_MAL	0x10
-#define I2C_SR_BCSTM	0x08
-#define I2C_SR_SRW	0x04
-#define I2C_SR_MIF	0x02
-#define I2C_SR_RXAK	0x01
-
-	u8 dr;		/* I2C data register */
-	u8 res4[3];
-#define I2C_DR		0xFF
-#define I2C_DR_SHIFT	0
-#define I2C_DR_RES	~(I2C_DR)
-
-	u8 dfsrr;	/* I2C digital filter sampling rate register */
-	u8 res5[3];
-#define I2C_DFSRR	0x3F
-#define I2C_DFSRR_SHIFT	0
-#define I2C_DFSRR_RES	~(I2C_DR)
-
-	/* Fill out the reserved block */
-	u8 res6[0xE8];
-} fsl_i2c_t;
-
-#endif	/* _ASM_I2C_H_ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
