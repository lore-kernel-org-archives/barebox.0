Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mq-D2
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:21 +0200
Message-Id: <1317112109-23311-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] ppc mpc5200: add function to setup bus clocks
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c                  |   38 ++++++++++++++++++++++++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |    3 ++
 2 files changed, 41 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 649f08a..d695b9b 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -33,6 +33,7 @@
 #include <asm/io.h>
 #include <init.h>
 #include <types.h>
+#include <errno.h>
 #include <mach/clocks.h>
 
 #if defined(CONFIG_OF_FLAT_TREE)
@@ -132,6 +133,43 @@ unsigned long mpc5200_get_sdram_size(unsigned int cs)
 	return size;
 }
 
+int mpc5200_setup_bus_clocks(unsigned int ipbdiv, unsigned long pcidiv)
+{
+	u32 cdmcfg = *(vu_long *)MPC5XXX_CDM_CFG;
+
+	cdmcfg &= ~0x103;
+
+	switch (ipbdiv) {
+	case 1:
+		break;
+	case 2:
+		cdmcfg |= 0x100;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (pcidiv) {
+	case 1:
+		if (ipbdiv == 2)
+			return -EINVAL;
+		break;
+	case 2:
+		if (ipbdiv == 1)
+			cdmcfg |= 0x1; /* ipb / 2 */
+		break;
+	case 4:
+		cdmcfg |= 0x2; /* xlb / 4 */
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	*(vu_long *)MPC5XXX_CDM_CFG = cdmcfg;
+
+	return 0;
+}
+
 struct mpc5200_cs {
 	void *start;
 	void *stop;
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index 558f331..8e95dd0 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -786,6 +786,9 @@ unsigned long mpc5200_get_sdram_size(unsigned int cs);
 #define MPC5200_BOOTCS 8
 void mpc5200_setup_cs(int cs, unsigned long start, unsigned long size, u32 cfg);
 
+/* configure bus speeds. Both dividers are relative to xlb clock */
+int mpc5200_setup_bus_clocks(unsigned int ipbdiv, unsigned long pcidiv);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASMPPC_MPC5XXX_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
