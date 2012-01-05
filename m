Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RinUz-0004Jv-Q0
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:36:55 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 02EA3105842A
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:37:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:30:33 +0100
Message-Id: <1325770234-9353-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] serial: drop non used at91rm9200 driver
To: barebox@lists.infradead.org

we use atmel driver now

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/serial_at91rm9200.c |  110 ------------------------------------
 1 files changed, 0 insertions(+), 110 deletions(-)
 delete mode 100644 drivers/serial/serial_at91rm9200.c

diff --git a/drivers/serial/serial_at91rm9200.c b/drivers/serial/serial_at91rm9200.c
deleted file mode 100644
index 9bdc626..0000000
--- a/drivers/serial/serial_at91rm9200.c
+++ /dev/null
@@ -1,110 +0,0 @@
-/*
- * (C) Copyright 2002
- * Lineo, Inc <www.lineo.com>
- * Bernhard Kuhn <bkuhn@lineo.com>
- *
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Marius Groeger <mgroeger@sysgo.de>
- *
- * (C) Copyright 2002
- * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
- * Alex Zuepke <azu@sysgo.de>
- *
- * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl)
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
- */
-
-#include <common.h>
-#include <io.h>
-#include <mach/hardware.h>
-
-#if !defined(CONFIG_DBGU) && !defined(CONFIG_USART0) && !defined(CONFIG_USART1)
-#error must define one of CONFIG_DBGU or CONFIG_USART0 or CONFIG_USART1
-#endif
-
-/* ggi thunder */
-#ifdef CONFIG_DBGU
-AT91PS_USART us = (AT91PS_USART) AT91C_BASE_DBGU;
-#endif
-#ifdef CONFIG_USART0
-AT91PS_USART us = (AT91PS_USART) AT91C_BASE_US0;
-#endif
-#ifdef CONFIG_USART1
-AT91PS_USART us = (AT91PS_USART) AT91C_BASE_US1;
-#endif
-
-void serial_setbrg (void)
-{
-	int baudrate;
-
-	baudrate = CONFIG_BAUDRATE;
-	/* MASTER_CLOCK/(16 * baudrate) */
-	us->US_BRGR = (AT91C_MASTER_CLOCK >> 4) / (unsigned)baudrate;
-}
-
-int serial_init (void)
-{
-	/* make any port initializations specific to this port */
-#ifdef CONFIG_DBGU
-	*AT91C_PIOA_PDR = AT91C_PA31_DTXD | AT91C_PA30_DRXD;	/* PA 31 & 30 */
-	*AT91C_PMC_PCER = 1 << AT91C_ID_SYS;	/* enable clock */
-#endif
-#ifdef CONFIG_USART0
-	*AT91C_PIOA_PDR = AT91C_PA17_TXD0 | AT91C_PA18_RXD0;
-	*AT91C_PMC_PCER |= 1 << AT91C_ID_USART0;	/* enable clock */
-#endif
-#ifdef CONFIG_USART1
-	*AT91C_PIOB_PDR = AT91C_PB21_TXD1 | AT91C_PB20_RXD1;
-	*AT91C_PMC_PCER |= 1 << AT91C_ID_USART1;	/* enable clock */
-#endif
-	serial_setbrg ();
-
-	us->US_CR = AT91C_US_RSTRX | AT91C_US_RSTTX;
-	us->US_CR = AT91C_US_RXEN | AT91C_US_TXEN;
-	us->US_MR =
-		(AT91C_US_CLKS_CLOCK | AT91C_US_CHRL_8_BITS |
-		 AT91C_US_PAR_NONE | AT91C_US_NBSTOP_1_BIT);
-	us->US_IMR = ~0ul;
-	return (0);
-}
-
-void serial_putc (const char c)
-{
-	if (c == '\n')
-		serial_putc ('\r');
-	while ((us->US_CSR & AT91C_US_TXRDY) == 0);
-	us->US_THR = c;
-}
-
-void serial_puts (const char *s)
-{
-	while (*s) {
-		serial_putc (*s++);
-	}
-}
-
-int serial_getc (void)
-{
-	while ((us->US_CSR & AT91C_US_RXRDY) == 0);
-	return us->US_RHR;
-}
-
-int serial_tstc (void)
-{
-	return ((us->US_CSR & AT91C_US_RXRDY) == AT91C_US_RXRDY);
-}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
