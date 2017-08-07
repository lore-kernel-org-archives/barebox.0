Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deid2-0005Mq-Lx
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:03:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1deich-0002ro-4A
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 16:03:11 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 Aug 2017 16:03:10 +0200
Message-Id: <20170807140311.3515-1-l.stach@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: imx: add stub for imx7_uart_setup_ll
To: barebox@lists.infradead.org

Fixes: 28e8db159f25 (ARM: i.MX: Add imx7_uart_setup_ll())
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index b7c0690d8120..d54d601db0da 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -115,6 +115,7 @@ static inline void imx50_uart_setup_ll(void) {}
 static inline void imx51_uart_setup_ll(void) {}
 static inline void imx53_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
+static inline void imx7_uart_setup_ll(void)  {}
 static inline void vf610_uart_setup_ll(void) {}
 
 #endif /* CONFIG_DEBUG_LL */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
