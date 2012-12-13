Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgY-0004wN-4N
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:03 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:47 +0100
Message-Id: <1355416249-22364-13-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 12/14] arm: omap: am33xx: add support for low level debug
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/debug_ll.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index b2714c5..142f01a 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -35,6 +35,11 @@
 #define UART_BASE	OMAP44XX_UART3_BASE
 #endif
 
+#ifdef CONFIG_ARCH_AM33XX
+#include <mach/am33xx-silicon.h>
+#define UART_BASE	AM33XX_UART0_BASE
+#endif
+
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 #define LSR		(5 << 2)
 #define THR		(0 << 2)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
