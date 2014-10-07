Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008He-75
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003Oe-VW
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004DF-U8
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:07 +0200
Message-Id: <1412691738-11145-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/19] arch/MPC5xxx: separate clock functions
To: barebox@lists.infradead.org

In order to support the MPC5125 SoC we need a different set of clock functions.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/clocks.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clocks.h b/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
index 4e1a903..717a85b 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
@@ -1,10 +1,14 @@
 #ifndef __ASM_ARCH_CLOCKS_H
 #define __ASM_ARCH_CLOCKS_H
 
-unsigned long get_bus_clock(void);
+/* common clocks */
 unsigned long get_cpu_clock(void);
+unsigned long get_timebase_clock(void);
+
+#if defined(CONFIG_MGT5100) || defined(CONFIG_MPC5200)
+unsigned long get_bus_clock(void);
 unsigned long get_ipb_clock(void);
 unsigned long get_pci_clock(void);
-unsigned long get_timebase_clock(void);
+#endif
 
 #endif /* __ASM_ARCH_CLOCKS_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
