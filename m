Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb7QZ-0000RV-FY
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 11:25:40 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 29 Oct 2013 11:24:29 +0000
Message-Id: <1383045874-7641-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
References: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/6] ppc: mpc85xx: mpc8544 support
To: barebox@lists.infradead.org

Definitions are added to support the mpc8544 CPU.

The function returning the I2C bus frequency is updated
to take into account the mpc8544 specific clock ratio.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/processor.h                    | 2 ++
 arch/ppc/mach-mpc85xx/cpuid.c                       | 2 ++
 arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h | 5 +++++
 arch/ppc/mach-mpc85xx/speed.c                       | 9 +++++++++
 4 files changed, 18 insertions(+)

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 9145257..19530b0 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -858,6 +858,8 @@
 #define SVR_8548	0x8031
 #define SVR_8548_E	0x8039
 #define SVR_8641	0x8090
+#define SVR_8544	0x803401
+#define SVR_8544_E	0x803C01
 #define SVR_P2020	0x80E200
 #define SVR_P2020_E	0x80EA00
 
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
index de56d37..8094978 100644
--- a/arch/ppc/mach-mpc85xx/cpuid.c
+++ b/arch/ppc/mach-mpc85xx/cpuid.c
@@ -27,6 +27,8 @@
 #include <mach/immap_85xx.h>
 
 struct cpu_type cpu_type_list[] = {
+	CPU_TYPE_ENTRY(8544, 8544, 1),
+	CPU_TYPE_ENTRY(8544, 8544_E, 1),
 	CPU_TYPE_ENTRY(P2020, P2020, 2),
 	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
 };
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
index 9a5598f..7cdb37f 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -28,6 +28,11 @@
 #define MAX_CPUS	2
 #define FSL_NUM_LAWS	12
 #define FSL_SEC_COMPAT	2
+
+#elif defined(CONFIG_MPC8544)
+#define MAX_CPUS	1
+#define FSL_NUM_LAWS	10
+
 #else
 #error Processor type not defined for this platform
 #endif
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index 8b447ea..64c10f9 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -101,9 +101,18 @@ unsigned long fsl_get_timebase_clock(void)
 
 unsigned long fsl_get_i2c_freq(void)
 {
+	uint svr;
 	struct sys_info sysinfo;
+	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
 
 	fsl_get_sys_info(&sysinfo);
 
+	svr = get_svr();
+	if ((svr == SVR_8544) || (svr == SVR_8544_E)) {
+		if (in_be32(gur + MPC85xx_GUTS_PORDEVSR2_OFFSET) &
+				MPC85xx_PORDEVSR2_SEC_CFG)
+			return sysinfo.freqSystemBus / 3;
+	}
+
 	return sysinfo.freqSystemBus / 2;
 }
-- 
1.8.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
