Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wi83Y-0008Ak-MU
 for barebox@lists.infradead.org; Wed, 07 May 2014 20:03:09 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id 885F318B425A
 for <barebox@lists.infradead.org>; Wed,  7 May 2014 22:02:09 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  7 May 2014 22:05:30 +0200
Message-Id: <1399493130-13670-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399493130-13670-1-git-send-email-dev@lynxeye.de>
References: <1399493130-13670-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: tegra30: ramp vdd_core to 1,2V
To: barebox@lists.infradead.org

This isn't much different from the default 1,16V
and I haven't seen this make a difference on any
board, but it seems to be required for some T30 SKUs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-beaver/entry.c           |  1 +
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/boards/nvidia-beaver/entry.c b/arch/arm/boards/nvidia-beaver/entry.c
index 25452a6..576fcb7 100644
--- a/arch/arm/boards/nvidia-beaver/entry.c
+++ b/arch/arm/boards/nvidia-beaver/entry.c
@@ -30,6 +30,7 @@ ENTRY_FUNCTION(start_nvidia_beaver, r0, r1, r2)
 	tegra_cpu_lowlevel_setup();
 
 	tegra_dvc_init();
+	tegra30_tps62366a_ramp_vddcore();
 	tegra30_tps65911_cpu_rail_enable();
 
 	fdt = (uint32_t)__dtb_tegra30_beaver_start - get_runtime_offset();
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
index f7f6328..32f10d7 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
@@ -70,3 +70,21 @@ void tegra30_tps65911_cpu_rail_enable(void)
 	tegra_dvc_write_data(0x0127, TEGRA_I2C_SEND_2_BYTES);
 	tegra_ll_delay_usec(10 * 1000);
 }
+
+static inline __attribute__((always_inline))
+void tegra30_tps62366a_ramp_vddcore(void)
+{
+	tegra_dvc_write_addr(0xc0, 2);
+	/* set VDDcore to 1,2V */
+	tegra_dvc_write_data(0x4601, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(1000);
+}
+
+static inline __attribute__((always_inline))
+void tegra30_tps62361b_ramp_vddcore(void)
+{
+	tegra_dvc_write_addr(0xc0, 2);
+	/* set VDDcore to 1,2V */
+	tegra_dvc_write_data(0x4603, TEGRA_I2C_SEND_2_BYTES);
+	tegra_ll_delay_usec(1000);
+}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
