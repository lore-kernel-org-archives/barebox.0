Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hl-73
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003P0-4z
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004Do-3i
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:14 +0200
Message-Id: <1412691738-11145-16-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 15/19] arch/MPC5xxx: add MPC5125 to the build-system
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/Makefile                            | 1 +
 arch/ppc/mach-mpc5xxx/Kconfig                | 8 ++++++++
 arch/ppc/mach-mpc5xxx/Makefile               | 6 ++++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h | 2 ++
 4 files changed, 17 insertions(+)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index d0dd51e..74ca401 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -18,6 +18,7 @@ board-$(CONFIG_P1022DS)				:= freescale-p1022ds
 board-$(CONFIG_DA923RC)				:= geip-da923rc
 
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+machine-$(CONFIG_ARCH_MPC512X)			:= mpc5xxx
 machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
 
 cpu-$(CONFIG_ARCH_MPC85XX)			:= 85xx
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 5eebf2a..a65c21d 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -28,6 +28,14 @@ config ARCH_MPC5200
 	bool
 	select MPC5xxx
 
+config ARCH_MPC512X
+	bool
+
+config SOC_MPC5125
+	bool
+	select MPC5xxx
+	select ARCH_MPC512X
+
 config MPC5xxx
 	bool
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/ppc/mach-mpc5xxx/Makefile
index c8d503e..0c2d830 100644
--- a/arch/ppc/mach-mpc5xxx/Makefile
+++ b/arch/ppc/mach-mpc5xxx/Makefile
@@ -1,4 +1,10 @@
 obj-$(CONFIG_MPC5200)		+= cpu-mpc5200.o
+obj-$(CONFIG_SOC_MPC5125)	+= cpu-mpc5125.o
+obj-$(CONFIG_SOC_MPC5125)	+= speed-mpc5125.o
+obj-$(CONFIG_SOC_MPC5125)	+= iomux-mpc5125.o
+obj-$(CONFIG_SOC_MPC5125)	+= sdram-mpc5125.o
+obj-$(CONFIG_SOC_MPC5125)	+= sys-mpc5125.o
+obj-$(CONFIG_SOC_MPC5125)	+= lpc-mpc5125.o
 obj-$(CONFIG_MPC5200)		+= cpu_init-mpc5200.o
 obj-$(CONFIG_MPC5200)		+= loadtask.o
 obj-$(CONFIG_MPC5200)		+= speed-mpc5200.o
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index f5f0a75..d7660e5 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -3,6 +3,8 @@
 
 #if defined(CONFIG_MPC5200) || defined(CONFIG_MGT5100)
 # include <mach/mpc5200.h>
+#elif defined(CONFIG_ARCH_MPC512X)
+# include <mach/mpc512x.h>
 #else
 # error "Undefined Core CPU"
 #endif
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
