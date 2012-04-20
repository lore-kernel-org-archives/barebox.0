Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXh-000610-Rn
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0006Vb-93
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0003sX-6b
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:16 +0200
Message-Id: <1334927177-13912-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/6] netX: make the host interface macros compile
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-netx/include/mach/netx-regs.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-netx/include/mach/netx-regs.h b/arch/arm/mach-netx/include/mach/netx-regs.h
index c2278cd..27b7b8f 100644
--- a/arch/arm/mach-netx/include/mach/netx-regs.h
+++ b/arch/arm/mach-netx/include/mach/netx-regs.h
@@ -59,7 +59,7 @@
 
 #define NETX_PA_SYSTEM  (NETX_IO_PHYS + NETX_OFS_SYSTEM)
 #define NETX_PA_MEMCR   (NETX_IO_PHYS + NETX_OFS_MEMCR)
-#define NETX_PA_DPRAM   (NETX_IO_PHYS + NETX_OFS_DPRAM)
+#define NETX_PA_DPMAS   (NETX_IO_PHYS + NETX_OFS_DPRAM)
 #define NETX_PA_GPIO    (NETX_IO_PHYS + NETX_OFS_GPIO)
 #define NETX_PA_PIO     (NETX_IO_PHYS + NETX_OFS_PIO)
 #define NETX_PA_UART0   (NETX_IO_PHYS + NETX_OFS_UART0)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
