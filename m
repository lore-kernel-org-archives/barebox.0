Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NduUf-0004sq-Tl
	for barebox@lists.infradead.org; Sat, 06 Feb 2010 23:55:22 +0000
Date: Sun, 7 Feb 2010 00:54:56 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100206235456.GD15617@darwin>
References: <d5ecf68c69351ddcef35759f76e7e8ce3d7e0571.1265500315.git.matthias@kaehlcke.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5ecf68c69351ddcef35759f76e7e8ce3d7e0571.1265500315.git.matthias@kaehlcke.net>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edb93xx: Enable UART1
To: barebox@lists.infradead.org

edb93xx: according to the datasheet UART1 needs to be enabled explicitly

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 board/edb93xx/edb93xx.c |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/board/edb93xx/edb93xx.c b/board/edb93xx/edb93xx.c
index add88e1..6316988 100644
--- a/board/edb93xx/edb93xx.c
+++ b/board/edb93xx/edb93xx.c
@@ -32,6 +32,8 @@
 #include <mach/ep93xx-regs.h>
 #include "edb93xx.h"
 
+#define DEVCFG_U1EN (1 << 18)
+
 /*
  * Up to 32MiB NOR type flash, connected to
  * CS line 6, data width is 16 bit
@@ -164,6 +166,12 @@ static int edb93xx_console_init(void)
 	value |= SYSCON_PWRCNT_UART_BAUD;
 	writel(value, &syscon->pwrcnt);
 
+	/* Enable UART1 */
+	value = readl(&syscon->devicecfg);
+	value |= DEVCFG_U1EN;
+	writel(0xAA, &syscon->sysswlock);
+	writel(value, &syscon->devicecfg);
+
 	register_device(&edb93xx_serial_device);
 
 	return 0;
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
