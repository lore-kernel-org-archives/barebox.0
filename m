Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJd-00029c-AI
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:58 +0200
Message-Id: <20191014121901.19471-10-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/12] ARM: at91: import lowlevel dbgu UART init code from
 at91bootstrap
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

For use in PBL, import dbgu init code from:
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/at91_usart.c

The brgr calculation at the beginning is a untangled version
of the BAUDRATE macro from the usart.h header:

	#define BAUDRATE(mck, baud) \
		(((((mck) * 10) / ((baud) * 16)) % 10) >= 5) ? \
		(mck / (baud * 16) + 1) : ((mck) / (baud * 16))

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91_dbgu.h | 63 ++++++++++++++++++++-
 1 file changed, 62 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/arch/arm/mach-at91/include/mach/at91_dbgu.h
index e33a358153f9..0ba9cdae10ce 100644
--- a/arch/arm/mach-at91/include/mach/at91_dbgu.h
+++ b/arch/arm/mach-at91/include/mach/at91_dbgu.h
@@ -5,7 +5,7 @@
  * Copyright (C) SAN People
  *
  * Debug Unit (DBGU) - System peripherals registers.
- * Based on AT91RM9200 datasheet revision E.
+ * Based on AT91RM9200 datasheet revision E and SAMA5D3 datasheet revision B.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
@@ -17,7 +17,33 @@
 #define AT91_DBGU_H
 
 #define AT91_DBGU_CR		(0x00)	/* Control Register */
+#define 	AT91_DBGU_RSTRX		(1 << 2)		/* Reset Receiver */
+#define 	AT91_DBGU_RSTTX		(1 << 3)		/* Reset Transmitter */
+#define 	AT91_DBGU_RXEN		(1 << 4)		/* Receiver Enable */
+#define 	AT91_DBGU_RXDIS		(1 << 5)		/* Receiver Disable */
+#define 	AT91_DBGU_TXEN		(1 << 6)		/* Transmitter Enable */
+#define 	AT91_DBGU_TXDIS		(1 << 7)		/* Transmitter Disable */
+#define 	AT91_DBGU_RSTSTA	(1 << 8)		/* Reset Status Bits */
 #define AT91_DBGU_MR		(0x04)	/* Mode Register */
+#define		AT91_DBGU_NBSTOP_1BIT		(0 << 12) /* 1 stop bit */
+#define		AT91_DBGU_NBSTOP_1_5BIT	(1 << 12) /* 1.5 stop bits */
+#define		AT91_DBGU_NBSTOP_2BIT		(2 << 12) /* 2 stop bits */
+
+#define		AT91_DBGU_CHRL_5BIT	(0 << 6) /* 5 bit character length */
+#define		AT91_DBGU_CHRL_6BIT	(1 << 6) /* 6 bit character length */
+#define		AT91_DBGU_CHRL_7BIT	(2 << 6) /* 7 bit character length */
+#define		AT91_DBGU_CHRL_8BIT	(3 << 6) /* 8 bit character length */
+
+#define 	AT91_DBGU_PAR_EVEN	(0 << 9)		/* Even Parity */
+#define 	AT91_DBGU_PAR_ODD	(1 << 9)		/* Odd Parity */
+#define 	AT91_DBGU_PAR_SPACE	(2 << 9)		/* Space: Force Parity to 0 */
+#define 	AT91_DBGU_PAR_MARK	(3 << 9)		/* Mark: Force Parity to 1 */
+#define 	AT91_DBGU_PAR_NONE	(4 << 9)		/* No Parity */
+
+#define 	AT91_DBGU_CHMODE_NORMAL	(0 << 14) /* Normal mode */
+#define 	AT91_DBGU_CHMODE_AUTO		(1 << 14) /* Automatic Echo */
+#define 	AT91_DBGU_CHMODE_LOCAL		(2 << 14) /* Local Loopback */
+#define 	AT91_DBGU_CHMODE_REMOTE	(3 << 14) /* Remote Loopback */
 #define AT91_DBGU_IER		(0x08)	/* Interrupt Enable Register */
 #define		AT91_DBGU_TXRDY		(1 << 1)		/* Transmitter Ready */
 #define		AT91_DBGU_TXEMPTY	(1 << 9)		/* Transmitter Empty */
@@ -61,4 +87,39 @@
 #define		AT91_CIDR_NVPTYP	(7    << 28)		/* Nonvolatile Program Memory Type */
 #define		AT91_CIDR_EXT		(1    << 31)		/* Extension Flag */
 
+#ifndef __ASSEMBLY__
+
+#include <asm/io.h>
+static inline void at91_dbgu_setup_ll(void __iomem *dbgu_base,
+				      unsigned mck,
+				      unsigned baudrate)
+{
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		u32 brgr = mck / (baudrate * 16);
+
+		if ((mck / (baudrate * 16)) % 10 >= 5)
+			brgr++;
+
+		writel(~0, dbgu_base + AT91_DBGU_IDR);
+
+		writel(AT91_DBGU_RSTRX
+		       | AT91_DBGU_RSTTX
+		       | AT91_DBGU_RXDIS
+		       | AT91_DBGU_TXDIS,
+		       dbgu_base + AT91_DBGU_CR);
+
+		writel(brgr, dbgu_base + AT91_DBGU_BRGR);
+
+		writel(AT91_DBGU_PAR_NONE
+		       | AT91_DBGU_CHMODE_NORMAL
+		       | AT91_DBGU_CHRL_8BIT
+		       | AT91_DBGU_NBSTOP_1BIT,
+		       dbgu_base + AT91_DBGU_MR);
+
+		writel(AT91_DBGU_RXEN | AT91_DBGU_TXEN, dbgu_base + AT91_DBGU_CR);
+	}
+}
+
+#endif
+
 #endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
