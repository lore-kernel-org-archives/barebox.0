Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUmH-0003Ml-0J
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:26:59 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 4EA6218B4265
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:04 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:37 +0100
Message-Id: <1392668861-10915-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
References: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 4/8] tegra: add lowlevel delay function
To: barebox@lists.infradead.org

For proper startup we need to give clocks and IO signals some time to
stabilize. Tegra2 got away without them, but Tegra3 seems to be a bit
pickier.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 44 +++++++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra_avp_init.c        |  5 ++++
 2 files changed, 49 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 20de1b2..85ab7ef 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -183,6 +183,49 @@ int tegra_get_osc_clock(void)
 	}
 }
 
+#define TIMER_CNTR_1US	0x00
+#define TIMER_USEC_CFG	0x04
+
+static __always_inline
+void tegra_ll_delay_setup(void)
+{
+	u32 reg;
+
+	/*
+	 * calibrate timer to run at 1MHz
+	 * TIMERUS_USEC_CFG selects the scale down factor with bits [0:7]
+	 * representing the divisor and bits [8:15] representing the dividend
+	 * each in n+1 form.
+	 */
+	switch (tegra_get_osc_clock()) {
+	case 12000000:
+		reg = 0x000b;
+		break;
+	case 13000000:
+		reg = 0x000c;
+		break;
+	case 19200000:
+		reg = 0x045f;
+		break;
+	case 26000000:
+		reg = 0x0019;
+		break;
+	default:
+		reg = 0;
+		break;
+	}
+
+	writel(reg, TEGRA_TMRUS_BASE + TIMER_USEC_CFG);
+}
+
+static __always_inline
+void tegra_ll_delay_usec(int delay)
+{
+	int timeout = (int)readl(TEGRA_TMRUS_BASE + TIMER_CNTR_1US) + delay;
+
+	while ((int)readl(TEGRA_TMRUS_BASE + TIMER_CNTR_1US) - timeout < 0);
+}
+
 static __always_inline
 void tegra_cpu_lowlevel_setup(void)
 {
@@ -193,6 +236,7 @@ void tegra_cpu_lowlevel_setup(void)
 	r &= ~0x1f;
 	r |= 0xd3;
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+	tegra_ll_delay_setup();
 }
 
 /* reset vector for the AVP, to be called from board reset vector */
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 2c2d6fc..9f8ccf3 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -158,6 +158,9 @@ static void start_cpu0_clocks(void)
 	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
 	reg |= CRC_CLK_OUT_ENB_L_CPU;
 	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_L);
+
+	/* give clocks some time to settle */
+	tegra_ll_delay_usec(300);
 }
 
 static void maincomplex_powerup(void)
@@ -175,6 +178,8 @@ static void maincomplex_powerup(void)
 		reg = readl(TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
 		reg |= PMC_REMOVE_CLAMPING_CMD_CPU;
 		writel(reg, TEGRA_PMC_BASE + PMC_REMOVE_CLAMPING_CMD);
+
+		tegra_ll_delay_usec(1000);
 	}
 }
 void tegra_avp_reset_vector(uint32_t boarddata)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
