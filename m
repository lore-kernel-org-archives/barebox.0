Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb7Qw-0000Tt-Rn
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 11:26:03 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 29 Oct 2013 11:24:32 +0000
Message-Id: <1383045874-7641-5-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/6] ppc: mpc85xx: enable DDR driver
To: barebox@lists.infradead.org

The use of the DDR driver as well as early I2C support is
enabled for board initialising their memory through SPD EEPROM
data.

A SOC specific function returning the DDR bus frequency
is added for the DDR driver to translate DDR timings to
register values.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/Makefile                 | 2 ++
 arch/ppc/mach-mpc85xx/Makefile             | 1 +
 arch/ppc/mach-mpc85xx/cpu.c                | 6 ++++--
 arch/ppc/mach-mpc85xx/include/mach/clock.h | 1 +
 arch/ppc/mach-mpc85xx/speed.c              | 9 +++++++++
 5 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 arch/ppc/ddr-8xxx/Makefile

diff --git a/arch/ppc/ddr-8xxx/Makefile b/arch/ppc/ddr-8xxx/Makefile
new file mode 100644
index 0000000..54cb7ce
--- /dev/null
+++ b/arch/ppc/ddr-8xxx/Makefile
@@ -0,0 +1,2 @@
+obj-y	+=  	main.o util.o ctrl_regs.o options.o lc_common_dimm_params.o
+obj-$(CONFIG_FSL_DDR2)	+= ddr2_dimm_params.o ddr2_setctrl.o
diff --git a/arch/ppc/mach-mpc85xx/Makefile b/arch/ppc/mach-mpc85xx/Makefile
index 81d6853..b484d40 100644
--- a/arch/ppc/mach-mpc85xx/Makefile
+++ b/arch/ppc/mach-mpc85xx/Makefile
@@ -6,4 +6,5 @@ obj-y			+= speed.o
 obj-y			+=time.o
 obj-$(CONFIG_MP)	+= mp.o
 obj-$(CONFIG_OFTREE)	+= fdt.o
+obj-$(CONFIG_I2C_IMX)	+= fsl_i2c.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR) += eth-devices.o
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
index 39343ff..17a1c4c 100644
--- a/arch/ppc/mach-mpc85xx/cpu.c
+++ b/arch/ppc/mach-mpc85xx/cpu.c
@@ -44,8 +44,10 @@ long int initdram(int board_type)
 {
 	phys_size_t dram_size = 0;
 
-	dram_size = fixed_sdram();
-
+	if (IS_ENABLED(CONFIG_DDR_SPD))
+		dram_size = fsl_ddr_sdram();
+	else
+		dram_size = fixed_sdram();
 	dram_size = e500_setup_ddr_tlbs(dram_size / 0x100000);
 	dram_size *= 0x100000;
 
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clock.h b/arch/ppc/mach-mpc85xx/include/mach/clock.h
index e20d685..0e68cf6 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/clock.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/clock.h
@@ -11,6 +11,7 @@ struct sys_info {
 };
 
 unsigned long fsl_get_bus_freq(ulong dummy);
+unsigned long fsl_get_ddr_freq(ulong dummy);
 unsigned long fsl_get_timebase_clock(void);
 unsigned long fsl_get_i2c_freq(void);
 void fsl_get_sys_info(struct sys_info *sysInfo);
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index 64c10f9..eb9d725 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -90,6 +90,15 @@ unsigned long fsl_get_bus_freq(ulong dummy)
 	return sys_info.freqSystemBus;
 }
 
+unsigned long fsl_get_ddr_freq(ulong dummy)
+{
+	struct sys_info sys_info;
+
+	fsl_get_sys_info(&sys_info);
+
+	return sys_info.freqDDRBus;
+}
+
 unsigned long fsl_get_timebase_clock(void)
 {
 	struct sys_info sysinfo;
-- 
1.8.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
