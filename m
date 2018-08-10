Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foANi-0007mM-0u
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 16:35:19 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Fri, 10 Aug 2018 18:34:54 +0200
Message-Id: <20180810163500.12042-9-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-1-r.hieber@pengutronix.de>
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v2 08/14] ARM: MXS: allow starting from battery input without
 4P2 source enabled
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Some boards don't need the 4.2V power source at all, so allow them to
keep it disabled for efficiency reasons.

For backwards compatibility, don't disable the 4P2 power source on the
existing boards which are supplied from battery input.

The POWER_USE_5V code path however always enables it up as it is needed
to supply the DC-DC converter.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/lowlevel.c | 2 +-
 arch/arm/boards/karo-tx28/lowlevel.c          | 2 +-
 arch/arm/mach-mxs/include/mach/init.h         | 2 ++
 arch/arm/mach-mxs/power-init.c                | 3 ++-
 4 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index b6a8793c9e..fdaef959a3 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -43,7 +43,7 @@ static noinline void freescale_mx28evk_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init(POWER_USE_BATTERY_INPUT);
+	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 5a6a3e3519..a9b65167cd 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -43,7 +43,7 @@ static noinline void karo_tx28_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx28_power_init(POWER_USE_BATTERY_INPUT);
+	mx28_power_init(POWER_USE_BATTERY_INPUT | POWER_ENABLE_4P2);
 
 	pr_debug("initializing SDRAM...\n");
 
diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index 46cf514a86..b62fea9657 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -18,12 +18,14 @@ void mxs_early_delay(int delay);
  * - POWER_USE_BATTERY: use battery input when the system is supplied by a battery
  * - POWER_USE_BATTERY_INPUT: use battery input when the system is supplied by
  *   a DC source (instead of a real battery) on the battery input
+ * - POWER_ENABLE_4P2: power up the 4P2 regulator (implied for POWER_USE_5V)
  */
 enum mxs_power_config {
 	POWER_USE_5V			= 0b00000000,
 	POWER_USE_BATTERY		= 0b00000001,
 	POWER_USE_BATTERY_INPUT		= 0b00000010,
 	__POWER_USE_MASK		= 0b00000011,
+	POWER_ENABLE_4P2		= 0b00000100,
 };
 
 void mx23_power_init(const int config);
diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index a07ff9d676..2984c0c5ff 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -717,7 +717,8 @@ static void mxs_enable_battery_input(void)
 		POWER_5VCTRL_CHARGE_4P2_ILIMIT_MASK,
 		0x8 << POWER_5VCTRL_CHARGE_4P2_ILIMIT_OFFSET);
 
-	mxs_power_enable_4p2();
+	if (power_config & POWER_ENABLE_4P2)
+		mxs_power_enable_4p2();
 }
 
 /**
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
