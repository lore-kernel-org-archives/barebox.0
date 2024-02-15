Delivery-date: Thu, 15 Feb 2024 13:20:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaiu-007Out-00
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:20:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raaij-00026s-Jl
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:20:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gUboFUWLp8RQpJv9cEirHwD/1eK1j+/6QtBG/lRqiBw=; b=C7MLFTVmUhj+BMRAMZ7to5xSgE
	j1uleMh+TccyLiRIjjq1KX87z2bemi8p1hp6F4sCxdvXT4CQ8WtdC8Y771r5NAnUMHAyuS1KK1zaC
	jBc11XTL5pYoPBXH9a5phZT/XKy2BlQcU08W6HZglFA5xASeyjzq/QyukVWU53I0NbwaLw2rDTM8j
	6eRyJSayNKJOX/4bABGLxNsNlsKFpLqSMavvTXXDoCvYla3/8hXdQeds+r6svdC0PVIJibABcNt/O
	KzSNzKGqTgCs7GblRnmUUnTueFGLObrVnkeUEqIpJjjm14vSXpVEgFr4scyayb0IUTFwoE02mmaLR
	KeTcglAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahZ-0000000GCaH-2zZ7;
	Thu, 15 Feb 2024 12:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahN-0000000GCSL-3itK
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:18:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahM-0001k2-H7; Thu, 15 Feb 2024 13:18:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahM-000shl-4C; Thu, 15 Feb 2024 13:18:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-001YuQ-38;
	Thu, 15 Feb 2024 13:18:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 13:18:37 +0100
Message-Id: <20240215121837.251013-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215121837.251013-1-a.fatoum@pengutronix.de>
References: <20240215121837.251013-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] clk: at91: sync drivers with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During bug hunt of a clocking issue that ultimately turned out to be
unrelated, I resynced AT91 clk support with Linux.

The changes look more extensive than they really are, because I first
imported the clock drivers before a major overhaul of the barebox clock
framework to be more compatible with the more recent kernel API changes.

Most of the diff is due to that, but this resync also fixes
at least a USB issue for the at91rm9200 and adds support for
the new SAMA7 SoC as well as more clocks for the SAM9x60. Both these
SoCs aren't supported by barebox yet, but this at least adds clock
driver support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/porting.rst     |    1 -
 arch/arm/mach-at91/Kconfig          |   15 +-
 drivers/clk/at91/at91rm9200.c       |   47 +-
 drivers/clk/at91/at91sam9260.c      |   68 +-
 drivers/clk/at91/at91sam9g45.c      |   62 +-
 drivers/clk/at91/at91sam9n12.c      |   71 +-
 drivers/clk/at91/at91sam9rl.c       |   47 +-
 drivers/clk/at91/at91sam9x5.c       |   84 +-
 drivers/clk/at91/clk-audio-pll.c    |   89 ++-
 drivers/clk/at91/clk-generated.c    |  114 ++-
 drivers/clk/at91/clk-h32mx.c        |   32 +-
 drivers/clk/at91/clk-i2s-mux.c      |   33 +-
 drivers/clk/at91/clk-main.c         |  235 +++---
 drivers/clk/at91/clk-master.c       |  424 ++++++++--
 drivers/clk/at91/clk-peripheral.c   |  159 ++--
 drivers/clk/at91/clk-pll.c          |   68 +-
 drivers/clk/at91/clk-plldiv.c       |   50 +-
 drivers/clk/at91/clk-programmable.c |   60 +-
 drivers/clk/at91/clk-sam9x60-pll.c  |  741 +++++++++++++-----
 drivers/clk/at91/clk-slow.c         |   41 +-
 drivers/clk/at91/clk-smd.c          |   54 +-
 drivers/clk/at91/clk-system.c       |   62 +-
 drivers/clk/at91/clk-usb.c          |  141 ++--
 drivers/clk/at91/clk-utmi.c         |  178 ++++-
 drivers/clk/at91/pmc.c              |  181 +----
 drivers/clk/at91/pmc.h              |  164 ++--
 drivers/clk/at91/sam9x60.c          |  147 +++-
 drivers/clk/at91/sama5d2.c          |  138 ++--
 drivers/clk/at91/sama5d3.c          |   80 +-
 drivers/clk/at91/sama5d4.c          |   86 +-
 drivers/clk/at91/sama7g5.c          | 1133 +++++++++++++++++++++++++++
 drivers/clk/at91/sckc.c             |  245 +++---
 include/linux/clk.h                 |   16 +
 include/linux/clk/at91_pmc.h        |   59 ++
 34 files changed, 3654 insertions(+), 1471 deletions(-)
 create mode 100644 drivers/clk/at91/sama7g5.c

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 6d6cf059fc97..e63de1259078 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -390,7 +390,6 @@ Miscellaneous Linux porting advice:
   * ``usleep`` and co.: use ``[mud]elay``
   * ``jiffies``: use ``get_time_ns()``
   * ``time_before``: use ``!is_timeout()``
-  * ``clk_hw_register_fixed_rate_with_accuracy``: use ``clk_hw_register_fixed_rate`` without accuracy
   * ``clk_prepare``: is for the non-atomic code preparing for clk enablement. Merge it into ``clk_enable``
 
 ***************************
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1049eb69570d..69edf3dbdc4e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -77,10 +77,14 @@ config SOC_AT91SAM9
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 
+config SOC_SAM_V7
+	select CPU_V7
+	bool
+
 config SOC_SAMA5
 	bool
 	select HAVE_AT91SAM9_RST
-	select CPU_V7
+	select SOC_SAM_V7
 
 config SOC_SAMA5_MULTI
 	def_bool SOC_SAMA5 && AT91_MULTI_BOARDS
@@ -134,6 +138,15 @@ config SOC_SAM9X60
 	select HAVE_AT91_SAM9X60_PLL
 	select PINCTRL_AT91
 
+config SOC_SAMA7G5
+	bool
+	select HAVE_AT91_GENERATED_CLK
+	select HAVE_AT91_SAM9X60_PLL
+	select HAVE_AT91_UTMI
+	select SOC_SAM_V7
+	help
+	  Select this if you are using one of Microchip's SAMA7G5 family SoC.
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if SOC_AT91SAM9G45
diff --git a/drivers/clk/at91/at91rm9200.c b/drivers/clk/at91/at91rm9200.c
index fe40ec788a1f..df75a93edbb6 100644
--- a/drivers/clk/at91/at91rm9200.c
+++ b/drivers/clk/at91/at91rm9200.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-//
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(rm9200_mck_lock);
+
 struct sck {
 	char *n;
 	char *p;
@@ -44,7 +41,7 @@ static const struct clk_pll_characteristics rm9200_pll_characteristics = {
 };
 
 static const struct sck at91rm9200_systemck[] = {
-	{ .n = "udpck", .p = "usbck",    .id = 2 },
+	{ .n = "udpck", .p = "usbck",    .id = 1 },
 	{ .n = "uhpck", .p = "usbck",    .id = 4 },
 	{ .n = "pck0",  .p = "prog0",    .id = 8 },
 	{ .n = "pck1",  .p = "prog1",    .id = 9 },
@@ -85,7 +82,7 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 	u32 usb_div[] = { 1, 2, 0, 0 };
 	const char *parent_names[6];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -143,9 +140,19 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "pllack";
 	parent_names[3] = "pllbck";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91rm9200_master_layout,
-				      &rm9200_mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91rm9200_master_layout,
+					   &rm9200_mck_characteristics,
+					   &rm9200_mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91rm9200_master_layout,
+					  &rm9200_mck_characteristics,
+					  &rm9200_mck_lock, CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -160,11 +167,14 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 	parent_names[2] = "pllack";
 	parent_names[3] = "pllbck";
 	for (i = 0; i < 4; i++) {
-		char *name = xasprintf("prog%d", i);
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 4, i,
-						    &at91rm9200_programmable_layout);
+						    &at91rm9200_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -174,7 +184,7 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91rm9200_systemck); i++) {
 		hw = at91_clk_register_system(regmap, at91rm9200_systemck[i].n,
 					      at91rm9200_systemck[i].p,
-					      at91rm9200_systemck[i].id);
+					      at91rm9200_systemck[i].id, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -184,7 +194,7 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91rm9200_periphck); i++) {
 		hw = at91_clk_register_peripheral(regmap,
 						  at91rm9200_periphck[i].n,
-						  "masterck",
+						  "masterck_div",
 						  at91rm9200_periphck[i].id);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -192,7 +202,7 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
 		at91rm9200_pmc->phws[at91rm9200_periphck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91rm9200_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91rm9200_pmc);
 
 	return;
 
@@ -205,5 +215,4 @@ static void __init at91rm9200_pmc_setup(struct device_node *np)
  * deferring properly. Once this is fixed, this can be switched to a platform
  * driver.
  */
-CLK_OF_DECLARE_DRIVER(at91rm9200_pmc, "atmel,at91rm9200-pmc",
-		      at91rm9200_pmc_setup);
+CLK_OF_DECLARE(at91rm9200_pmc, "atmel,at91rm9200-pmc", at91rm9200_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9260.c b/drivers/clk/at91/at91sam9260.c
index 7d1d3ee5f34e..c94cd9556616 100644
--- a/drivers/clk/at91/at91sam9260.c
+++ b/drivers/clk/at91/at91sam9260.c
@@ -1,13 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
@@ -38,6 +33,8 @@ struct at91sam926x_data {
 	bool has_slck;
 };
 
+static DEFINE_SPINLOCK(at91sam9260_mck_lock);
+
 static const struct clk_master_characteristics sam9260_mck_characteristics = {
 	.output = { .min = 0, .max = 105000000 },
 	.divisors = { 1, 2, 4, 0 },
@@ -224,8 +221,8 @@ static const struct sck at91sam9261_systemck[] = {
 	{ .n = "pck1",  .p = "prog1",    .id = 9 },
 	{ .n = "pck2",  .p = "prog2",    .id = 10 },
 	{ .n = "pck3",  .p = "prog3",    .id = 11 },
-	{ .n = "hclk0", .p = "masterck", .id = 16 },
-	{ .n = "hclk1", .p = "masterck", .id = 17 },
+	{ .n = "hclk0", .p = "masterck_div", .id = 16 },
+	{ .n = "hclk1", .p = "masterck_div", .id = 17 },
 };
 
 static const struct pck at91sam9261_periphck[] = {
@@ -339,7 +336,7 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	const char *parent_names[6];
 	const char *slck_name;
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -379,7 +376,10 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	at91sam9260_pmc->chws[PMC_MAIN] = hw;
 
 	if (data->has_slck) {
-		hw = clk_fixed("slow_rc_osc", 32768);
+		hw = clk_hw_register_fixed_rate_with_accuracy(NULL,
+							      "slow_rc_osc",
+							      NULL, 0, 32768,
+							      50000000);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -416,9 +416,20 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	parent_names[1] = "mainck";
 	parent_names[2] = "pllack";
 	parent_names[3] = "pllbck";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91rm9200_master_layout,
-				      data->mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91rm9200_master_layout,
+					   data->mck_characteristics,
+					   &at91sam9260_mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91rm9200_master_layout,
+					  data->mck_characteristics,
+					  &at91sam9260_mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -433,13 +444,14 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	parent_names[2] = "pllack";
 	parent_names[3] = "pllbck";
 	for (i = 0; i < data->num_progck; i++) {
-		char *name;
+		char name[6];
 
-		name = xasprintf("prog%d", i);
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 4, i,
-						    &at91rm9200_programmable_layout);
+						    &at91rm9200_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -449,7 +461,7 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	for (i = 0; i < data->num_sck; i++) {
 		hw = at91_clk_register_system(regmap, data->sck[i].n,
 					      data->sck[i].p,
-					      data->sck[i].id);
+					      data->sck[i].id, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -459,7 +471,7 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 	for (i = 0; i < data->num_pck; i++) {
 		hw = at91_clk_register_peripheral(regmap,
 						  data->pck[i].n,
-						  "masterck",
+						  "masterck_div",
 						  data->pck[i].id);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -467,7 +479,7 @@ static void __init at91sam926x_pmc_setup(struct device_node *np,
 		at91sam9260_pmc->phws[data->pck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9260_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9260_pmc);
 
 	return;
 
@@ -479,26 +491,26 @@ static void __init at91sam9260_pmc_setup(struct device_node *np)
 {
 	at91sam926x_pmc_setup(np, &at91sam9260_data);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9260_pmc, "atmel,at91sam9260-pmc",
-		      at91sam9260_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9260_pmc, "atmel,at91sam9260-pmc", at91sam9260_pmc_setup);
 
 static void __init at91sam9261_pmc_setup(struct device_node *np)
 {
 	at91sam926x_pmc_setup(np, &at91sam9261_data);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9261_pmc, "atmel,at91sam9261-pmc",
-		      at91sam9261_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9261_pmc, "atmel,at91sam9261-pmc", at91sam9261_pmc_setup);
 
 static void __init at91sam9263_pmc_setup(struct device_node *np)
 {
 	at91sam926x_pmc_setup(np, &at91sam9263_data);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9263_pmc, "atmel,at91sam9263-pmc",
-		      at91sam9263_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9263_pmc, "atmel,at91sam9263-pmc", at91sam9263_pmc_setup);
 
 static void __init at91sam9g20_pmc_setup(struct device_node *np)
 {
 	at91sam926x_pmc_setup(np, &at91sam9g20_data);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9g20_pmc, "atmel,at91sam9g20-pmc",
-		      at91sam9g20_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9g20_pmc, "atmel,at91sam9g20-pmc", at91sam9g20_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
index 035d36580c6e..fedf96139348 100644
--- a/drivers/clk/at91/at91sam9g45.c
+++ b/drivers/clk/at91/at91sam9g45.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(at91sam9g45_mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 0, .max = 133333333 },
 	.divisors = { 1, 2, 4, 3 },
@@ -44,12 +41,17 @@ static const struct clk_pll_characteristics plla_characteristics = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } at91sam9g45_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
-	{ .n = "uhpck", .p = "usbck",    .id = 6 },
-	{ .n = "pck0",  .p = "prog0",    .id = 8 },
-	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
+	{ .n = "uhpck", .p = "usbck",        .id = 6 },
+	{ .n = "pck0",  .p = "prog0",        .id = 8 },
+	{ .n = "pck1",  .p = "prog1",        .id = 9 },
 };
 
 struct pck {
@@ -95,7 +97,7 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 	struct pmc_data *at91sam9g45_pmc;
 	const char *parent_names[6];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -154,9 +156,20 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91rm9200_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91rm9200_master_layout,
+					   &mck_characteristics,
+					   &at91sam9g45_mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91rm9200_master_layout,
+					  &mck_characteristics,
+					  &at91sam9g45_mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -172,13 +185,16 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 2; i++) {
-		char *name = xasprintf("prog%d", i);
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91sam9g45_programmable_layout);
+						    &at91sam9g45_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -188,7 +204,8 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91sam9g45_systemck); i++) {
 		hw = at91_clk_register_system(regmap, at91sam9g45_systemck[i].n,
 					      at91sam9g45_systemck[i].p,
-					      at91sam9g45_systemck[i].id);
+					      at91sam9g45_systemck[i].id,
+					      at91sam9g45_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -198,7 +215,7 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91sam9g45_periphck); i++) {
 		hw = at91_clk_register_peripheral(regmap,
 						  at91sam9g45_periphck[i].n,
-						  "masterck",
+						  "masterck_div",
 						  at91sam9g45_periphck[i].id);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -206,7 +223,7 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
 		at91sam9g45_pmc->phws[at91sam9g45_periphck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9g45_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9g45_pmc);
 
 	return;
 
@@ -217,5 +234,4 @@ static void __init at91sam9g45_pmc_setup(struct device_node *np)
  * The TCB is used as the clocksource so its clock is needed early. This means
  * this can't be a platform driver.
  */
-CLK_OF_DECLARE_DRIVER(at91sam9g45_pmc, "atmel,at91sam9g45-pmc",
-		      at91sam9g45_pmc_setup);
+CLK_OF_DECLARE(at91sam9g45_pmc, "atmel,at91sam9g45-pmc", at91sam9g45_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
index 9a12341f942e..bb075de9fde6 100644
--- a/drivers/clk/at91/at91sam9n12.c
+++ b/drivers/clk/at91/at91sam9n12.c
@@ -1,19 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
-
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(at91sam9n12_mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 0, .max = 133333333 },
 	.divisors = { 1, 2, 4, 3 },
@@ -59,14 +55,19 @@ static const struct clk_pll_characteristics pllb_characteristics = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } at91sam9n12_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
-	{ .n = "lcdck", .p = "masterck", .id = 3 },
-	{ .n = "uhpck", .p = "usbck",    .id = 6 },
-	{ .n = "udpck", .p = "usbck",    .id = 7 },
-	{ .n = "pck0",  .p = "prog0",    .id = 8 },
-	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
+	{ .n = "lcdck", .p = "masterck_div", .id = 3 },
+	{ .n = "uhpck", .p = "usbck",        .id = 6 },
+	{ .n = "udpck", .p = "usbck",        .id = 7 },
+	{ .n = "pck0",  .p = "prog0",        .id = 8 },
+	{ .n = "pck1",  .p = "prog1",        .id = 9 },
 };
 
 static const struct clk_pcr_layout at91sam9n12_pcr_layout = {
@@ -116,7 +117,7 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
 	struct pmc_data *at91sam9n12_pmc;
 	const char *parent_names[6];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -182,9 +183,20 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "pllbck";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91sam9x5_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91sam9x5_master_layout,
+					   &mck_characteristics,
+					   &at91sam9n12_mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91sam9x5_master_layout,
+					  &mck_characteristics,
+					  &at91sam9n12_mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -198,13 +210,16 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "pllbck";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 2; i++) {
-		char *name = xasprintf("prog%d", i);
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91sam9x5_programmable_layout);
+						    &at91sam9x5_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -214,7 +229,8 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91sam9n12_systemck); i++) {
 		hw = at91_clk_register_system(regmap, at91sam9n12_systemck[i].n,
 					      at91sam9n12_systemck[i].p,
-					      at91sam9n12_systemck[i].id);
+					      at91sam9n12_systemck[i].id,
+					      at91sam9n12_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -222,19 +238,19 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(at91sam9n12_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &at91sam9n12_pcr_layout,
 							 at91sam9n12_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 at91sam9n12_periphck[i].id,
-							 &range);
+							 &range, INT_MIN, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
 		at91sam9n12_pmc->phws[at91sam9n12_periphck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9n12_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9n12_pmc);
 
 	return;
 
@@ -245,5 +261,4 @@ static void __init at91sam9n12_pmc_setup(struct device_node *np)
  * The TCB is used as the clocksource so its clock is needed early. This means
  * this can't be a platform driver.
  */
-CLK_OF_DECLARE_DRIVER(at91sam9n12_pmc, "atmel,at91sam9n12-pmc",
-		      at91sam9n12_pmc_setup);
+CLK_OF_DECLARE(at91sam9n12_pmc, "atmel,at91sam9n12-pmc", at91sam9n12_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
index bdec5cedca69..95b02d86d596 100644
--- a/drivers/clk/at91/at91sam9rl.c
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(sam9rl_mck_lock);
+
 static const struct clk_master_characteristics sam9rl_mck_characteristics = {
 	.output = { .min = 0, .max = 94000000 },
 	.divisors = { 1, 2, 4, 0 },
@@ -75,7 +72,7 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	struct pmc_data *at91sam9rl_pmc;
 	const char *parent_names[6];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 
 	i = of_property_match_string(np, "clock-names", "slow_clk");
@@ -123,9 +120,19 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "pllack";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91rm9200_master_layout,
-				      &sam9rl_mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91rm9200_master_layout,
+					   &sam9rl_mck_characteristics,
+					   &sam9rl_mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91rm9200_master_layout,
+					  &sam9rl_mck_characteristics,
+					  &sam9rl_mck_lock, CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -135,15 +142,16 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "pllack";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 2; i++) {
-		char *name;
+		char name[6];
 
-		name = xasprintf("prog%d", i);
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91rm9200_programmable_layout);
+						    &at91rm9200_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -153,7 +161,7 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91sam9rl_systemck); i++) {
 		hw = at91_clk_register_system(regmap, at91sam9rl_systemck[i].n,
 					      at91sam9rl_systemck[i].p,
-					      at91sam9rl_systemck[i].id);
+					      at91sam9rl_systemck[i].id, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -163,7 +171,7 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(at91sam9rl_periphck); i++) {
 		hw = at91_clk_register_peripheral(regmap,
 						  at91sam9rl_periphck[i].n,
-						  "masterck",
+						  "masterck_div",
 						  at91sam9rl_periphck[i].id);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -171,11 +179,12 @@ static void __init at91sam9rl_pmc_setup(struct device_node *np)
 		at91sam9rl_pmc->phws[at91sam9rl_periphck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9rl_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9rl_pmc);
 
 	return;
 
 err_free:
 	kfree(at91sam9rl_pmc);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9rl_pmc, "atmel,at91sam9rl-pmc", at91sam9rl_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9rl_pmc, "atmel,at91sam9rl-pmc", at91sam9rl_pmc_setup);
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index d052d67ffe93..f4dc7ceeea9f 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 0, .max = 133333333 },
 	.divisors = { 1, 2, 4, 3 },
@@ -45,9 +42,14 @@ static const struct clk_pll_characteristics plla_characteristics = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } at91sam9x5_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
 	{ .n = "smdck", .p = "smdclk",   .id = 4 },
 	{ .n = "uhpck", .p = "usbck",    .id = 6 },
 	{ .n = "udpck", .p = "usbck",    .id = 7 },
@@ -137,7 +139,7 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	struct pmc_data *at91sam9x5_pmc;
 	const char *parent_names[6];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -202,9 +204,18 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91sam9x5_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91sam9x5_master_layout,
+					   &mck_characteristics, &mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91sam9x5_master_layout,
+					  &mck_characteristics, &mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -224,15 +235,16 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 2; i++) {
-		char *name;
+		char name[6];
 
-		name = xasprintf("prog%d", i);
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91sam9x5_programmable_layout);
+						    &at91sam9x5_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -242,7 +254,8 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	for (i = 0; i < ARRAY_SIZE(at91sam9x5_systemck); i++) {
 		hw = at91_clk_register_system(regmap, at91sam9x5_systemck[i].n,
 					      at91sam9x5_systemck[i].p,
-					      at91sam9x5_systemck[i].id);
+					      at91sam9x5_systemck[i].id,
+					      at91sam9x5_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -250,7 +263,8 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	}
 
 	if (has_lcdck) {
-		hw = at91_clk_register_system(regmap, "lcdck", "masterck", 3);
+		hw = at91_clk_register_system(regmap, "lcdck", "masterck_div",
+					      3, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -258,12 +272,12 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	}
 
 	for (i = 0; i < ARRAY_SIZE(at91sam9x5_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &at91sam9x5_pcr_layout,
 							 at91sam9x5_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 at91sam9x5_periphck[i].id,
-							 &range);
+							 &range, INT_MIN, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -271,19 +285,19 @@ static void __init at91sam9x5_pmc_setup(struct device_node *np,
 	}
 
 	for (i = 0; extra_pcks[i].id; i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &at91sam9x5_pcr_layout,
 							 extra_pcks[i].n,
-							 "masterck",
+							 "masterck_div",
 							 extra_pcks[i].id,
-							 &range);
+							 &range, INT_MIN, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
 		at91sam9x5_pmc->phws[extra_pcks[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, at91sam9x5_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9x5_pmc);
 
 	return;
 
@@ -295,33 +309,33 @@ static void __init at91sam9g15_pmc_setup(struct device_node *np)
 {
 	at91sam9x5_pmc_setup(np, at91sam9g15_periphck, true);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9g15_pmc, "atmel,at91sam9g15-pmc",
-		      at91sam9g15_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9g15_pmc, "atmel,at91sam9g15-pmc", at91sam9g15_pmc_setup);
 
 static void __init at91sam9g25_pmc_setup(struct device_node *np)
 {
 	at91sam9x5_pmc_setup(np, at91sam9g25_periphck, false);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9g25_pmc, "atmel,at91sam9g25-pmc",
-		      at91sam9g25_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9g25_pmc, "atmel,at91sam9g25-pmc", at91sam9g25_pmc_setup);
 
 static void __init at91sam9g35_pmc_setup(struct device_node *np)
 {
 	at91sam9x5_pmc_setup(np, at91sam9g35_periphck, true);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9g35_pmc, "atmel,at91sam9g35-pmc",
-		      at91sam9g35_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9g35_pmc, "atmel,at91sam9g35-pmc", at91sam9g35_pmc_setup);
 
 static void __init at91sam9x25_pmc_setup(struct device_node *np)
 {
 	at91sam9x5_pmc_setup(np, at91sam9x25_periphck, false);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9x25_pmc, "atmel,at91sam9x25-pmc",
-		      at91sam9x25_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9x25_pmc, "atmel,at91sam9x25-pmc", at91sam9x25_pmc_setup);
 
 static void __init at91sam9x35_pmc_setup(struct device_node *np)
 {
 	at91sam9x5_pmc_setup(np, at91sam9x35_periphck, true);
 }
-CLK_OF_DECLARE_DRIVER(at91sam9x35_pmc, "atmel,at91sam9x35-pmc",
-		      at91sam9x35_pmc_setup);
+
+CLK_OF_DECLARE(at91sam9x35_pmc, "atmel,at91sam9x35-pmc", at91sam9x35_pmc_setup);
diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
index 780353ead1b4..71976567ea7f 100644
--- a/drivers/clk/at91/clk-audio-pll.c
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -30,14 +30,14 @@
  * parent - fixed parent.  No clk_set_parent support
  */
 
-#include <common.h>
-#include <clock.h>
-#include <of.h>
-#include <linux/list.h>
 #include <linux/clk.h>
+#include <linux/printk.h>
+#include <linux/clk-provider.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 
 #include "pmc.h"
 
@@ -61,7 +61,6 @@ struct clk_audio_frac {
 	struct regmap *regmap;
 	u32 fracr;
 	u8 nd;
-	const char *parent_name;
 };
 
 struct clk_audio_pad {
@@ -69,19 +68,17 @@ struct clk_audio_pad {
 	struct regmap *regmap;
 	u8 qdaudio;
 	u8 div;
-	const char *parent_name;
 };
 
 struct clk_audio_pmc {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 qdpmc;
-	const char *parent_name;
 };
 
-#define to_clk_audio_frac(_hw) container_of(_hw, struct clk_audio_frac, hw)
-#define to_clk_audio_pad(_hw) container_of(_hw, struct clk_audio_pad, hw)
-#define to_clk_audio_pmc(_hw) container_of(_hw, struct clk_audio_pmc, hw)
+#define to_clk_audio_frac(hw) container_of(hw, struct clk_audio_frac, hw)
+#define to_clk_audio_pad(hw) container_of(hw, struct clk_audio_pad, hw)
+#define to_clk_audio_pmc(hw) container_of(hw, struct clk_audio_pmc, hw)
 
 static int clk_audio_pll_frac_enable(struct clk_hw *hw)
 {
@@ -248,7 +245,7 @@ static int clk_audio_pll_frac_compute_frac(unsigned long rate,
 static long clk_audio_pll_pad_round_rate(struct clk_hw *hw, unsigned long rate,
 					 unsigned long *parent_rate)
 {
-	struct clk *pclk = clk_get_parent(clk_hw_to_clk(hw));
+	struct clk_hw *pclk = clk_hw_get_parent(hw);
 	long best_rate = -EINVAL;
 	unsigned long best_parent_rate;
 	unsigned long tmp_qd;
@@ -278,7 +275,7 @@ static long clk_audio_pll_pad_round_rate(struct clk_hw *hw, unsigned long rate,
 			if (div == 2 && tmp_qd % 3 == 0)
 				continue;
 
-			best_parent_rate = clk_round_rate(pclk,
+			best_parent_rate = clk_hw_round_rate(pclk,
 							rate * tmp_qd * div);
 			tmp_rate = best_parent_rate / (div * tmp_qd);
 			tmp_diff = abs(rate - tmp_rate);
@@ -299,8 +296,7 @@ static long clk_audio_pll_pad_round_rate(struct clk_hw *hw, unsigned long rate,
 static long clk_audio_pll_pmc_round_rate(struct clk_hw *hw, unsigned long rate,
 					 unsigned long *parent_rate)
 {
-	struct clk *clk = clk_hw_to_clk(hw);
-	struct clk *pclk = clk_get_parent(clk);
+	struct clk_hw *pclk = clk_hw_get_parent(hw);
 	long best_rate = -EINVAL;
 	unsigned long best_parent_rate = 0;
 	u32 tmp_qd = 0, div;
@@ -314,10 +310,10 @@ static long clk_audio_pll_pmc_round_rate(struct clk_hw *hw, unsigned long rate,
 	if (!rate)
 		return 0;
 
-	best_parent_rate = clk_round_rate(pclk, 1);
+	best_parent_rate = clk_round_rate(&pclk->clk, 1);
 	div = max(best_parent_rate / rate, 1UL);
 	for (; div <= AUDIO_PLL_QDPMC_MAX; div++) {
-		best_parent_rate = clk_round_rate(pclk, rate * div);
+		best_parent_rate = clk_round_rate(&pclk->clk, rate * div);
 		tmp_rate = best_parent_rate / div;
 		tmp_diff = abs(rate - tmp_rate);
 
@@ -423,91 +419,94 @@ static const struct clk_ops audio_pll_pmc_ops = {
 	.set_rate = clk_audio_pll_pmc_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
 				 const char *parent_name)
 {
 	struct clk_audio_frac *frac_ck;
+	struct clk_init_data init = {};
 	int ret;
 
 	frac_ck = kzalloc(sizeof(*frac_ck), GFP_KERNEL);
 	if (!frac_ck)
 		return ERR_PTR(-ENOMEM);
 
-	frac_ck->hw.clk.name = name;
-	frac_ck->hw.clk.ops = &audio_pll_frac_ops;
-	frac_ck->parent_name = parent_name;
-	frac_ck->hw.clk.parent_names = &frac_ck->parent_name;
-	frac_ck->hw.clk.num_parents = 1;
-	/* frac_ck->clk.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.ops = &audio_pll_frac_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_GATE;
 
+	frac_ck->hw.init = &init;
 	frac_ck->regmap = regmap;
 
-	ret = bclk_register(&frac_ck->hw.clk);
+	ret = clk_hw_register(NULL, &frac_ck->hw);
 	if (ret) {
 		kfree(frac_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &frac_ck->hw.clk;
+	return &frac_ck->hw;
 }
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
 				const char *parent_name)
 {
 	struct clk_audio_pad *apad_ck;
+	struct clk_init_data init;
 	int ret;
 
 	apad_ck = kzalloc(sizeof(*apad_ck), GFP_KERNEL);
 	if (!apad_ck)
 		return ERR_PTR(-ENOMEM);
 
-	apad_ck->hw.clk.name = name;
-	apad_ck->hw.clk.ops = &audio_pll_pad_ops;
-	apad_ck->parent_name = parent_name;
-	apad_ck->hw.clk.parent_names = &apad_ck->parent_name;
-	apad_ck->hw.clk.num_parents = 1;
-	/* apad_ck->clk.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
-		CLK_SET_RATE_PARENT; */
+	init.name = name;
+	init.ops = &audio_pll_pad_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		CLK_SET_RATE_PARENT;
 
+	apad_ck->hw.init = &init;
 	apad_ck->regmap = regmap;
 
-	ret = bclk_register(&apad_ck->hw.clk);
+	ret = clk_hw_register(NULL, &apad_ck->hw);
 	if (ret) {
 		kfree(apad_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &apad_ck->hw.clk;
+	return &apad_ck->hw;
 }
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
 				const char *parent_name)
 {
 	struct clk_audio_pmc *apmc_ck;
+	struct clk_init_data init;
 	int ret;
 
 	apmc_ck = kzalloc(sizeof(*apmc_ck), GFP_KERNEL);
 	if (!apmc_ck)
 		return ERR_PTR(-ENOMEM);
 
-	apmc_ck->hw.clk.name = name;
-	apmc_ck->hw.clk.ops = &audio_pll_pmc_ops;
-	apmc_ck->parent_name = parent_name;
-	apmc_ck->hw.clk.parent_names = &apmc_ck->parent_name;
-	apmc_ck->hw.clk.num_parents = 1;
-	/* apmc_ck.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
-		CLK_SET_RATE_PARENT; */
+	init.name = name;
+	init.ops = &audio_pll_pmc_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		CLK_SET_RATE_PARENT;
 
+	apmc_ck->hw.init = &init;
 	apmc_ck->regmap = regmap;
 
-	ret = bclk_register(&apmc_ck->hw.clk);
+	ret = clk_hw_register(NULL, &apmc_ck->hw);
 	if (ret) {
 		kfree(apmc_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &apmc_ck->hw.clk;
+	return &apmc_ck->hw;
 }
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 190fc7d7e921..e59cff2bdf9f 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -6,35 +6,55 @@
  * Based on clk-programmable & clk-peripheral drivers by Boris BREZILLON.
  */
 
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/bitfield.h>
+#include <linux/printk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
-#include <linux/bitfield.h>
 
 #include "pmc.h"
 
 #define GENERATED_MAX_DIV	255
 
-#define GCK_INDEX_DT_AUDIO_PLL	5
-
 struct clk_generated {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	struct clk_range range;
+	spinlock_t *lock;
+	u32 *mux_table;
 	u32 id;
 	u32 gckdiv;
 	const struct clk_pcr_layout *layout;
+	struct at91_clk_pms pms;
 	u8 parent_id;
-	bool audio_pll_allowed;
+	int chg_pid;
 };
 
-#define to_clk_generated(_hw) \
-	container_of(_hw, struct clk_generated, hw)
+#define to_clk_generated(hw) \
+	container_of(hw, struct clk_generated, hw)
+
+static int clk_generated_set(struct clk_generated *gck, int status)
+{
+	unsigned long flags;
+	unsigned int enable = status ? AT91_PMC_PCR_GCKEN : 0;
+
+	spin_lock_irqsave(gck->lock, flags);
+	regmap_write(gck->regmap, gck->layout->offset,
+		     (gck->id & gck->layout->pid_mask));
+	regmap_update_bits(gck->regmap, gck->layout->offset,
+			   AT91_PMC_PCR_GCKDIV_MASK | gck->layout->gckcss_mask |
+			   gck->layout->cmd | enable,
+			   field_prep(gck->layout->gckcss_mask, gck->parent_id) |
+			   gck->layout->cmd |
+			   FIELD_PREP(AT91_PMC_PCR_GCKDIV_MASK, gck->gckdiv) |
+			   enable);
+	spin_unlock_irqrestore(gck->lock, flags);
+
+	return 0;
+}
 
 static int clk_generated_enable(struct clk_hw *hw)
 {
@@ -43,39 +63,38 @@ static int clk_generated_enable(struct clk_hw *hw)
 	pr_debug("GCLK: %s, gckdiv = %d, parent id = %d\n",
 		 __func__, gck->gckdiv, gck->parent_id);
 
-	regmap_write(gck->regmap, gck->layout->offset,
-		     (gck->id & gck->layout->pid_mask));
-	regmap_update_bits(gck->regmap, gck->layout->offset,
-			   AT91_PMC_PCR_GCKDIV_MASK | gck->layout->gckcss_mask |
-			   gck->layout->cmd | AT91_PMC_PCR_GCKEN,
-			   field_prep(gck->layout->gckcss_mask, gck->parent_id) |
-			   gck->layout->cmd |
-			   FIELD_PREP(AT91_PMC_PCR_GCKDIV_MASK, gck->gckdiv) |
-			   AT91_PMC_PCR_GCKEN);
+	clk_generated_set(gck, 1);
+
 	return 0;
 }
 
 static void clk_generated_disable(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
+	unsigned long flags;
 
+	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, gck->layout->offset,
 		     (gck->id & gck->layout->pid_mask));
 	regmap_update_bits(gck->regmap, gck->layout->offset,
 			   gck->layout->cmd | AT91_PMC_PCR_GCKEN,
 			   gck->layout->cmd);
+	spin_unlock_irqrestore(gck->lock, flags);
 }
 
 static int clk_generated_is_enabled(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
+	unsigned long flags;
 	unsigned int status;
 
+	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, gck->layout->offset,
 		     (gck->id & gck->layout->pid_mask));
 	regmap_read(gck->regmap, gck->layout->offset, &status);
+	spin_unlock_irqrestore(gck->lock, flags);
 
-	return status & AT91_PMC_PCR_GCKEN ? 1 : 0;
+	return !!(status & AT91_PMC_PCR_GCKEN);
 }
 
 static unsigned long
@@ -95,7 +114,11 @@ static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
 	if (index >= clk_hw_get_num_parents(hw))
 		return -EINVAL;
 
-	gck->parent_id = index;
+	if (gck->mux_table)
+		gck->parent_id = clk_mux_index_to_val(gck->mux_table, 0, index);
+	else
+		gck->parent_id = index;
+
 	return 0;
 }
 
@@ -150,54 +173,59 @@ static const struct clk_ops generated_ops = {
 static void clk_generated_startup(struct clk_generated *gck)
 {
 	u32 tmp;
+	unsigned long flags;
 
+	spin_lock_irqsave(gck->lock, flags);
 	regmap_write(gck->regmap, gck->layout->offset,
 		     (gck->id & gck->layout->pid_mask));
 	regmap_read(gck->regmap, gck->layout->offset, &tmp);
+	spin_unlock_irqrestore(gck->lock, flags);
 
 	gck->parent_id = field_get(gck->layout->gckcss_mask, tmp);
 	gck->gckdiv = FIELD_GET(AT91_PMC_PCR_GCKDIV_MASK, tmp);
 }
 
-struct clk * __init
-at91_clk_register_generated(struct regmap *regmap,
+struct clk_hw * __init
+at91_clk_register_generated(struct regmap *regmap, spinlock_t *lock,
 			    const struct clk_pcr_layout *layout,
 			    const char *name, const char **parent_names,
-			    u8 num_parents, u8 id, bool pll_audio,
-			    const struct clk_range *range)
+			    u32 *mux_table, u8 num_parents, u8 id,
+			    const struct clk_range *range,
+			    int chg_pid)
 {
-	size_t parents_array_size;
 	struct clk_generated *gck;
-	struct clk *clk;
+	struct clk_init_data init;
+	struct clk_hw *hw;
 	int ret;
 
 	gck = kzalloc(sizeof(*gck), GFP_KERNEL);
 	if (!gck)
 		return ERR_PTR(-ENOMEM);
 
+	init.name = name;
+	init.ops = &generated_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
+	if (chg_pid >= 0)
+		init.flags |= CLK_SET_RATE_PARENT;
+
 	gck->id = id;
-	gck->hw.clk.name = name;
-	gck->hw.clk.ops = &generated_ops;
-
-	parents_array_size = num_parents * sizeof(gck->hw.clk.parent_names[0]);
-	gck->hw.clk.parent_names = xmemdup(parent_names, parents_array_size);
-	gck->hw.clk.num_parents = num_parents;
-
-	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | CLK_SET_PARENT; */
+	gck->hw.init = &init;
 	gck->regmap = regmap;
+	gck->lock = lock;
 	gck->range = *range;
-	gck->audio_pll_allowed = pll_audio;
+	gck->chg_pid = chg_pid;
 	gck->layout = layout;
+	gck->mux_table = mux_table;
 
 	clk_generated_startup(gck);
-	clk = &gck->hw.clk;
-	ret = bclk_register(&gck->hw.clk);
+	hw = &gck->hw;
+	ret = clk_hw_register(NULL, &gck->hw);
 	if (ret) {
 		kfree(gck);
-		clk = ERR_PTR(ret);
-	} else {
-		pmc_register_id(id);
+		hw = ERR_PTR(ret);
 	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index 7f36fe7abb34..e5b98692a968 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -7,13 +7,13 @@
  * Alexandre Belloni <alexandre.belloni@free-electrons.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <linux/regmap.h>
-
+#include <mfd/syscon.h>
+#include <linux/printk.h>
 
 #include "pmc.h"
 
@@ -22,10 +22,9 @@
 struct clk_sama5d4_h32mx {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent;
 };
 
-#define to_clk_sama5d4_h32mx(_hw) container_of(_hw, struct clk_sama5d4_h32mx, hw)
+#define to_clk_sama5d4_h32mx(hw) container_of(hw, struct clk_sama5d4_h32mx, hw)
 
 static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
@@ -83,31 +82,32 @@ static const struct clk_ops h32mx_ops = {
 	.set_rate = clk_sama5d4_h32mx_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 			const char *parent_name)
 {
 	struct clk_sama5d4_h32mx *h32mxclk;
+	struct clk_init_data init;
 	int ret;
 
 	h32mxclk = kzalloc(sizeof(*h32mxclk), GFP_KERNEL);
 	if (!h32mxclk)
 		return ERR_PTR(-ENOMEM);
 
-	h32mxclk->parent = parent_name;
-	h32mxclk->hw.clk.name = name;
-	h32mxclk->hw.clk.ops = &h32mx_ops;
-	h32mxclk->hw.clk.parent_names = &h32mxclk->parent;
-	h32mxclk->hw.clk.num_parents = 1;
-	/* h32mxclk.hw.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.ops = &h32mx_ops;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = parent_name ? 1 : 0;
+	init.flags = CLK_SET_RATE_GATE;
 
+	h32mxclk->hw.init = &init;
 	h32mxclk->regmap = regmap;
 
-	ret = bclk_register(&h32mxclk->hw.clk);
+	ret = clk_hw_register(NULL, &h32mxclk->hw);
 	if (ret) {
 		kfree(h32mxclk);
 		return ERR_PTR(ret);
 	}
 
-	return &h32mxclk->hw.clk;
+	return &h32mxclk->hw;
 }
diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
index 97eb75a7fa1e..71ef2e6386b9 100644
--- a/drivers/clk/at91/clk-i2s-mux.c
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -6,15 +6,11 @@
  *
  */
 
-#include <common.h>
-#include <clock.h>
+#include <linux/clk-provider.h>
 #include <of.h>
-#include <linux/list.h>
-#include <linux/clk.h>
-#include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/slab.h>
 
 #include <soc/at91/atmel-sfr.h>
 
@@ -24,10 +20,9 @@ struct clk_i2s_mux {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 bus_id;
-	const char *parent_names[];
 };
 
-#define to_clk_i2s_mux(_hw) container_of(_hw, struct clk_i2s_mux, hw)
+#define to_clk_i2s_mux(hw) container_of(hw, struct clk_i2s_mux, hw)
 
 static int clk_i2s_mux_get_parent(struct clk_hw *hw)
 {
@@ -48,39 +43,37 @@ static int clk_i2s_mux_set_parent(struct clk_hw *hw, u8 index)
 }
 
 static const struct clk_ops clk_i2s_mux_ops = {
-	.set_rate = clk_parent_set_rate,
-	.round_rate = clk_parent_round_rate,
 	.get_parent = clk_i2s_mux_get_parent,
 	.set_parent = clk_i2s_mux_set_parent,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
 			  const char * const *parent_names,
 			  unsigned int num_parents, u8 bus_id)
 {
+	struct clk_init_data init = {};
 	struct clk_i2s_mux *i2s_ck;
 	int ret;
 
-	i2s_ck = kzalloc(struct_size(i2s_ck, parent_names, num_parents), GFP_KERNEL);
+	i2s_ck = kzalloc(sizeof(*i2s_ck), GFP_KERNEL);
 	if (!i2s_ck)
 		return ERR_PTR(-ENOMEM);
 
-	i2s_ck->hw.clk.name = name;
-	i2s_ck->hw.clk.ops = &clk_i2s_mux_ops;
-	memcpy(i2s_ck->parent_names, parent_names,
-	       num_parents * sizeof(i2s_ck->parent_names[0]));
-	i2s_ck->hw.clk.parent_names = &i2s_ck->parent_names[0];
-	i2s_ck->hw.clk.num_parents = num_parents;
+	init.name = name;
+	init.ops = &clk_i2s_mux_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
 
+	i2s_ck->hw.init = &init;
 	i2s_ck->bus_id = bus_id;
 	i2s_ck->regmap = regmap;
 
-	ret = bclk_register(&i2s_ck->hw.clk);
+	ret = clk_hw_register(NULL, &i2s_ck->hw);
 	if (ret) {
 		kfree(i2s_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &i2s_ck->hw.clk;
+	return &i2s_ck->hw;
 }
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index e0c8cf108ada..a1dd327b5619 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -2,21 +2,22 @@
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <clock.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/printk.h>
 
 #include "pmc.h"
 
 #define SLOW_CLOCK_FREQ		32768
 #define MAINF_DIV		16
-#define MAINFRDY_TIMEOUT	(((MAINF_DIV + 1) * SECOND) / \
+#define MAINFRDY_TIMEOUT	(((MAINF_DIV + 1) * USEC_PER_SEC) / \
 				 SLOW_CLOCK_FREQ)
-#define MAINF_LOOP_MIN_WAIT	(SECOND / SLOW_CLOCK_FREQ)
+#define MAINF_LOOP_MIN_WAIT	(USEC_PER_SEC / SLOW_CLOCK_FREQ)
 #define MAINF_LOOP_MAX_WAIT	MAINFRDY_TIMEOUT
 
 #define MOR_KEY_MASK		(0xff << 16)
@@ -28,34 +29,36 @@
 struct clk_main_osc {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent;
+	struct at91_clk_pms pms;
 };
 
-#define to_clk_main_osc(_hw) container_of(_hw, struct clk_main_osc, hw)
+#define to_clk_main_osc(hw) container_of(hw, struct clk_main_osc, hw)
 
 struct clk_main_rc_osc {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	unsigned long frequency;
+	unsigned long accuracy;
+	struct at91_clk_pms pms;
 };
 
-#define to_clk_main_rc_osc(_hw) container_of(_hw, struct clk_main_rc_osc, hw)
+#define to_clk_main_rc_osc(hw) container_of(hw, struct clk_main_rc_osc, hw)
 
 struct clk_rm9200_main {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent;
 };
 
-#define to_clk_rm9200_main(_hw) container_of(_hw, struct clk_rm9200_main, hw)
+#define to_clk_rm9200_main(hw) container_of(hw, struct clk_rm9200_main, hw)
 
 struct clk_sam9x5_main {
 	struct clk_hw hw;
 	struct regmap *regmap;
+	struct at91_clk_pms pms;
 	u8 parent;
 };
 
-#define to_clk_sam9x5_main(_hw) container_of(_hw, struct clk_sam9x5_main, hw)
+#define to_clk_sam9x5_main(hw) container_of(hw, struct clk_sam9x5_main, hw)
 
 static inline bool clk_main_osc_ready(struct regmap *regmap)
 {
@@ -66,7 +69,7 @@ static inline bool clk_main_osc_ready(struct regmap *regmap)
 	return status & AT91_PMC_MOSCS;
 }
 
-static int clk_main_osc_enable(struct clk_hw *hw)
+static int clk_main_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -84,12 +87,12 @@ static int clk_main_osc_enable(struct clk_hw *hw)
 	}
 
 	while (!clk_main_osc_ready(regmap))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
 
-static void clk_main_osc_disable(struct clk_hw *hw)
+static void clk_main_osc_unprepare(struct clk_hw *hw)
 {
 	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -106,7 +109,7 @@ static void clk_main_osc_disable(struct clk_hw *hw)
 	regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_KEY);
 }
 
-static int clk_main_osc_is_enabled(struct clk_hw *hw)
+static int clk_main_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -122,45 +125,52 @@ static int clk_main_osc_is_enabled(struct clk_hw *hw)
 }
 
 static const struct clk_ops main_osc_ops = {
-	.enable = clk_main_osc_enable,
-	.disable = clk_main_osc_disable,
-	.is_enabled = clk_main_osc_is_enabled,
+	.enable = clk_main_osc_prepare,
+	.disable = clk_main_osc_unprepare,
+	.is_enabled = clk_main_osc_is_prepared,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_main_osc(struct regmap *regmap,
 			   const char *name,
 			   const char *parent_name,
 			   bool bypass)
 {
 	struct clk_main_osc *osc;
+	struct clk_init_data init;
+	struct clk_hw *hw;
 	int ret;
 
 	if (!name || !parent_name)
 		return ERR_PTR(-EINVAL);
 
-	osc = xzalloc(sizeof(*osc));
+	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
+	if (!osc)
+		return ERR_PTR(-ENOMEM);
 
-	osc->parent = parent_name;
-	osc->hw.clk.name = name;
-	osc->hw.clk.ops = &main_osc_ops;
-	osc->hw.clk.parent_names = &osc->parent;
-	osc->hw.clk.num_parents = 1;
+	init.name = name;
+	init.ops = &main_osc_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_IGNORE_UNUSED;
+
+	osc->hw.init = &init;
 	osc->regmap = regmap;
 
 	if (bypass)
-		regmap_write_bits(regmap,
-				  AT91_CKGR_MOR, MOR_KEY_MASK |
-				  AT91_PMC_MOSCEN,
-				  AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
+		regmap_update_bits(regmap,
+				   AT91_CKGR_MOR, MOR_KEY_MASK |
+				   AT91_PMC_OSCBYPASS,
+				   AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
 
-	ret = bclk_register(&osc->hw.clk);
+	hw = &osc->hw;
+	ret = clk_hw_register(NULL, &osc->hw);
 	if (ret) {
-		free(osc);
-		return ERR_PTR(ret);
+		kfree(osc);
+		hw = ERR_PTR(ret);
 	}
 
-	return &osc->hw.clk;
+	return hw;
 }
 
 static bool clk_main_rc_osc_ready(struct regmap *regmap)
@@ -169,10 +179,10 @@ static bool clk_main_rc_osc_ready(struct regmap *regmap)
 
 	regmap_read(regmap, AT91_PMC_SR, &status);
 
-	return status & AT91_PMC_MOSCRCS;
+	return !!(status & AT91_PMC_MOSCRCS);
 }
 
-static int clk_main_rc_osc_enable(struct clk_hw *hw)
+static int clk_main_rc_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -181,17 +191,17 @@ static int clk_main_rc_osc_enable(struct clk_hw *hw)
 	regmap_read(regmap, AT91_CKGR_MOR, &mor);
 
 	if (!(mor & AT91_PMC_MOSCRCEN))
-		regmap_write_bits(regmap, AT91_CKGR_MOR,
-				  MOR_KEY_MASK | AT91_PMC_MOSCRCEN,
-				  AT91_PMC_MOSCRCEN | AT91_PMC_KEY);
+		regmap_update_bits(regmap, AT91_CKGR_MOR,
+				   MOR_KEY_MASK | AT91_PMC_MOSCRCEN,
+				   AT91_PMC_MOSCRCEN | AT91_PMC_KEY);
 
 	while (!clk_main_rc_osc_ready(regmap))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
 
-static void clk_main_rc_osc_disable(struct clk_hw *hw)
+static void clk_main_rc_osc_unprepare(struct clk_hw *hw)
 {
 	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -202,11 +212,11 @@ static void clk_main_rc_osc_disable(struct clk_hw *hw)
 	if (!(mor & AT91_PMC_MOSCRCEN))
 		return;
 
-	regmap_write_bits(regmap, AT91_CKGR_MOR,
-			  MOR_KEY_MASK | AT91_PMC_MOSCRCEN, AT91_PMC_KEY);
+	regmap_update_bits(regmap, AT91_CKGR_MOR,
+			   MOR_KEY_MASK | AT91_PMC_MOSCRCEN, AT91_PMC_KEY);
 }
 
-static int clk_main_rc_osc_is_enabled(struct clk_hw *hw)
+static int clk_main_rc_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
@@ -227,52 +237,62 @@ static unsigned long clk_main_rc_osc_recalc_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops main_rc_osc_ops = {
-	.enable = clk_main_rc_osc_enable,
-	.disable = clk_main_rc_osc_disable,
-	.is_enabled = clk_main_rc_osc_is_enabled,
+	.enable = clk_main_rc_osc_prepare,
+	.disable = clk_main_rc_osc_unprepare,
+	.is_enabled = clk_main_rc_osc_is_prepared,
 	.recalc_rate = clk_main_rc_osc_recalc_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_main_rc_osc(struct regmap *regmap,
 			      const char *name,
 			      u32 frequency, u32 accuracy)
 {
-	int ret;
 	struct clk_main_rc_osc *osc;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
 
 	if (!name || !frequency)
 		return ERR_PTR(-EINVAL);
 
-	osc = xzalloc(sizeof(*osc));
+	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
+	if (!osc)
+		return ERR_PTR(-ENOMEM);
 
-	osc->hw.clk.name = name;
-	osc->hw.clk.ops = &main_rc_osc_ops;
-	osc->hw.clk.parent_names = NULL;
-	osc->hw.clk.num_parents = 0;
+	init.name = name;
+	init.ops = &main_rc_osc_ops;
+	init.parent_names = NULL;
+	init.num_parents = 0;
+	init.flags = CLK_IGNORE_UNUSED;
 
+	osc->hw.init = &init;
 	osc->regmap = regmap;
 	osc->frequency = frequency;
+	osc->accuracy = accuracy;
 
-	ret = bclk_register(&osc->hw.clk);
+	hw = &osc->hw;
+	ret = clk_hw_register(NULL, hw);
 	if (ret) {
 		kfree(osc);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &osc->hw.clk;
+	return hw;
 }
 
 static int clk_main_probe_frequency(struct regmap *regmap)
 {
+	u64 start_time;
 	unsigned int mcfr;
-	uint64_t start = get_time_ns();
 
+	start_time = get_time_ns();
 	do {
 		regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
 		if (mcfr & AT91_PMC_MAINRDY)
 			return 0;
-	} while (!is_timeout(start, MAINFRDY_TIMEOUT *  USECOND));
+		udelay(MAINF_LOOP_MIN_WAIT);
+	} while (!is_timeout(start_time, MAINFRDY_TIMEOUT * NSEC_PER_USEC));
 
 	return -ETIMEDOUT;
 }
@@ -293,21 +313,21 @@ static unsigned long clk_main_recalc_rate(struct regmap *regmap,
 	return ((mcfr & AT91_PMC_MAINF) * SLOW_CLOCK_FREQ) / MAINF_DIV;
 }
 
-static int clk_rm9200_main_enable(struct clk_hw *hw)
+static int clk_rm9200_main_prepare(struct clk_hw *hw)
 {
 	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(hw);
 
 	return clk_main_probe_frequency(clkmain->regmap);
 }
 
-static int clk_rm9200_main_is_enabled(struct clk_hw *hw)
+static int clk_rm9200_main_is_prepared(struct clk_hw *hw)
 {
 	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(hw);
 	unsigned int status;
 
 	regmap_read(clkmain->regmap, AT91_CKGR_MCFR, &status);
 
-	return status & AT91_PMC_MAINRDY ? 1 : 0;
+	return !!(status & AT91_PMC_MAINRDY);
 }
 
 static unsigned long clk_rm9200_main_recalc_rate(struct clk_hw *hw,
@@ -319,18 +339,20 @@ static unsigned long clk_rm9200_main_recalc_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops rm9200_main_ops = {
-	.enable = clk_rm9200_main_enable,
-	.is_enabled = clk_rm9200_main_is_enabled,
+	.enable = clk_rm9200_main_prepare,
+	.is_enabled = clk_rm9200_main_is_prepared,
 	.recalc_rate = clk_rm9200_main_recalc_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_rm9200_main(struct regmap *regmap,
 			      const char *name,
 			      const char *parent_name)
 {
-	int ret;
 	struct clk_rm9200_main *clkmain;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
 
 	if (!name)
 		return ERR_PTR(-EINVAL);
@@ -338,22 +360,27 @@ at91_clk_register_rm9200_main(struct regmap *regmap,
 	if (!parent_name)
 		return ERR_PTR(-EINVAL);
 
-	clkmain = xzalloc(sizeof(*clkmain));
+	clkmain = kzalloc(sizeof(*clkmain), GFP_KERNEL);
+	if (!clkmain)
+		return ERR_PTR(-ENOMEM);
 
-	clkmain->parent = parent_name;
-	clkmain->hw.clk.name = name;
-	clkmain->hw.clk.ops = &rm9200_main_ops;
-	clkmain->hw.clk.parent_names = &clkmain->parent;
-	clkmain->hw.clk.num_parents = 1;
+	init.name = name;
+	init.ops = &rm9200_main_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = 0;
+
+	clkmain->hw.init = &init;
 	clkmain->regmap = regmap;
 
-	ret = bclk_register(&clkmain->hw.clk);
+	hw = &clkmain->hw;
+	ret = clk_hw_register(NULL, &clkmain->hw);
 	if (ret) {
 		kfree(clkmain);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &clkmain->hw.clk;
+	return hw;
 }
 
 static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
@@ -362,21 +389,21 @@ static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
 
 	regmap_read(regmap, AT91_PMC_SR, &status);
 
-	return status & AT91_PMC_MOSCSELS ? 1 : 0;
+	return !!(status & AT91_PMC_MOSCSELS);
 }
 
-static int clk_sam9x5_main_enable(struct clk_hw *hw)
+static int clk_sam9x5_main_prepare(struct clk_hw *hw)
 {
 	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 	struct regmap *regmap = clkmain->regmap;
 
 	while (!clk_sam9x5_main_ready(regmap))
-		barrier();
+		cpu_relax();
 
 	return clk_main_probe_frequency(regmap);
 }
 
-static int clk_sam9x5_main_is_enabled(struct clk_hw *hw)
+static int clk_sam9x5_main_is_prepared(struct clk_hw *hw)
 {
 	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 
@@ -401,15 +428,20 @@ static int clk_sam9x5_main_set_parent(struct clk_hw *hw, u8 index)
 		return -EINVAL;
 
 	regmap_read(regmap, AT91_CKGR_MOR, &tmp);
-	tmp &= ~MOR_KEY_MASK;
 
 	if (index && !(tmp & AT91_PMC_MOSCSEL))
-		regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_MOSCSEL);
+		tmp = AT91_PMC_MOSCSEL;
 	else if (!index && (tmp & AT91_PMC_MOSCSEL))
-		regmap_write(regmap, AT91_CKGR_MOR, tmp & ~AT91_PMC_MOSCSEL);
+		tmp = 0;
+	else
+		return 0;
+
+	regmap_update_bits(regmap, AT91_CKGR_MOR,
+			   AT91_PMC_MOSCSEL | MOR_KEY_MASK,
+			   tmp | AT91_PMC_KEY);
 
 	while (!clk_sam9x5_main_ready(regmap))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
@@ -425,23 +457,24 @@ static int clk_sam9x5_main_get_parent(struct clk_hw *hw)
 }
 
 static const struct clk_ops sam9x5_main_ops = {
-	.enable = clk_sam9x5_main_enable,
-	.is_enabled = clk_sam9x5_main_is_enabled,
+	.enable = clk_sam9x5_main_prepare,
+	.is_enabled = clk_sam9x5_main_is_prepared,
 	.recalc_rate = clk_sam9x5_main_recalc_rate,
 	.set_parent = clk_sam9x5_main_set_parent,
 	.get_parent = clk_sam9x5_main_get_parent,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_sam9x5_main(struct regmap *regmap,
 			      const char *name,
 			      const char **parent_names,
 			      int num_parents)
 {
-	int ret;
-	unsigned int status;
-	size_t parents_array_size;
 	struct clk_sam9x5_main *clkmain;
+	struct clk_init_data init;
+	unsigned int status;
+	struct clk_hw *hw;
+	int ret;
 
 	if (!name)
 		return ERR_PTR(-EINVAL);
@@ -449,25 +482,27 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 	if (!parent_names || !num_parents)
 		return ERR_PTR(-EINVAL);
 
-	clkmain = xzalloc(sizeof(*clkmain));
+	clkmain = kzalloc(sizeof(*clkmain), GFP_KERNEL);
+	if (!clkmain)
+		return ERR_PTR(-ENOMEM);
 
-	clkmain->hw.clk.name = name;
-	clkmain->hw.clk.ops = &sam9x5_main_ops;
-	parents_array_size = num_parents * sizeof (clkmain->hw.clk.parent_names[0]);
-	clkmain->hw.clk.parent_names = xmemdup(parent_names, parents_array_size);
-	clkmain->hw.clk.num_parents = num_parents;
-
-	/* init.flags = CLK_SET_PARENT_GATE; */
+	init.name = name;
+	init.ops = &sam9x5_main_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_PARENT_GATE;
 
+	clkmain->hw.init = &init;
 	clkmain->regmap = regmap;
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
 	clkmain->parent = clk_main_parent_select(status);
 
-	ret = bclk_register(&clkmain->hw.clk);
+	hw = &clkmain->hw;
+	ret = clk_hw_register(NULL, &clkmain->hw);
 	if (ret) {
 		kfree(clkmain);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &clkmain->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index d20cea2b3481..db5e235b6b8f 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -2,144 +2,462 @@
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
+
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/printk.h>
 
 #include "pmc.h"
 
 #define MASTER_PRES_MASK	0x7
 #define MASTER_PRES_MAX		MASTER_PRES_MASK
 #define MASTER_DIV_SHIFT	8
-#define MASTER_DIV_MASK		0x3
+#define MASTER_DIV_MASK		0x7
 
-#define to_clk_master(_hw) container_of(_hw, struct clk_master, hw)
+#define PMC_MCR_CSS_SHIFT	(16)
+
+#define MASTER_MAX_ID		4
+
+#define to_clk_master(hw) container_of(hw, struct clk_master, hw)
 
 struct clk_master {
 	struct clk_hw hw;
 	struct regmap *regmap;
+	spinlock_t *lock;
 	const struct clk_master_layout *layout;
 	const struct clk_master_characteristics *characteristics;
+	struct at91_clk_pms pms;
+	u32 *mux_table;
 	u32 mckr;
-	const char *parents[];
+	int chg_pid;
+	u8 id;
+	u8 parent;
+	u8 div;
 };
 
-static inline bool clk_master_ready(struct regmap *regmap)
+static inline bool clk_master_ready(struct clk_master *master)
 {
+	unsigned int bit = master->id ? AT91_PMC_MCKXRDY : AT91_PMC_MCKRDY;
 	unsigned int status;
 
-	regmap_read(regmap, AT91_PMC_SR, &status);
+	regmap_read(master->regmap, AT91_PMC_SR, &status);
 
-	return status & AT91_PMC_MCKRDY ? 1 : 0;
+	return !!(status & bit);
 }
 
-static int clk_master_enable(struct clk_hw *hw)
+static int clk_master_prepare(struct clk_hw *hw)
 {
 	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
 
-	while (!clk_master_ready(master->regmap))
-		barrier();
+	spin_lock_irqsave(master->lock, flags);
+
+	while (!clk_master_ready(master))
+		cpu_relax();
+
+	spin_unlock_irqrestore(master->lock, flags);
 
 	return 0;
 }
 
-static int clk_master_is_enabled(struct clk_hw *hw)
+static int clk_master_is_prepared(struct clk_hw *hw)
 {
 	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
+	bool status;
 
-	return clk_master_ready(master->regmap);
+	spin_lock_irqsave(master->lock, flags);
+	status = clk_master_ready(master);
+	spin_unlock_irqrestore(master->lock, flags);
+
+	return status;
 }
 
-static unsigned long clk_master_recalc_rate(struct clk_hw *hw,
-					    unsigned long parent_rate)
+static unsigned long clk_master_div_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
 {
-	u8 pres;
 	u8 div;
-	unsigned long rate = parent_rate;
+	unsigned long flags, rate = parent_rate;
 	struct clk_master *master = to_clk_master(hw);
 	const struct clk_master_layout *layout = master->layout;
 	const struct clk_master_characteristics *characteristics =
 						master->characteristics;
 	unsigned int mckr;
 
+	spin_lock_irqsave(master->lock, flags);
 	regmap_read(master->regmap, master->layout->offset, &mckr);
+	spin_unlock_irqrestore(master->lock, flags);
+
 	mckr &= layout->mask;
 
-	pres = (mckr >> layout->pres_shift) & MASTER_PRES_MASK;
 	div = (mckr >> MASTER_DIV_SHIFT) & MASTER_DIV_MASK;
 
-	if (characteristics->have_div3_pres && pres == MASTER_PRES_MAX)
-		rate /= 3;
-	else
-		rate >>= pres;
-
 	rate /= characteristics->divisors[div];
 
 	if (rate < characteristics->output.min)
-		pr_warn("master clk is underclocked");
+		pr_warn("master clk div is underclocked");
 	else if (rate > characteristics->output.max)
-		pr_warn("master clk is overclocked");
+		pr_warn("master clk div is overclocked");
 
 	return rate;
 }
 
-static int clk_master_get_parent(struct clk_hw *hw)
+static const struct clk_ops master_div_ops = {
+	.enable = clk_master_prepare,
+	.is_enabled = clk_master_is_prepared,
+	.recalc_rate = clk_master_div_recalc_rate,
+};
+
+static unsigned long clk_master_div_recalc_rate_chg(struct clk_hw *hw,
+						    unsigned long parent_rate)
 {
 	struct clk_master *master = to_clk_master(hw);
+
+	return DIV_ROUND_CLOSEST_ULL(parent_rate, master->div);
+}
+
+static const struct clk_ops master_div_ops_chg = {
+	.enable = clk_master_prepare,
+	.is_enabled = clk_master_is_prepared,
+	.recalc_rate = clk_master_div_recalc_rate_chg,
+};
+
+static unsigned long clk_master_pres_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	struct clk_master *master = to_clk_master(hw);
+	const struct clk_master_characteristics *characteristics =
+						master->characteristics;
+	unsigned long flags;
+	unsigned int val, pres;
+
+	spin_lock_irqsave(master->lock, flags);
+	regmap_read(master->regmap, master->layout->offset, &val);
+	spin_unlock_irqrestore(master->lock, flags);
+
+	val &= master->layout->mask;
+	pres = (val >> master->layout->pres_shift) & MASTER_PRES_MASK;
+	if (pres == MASTER_PRES_MAX && characteristics->have_div3_pres)
+		pres = 3;
+	else
+		pres = (1 << pres);
+
+	return DIV_ROUND_CLOSEST_ULL(parent_rate, pres);
+}
+
+static int clk_master_pres_get_parent(struct clk_hw *hw)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
 	unsigned int mckr;
 
+	spin_lock_irqsave(master->lock, flags);
 	regmap_read(master->regmap, master->layout->offset, &mckr);
+	spin_unlock_irqrestore(master->lock, flags);
+
+	mckr &= master->layout->mask;
 
 	return mckr & AT91_PMC_CSS;
 }
 
-static const struct clk_ops master_ops = {
-	.enable = clk_master_enable,
-	.is_enabled = clk_master_is_enabled,
-	.recalc_rate = clk_master_recalc_rate,
-	.get_parent = clk_master_get_parent,
+static const struct clk_ops master_pres_ops = {
+	.enable = clk_master_prepare,
+	.is_enabled = clk_master_is_prepared,
+	.recalc_rate = clk_master_pres_recalc_rate,
+	.get_parent = clk_master_pres_get_parent,
 };
 
-struct clk * __init
-at91_clk_register_master(struct regmap *regmap,
-			 const char *name, int num_parents,
-			 const char **parent_names,
-			 const struct clk_master_layout *layout,
-			 const struct clk_master_characteristics *characteristics)
+static struct clk_hw * __init
+at91_clk_register_master_internal(struct regmap *regmap,
+		const char *name, int num_parents,
+		const char **parent_names,
+		const struct clk_master_layout *layout,
+		const struct clk_master_characteristics *characteristics,
+		const struct clk_ops *ops, spinlock_t *lock, u32 flags)
 {
-	int ret;
-	const size_t parent_names_size = num_parents * sizeof(parent_names[0]);
 	struct clk_master *master;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	unsigned int mckr;
+	unsigned long irqflags;
+	int ret;
 
-	if (!name || !num_parents || !parent_names)
+	if (!name || !num_parents || !parent_names || !lock)
 		return ERR_PTR(-EINVAL);
 
-	master = xzalloc(struct_size(master, parents, num_parents));
+	master = kzalloc(sizeof(*master), GFP_KERNEL);
+	if (!master)
+		return ERR_PTR(-ENOMEM);
 
-	master->hw.clk.name = name;
-	master->hw.clk.ops = &master_ops;
-	memcpy(master->parents, parent_names, parent_names_size);
-	master->hw.clk.parent_names = master->parents;
-	master->hw.clk.num_parents = num_parents;
+	init.name = name;
+	init.ops = ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = flags;
 
+	master->hw.init = &init;
 	master->layout = layout;
 	master->characteristics = characteristics;
 	master->regmap = regmap;
+	master->lock = lock;
 
-	ret = bclk_register(&master->hw.clk);
-	if (ret) {
-		kfree(master);
-		return ERR_PTR(ret);
+	if (ops == &master_div_ops_chg) {
+		spin_lock_irqsave(master->lock, irqflags);
+		regmap_read(master->regmap, master->layout->offset, &mckr);
+		spin_unlock_irqrestore(master->lock, irqflags);
+
+		mckr &= layout->mask;
+		mckr = (mckr >> MASTER_DIV_SHIFT) & MASTER_DIV_MASK;
+		master->div = characteristics->divisors[mckr];
 	}
 
-	return &master->hw.clk;
+	hw = &master->hw;
+	ret = clk_hw_register(NULL, &master->hw);
+	if (ret) {
+		kfree(master);
+		hw = ERR_PTR(ret);
+	}
+
+	return hw;
 }
 
+struct clk_hw * __init
+at91_clk_register_master_pres(struct regmap *regmap,
+		const char *name, int num_parents,
+		const char **parent_names,
+		const struct clk_master_layout *layout,
+		const struct clk_master_characteristics *characteristics,
+		spinlock_t *lock)
+{
+	return at91_clk_register_master_internal(regmap, name, num_parents,
+						 parent_names, layout,
+						 characteristics,
+						 &master_pres_ops,
+						 lock, CLK_SET_RATE_GATE);
+}
+
+struct clk_hw * __init
+at91_clk_register_master_div(struct regmap *regmap,
+		const char *name, const char *parent_name,
+		const struct clk_master_layout *layout,
+		const struct clk_master_characteristics *characteristics,
+		spinlock_t *lock, u32 flags)
+{
+	const struct clk_ops *ops;
+
+	if (flags & CLK_SET_RATE_GATE)
+		ops = &master_div_ops;
+	else
+		ops = &master_div_ops_chg;
+
+	return at91_clk_register_master_internal(regmap, name, 1,
+						 &parent_name, layout,
+						 characteristics, ops,
+						 lock, flags);
+}
+
+static unsigned long
+clk_sama7g5_master_recalc_rate(struct clk_hw *hw,
+			       unsigned long parent_rate)
+{
+	struct clk_master *master = to_clk_master(hw);
+
+	return DIV_ROUND_CLOSEST_ULL(parent_rate, (1 << master->div));
+}
+
+static int clk_sama7g5_master_get_parent(struct clk_hw *hw)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
+	u8 index;
+
+	spin_lock_irqsave(master->lock, flags);
+	index = clk_mux_val_to_index(&master->hw, master->mux_table, 0,
+				     master->parent);
+	spin_unlock_irqrestore(master->lock, flags);
+
+	return index;
+}
+
+static int clk_sama7g5_master_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
+
+	if (index >= clk_hw_get_num_parents(hw))
+		return -EINVAL;
+
+	spin_lock_irqsave(master->lock, flags);
+	master->parent = clk_mux_index_to_val(master->mux_table, 0, index);
+	spin_unlock_irqrestore(master->lock, flags);
+
+	return 0;
+}
+
+static void clk_sama7g5_master_set(struct clk_master *master,
+				   unsigned int status)
+{
+	unsigned long flags;
+	unsigned int val, cparent;
+	unsigned int enable = status ? AT91_PMC_MCR_V2_EN : 0;
+	unsigned int parent = master->parent << PMC_MCR_CSS_SHIFT;
+	unsigned int div = master->div << MASTER_DIV_SHIFT;
+
+	spin_lock_irqsave(master->lock, flags);
+
+	regmap_write(master->regmap, AT91_PMC_MCR_V2,
+		     AT91_PMC_MCR_V2_ID(master->id));
+	regmap_read(master->regmap, AT91_PMC_MCR_V2, &val);
+	regmap_update_bits(master->regmap, AT91_PMC_MCR_V2,
+			   enable | AT91_PMC_MCR_V2_CSS | AT91_PMC_MCR_V2_DIV |
+			   AT91_PMC_MCR_V2_CMD | AT91_PMC_MCR_V2_ID_MSK,
+			   enable | parent | div | AT91_PMC_MCR_V2_CMD |
+			   AT91_PMC_MCR_V2_ID(master->id));
+
+	cparent = (val & AT91_PMC_MCR_V2_CSS) >> PMC_MCR_CSS_SHIFT;
+
+	/* Wait here only if parent is being changed. */
+	while ((cparent != master->parent) && !clk_master_ready(master))
+		cpu_relax();
+
+	spin_unlock_irqrestore(master->lock, flags);
+}
+
+static int clk_sama7g5_master_enable(struct clk_hw *hw)
+{
+	struct clk_master *master = to_clk_master(hw);
+
+	clk_sama7g5_master_set(master, 1);
+
+	return 0;
+}
+
+static void clk_sama7g5_master_disable(struct clk_hw *hw)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(master->lock, flags);
+
+	regmap_write(master->regmap, AT91_PMC_MCR_V2, master->id);
+	regmap_update_bits(master->regmap, AT91_PMC_MCR_V2,
+			   AT91_PMC_MCR_V2_EN | AT91_PMC_MCR_V2_CMD |
+			   AT91_PMC_MCR_V2_ID_MSK,
+			   AT91_PMC_MCR_V2_CMD |
+			   AT91_PMC_MCR_V2_ID(master->id));
+
+	spin_unlock_irqrestore(master->lock, flags);
+}
+
+static int clk_sama7g5_master_is_enabled(struct clk_hw *hw)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long flags;
+	unsigned int val;
+
+	spin_lock_irqsave(master->lock, flags);
+
+	regmap_write(master->regmap, AT91_PMC_MCR_V2, master->id);
+	regmap_read(master->regmap, AT91_PMC_MCR_V2, &val);
+
+	spin_unlock_irqrestore(master->lock, flags);
+
+	return !!(val & AT91_PMC_MCR_V2_EN);
+}
+
+static int clk_sama7g5_master_set_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	struct clk_master *master = to_clk_master(hw);
+	unsigned long div, flags;
+
+	div = DIV_ROUND_CLOSEST(parent_rate, rate);
+	if ((div > (1 << (MASTER_PRES_MAX - 1))) || (div & (div - 1)))
+		return -EINVAL;
+
+	if (div == 3)
+		div = MASTER_PRES_MAX;
+	else if (div)
+		div = ffs(div) - 1;
+
+	spin_lock_irqsave(master->lock, flags);
+	master->div = div;
+	spin_unlock_irqrestore(master->lock, flags);
+
+	return 0;
+}
+
+static const struct clk_ops sama7g5_master_ops = {
+	.enable = clk_sama7g5_master_enable,
+	.disable = clk_sama7g5_master_disable,
+	.is_enabled = clk_sama7g5_master_is_enabled,
+	.recalc_rate = clk_sama7g5_master_recalc_rate,
+	.set_rate = clk_sama7g5_master_set_rate,
+	.get_parent = clk_sama7g5_master_get_parent,
+	.set_parent = clk_sama7g5_master_set_parent,
+};
+
+struct clk_hw * __init
+at91_clk_sama7g5_register_master(struct regmap *regmap,
+				 const char *name, int num_parents,
+				 const char **parent_names,
+				 u32 *mux_table,
+				 spinlock_t *lock, u8 id,
+				 bool critical, int chg_pid)
+{
+	struct clk_master *master;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	unsigned long flags;
+	unsigned int val;
+	int ret;
+
+	if (!name || !num_parents || !parent_names || !mux_table ||
+	    !lock || id > MASTER_MAX_ID)
+		return ERR_PTR(-EINVAL);
+
+	master = kzalloc(sizeof(*master), GFP_KERNEL);
+	if (!master)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &sama7g5_master_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
+	if (chg_pid >= 0)
+		init.flags |= CLK_SET_RATE_PARENT;
+	if (critical)
+		init.flags |= CLK_IS_CRITICAL;
+
+	master->hw.init = &init;
+	master->regmap = regmap;
+	master->id = id;
+	master->chg_pid = chg_pid;
+	master->lock = lock;
+	master->mux_table = mux_table;
+
+	spin_lock_irqsave(master->lock, flags);
+	regmap_write(master->regmap, AT91_PMC_MCR_V2, master->id);
+	regmap_read(master->regmap, AT91_PMC_MCR_V2, &val);
+	master->parent = (val & AT91_PMC_MCR_V2_CSS) >> PMC_MCR_CSS_SHIFT;
+	master->div = (val & AT91_PMC_MCR_V2_DIV) >> MASTER_DIV_SHIFT;
+	spin_unlock_irqrestore(master->lock, flags);
+
+	hw = &master->hw;
+	ret = clk_hw_register(NULL, &master->hw);
+	if (ret) {
+		kfree(master);
+		hw = ERR_PTR(ret);
+	}
+
+	return hw;
+}
 
 const struct clk_master_layout at91rm9200_master_layout = {
 	.mask = 0x31F,
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index ff98edef3fd2..bd4b50b142d6 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -3,47 +3,47 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/bitops.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
 #include "pmc.h"
 
+DEFINE_SPINLOCK(pmc_pcr_lock);
+
 #define PERIPHERAL_ID_MIN	2
 #define PERIPHERAL_ID_MAX	31
 #define PERIPHERAL_MASK(id)	(1 << ((id) & PERIPHERAL_ID_MAX))
 
-#define PERIPHERAL_RSHIFT_MASK	0x3
-#define PERIPHERAL_RSHIFT(val)	(((val) >> 16) & PERIPHERAL_RSHIFT_MASK)
-
 #define PERIPHERAL_MAX_SHIFT	3
 
 struct clk_peripheral {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 id;
-	const char *parent;
 };
 
-#define to_clk_peripheral(_hw) container_of(_hw, struct clk_peripheral, hw)
+#define to_clk_peripheral(hw) container_of(hw, struct clk_peripheral, hw)
 
 struct clk_sam9x5_peripheral {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	struct clk_range range;
+	spinlock_t *lock;
 	u32 id;
 	u32 div;
 	const struct clk_pcr_layout *layout;
+	struct at91_clk_pms pms;
 	bool auto_div;
-	const char *parent;
+	int chg_pid;
 };
 
-#define to_clk_sam9x5_peripheral(_hw) \
-	container_of(_hw, struct clk_sam9x5_peripheral, hw)
+#define to_clk_sam9x5_peripheral(hw) \
+	container_of(hw, struct clk_sam9x5_peripheral, hw)
 
 static int clk_peripheral_enable(struct clk_hw *hw)
 {
@@ -95,42 +95,45 @@ static const struct clk_ops peripheral_ops = {
 	.is_enabled = clk_peripheral_is_enabled,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id)
 {
-	int ret;
 	struct clk_peripheral *periph;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
 
 	if (!name || !parent_name || id > PERIPHERAL_ID_MAX)
 		return ERR_PTR(-EINVAL);
 
-	periph = xzalloc(sizeof(*periph));
+	periph = kzalloc(sizeof(*periph), GFP_KERNEL);
+	if (!periph)
+		return ERR_PTR(-ENOMEM);
 
-	periph->hw.clk.name = name;
-	periph->hw.clk.ops = &peripheral_ops;
-
-	if (parent_name) {
-		periph->parent = parent_name;
-		periph->hw.clk.parent_names = &periph->parent;
-		periph->hw.clk.num_parents = 1;
-	}
+	init.name = name;
+	init.ops = &peripheral_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = 0;
 
 	periph->id = id;
+	periph->hw.init = &init;
 	periph->regmap = regmap;
 
-	ret = bclk_register(&periph->hw.clk);
+	hw = &periph->hw;
+	ret = clk_hw_register(NULL, &periph->hw);
 	if (ret) {
 		kfree(periph);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &periph->hw.clk;
+	return hw;
 }
 
 static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
 {
-	struct clk *parent;
+	struct clk_hw *parent;
 	unsigned long parent_rate;
 	int shift = 0;
 
@@ -138,8 +141,8 @@ static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
 		return;
 
 	if (periph->range.max) {
-		parent = clk_get_parent(&periph->hw.clk);
-		parent_rate = clk_get_rate(parent);
+		parent = clk_hw_get_parent_by_index(&periph->hw, 0);
+		parent_rate = clk_hw_get_rate(parent);
 		if (!parent_rate)
 			return;
 
@@ -153,52 +156,68 @@ static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
 	periph->div = shift;
 }
 
-static int clk_sam9x5_peripheral_enable(struct clk_hw *hw)
+static int clk_sam9x5_peripheral_set(struct clk_sam9x5_peripheral *periph,
+				     unsigned int status)
 {
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
+	unsigned long flags;
+	unsigned int enable = status ? AT91_PMC_PCR_EN : 0;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return 0;
 
+	spin_lock_irqsave(periph->lock, flags);
 	regmap_write(periph->regmap, periph->layout->offset,
 		     (periph->id & periph->layout->pid_mask));
-	regmap_write_bits(periph->regmap, periph->layout->offset,
-			  periph->layout->div_mask | periph->layout->cmd |
-			  AT91_PMC_PCR_EN,
-			  field_prep(periph->layout->div_mask, periph->div) |
-			  periph->layout->cmd |
-			  AT91_PMC_PCR_EN);
+	regmap_update_bits(periph->regmap, periph->layout->offset,
+			   periph->layout->div_mask | periph->layout->cmd |
+			   enable,
+			   field_prep(periph->layout->div_mask, periph->div) |
+			   periph->layout->cmd | enable);
+	spin_unlock_irqrestore(periph->lock, flags);
 
 	return 0;
 }
 
+static int clk_sam9x5_peripheral_enable(struct clk_hw *hw)
+{
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
+
+	return clk_sam9x5_peripheral_set(periph, 1);
+}
+
 static void clk_sam9x5_peripheral_disable(struct clk_hw *hw)
 {
 	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
+	unsigned long flags;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return;
 
+	spin_lock_irqsave(periph->lock, flags);
 	regmap_write(periph->regmap, periph->layout->offset,
 		     (periph->id & periph->layout->pid_mask));
-	regmap_write_bits(periph->regmap, periph->layout->offset,
-			  AT91_PMC_PCR_EN | periph->layout->cmd,
-			  periph->layout->cmd);
+	regmap_update_bits(periph->regmap, periph->layout->offset,
+			   AT91_PMC_PCR_EN | periph->layout->cmd,
+			   periph->layout->cmd);
+	spin_unlock_irqrestore(periph->lock, flags);
 }
 
 static int clk_sam9x5_peripheral_is_enabled(struct clk_hw *hw)
 {
 	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
+	unsigned long flags;
 	unsigned int status;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return 1;
 
+	spin_lock_irqsave(periph->lock, flags);
 	regmap_write(periph->regmap, periph->layout->offset,
 		     (periph->id & periph->layout->pid_mask));
 	regmap_read(periph->regmap, periph->layout->offset, &status);
+	spin_unlock_irqrestore(periph->lock, flags);
 
-	return status & AT91_PMC_PCR_EN ? 1 : 0;
+	return !!(status & AT91_PMC_PCR_EN);
 }
 
 static unsigned long
@@ -206,14 +225,17 @@ clk_sam9x5_peripheral_recalc_rate(struct clk_hw *hw,
 				  unsigned long parent_rate)
 {
 	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
+	unsigned long flags;
 	unsigned int status;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return parent_rate;
 
+	spin_lock_irqsave(periph->lock, flags);
 	regmap_write(periph->regmap, periph->layout->offset,
 		     (periph->id & periph->layout->pid_mask));
 	regmap_read(periph->regmap, periph->layout->offset, &status);
+	spin_unlock_irqrestore(periph->lock, flags);
 
 	if (status & AT91_PMC_PCR_EN) {
 		periph->div = field_get(periph->layout->div_mask, status);
@@ -307,45 +329,64 @@ static const struct clk_ops sam9x5_peripheral_ops = {
 	.set_rate = clk_sam9x5_peripheral_set_rate,
 };
 
-struct clk * __init
-at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+static const struct clk_ops sam9x5_peripheral_chg_ops = {
+	.enable = clk_sam9x5_peripheral_enable,
+	.disable = clk_sam9x5_peripheral_disable,
+	.is_enabled = clk_sam9x5_peripheral_is_enabled,
+	.recalc_rate = clk_sam9x5_peripheral_recalc_rate,
+	.set_rate = clk_sam9x5_peripheral_set_rate,
+};
+
+struct clk_hw * __init
+at91_clk_register_sam9x5_peripheral(struct regmap *regmap, spinlock_t *lock,
 				    const struct clk_pcr_layout *layout,
 				    const char *name, const char *parent_name,
-				    u32 id, const struct clk_range *range)
+				    u32 id, const struct clk_range *range,
+				    int chg_pid, unsigned long flags)
 {
-	int ret;
 	struct clk_sam9x5_peripheral *periph;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
 
 	if (!name || !parent_name)
 		return ERR_PTR(-EINVAL);
 
-	periph = xzalloc(sizeof(*periph));
+	periph = kzalloc(sizeof(*periph), GFP_KERNEL);
+	if (!periph)
+		return ERR_PTR(-ENOMEM);
 
-	periph->hw.clk.name = name;
-	periph->hw.clk.ops = &sam9x5_peripheral_ops;
-
-	if (parent_name) {
-		periph->parent = parent_name;
-		periph->hw.clk.parent_names = &periph->parent;
-		periph->hw.clk.num_parents = 1;
+	init.name = name;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = flags;
+	if (chg_pid < 0) {
+		init.ops = &sam9x5_peripheral_ops;
+	} else {
+		init.flags |= CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+			      CLK_SET_RATE_PARENT;
+		init.ops = &sam9x5_peripheral_chg_ops;
 	}
 
 	periph->id = id;
+	periph->hw.init = &init;
 	periph->div = 0;
 	periph->regmap = regmap;
+	periph->lock = lock;
 	if (layout->div_mask)
 		periph->auto_div = true;
 	periph->layout = layout;
 	periph->range = *range;
+	periph->chg_pid = chg_pid;
 
-	ret = bclk_register(&periph->hw.clk);
+	hw = &periph->hw;
+	ret = clk_hw_register(NULL, &periph->hw);
 	if (ret) {
 		kfree(periph);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
+	} else {
+		clk_sam9x5_peripheral_autodiv(periph);
 	}
 
-	clk_sam9x5_peripheral_autodiv(periph);
-	pmc_register_id(id);
-
-	return &periph->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index 400132ad1fc4..027e1fc77349 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -3,12 +3,10 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <of.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
@@ -31,7 +29,7 @@
 #define PLL_OUT_SHIFT		14
 #define PLL_MAX_ID		1
 
-#define to_clk_pll(_hw) container_of(_hw, struct clk_pll, hw)
+#define to_clk_pll(hw) container_of(hw, struct clk_pll, hw)
 
 struct clk_pll {
 	struct clk_hw hw;
@@ -42,7 +40,7 @@ struct clk_pll {
 	u16 mul;
 	const struct clk_pll_layout *layout;
 	const struct clk_pll_characteristics *characteristics;
-	const char *parent;
+	struct at91_clk_pms pms;
 };
 
 static inline bool clk_pll_ready(struct regmap *regmap, int id)
@@ -54,7 +52,7 @@ static inline bool clk_pll_ready(struct regmap *regmap, int id)
 	return status & PLL_STATUS_MASK(id) ? 1 : 0;
 }
 
-static int clk_pll_enable(struct clk_hw *hw)
+static int clk_pll_prepare(struct clk_hw *hw)
 {
 	struct clk_pll *pll = to_clk_pll(hw);
 	struct regmap *regmap = pll->regmap;
@@ -83,33 +81,33 @@ static int clk_pll_enable(struct clk_hw *hw)
 		out = characteristics->out[pll->range];
 
 	if (characteristics->icpll)
-		regmap_write_bits(regmap, AT91_PMC_PLLICPR, PLL_ICPR_MASK(id),
+		regmap_update_bits(regmap, AT91_PMC_PLLICPR, PLL_ICPR_MASK(id),
 			characteristics->icpll[pll->range] << PLL_ICPR_SHIFT(id));
 
-	regmap_write_bits(regmap, offset, layout->pllr_mask,
-			  pll->div | (PLL_MAX_COUNT << PLL_COUNT_SHIFT) |
-			  (out << PLL_OUT_SHIFT) |
-			  ((pll->mul & layout->mul_mask) << layout->mul_shift));
+	regmap_update_bits(regmap, offset, layout->pllr_mask,
+			pll->div | (PLL_MAX_COUNT << PLL_COUNT_SHIFT) |
+			(out << PLL_OUT_SHIFT) |
+			((pll->mul & layout->mul_mask) << layout->mul_shift));
 
 	while (!clk_pll_ready(regmap, pll->id))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
 
-static int clk_pll_is_enabled(struct clk_hw *hw)
+static int clk_pll_is_prepared(struct clk_hw *hw)
 {
 	struct clk_pll *pll = to_clk_pll(hw);
 
 	return clk_pll_ready(pll->regmap, pll->id);
 }
 
-static void clk_pll_disable(struct clk_hw *hw)
+static void clk_pll_unprepare(struct clk_hw *hw)
 {
 	struct clk_pll *pll = to_clk_pll(hw);
 	unsigned int mask = pll->layout->pllr_mask;
 
-	regmap_write_bits(pll->regmap, PLL_REG(pll->id), mask, ~mask);
+	regmap_update_bits(pll->regmap, PLL_REG(pll->id), mask, ~mask);
 }
 
 static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
@@ -234,7 +232,7 @@ static long clk_pll_get_best_div_mul(struct clk_pll *pll, unsigned long rate,
 }
 
 static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-			       unsigned long *parent_rate)
+					unsigned long *parent_rate)
 {
 	struct clk_pll *pll = to_clk_pll(hw);
 
@@ -264,21 +262,23 @@ static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 }
 
 static const struct clk_ops pll_ops = {
-	.enable = clk_pll_enable,
-	.disable = clk_pll_disable,
-	.is_enabled = clk_pll_is_enabled,
+	.enable = clk_pll_prepare,
+	.disable = clk_pll_unprepare,
+	.is_enabled = clk_pll_is_prepared,
 	.recalc_rate = clk_pll_recalc_rate,
 	.round_rate = clk_pll_round_rate,
 	.set_rate = clk_pll_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_pll(struct regmap *regmap, const char *name,
 		      const char *parent_name, u8 id,
 		      const struct clk_pll_layout *layout,
 		      const struct clk_pll_characteristics *characteristics)
 {
 	struct clk_pll *pll;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int offset = PLL_REG(id);
 	unsigned int pllr;
 	int ret;
@@ -286,17 +286,18 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 	if (id > PLL_MAX_ID)
 		return ERR_PTR(-EINVAL);
 
-	pll = xzalloc(sizeof(*pll));
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
 
-	pll->parent = parent_name;
-	pll->hw.clk.name = name;
-	pll->hw.clk.ops = &pll_ops;
-	pll->hw.clk.parent_names = &pll->parent;
-	pll->hw.clk.num_parents = 1;
-
-	/* init.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.ops = &pll_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_GATE;
 
 	pll->id = id;
+	pll->hw.init = &init;
 	pll->layout = layout;
 	pll->characteristics = characteristics;
 	pll->regmap = regmap;
@@ -304,13 +305,14 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 	pll->div = PLL_DIV(pllr);
 	pll->mul = PLL_MUL(pllr, layout);
 
-	ret = bclk_register(&pll->hw.clk);
+	hw = &pll->hw;
+	ret = clk_hw_register(NULL, &pll->hw);
 	if (ret) {
 		kfree(pll);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &pll->hw.clk;
+	return hw;
 }
 
 
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index e39eb6a6543d..7fe44111498b 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -3,23 +3,20 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <of.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
 #include "pmc.h"
 
-#define to_clk_plldiv(_hw) container_of(_hw, struct clk_plldiv, hw)
+#define to_clk_plldiv(hw) container_of(hw, struct clk_plldiv, hw)
 
 struct clk_plldiv {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent;
 };
 
 static unsigned long clk_plldiv_recalc_rate(struct clk_hw *hw,
@@ -37,7 +34,7 @@ static unsigned long clk_plldiv_recalc_rate(struct clk_hw *hw,
 }
 
 static long clk_plldiv_round_rate(struct clk_hw *hw, unsigned long rate,
-				  unsigned long *parent_rate)
+					unsigned long *parent_rate)
 {
 	unsigned long div;
 
@@ -61,8 +58,8 @@ static int clk_plldiv_set_rate(struct clk_hw *hw, unsigned long rate,
 	if ((parent_rate != rate) && (parent_rate / 2 != rate))
 		return -EINVAL;
 
-	regmap_write_bits(plldiv->regmap, AT91_PMC_MCKR, AT91_PMC_PLLADIV2,
-			  parent_rate != rate ? AT91_PMC_PLLADIV2 : 0);
+	regmap_update_bits(plldiv->regmap, AT91_PMC_MCKR, AT91_PMC_PLLADIV2,
+			   parent_rate != rate ? AT91_PMC_PLLADIV2 : 0);
 
 	return 0;
 }
@@ -73,33 +70,34 @@ static const struct clk_ops plldiv_ops = {
 	.set_rate = clk_plldiv_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name)
 {
-	int ret;
 	struct clk_plldiv *plldiv;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
 
-	plldiv = xzalloc(sizeof(*plldiv));
+	plldiv = kzalloc(sizeof(*plldiv), GFP_KERNEL);
+	if (!plldiv)
+		return ERR_PTR(-ENOMEM);
 
-	plldiv->hw.clk.name = name;
-	plldiv->hw.clk.ops  = &plldiv_ops;
-
-	if (parent_name) {
-		plldiv->parent = parent_name;
-		plldiv->hw.clk.parent_names = &plldiv->parent;
-		plldiv->hw.clk.num_parents = 1;
-	}
-
-	/* init.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.ops = &plldiv_ops;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = parent_name ? 1 : 0;
+	init.flags = CLK_SET_RATE_GATE;
 
+	plldiv->hw.init = &init;
 	plldiv->regmap = regmap;
 
-	ret = bclk_register(&plldiv->hw.clk);
+	hw = &plldiv->hw;
+	ret = clk_hw_register(NULL, &plldiv->hw);
 	if (ret) {
 		kfree(plldiv);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &plldiv->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index eebd96736f35..3bf13568f5a9 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -3,13 +3,10 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
@@ -24,12 +21,13 @@
 struct clk_programmable {
 	struct clk_hw hw;
 	struct regmap *regmap;
+	u32 *mux_table;
 	u8 id;
 	const struct clk_programmable_layout *layout;
-	const char *parent_names[];
+	struct at91_clk_pms pms;
 };
 
-#define to_clk_programmable(_hw) container_of(_hw, struct clk_programmable, hw)
+#define to_clk_programmable(hw) container_of(hw, struct clk_programmable, hw)
 
 static unsigned long clk_programmable_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
@@ -59,6 +57,9 @@ static int clk_programmable_set_parent(struct clk_hw *hw, u8 index)
 	if (layout->have_slck_mck)
 		mask |= AT91_PMC_CSSMCK_MCK;
 
+	if (prog->mux_table)
+		pckr = clk_mux_index_to_val(prog->mux_table, 0, index);
+
 	if (index > layout->css_mask) {
 		if (index > PROG_MAX_RM9200_CSS && !layout->have_slck_mck)
 			return -EINVAL;
@@ -66,7 +67,7 @@ static int clk_programmable_set_parent(struct clk_hw *hw, u8 index)
 		pckr |= AT91_PMC_CSSMCK_MCK;
 	}
 
-	regmap_write_bits(prog->regmap, AT91_PMC_PCKR(prog->id), mask, pckr);
+	regmap_update_bits(prog->regmap, AT91_PMC_PCKR(prog->id), mask, pckr);
 
 	return 0;
 }
@@ -85,6 +86,9 @@ static int clk_programmable_get_parent(struct clk_hw *hw)
 	if (layout->have_slck_mck && (pckr & AT91_PMC_CSSMCK_MCK) && !ret)
 		ret = PROG_MAX_RM9200_CSS + 1;
 
+	if (prog->mux_table)
+		ret = clk_mux_val_to_index(&prog->hw, prog->mux_table, 0, ret);
+
 	return ret;
 }
 
@@ -114,9 +118,9 @@ static int clk_programmable_set_rate(struct clk_hw *hw, unsigned long rate,
 			return -EINVAL;
 	}
 
-	regmap_write_bits(prog->regmap, AT91_PMC_PCKR(prog->id),
-			  layout->pres_mask << layout->pres_shift,
-			  shift << layout->pres_shift);
+	regmap_update_bits(prog->regmap, AT91_PMC_PCKR(prog->id),
+			   layout->pres_mask << layout->pres_shift,
+			   shift << layout->pres_shift);
 
 	return 0;
 }
@@ -128,43 +132,45 @@ static const struct clk_ops programmable_ops = {
 	.set_rate = clk_programmable_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_programmable(struct regmap *regmap,
 			       const char *name, const char **parent_names,
 			       u8 num_parents, u8 id,
-			       const struct clk_programmable_layout *layout)
+			       const struct clk_programmable_layout *layout,
+			       u32 *mux_table)
 {
 	struct clk_programmable *prog;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
 	if (id > PROG_ID_MAX)
 		return ERR_PTR(-EINVAL);
 
-	prog = kzalloc(struct_size(prog, parent_names, num_parents), GFP_KERNEL);
+	prog = kzalloc(sizeof(*prog), GFP_KERNEL);
 	if (!prog)
 		return ERR_PTR(-ENOMEM);
 
-	prog->hw.clk.name = name;
-	prog->hw.clk.ops = &programmable_ops;
-	memcpy(prog->parent_names, parent_names,
-	       num_parents * sizeof(prog->parent_names[0]));
-	prog->hw.clk.parent_names = &prog->parent_names[0];
-	prog->hw.clk.num_parents = num_parents;
-	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
+	init.name = name;
+	init.ops = &programmable_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
 
 	prog->id = id;
 	prog->layout = layout;
+	prog->hw.init = &init;
 	prog->regmap = regmap;
+	prog->mux_table = mux_table;
 
-	ret = bclk_register(&prog->hw.clk);
+	hw = &prog->hw;
+	ret = clk_hw_register(NULL, &prog->hw);
 	if (ret) {
 		kfree(prog);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	pmc_register_pck(id);
-
-	return &prog->hw.clk;
+	return hw;
 }
 
 const struct clk_programmable_layout at91rm9200_programmable_layout = {
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index 3cd34350b9a7..c4f16061288f 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -1,322 +1,657 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  Copyright (C) 2019 Microchip Technology Inc.
  *
  */
 
-#include <common.h>
-#include <clock.h>
-#include <of.h>
-#include <linux/list.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
-#include <linux/bitfield.h>
 
 #include "pmc.h"
 
-#define PMC_PLL_CTRL0	0xc
-#define		PMC_PLL_CTRL0_DIV_MSK		GENMASK(7, 0)
-#define		PMC_PLL_CTRL0_ENPLL		BIT(28)
-#define		PMC_PLL_CTRL0_ENPLLCK		BIT(29)
-#define		PMC_PLL_CTRL0_ENLOCK		BIT(31)
-
-#define PMC_PLL_CTRL1	0x10
-#define		PMC_PLL_CTRL1_FRACR_MSK		GENMASK(21, 0)
-#define		PMC_PLL_CTRL1_MUL_MSK		GENMASK(30, 24)
-
-#define PMC_PLL_ACR	0x18
-#define		PMC_PLL_ACR_DEFAULT_UPLL	0x12020010UL
-#define		PMC_PLL_ACR_DEFAULT_PLLA	0x00020010UL
-#define		PMC_PLL_ACR_UTMIVR		BIT(12)
-#define		PMC_PLL_ACR_UTMIBG		BIT(13)
-#define		PMC_PLL_ACR_LOOP_FILTER_MSK	GENMASK(31, 24)
-
-#define PMC_PLL_UPDT	0x1c
-#define		PMC_PLL_UPDT_UPDATE		BIT(8)
-
-#define PMC_PLL_ISR0	0xec
+#define	PMC_PLL_CTRL0_DIV_MSK	GENMASK(7, 0)
+#define	PMC_PLL_CTRL1_MUL_MSK	GENMASK(31, 24)
+#define	PMC_PLL_CTRL1_FRACR_MSK	GENMASK(21, 0)
 
 #define PLL_DIV_MAX		(FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, UINT_MAX) + 1)
 #define UPLL_DIV		2
 #define PLL_MUL_MAX		(FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, UINT_MAX) + 1)
 
-#define PLL_MAX_ID		1
+#define FCORE_MIN		(600000000)
+#define FCORE_MAX		(1200000000)
 
-struct sam9x60_pll {
-	struct clk clk;
+#define PLL_MAX_ID		7
+
+struct sam9x60_pll_core {
 	struct regmap *regmap;
+	spinlock_t *lock;
 	const struct clk_pll_characteristics *characteristics;
-	u32 frac;
+	const struct clk_pll_layout *layout;
+	struct clk_hw hw;
 	u8 id;
-	u8 div;
-	u16 mul;
-	const char *parent_name;
 };
 
-#define to_sam9x60_pll(_hw) container_of(_hw->clk, struct sam9x60_pll, clk)
+struct sam9x60_frac {
+	struct sam9x60_pll_core core;
+	struct at91_clk_pms pms;
+	u32 frac;
+	u16 mul;
+};
+
+struct sam9x60_div {
+	struct sam9x60_pll_core core;
+	struct at91_clk_pms pms;
+	u8 div;
+};
+
+#define to_sam9x60_pll_core(hw)	container_of(hw, struct sam9x60_pll_core, hw)
+#define to_sam9x60_frac(core)	container_of(core, struct sam9x60_frac, core)
+#define to_sam9x60_div(core)	container_of(core, struct sam9x60_div, core)
 
 static inline bool sam9x60_pll_ready(struct regmap *regmap, int id)
 {
 	unsigned int status;
 
-	regmap_read(regmap, PMC_PLL_ISR0, &status);
+	regmap_read(regmap, AT91_PMC_PLL_ISR0, &status);
 
 	return !!(status & BIT(id));
 }
 
-static int sam9x60_pll_enable(struct clk_hw *hw)
+static bool sam9x60_frac_pll_ready(struct regmap *regmap, u8 id)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
-	struct regmap *regmap = pll->regmap;
-	u8 div;
-	u16 mul;
-	u32 val;
+	return sam9x60_pll_ready(regmap, id);
+}
 
-	regmap_write(regmap, PMC_PLL_UPDT, pll->id);
+static unsigned long sam9x60_frac_pll_recalc_rate(struct clk_hw *hw,
+						  unsigned long parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct sam9x60_frac *frac = to_sam9x60_frac(core);
 
-	regmap_read(regmap, PMC_PLL_CTRL0, &val);
-	div = FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, val);
+	return parent_rate * (frac->mul + 1) +
+		DIV_ROUND_CLOSEST_ULL((u64)parent_rate * frac->frac, (1 << 22));
+}
 
-	regmap_read(regmap, PMC_PLL_CTRL1, &val);
-	mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, val);
+static int sam9x60_frac_pll_set(struct sam9x60_pll_core *core)
+{
+	struct sam9x60_frac *frac = to_sam9x60_frac(core);
+	struct regmap *regmap = core->regmap;
+	unsigned int val, cfrac, cmul;
+	unsigned long flags;
 
-	if (sam9x60_pll_ready(regmap, pll->id) &&
-	    (div == pll->div && mul == pll->mul)) {
-		return 0;
-	}
+	spin_lock_irqsave(core->lock, flags);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, core->id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL1, &val);
+	cmul = (val & core->layout->mul_mask) >> core->layout->mul_shift;
+	cfrac = (val & core->layout->frac_mask) >> core->layout->frac_shift;
+
+	if (sam9x60_frac_pll_ready(regmap, core->id) &&
+	    (cmul == frac->mul && cfrac == frac->frac))
+		goto unlock;
 
 	/* Recommended value for PMC_PLL_ACR */
-	if (pll->characteristics->upll)
-		val = PMC_PLL_ACR_DEFAULT_UPLL;
+	if (core->characteristics->upll)
+		val = AT91_PMC_PLL_ACR_DEFAULT_UPLL;
 	else
-		val = PMC_PLL_ACR_DEFAULT_PLLA;
-	regmap_write(regmap, PMC_PLL_ACR, val);
+		val = AT91_PMC_PLL_ACR_DEFAULT_PLLA;
+	regmap_write(regmap, AT91_PMC_PLL_ACR, val);
 
-	regmap_write(regmap, PMC_PLL_CTRL1,
-		     FIELD_PREP(PMC_PLL_CTRL1_MUL_MSK, pll->mul));
+	regmap_write(regmap, AT91_PMC_PLL_CTRL1,
+		     (frac->mul << core->layout->mul_shift) |
+		     (frac->frac << core->layout->frac_shift));
 
-	if (pll->characteristics->upll) {
+	if (core->characteristics->upll) {
 		/* Enable the UTMI internal bandgap */
-		val |= PMC_PLL_ACR_UTMIBG;
-		regmap_write(regmap, PMC_PLL_ACR, val);
+		val |= AT91_PMC_PLL_ACR_UTMIBG;
+		regmap_write(regmap, AT91_PMC_PLL_ACR, val);
 
 		udelay(10);
 
 		/* Enable the UTMI internal regulator */
-		val |= PMC_PLL_ACR_UTMIVR;
-		regmap_write(regmap, PMC_PLL_ACR, val);
+		val |= AT91_PMC_PLL_ACR_UTMIVR;
+		regmap_write(regmap, AT91_PMC_PLL_ACR, val);
 
 		udelay(10);
 	}
 
-	regmap_update_bits(regmap, PMC_PLL_UPDT,
-			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
 
-	regmap_write(regmap, PMC_PLL_CTRL0,
-		     PMC_PLL_CTRL0_ENLOCK | PMC_PLL_CTRL0_ENPLL |
-		     PMC_PLL_CTRL0_ENPLLCK | pll->div);
+	regmap_update_bits(regmap, AT91_PMC_PLL_CTRL0,
+			   AT91_PMC_PLL_CTRL0_ENLOCK | AT91_PMC_PLL_CTRL0_ENPLL,
+			   AT91_PMC_PLL_CTRL0_ENLOCK | AT91_PMC_PLL_CTRL0_ENPLL);
 
-	regmap_update_bits(regmap, PMC_PLL_UPDT,
-			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
 
-	while (!sam9x60_pll_ready(regmap, pll->id))
+	while (!sam9x60_pll_ready(regmap, core->id))
 		cpu_relax();
 
+unlock:
+	spin_unlock_irqrestore(core->lock, flags);
+
 	return 0;
 }
 
-static int sam9x60_pll_is_enabled(struct clk_hw *hw)
+static int sam9x60_frac_pll_prepare(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
 
-	return sam9x60_pll_ready(pll->regmap, pll->id);
+	return sam9x60_frac_pll_set(core);
 }
 
-static void sam9x60_pll_disable(struct clk_hw *hw)
+static void sam9x60_frac_pll_unprepare(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct regmap *regmap = core->regmap;
+	unsigned long flags;
 
-	regmap_write(pll->regmap, PMC_PLL_UPDT, pll->id);
+	spin_lock_irqsave(core->lock, flags);
 
-	regmap_update_bits(pll->regmap, PMC_PLL_CTRL0,
-			   PMC_PLL_CTRL0_ENPLLCK, 0);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, core->id);
 
-	regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
-			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+	regmap_update_bits(regmap, AT91_PMC_PLL_CTRL0, AT91_PMC_PLL_CTRL0_ENPLL, 0);
 
-	regmap_update_bits(pll->regmap, PMC_PLL_CTRL0, PMC_PLL_CTRL0_ENPLL, 0);
+	if (core->characteristics->upll)
+		regmap_update_bits(regmap, AT91_PMC_PLL_ACR,
+				   AT91_PMC_PLL_ACR_UTMIBG | AT91_PMC_PLL_ACR_UTMIVR, 0);
 
-	if (pll->characteristics->upll)
-		regmap_update_bits(pll->regmap, PMC_PLL_ACR,
-				   PMC_PLL_ACR_UTMIBG | PMC_PLL_ACR_UTMIVR, 0);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
 
-	regmap_update_bits(pll->regmap, PMC_PLL_UPDT,
-			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
+	spin_unlock_irqrestore(core->lock, flags);
 }
 
-static unsigned long sam9x60_pll_recalc_rate(struct clk_hw *hw,
-					     unsigned long parent_rate)
+static int sam9x60_frac_pll_is_prepared(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
 
-	return (parent_rate * (pll->mul + 1)) / (pll->div + 1);
+	return sam9x60_pll_ready(core->regmap, core->id);
 }
 
-static long sam9x60_pll_get_best_div_mul(struct sam9x60_pll *pll,
-					 unsigned long rate,
-					 unsigned long parent_rate,
-					 bool update)
+static long sam9x60_frac_pll_compute_mul_frac(struct sam9x60_pll_core *core,
+					      unsigned long rate,
+					      unsigned long parent_rate,
+					      bool update)
+{
+	struct sam9x60_frac *frac = to_sam9x60_frac(core);
+	unsigned long tmprate, remainder;
+	unsigned long nmul = 0;
+	unsigned long nfrac = 0;
+
+	if (rate < FCORE_MIN || rate > FCORE_MAX)
+		return -ERANGE;
+
+	/*
+	 * Calculate the multiplier associated with the current
+	 * divider that provide the closest rate to the requested one.
+	 */
+	nmul = mult_frac(rate, 1, parent_rate);
+	tmprate = mult_frac(parent_rate, nmul, 1);
+	remainder = rate - tmprate;
+
+	if (remainder) {
+		nfrac = DIV_ROUND_CLOSEST_ULL((u64)remainder * (1 << 22),
+					      parent_rate);
+
+		tmprate += DIV_ROUND_CLOSEST_ULL((u64)nfrac * parent_rate,
+						 (1 << 22));
+	}
+
+	/* Check if resulted rate is a valid.  */
+	if (tmprate < FCORE_MIN || tmprate > FCORE_MAX)
+		return -ERANGE;
+
+	if (update) {
+		frac->mul = nmul - 1;
+		frac->frac = nfrac;
+	}
+
+	return tmprate;
+}
+
+static long sam9x60_frac_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+					unsigned long *parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+
+	return sam9x60_frac_pll_compute_mul_frac(core, rate, *parent_rate, false);
+}
+
+static int sam9x60_frac_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+
+	return sam9x60_frac_pll_compute_mul_frac(core, rate, parent_rate, true);
+}
+
+static int sam9x60_frac_pll_set_rate_chg(struct clk_hw *hw, unsigned long rate,
+					 unsigned long parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct sam9x60_frac *frac = to_sam9x60_frac(core);
+	struct regmap *regmap = core->regmap;
+	unsigned long irqflags;
+	unsigned int val, cfrac, cmul;
+	long ret;
+
+	ret = sam9x60_frac_pll_compute_mul_frac(core, rate, parent_rate, true);
+	if (ret <= 0)
+		return ret;
+
+	spin_lock_irqsave(core->lock, irqflags);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT, AT91_PMC_PLL_UPDT_ID_MSK,
+			   core->id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL1, &val);
+	cmul = (val & core->layout->mul_mask) >> core->layout->mul_shift;
+	cfrac = (val & core->layout->frac_mask) >> core->layout->frac_shift;
+
+	if (cmul == frac->mul && cfrac == frac->frac)
+		goto unlock;
+
+	regmap_write(regmap, AT91_PMC_PLL_CTRL1,
+		     (frac->mul << core->layout->mul_shift) |
+		     (frac->frac << core->layout->frac_shift));
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_CTRL0,
+			   AT91_PMC_PLL_CTRL0_ENLOCK | AT91_PMC_PLL_CTRL0_ENPLL,
+			   AT91_PMC_PLL_CTRL0_ENLOCK |
+			   AT91_PMC_PLL_CTRL0_ENPLL);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
+
+	while (!sam9x60_pll_ready(regmap, core->id))
+		cpu_relax();
+
+unlock:
+	spin_unlock_irqrestore(core->lock, irqflags);
+
+	return ret;
+}
+
+static const struct clk_ops sam9x60_frac_pll_ops = {
+	.enable = sam9x60_frac_pll_prepare,
+	.disable = sam9x60_frac_pll_unprepare,
+	.is_enabled = sam9x60_frac_pll_is_prepared,
+	.recalc_rate = sam9x60_frac_pll_recalc_rate,
+	.round_rate = sam9x60_frac_pll_round_rate,
+	.set_rate = sam9x60_frac_pll_set_rate,
+};
+
+static const struct clk_ops sam9x60_frac_pll_ops_chg = {
+	.enable = sam9x60_frac_pll_prepare,
+	.disable = sam9x60_frac_pll_unprepare,
+	.is_enabled = sam9x60_frac_pll_is_prepared,
+	.recalc_rate = sam9x60_frac_pll_recalc_rate,
+	.round_rate = sam9x60_frac_pll_round_rate,
+	.set_rate = sam9x60_frac_pll_set_rate_chg,
+};
+
+/* This function should be called with spinlock acquired. */
+static void sam9x60_div_pll_set_div(struct sam9x60_pll_core *core, u32 div,
+				    bool enable)
+{
+	struct regmap *regmap = core->regmap;
+	u32 ena_msk = enable ? core->layout->endiv_mask : 0;
+	u32 ena_val = enable ? (1 << core->layout->endiv_shift) : 0;
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_CTRL0,
+			   core->layout->div_mask | ena_msk,
+			   (div << core->layout->div_shift) | ena_val);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
+
+	while (!sam9x60_pll_ready(regmap, core->id))
+		cpu_relax();
+}
+
+static int sam9x60_div_pll_set(struct sam9x60_pll_core *core)
+{
+	struct sam9x60_div *div = to_sam9x60_div(core);
+	struct regmap *regmap = core->regmap;
+	unsigned long flags;
+	unsigned int val, cdiv;
+
+	spin_lock_irqsave(core->lock, flags);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, core->id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL0, &val);
+	cdiv = (val & core->layout->div_mask) >> core->layout->div_shift;
+
+	/* Stop if enabled an nothing changed. */
+	if (!!(val & core->layout->endiv_mask) && cdiv == div->div)
+		goto unlock;
+
+	sam9x60_div_pll_set_div(core, div->div, 1);
+
+unlock:
+	spin_unlock_irqrestore(core->lock, flags);
+
+	return 0;
+}
+
+static int sam9x60_div_pll_prepare(struct clk_hw *hw)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+
+	return sam9x60_div_pll_set(core);
+}
+
+static void sam9x60_div_pll_unprepare(struct clk_hw *hw)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct regmap *regmap = core->regmap;
+	unsigned long flags;
+
+	spin_lock_irqsave(core->lock, flags);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, core->id);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_CTRL0,
+			   core->layout->endiv_mask, 0);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_UPDATE | AT91_PMC_PLL_UPDT_ID_MSK,
+			   AT91_PMC_PLL_UPDT_UPDATE | core->id);
+
+	spin_unlock_irqrestore(core->lock, flags);
+}
+
+static int sam9x60_div_pll_is_prepared(struct clk_hw *hw)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct regmap *regmap = core->regmap;
+	unsigned long flags;
+	unsigned int val;
+
+	spin_lock_irqsave(core->lock, flags);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, core->id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL0, &val);
+
+	spin_unlock_irqrestore(core->lock, flags);
+
+	return !!(val & core->layout->endiv_mask);
+}
+
+static unsigned long sam9x60_div_pll_recalc_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct sam9x60_div *div = to_sam9x60_div(core);
+
+	return DIV_ROUND_CLOSEST_ULL(parent_rate, (div->div + 1));
+}
+
+static long sam9x60_div_pll_compute_div(struct sam9x60_pll_core *core,
+					unsigned long *parent_rate,
+					unsigned long rate)
 {
 	const struct clk_pll_characteristics *characteristics =
-							pll->characteristics;
-	unsigned long bestremainder = ULONG_MAX;
-	unsigned long maxdiv, mindiv, tmpdiv;
-	long bestrate = -ERANGE;
-	unsigned long bestdiv = 0;
-	unsigned long bestmul = 0;
-	unsigned long bestfrac = 0;
+							core->characteristics;
+	struct clk_hw *parent = clk_hw_get_parent(&core->hw);
+	unsigned long tmp_rate, tmp_parent_rate, tmp_diff;
+	long best_diff = -1, best_rate = -EINVAL;
+	u32 divid;
+
+	if (!rate)
+		return 0;
 
 	if (rate < characteristics->output[0].min ||
 	    rate > characteristics->output[0].max)
 		return -ERANGE;
 
-	if (!pll->characteristics->upll) {
-		mindiv = parent_rate / rate;
-		if (mindiv < 2)
-			mindiv = 2;
+	for (divid = 1; divid < core->layout->div_mask; divid++) {
+		tmp_parent_rate = clk_hw_round_rate(parent, rate * divid);
+		if (!tmp_parent_rate)
+			continue;
 
-		maxdiv = DIV_ROUND_UP(parent_rate * PLL_MUL_MAX, rate);
-		if (maxdiv > PLL_DIV_MAX)
-			maxdiv = PLL_DIV_MAX;
-	} else {
-		mindiv = maxdiv = UPLL_DIV;
-	}
+		tmp_rate = DIV_ROUND_CLOSEST_ULL(tmp_parent_rate, divid);
+		tmp_diff = abs(rate - tmp_rate);
 
-	for (tmpdiv = mindiv; tmpdiv <= maxdiv; tmpdiv++) {
-		unsigned long remainder;
-		unsigned long tmprate;
-		unsigned long tmpmul;
-		unsigned long tmpfrac = 0;
-
-		/*
-		 * Calculate the multiplier associated with the current
-		 * divider that provide the closest rate to the requested one.
-		 */
-		tmpmul = mult_frac(rate, tmpdiv, parent_rate);
-		tmprate = mult_frac(parent_rate, tmpmul, tmpdiv);
-		remainder = rate - tmprate;
-
-		if (remainder) {
-			tmpfrac = DIV_ROUND_CLOSEST_ULL((u64)remainder * tmpdiv * (1 << 22),
-							parent_rate);
-
-			tmprate += DIV_ROUND_CLOSEST_ULL((u64)tmpfrac * parent_rate,
-							 tmpdiv * (1 << 22));
-
-			if (tmprate > rate)
-				remainder = tmprate - rate;
-			else
-				remainder = rate - tmprate;
+		if (best_diff < 0 || best_diff > tmp_diff) {
+			*parent_rate = tmp_parent_rate;
+			best_rate = tmp_rate;
+			best_diff = tmp_diff;
 		}
 
-		/*
-		 * Compare the remainder with the best remainder found until
-		 * now and elect a new best multiplier/divider pair if the
-		 * current remainder is smaller than the best one.
-		 */
-		if (remainder < bestremainder) {
-			bestremainder = remainder;
-			bestdiv = tmpdiv;
-			bestmul = tmpmul;
-			bestrate = tmprate;
-			bestfrac = tmpfrac;
-		}
-
-		/* We've found a perfect match!  */
-		if (!remainder)
+		if (!best_diff)
 			break;
 	}
 
-	/* Check if bestrate is a valid output rate  */
-	if (bestrate < characteristics->output[0].min &&
-	    bestrate > characteristics->output[0].max)
+	if (best_rate < characteristics->output[0].min ||
+	    best_rate > characteristics->output[0].max)
 		return -ERANGE;
 
-	if (update) {
-		pll->div = bestdiv - 1;
-		pll->mul = bestmul - 1;
-		pll->frac = bestfrac;
-	}
-
-	return bestrate;
+	return best_rate;
 }
 
-static long sam9x60_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *parent_rate)
+static long sam9x60_div_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long *parent_rate)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
 
-	return sam9x60_pll_get_best_div_mul(pll, rate, *parent_rate, false);
+	return sam9x60_div_pll_compute_div(core, parent_rate, rate);
 }
 
-static int sam9x60_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-				unsigned long parent_rate)
+static int sam9x60_div_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+				    unsigned long parent_rate)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct sam9x60_div *div = to_sam9x60_div(core);
 
-	return sam9x60_pll_get_best_div_mul(pll, rate, parent_rate, true);
+	div->div = DIV_ROUND_CLOSEST(parent_rate, rate) - 1;
+
+	return 0;
 }
 
-static const struct clk_ops pll_ops = {
-	.enable = sam9x60_pll_enable,
-	.disable = sam9x60_pll_disable,
-	.is_enabled = sam9x60_pll_is_enabled,
-	.recalc_rate = sam9x60_pll_recalc_rate,
-	.round_rate = sam9x60_pll_round_rate,
-	.set_rate = sam9x60_pll_set_rate,
+static int sam9x60_div_pll_set_rate_chg(struct clk_hw *hw, unsigned long rate,
+					unsigned long parent_rate)
+{
+	struct sam9x60_pll_core *core = to_sam9x60_pll_core(hw);
+	struct sam9x60_div *div = to_sam9x60_div(core);
+	struct regmap *regmap = core->regmap;
+	unsigned long irqflags;
+	unsigned int val, cdiv;
+
+	div->div = DIV_ROUND_CLOSEST(parent_rate, rate) - 1;
+
+	spin_lock_irqsave(core->lock, irqflags);
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT, AT91_PMC_PLL_UPDT_ID_MSK,
+			   core->id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL0, &val);
+	cdiv = (val & core->layout->div_mask) >> core->layout->div_shift;
+
+	/* Stop if nothing changed. */
+	if (cdiv == div->div)
+		goto unlock;
+
+	sam9x60_div_pll_set_div(core, div->div, 0);
+
+unlock:
+	spin_unlock_irqrestore(core->lock, irqflags);
+
+	return 0;
+}
+
+static const struct clk_ops sam9x60_div_pll_ops = {
+	.enable = sam9x60_div_pll_prepare,
+	.disable = sam9x60_div_pll_unprepare,
+	.is_enabled = sam9x60_div_pll_is_prepared,
+	.recalc_rate = sam9x60_div_pll_recalc_rate,
+	.round_rate = sam9x60_div_pll_round_rate,
+	.set_rate = sam9x60_div_pll_set_rate,
 };
 
-struct clk * __init
-sam9x60_clk_register_pll(struct regmap *regmap,
-			 const char *name, const char *parent_name, u8 id,
-			 const struct clk_pll_characteristics *characteristics)
+static const struct clk_ops sam9x60_div_pll_ops_chg = {
+	.enable = sam9x60_div_pll_prepare,
+	.disable = sam9x60_div_pll_unprepare,
+	.is_enabled = sam9x60_div_pll_is_prepared,
+	.recalc_rate = sam9x60_div_pll_recalc_rate,
+	.round_rate = sam9x60_div_pll_round_rate,
+	.set_rate = sam9x60_div_pll_set_rate_chg,
+};
+
+struct clk_hw * __init
+sam9x60_clk_register_frac_pll(struct regmap *regmap, spinlock_t *lock,
+			      const char *name, const char *parent_name,
+			      struct clk_hw *parent_hw, u8 id,
+			      const struct clk_pll_characteristics *characteristics,
+			      const struct clk_pll_layout *layout, u32 flags)
 {
-	struct sam9x60_pll *pll;
-	unsigned int pllr;
+	struct sam9x60_frac *frac;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	unsigned long parent_rate, irqflags;
+	unsigned int val;
 	int ret;
 
-	if (id > PLL_MAX_ID)
+	if (id > PLL_MAX_ID || !lock || !parent_hw)
 		return ERR_PTR(-EINVAL);
 
-	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
-	if (!pll)
+	frac = kzalloc(sizeof(*frac), GFP_KERNEL);
+	if (!frac)
 		return ERR_PTR(-ENOMEM);
 
-	pll->clk.name = name;
-	pll->clk.ops = &pll_ops;
-	pll->parent_name = parent_name;
-	pll->clk.parent_names = &pll->parent_name;
-	pll->clk.num_parents = 1;
-	/* pll->clk.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	if (flags & CLK_SET_RATE_GATE)
+		init.ops = &sam9x60_frac_pll_ops;
+	else
+		init.ops = &sam9x60_frac_pll_ops_chg;
 
-	pll->id = id;
-	pll->characteristics = characteristics;
-	pll->regmap = regmap;
+	init.flags = flags;
 
-	regmap_write(regmap, PMC_PLL_UPDT, id);
-	regmap_read(regmap, PMC_PLL_CTRL0, &pllr);
-	pll->div = FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, pllr);
-	regmap_read(regmap, PMC_PLL_CTRL1, &pllr);
-	pll->mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, pllr);
+	frac->core.id = id;
+	frac->core.hw.init = &init;
+	frac->core.characteristics = characteristics;
+	frac->core.layout = layout;
+	frac->core.regmap = regmap;
+	frac->core.lock = lock;
 
-	ret = bclk_register(&pll->clk);
+	spin_lock_irqsave(frac->core.lock, irqflags);
+	if (sam9x60_pll_ready(regmap, id)) {
+		regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+				   AT91_PMC_PLL_UPDT_ID_MSK, id);
+		regmap_read(regmap, AT91_PMC_PLL_CTRL1, &val);
+		frac->mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, val);
+		frac->frac = FIELD_GET(PMC_PLL_CTRL1_FRACR_MSK, val);
+	} else {
+		/*
+		 * This means the PLL is not setup by bootloaders. In this
+		 * case we need to set the minimum rate for it. Otherwise
+		 * a clock child of this PLL may be enabled before setting
+		 * its rate leading to enabling this PLL with unsupported
+		 * rate. This will lead to PLL not being locked at all.
+		 */
+		parent_rate = clk_hw_get_rate(parent_hw);
+		if (!parent_rate) {
+			hw = ERR_PTR(-EINVAL);
+			goto free;
+		}
+
+		ret = sam9x60_frac_pll_compute_mul_frac(&frac->core, FCORE_MIN,
+							parent_rate, true);
+		if (ret < 0) {
+			hw = ERR_PTR(ret);
+			goto free;
+		}
+	}
+	spin_unlock_irqrestore(frac->core.lock, irqflags);
+
+	hw = &frac->core.hw;
+	ret = clk_hw_register(NULL, hw);
 	if (ret) {
-		kfree(pll);
-		return ERR_PTR(ret);
+		kfree(frac);
+		hw = ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return hw;
+
+free:
+	spin_unlock_irqrestore(frac->core.lock, irqflags);
+	kfree(frac);
+	return hw;
+}
+
+struct clk_hw * __init
+sam9x60_clk_register_div_pll(struct regmap *regmap, spinlock_t *lock,
+			     const char *name, const char *parent_name, u8 id,
+			     const struct clk_pll_characteristics *characteristics,
+			     const struct clk_pll_layout *layout, u32 flags)
+{
+	struct sam9x60_div *div;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	unsigned long irqflags;
+	unsigned int val;
+	int ret;
+
+	/* We only support one changeable PLL. */
+	if (id > PLL_MAX_ID || !lock)
+		return ERR_PTR(-EINVAL);
+
+	div = kzalloc(sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	if (flags & CLK_SET_RATE_GATE)
+		init.ops = &sam9x60_div_pll_ops;
+	else
+		init.ops = &sam9x60_div_pll_ops_chg;
+	init.flags = flags;
+
+	div->core.id = id;
+	div->core.hw.init = &init;
+	div->core.characteristics = characteristics;
+	div->core.layout = layout;
+	div->core.regmap = regmap;
+	div->core.lock = lock;
+
+	spin_lock_irqsave(div->core.lock, irqflags);
+
+	regmap_update_bits(regmap, AT91_PMC_PLL_UPDT,
+			   AT91_PMC_PLL_UPDT_ID_MSK, id);
+	regmap_read(regmap, AT91_PMC_PLL_CTRL0, &val);
+	div->div = FIELD_GET(PMC_PLL_CTRL0_DIV_MSK, val);
+
+	spin_unlock_irqrestore(div->core.lock, irqflags);
+
+	hw = &div->core.hw;
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(div);
+		hw = ERR_PTR(ret);
+	}
+
+	return hw;
 }
 
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index 03f8ee2c6a5d..3a070d0d347c 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -5,13 +5,10 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
@@ -20,10 +17,9 @@
 struct clk_sam9260_slow {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent_names[];
 };
 
-#define to_clk_sam9260_slow(_hw) container_of(_hw, struct clk_sam9260_slow, hw)
+#define to_clk_sam9260_slow(hw) container_of(hw, struct clk_sam9260_slow, hw)
 
 static int clk_sam9260_slow_get_parent(struct clk_hw *hw)
 {
@@ -39,13 +35,15 @@ static const struct clk_ops sam9260_slow_ops = {
 	.get_parent = clk_sam9260_slow_get_parent,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_sam9260_slow(struct regmap *regmap,
 			       const char *name,
 			       const char **parent_names,
 			       int num_parents)
 {
 	struct clk_sam9260_slow *slowck;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
 	if (!name)
@@ -54,20 +52,25 @@ at91_clk_register_sam9260_slow(struct regmap *regmap,
 	if (!parent_names || !num_parents)
 		return ERR_PTR(-EINVAL);
 
-	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
-	slowck->hw.clk.name = name;
-	slowck->hw.clk.ops = &sam9260_slow_ops;
-	memcpy(slowck->parent_names, parent_names,
-	       num_parents * sizeof(slowck->parent_names[0]));
-	slowck->hw.clk.parent_names = slowck->parent_names;
-	slowck->hw.clk.num_parents = num_parents;
+	slowck = kzalloc(sizeof(*slowck), GFP_KERNEL);
+	if (!slowck)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &sam9260_slow_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = 0;
+
+	slowck->hw.init = &init;
 	slowck->regmap = regmap;
 
-	ret = bclk_register(&slowck->hw.clk);
+	hw = &slowck->hw;
+	ret = clk_hw_register(NULL, &slowck->hw);
 	if (ret) {
 		kfree(slowck);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &slowck->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 58ccbf145e57..dc1b15075035 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -3,31 +3,25 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
 #include "pmc.h"
 
-#define SMD_SOURCE_MAX		2
-
 #define SMD_DIV_SHIFT		8
 #define SMD_MAX_DIV		0xf
 
 struct at91sam9x5_clk_smd {
 	struct clk_hw hw;
 	struct regmap *regmap;
-	const char *parent_names[];
 };
 
-#define to_at91sam9x5_clk_smd(_hw) \
-	container_of(_hw, struct at91sam9x5_clk_smd, hw)
+#define to_at91sam9x5_clk_smd(hw) \
+	container_of(hw, struct at91sam9x5_clk_smd, hw)
 
 static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
@@ -71,8 +65,8 @@ static int at91sam9x5_clk_smd_set_parent(struct clk_hw *hw, u8 index)
 	if (index > 1)
 		return -EINVAL;
 
-	regmap_write_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMDS,
-			  index ? AT91_PMC_SMDS : 0);
+	regmap_update_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMDS,
+			   index ? AT91_PMC_SMDS : 0);
 
 	return 0;
 }
@@ -96,8 +90,8 @@ static int at91sam9x5_clk_smd_set_rate(struct clk_hw *hw, unsigned long rate,
 	if (parent_rate % rate || div < 1 || div > (SMD_MAX_DIV + 1))
 		return -EINVAL;
 
-	regmap_write_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMD_DIV,
-			  (div - 1) << SMD_DIV_SHIFT);
+	regmap_update_bits(smd->regmap, AT91_PMC_SMD, AT91_PMC_SMD_DIV,
+			   (div - 1) << SMD_DIV_SHIFT);
 
 	return 0;
 }
@@ -110,28 +104,34 @@ static const struct clk_ops at91sam9x5_smd_ops = {
 	.set_rate = at91sam9x5_clk_smd_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
 	struct at91sam9x5_clk_smd *smd;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
-	smd = xzalloc(struct_size(smd, parent_names, num_parents));
-	smd->hw.clk.name = name;
-	smd->hw.clk.ops = &at91sam9x5_smd_ops;
-	memcpy(smd->parent_names, parent_names,
-	       num_parents * sizeof(smd->parent_names[0]));
-	smd->hw.clk.parent_names = smd->parent_names;
-	smd->hw.clk.num_parents = num_parents;
-	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
+	smd = kzalloc(sizeof(*smd), GFP_KERNEL);
+	if (!smd)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &at91sam9x5_smd_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;
+
+	smd->hw.init = &init;
 	smd->regmap = regmap;
 
-	ret = bclk_register(&smd->hw.clk);
+	hw = &smd->hw;
+	ret = clk_hw_register(NULL, &smd->hw);
 	if (ret) {
 		kfree(smd);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &smd->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index 6166622a3ca8..5f367e292a00 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -2,12 +2,11 @@
 /*
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
@@ -17,12 +16,12 @@
 
 #define SYSTEM_MAX_NAME_SZ	32
 
-#define to_clk_system(_hw) container_of(_hw, struct clk_system, hw)
+#define to_clk_system(hw) container_of(hw, struct clk_system, hw)
 struct clk_system {
 	struct clk_hw hw;
 	struct regmap *regmap;
+	struct at91_clk_pms pms;
 	u8 id;
-	const char *parent_name;
 };
 
 static inline int is_pck(int id)
@@ -36,10 +35,10 @@ static inline bool clk_system_ready(struct regmap *regmap, int id)
 
 	regmap_read(regmap, AT91_PMC_SR, &status);
 
-	return status & (1 << id) ? 1 : 0;
+	return !!(status & (1 << id));
 }
 
-static int clk_system_enable(struct clk_hw *hw)
+static int clk_system_prepare(struct clk_hw *hw)
 {
 	struct clk_system *sys = to_clk_system(hw);
 
@@ -49,19 +48,19 @@ static int clk_system_enable(struct clk_hw *hw)
 		return 0;
 
 	while (!clk_system_ready(sys->regmap, sys->id))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
 
-static void clk_system_disable(struct clk_hw *hw)
+static void clk_system_unprepare(struct clk_hw *hw)
 {
 	struct clk_system *sys = to_clk_system(hw);
 
 	regmap_write(sys->regmap, AT91_PMC_SCDR, 1 << sys->id);
 }
 
-static int clk_system_is_enabled(struct clk_hw *hw)
+static int clk_system_is_prepared(struct clk_hw *hw)
 {
 	struct clk_system *sys = to_clk_system(hw);
 	unsigned int status;
@@ -76,40 +75,47 @@ static int clk_system_is_enabled(struct clk_hw *hw)
 
 	regmap_read(sys->regmap, AT91_PMC_SR, &status);
 
-	return status & (1 << sys->id) ? 1 : 0;
+	return !!(status & (1 << sys->id));
 }
 
 static const struct clk_ops system_ops = {
-	.enable = clk_system_enable,
-	.disable = clk_system_disable,
-	.is_enabled = clk_system_is_enabled,
+	.enable = clk_system_prepare,
+	.disable = clk_system_unprepare,
+	.is_enabled = clk_system_is_prepared,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_system(struct regmap *regmap, const char *name,
-			 const char *parent_name, u8 id)
+			 const char *parent_name, u8 id, unsigned long flags)
 {
 	struct clk_system *sys;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
 	if (!parent_name || id > SYSTEM_MAX_ID)
 		return ERR_PTR(-EINVAL);
 
-	sys = xzalloc(sizeof(*sys));
-	sys->hw.clk.name = name;
-	sys->hw.clk.ops = &system_ops;
-	sys->parent_name = parent_name;
-	sys->hw.clk.parent_names = &sys->parent_name;
-	sys->hw.clk.num_parents = 1;
-	/* init.flags = CLK_SET_RATE_PARENT; */
+	sys = kzalloc(sizeof(*sys), GFP_KERNEL);
+	if (!sys)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &system_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_PARENT | flags;
+
 	sys->id = id;
+	sys->hw.init = &init;
 	sys->regmap = regmap;
 
-	ret = bclk_register(&sys->hw.clk);
+	hw = &sys->hw;
+	ret = clk_hw_register(NULL, &sys->hw);
 	if (ret) {
 		kfree(sys);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &sys->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 0a715037edbd..4473dc7c3491 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -3,20 +3,15 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
 #include "pmc.h"
 
-#define USB_SOURCE_MAX		2
-
 #define SAM9X5_USB_DIV_SHIFT	8
 #define SAM9X5_USB_MAX_DIV	0xf
 
@@ -29,23 +24,22 @@
 struct at91sam9x5_clk_usb {
 	struct clk_hw hw;
 	struct regmap *regmap;
+	struct at91_clk_pms pms;
 	u32 usbs_mask;
 	u8 num_parents;
-	const char *parent_names[];
 };
 
-#define to_at91sam9x5_clk_usb(_hw) \
-	container_of(_hw, struct at91sam9x5_clk_usb, hw)
+#define to_at91sam9x5_clk_usb(hw) \
+	container_of(hw, struct at91sam9x5_clk_usb, hw)
 
 struct at91rm9200_clk_usb {
 	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 divisors[4];
-	const char *parent_name;
 };
 
-#define to_at91rm9200_clk_usb(_hw) \
-	container_of(_hw, struct at91rm9200_clk_usb, hw)
+#define to_at91rm9200_clk_usb(hw) \
+	container_of(hw, struct at91rm9200_clk_usb, hw)
 
 static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
@@ -67,7 +61,7 @@ static int at91sam9x5_clk_usb_set_parent(struct clk_hw *hw, u8 index)
 	if (index >= usb->num_parents)
 		return -EINVAL;
 
-	regmap_write_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
+	regmap_update_bits(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);
 
 	return 0;
 }
@@ -95,8 +89,8 @@ static int at91sam9x5_clk_usb_set_rate(struct clk_hw *hw, unsigned long rate,
 	if (div > SAM9X5_USB_MAX_DIV + 1 || !div)
 		return -EINVAL;
 
-	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_OHCIUSBDIV,
-			  (div - 1) << SAM9X5_USB_DIV_SHIFT);
+	regmap_update_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_OHCIUSBDIV,
+			   (div - 1) << SAM9X5_USB_DIV_SHIFT);
 
 	return 0;
 }
@@ -112,8 +106,8 @@ static int at91sam9n12_clk_usb_enable(struct clk_hw *hw)
 {
 	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
-	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
-			  AT91_PMC_USBS);
+	regmap_update_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
+			   AT91_PMC_USBS);
 
 	return 0;
 }
@@ -122,7 +116,7 @@ static void at91sam9n12_clk_usb_disable(struct clk_hw *hw)
 {
 	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
-	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS, 0);
+	regmap_update_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS, 0);
 }
 
 static int at91sam9n12_clk_usb_is_enabled(struct clk_hw *hw)
@@ -143,38 +137,43 @@ static const struct clk_ops at91sam9n12_usb_ops = {
 	.set_rate = at91sam9x5_clk_usb_set_rate,
 };
 
-static struct clk * __init
+static struct clk_hw * __init
 _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char **parent_names, u8 num_parents,
 			     u32 usbs_mask)
 {
 	struct at91sam9x5_clk_usb *usb;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
-	usb = kzalloc(struct_size(usb, parent_names, num_parents), GFP_KERNEL);
-	usb->hw.clk.name = name;
-	usb->hw.clk.ops = &at91sam9x5_usb_ops;
-	memcpy(usb->parent_names, parent_names,
-	       num_parents * sizeof(usb->parent_names[0]));
-	usb->hw.clk.parent_names = usb->parent_names;
-	usb->hw.clk.num_parents = num_parents;
-	usb->hw.clk.flags = CLK_SET_RATE_PARENT;
-	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | */
-	/* 	     CLK_SET_RATE_PARENT; */
+	usb = kzalloc(sizeof(*usb), GFP_KERNEL);
+	if (!usb)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &at91sam9x5_usb_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		     CLK_SET_RATE_PARENT;
+
+	usb->hw.init = &init;
 	usb->regmap = regmap;
 	usb->usbs_mask = usbs_mask;
 	usb->num_parents = num_parents;
 
-	ret = bclk_register(&usb->hw.clk);
+	hw = &usb->hw;
+	ret = clk_hw_register(NULL, &usb->hw);
 	if (ret) {
 		kfree(usb);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &usb->hw.clk;
+	return hw;
 }
 
-struct clk * __init
+struct clk_hw * __init
 at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents)
 {
@@ -182,7 +181,7 @@ at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 					    num_parents, SAM9X5_USBS_MASK);
 }
 
-struct clk * __init
+struct clk_hw * __init
 sam9x60_clk_register_usb(struct regmap *regmap, const char *name,
 			 const char **parent_names, u8 num_parents)
 {
@@ -190,29 +189,36 @@ sam9x60_clk_register_usb(struct regmap *regmap, const char *name,
 					    num_parents, SAM9X60_USBS_MASK);
 }
 
-struct clk * __init
+struct clk_hw * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name)
 {
 	struct at91sam9x5_clk_usb *usb;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
-	usb = xzalloc(sizeof(*usb));
-	usb->hw.clk.name = name;
-	usb->hw.clk.ops = &at91sam9n12_usb_ops;
-	usb->parent_names[0] = parent_name;
-	usb->hw.clk.parent_names = &usb->parent_names[0];
-	usb->hw.clk.num_parents = 1;
-	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT; */
+	usb = kzalloc(sizeof(*usb), GFP_KERNEL);
+	if (!usb)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &at91sam9n12_usb_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
+
+	usb->hw.init = &init;
 	usb->regmap = regmap;
 
-	ret = bclk_register(&usb->hw.clk);
+	hw = &usb->hw;
+	ret = clk_hw_register(NULL, &usb->hw);
 	if (ret) {
 		kfree(usb);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &usb->hw.clk;
+	return hw;
 }
 
 static unsigned long at91rm9200_clk_usb_recalc_rate(struct clk_hw *hw,
@@ -235,7 +241,7 @@ static long at91rm9200_clk_usb_round_rate(struct clk_hw *hw, unsigned long rate,
 					  unsigned long *parent_rate)
 {
 	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(hw);
-	struct clk *parent = clk_get_parent(clk_hw_to_clk(hw));
+	struct clk_hw *parent = clk_hw_get_parent(hw);
 	unsigned long bestrate = 0;
 	int bestdiff = -1;
 	unsigned long tmprate;
@@ -249,10 +255,7 @@ static long at91rm9200_clk_usb_round_rate(struct clk_hw *hw, unsigned long rate,
 			continue;
 
 		tmp_parent_rate = rate * usb->divisors[i];
-		tmp_parent_rate = clk_round_rate(parent, tmp_parent_rate);
-		if (!tmp_parent_rate)
-			continue;
-
+		tmp_parent_rate = clk_hw_round_rate(parent, tmp_parent_rate);
 		tmprate = DIV_ROUND_CLOSEST(tmp_parent_rate, usb->divisors[i]);
 		if (tmprate < rate)
 			tmpdiff = rate - tmprate;
@@ -286,9 +289,9 @@ static int at91rm9200_clk_usb_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	for (i = 0; i < RM9200_USB_DIV_TAB_SIZE; i++) {
 		if (usb->divisors[i] == div) {
-			regmap_write_bits(usb->regmap, AT91_CKGR_PLLBR,
-					  AT91_PMC_USBDIV,
-					  i << RM9200_USB_DIV_SHIFT);
+			regmap_update_bits(usb->regmap, AT91_CKGR_PLLBR,
+					   AT91_PMC_USBDIV,
+					   i << RM9200_USB_DIV_SHIFT);
 
 			return 0;
 		}
@@ -303,29 +306,35 @@ static const struct clk_ops at91rm9200_usb_ops = {
 	.set_rate = at91rm9200_clk_usb_set_rate,
 };
 
-struct clk * __init
+struct clk_hw * __init
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors)
 {
 	struct at91rm9200_clk_usb *usb;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
-	usb = xzalloc(sizeof(*usb));
-	usb->hw.clk.name = name;
-	usb->hw.clk.ops = &at91rm9200_usb_ops;
-	usb->parent_name = parent_name;
-	usb->hw.clk.parent_names = &usb->parent_name;
-	usb->hw.clk.num_parents = 1;
-	/* init.flags = CLK_SET_RATE_PARENT; */
+	usb = kzalloc(sizeof(*usb), GFP_KERNEL);
+	if (!usb)
+		return ERR_PTR(-ENOMEM);
 
+	init.name = name;
+	init.ops = &at91rm9200_usb_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_SET_RATE_PARENT;
+
+	usb->hw.init = &init;
 	usb->regmap = regmap;
 	memcpy(usb->divisors, divisors, sizeof(usb->divisors));
 
-	ret = bclk_register(&usb->hw.clk);
+	hw = &usb->hw;
+	ret = clk_hw_register(NULL, &usb->hw);
 	if (ret) {
 		kfree(usb);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &usb->hw.clk;
+	return hw;
 }
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index d3855b18f7b4..7d85e4302404 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -3,15 +3,14 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
-#include <clock.h>
-#include <linux/list.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <linux/clk/at91_pmc.h>
+#include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
-
 #include <soc/at91/atmel-sfr.h>
+#include <linux/printk.h>
 
 #include "pmc.h"
 
@@ -19,16 +18,16 @@
  * The purpose of this clock is to generate a 480 MHz signal. A different
  * rate can't be configured.
  */
-#define UTMI_RATE      480000000
+#define UTMI_RATE	480000000
 
 struct clk_utmi {
 	struct clk_hw hw;
-	const char *parent;
 	struct regmap *regmap_pmc;
 	struct regmap *regmap_sfr;
+	struct at91_clk_pms pms;
 };
 
-#define to_clk_utmi(_hw) container_of(_hw, struct clk_utmi, hw)
+#define to_clk_utmi(hw) container_of(hw, struct clk_utmi, hw)
 
 static inline bool clk_utmi_ready(struct regmap *regmap)
 {
@@ -39,9 +38,9 @@ static inline bool clk_utmi_ready(struct regmap *regmap)
 	return status & AT91_PMC_LOCKU;
 }
 
-static int clk_utmi_enable(struct clk_hw *hw)
+static int clk_utmi_prepare(struct clk_hw *hw)
 {
-	struct clk *hw_parent;
+	struct clk_hw *hw_parent;
 	struct clk_utmi *utmi = to_clk_utmi(hw);
 	unsigned int uckr = AT91_PMC_UPLLEN | AT91_PMC_UPLLCOUNT |
 			    AT91_PMC_BIASEN;
@@ -53,8 +52,8 @@ static int clk_utmi_enable(struct clk_hw *hw)
 	 * FREQ field of the SFR_UTMICKTRIM register to generate properly
 	 * the utmi clock.
 	 */
-	hw_parent = clk_get_parent(clk_hw_to_clk(hw));
-	parent_rate = clk_get_rate(hw_parent);
+	hw_parent = clk_hw_get_parent(hw);
+	parent_rate = clk_hw_get_rate(hw_parent);
 
 	switch (parent_rate) {
 	case 12000000:
@@ -78,80 +77,173 @@ static int clk_utmi_enable(struct clk_hw *hw)
 		return -EINVAL;
 	}
 
-
 	if (utmi->regmap_sfr) {
-		regmap_write_bits(utmi->regmap_sfr, AT91_SFR_UTMICKTRIM,
-				  AT91_UTMICKTRIM_FREQ, utmi_ref_clk_freq);
+		regmap_update_bits(utmi->regmap_sfr, AT91_SFR_UTMICKTRIM,
+				   AT91_UTMICKTRIM_FREQ, utmi_ref_clk_freq);
 	} else if (utmi_ref_clk_freq) {
 		pr_err("UTMICK: sfr node required\n");
 		return -EINVAL;
 	}
-	regmap_write_bits(utmi->regmap_pmc, AT91_CKGR_UCKR, uckr, uckr);
 
+	regmap_update_bits(utmi->regmap_pmc, AT91_CKGR_UCKR, uckr, uckr);
 
 	while (!clk_utmi_ready(utmi->regmap_pmc))
-		barrier();
+		cpu_relax();
 
 	return 0;
 }
 
-static int clk_utmi_is_enabled(struct clk_hw *hw)
+static int clk_utmi_is_prepared(struct clk_hw *hw)
 {
 	struct clk_utmi *utmi = to_clk_utmi(hw);
 
 	return clk_utmi_ready(utmi->regmap_pmc);
 }
 
-static void clk_utmi_disable(struct clk_hw *hw)
+static void clk_utmi_unprepare(struct clk_hw *hw)
 {
 	struct clk_utmi *utmi = to_clk_utmi(hw);
 
-	regmap_write_bits(utmi->regmap_pmc, AT91_CKGR_UCKR,
-			  AT91_PMC_UPLLEN, 0);
+	regmap_update_bits(utmi->regmap_pmc, AT91_CKGR_UCKR,
+			   AT91_PMC_UPLLEN, 0);
 }
 
 static unsigned long clk_utmi_recalc_rate(struct clk_hw *hw,
 					  unsigned long parent_rate)
 {
-	/* UTMI clk rate is fixed */
+	/* UTMI clk rate is fixed. */
 	return UTMI_RATE;
 }
 
 static const struct clk_ops utmi_ops = {
-	.enable = clk_utmi_enable,
-	.disable = clk_utmi_disable,
-	.is_enabled = clk_utmi_is_enabled,
+	.enable = clk_utmi_prepare,
+	.disable = clk_utmi_unprepare,
+	.is_enabled = clk_utmi_is_prepared,
 	.recalc_rate = clk_utmi_recalc_rate,
 };
 
-struct clk * __init
-at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
-		       const char *name, const char *parent_name)
+static struct clk_hw * __init
+at91_clk_register_utmi_internal(struct regmap *regmap_pmc,
+				struct regmap *regmap_sfr,
+				const char *name, const char *parent_name,
+				const struct clk_ops *ops, unsigned long flags)
 {
-	int ret;
 	struct clk_utmi *utmi;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
 
-	utmi = xzalloc(sizeof(*utmi));
+	utmi = kzalloc(sizeof(*utmi), GFP_KERNEL);
+	if (!utmi)
+		return ERR_PTR(-ENOMEM);
 
-	utmi->hw.clk.name = name;
-	utmi->hw.clk.ops = &utmi_ops;
-
-	if (parent_name) {
-		utmi->parent = parent_name;
-		utmi->hw.clk.parent_names = &utmi->parent;
-		utmi->hw.clk.num_parents = 1;
-	}
-
-	/* utmi->clk.flags = CLK_SET_RATE_GATE; */
+	init.name = name;
+	init.ops = ops;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = parent_name ? 1 : 0;
+	init.flags = flags;
 
+	utmi->hw.init = &init;
 	utmi->regmap_pmc = regmap_pmc;
 	utmi->regmap_sfr = regmap_sfr;
 
-	ret = bclk_register(&utmi->hw.clk);
+	hw = &utmi->hw;
+	ret = clk_hw_register(NULL, &utmi->hw);
 	if (ret) {
 		kfree(utmi);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &utmi->hw.clk;
+	return hw;
+}
+
+struct clk_hw * __init
+at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
+		       const char *name, const char *parent_name)
+{
+	return at91_clk_register_utmi_internal(regmap_pmc, regmap_sfr, name,
+			parent_name, &utmi_ops, CLK_SET_RATE_GATE);
+}
+
+static int clk_utmi_sama7g5_prepare(struct clk_hw *hw)
+{
+	struct clk_utmi *utmi = to_clk_utmi(hw);
+	struct clk_hw *hw_parent;
+	unsigned long parent_rate;
+	unsigned int val;
+
+	hw_parent = clk_hw_get_parent(hw);
+	parent_rate = clk_hw_get_rate(hw_parent);
+
+	switch (parent_rate) {
+	case 16000000:
+		val = 0;
+		break;
+	case 20000000:
+		val = 2;
+		break;
+	case 24000000:
+		val = 3;
+		break;
+	case 32000000:
+		val = 5;
+		break;
+	default:
+		pr_err("UTMICK: unsupported main_xtal rate\n");
+		return -EINVAL;
+	}
+
+	regmap_write(utmi->regmap_pmc, AT91_PMC_XTALF, val);
+
+	return 0;
+
+}
+
+static int clk_utmi_sama7g5_is_prepared(struct clk_hw *hw)
+{
+	struct clk_utmi *utmi = to_clk_utmi(hw);
+	struct clk_hw *hw_parent;
+	unsigned long parent_rate;
+	unsigned int val;
+
+	hw_parent = clk_hw_get_parent(hw);
+	parent_rate = clk_hw_get_rate(hw_parent);
+
+	regmap_read(utmi->regmap_pmc, AT91_PMC_XTALF, &val);
+	switch (val & 0x7) {
+	case 0:
+		if (parent_rate == 16000000)
+			return 1;
+		break;
+	case 2:
+		if (parent_rate == 20000000)
+			return 1;
+		break;
+	case 3:
+		if (parent_rate == 24000000)
+			return 1;
+		break;
+	case 5:
+		if (parent_rate == 32000000)
+			return 1;
+		break;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+static const struct clk_ops sama7g5_utmi_ops = {
+	.enable = clk_utmi_sama7g5_prepare,
+	.is_enabled = clk_utmi_sama7g5_is_prepared,
+	.recalc_rate = clk_utmi_recalc_rate,
+};
+
+struct clk_hw * __init
+at91_clk_sama7g5_register_utmi(struct regmap *regmap_pmc, const char *name,
+			       const char *parent_name)
+{
+	return at91_clk_register_utmi_internal(regmap_pmc, NULL, name,
+			parent_name, &sama7g5_utmi_ops, 0);
 }
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index fea931aa7c6c..4780b5790d9e 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -3,16 +3,15 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <module.h>
-#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/clkdev.h>
-#include <linux/overflow.h>
+#include <linux/clk/at91_pmc.h>
 #include <of.h>
+#include <of_address.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 
-#include <dt-bindings/clock/at91.h>
-
 #include "pmc.h"
 
 #define PMC_MAX_IDS 128
@@ -41,7 +40,7 @@ int of_at91_get_clk_range(struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_at91_get_clk_range);
 
-struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data)
+struct clk_hw *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data)
 {
 	unsigned int type = clkspec->args[0];
 	unsigned int idx = clkspec->args[1];
@@ -106,173 +105,3 @@ struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
 
 	return pmc_data;
 }
-
-#ifdef CONFIG_PM
-static struct regmap *pmcreg;
-
-static u8 registered_ids[PMC_MAX_IDS];
-static u8 registered_pcks[PMC_MAX_PCKS];
-
-static struct
-{
-	u32 scsr;
-	u32 pcsr0;
-	u32 uckr;
-	u32 mor;
-	u32 mcfr;
-	u32 pllar;
-	u32 mckr;
-	u32 usb;
-	u32 imr;
-	u32 pcsr1;
-	u32 pcr[PMC_MAX_IDS];
-	u32 audio_pll0;
-	u32 audio_pll1;
-	u32 pckr[PMC_MAX_PCKS];
-} pmc_cache;
-
-/*
- * As Peripheral ID 0 is invalid on AT91 chips, the identifier is stored
- * without alteration in the table, and 0 is for unused clocks.
- */
-void pmc_register_id(u8 id)
-{
-	int i;
-
-	for (i = 0; i < PMC_MAX_IDS; i++) {
-		if (registered_ids[i] == 0) {
-			registered_ids[i] = id;
-			break;
-		}
-		if (registered_ids[i] == id)
-			break;
-	}
-}
-
-/*
- * As Programmable Clock 0 is valid on AT91 chips, there is an offset
- * of 1 between the stored value and the real clock ID.
- */
-void pmc_register_pck(u8 pck)
-{
-	int i;
-
-	for (i = 0; i < PMC_MAX_PCKS; i++) {
-		if (registered_pcks[i] == 0) {
-			registered_pcks[i] = pck + 1;
-			break;
-		}
-		if (registered_pcks[i] == (pck + 1))
-			break;
-	}
-}
-
-static int pmc_suspend(void)
-{
-	int i;
-	u8 num;
-
-	regmap_read(pmcreg, AT91_PMC_SCSR, &pmc_cache.scsr);
-	regmap_read(pmcreg, AT91_PMC_PCSR, &pmc_cache.pcsr0);
-	regmap_read(pmcreg, AT91_CKGR_UCKR, &pmc_cache.uckr);
-	regmap_read(pmcreg, AT91_CKGR_MOR, &pmc_cache.mor);
-	regmap_read(pmcreg, AT91_CKGR_MCFR, &pmc_cache.mcfr);
-	regmap_read(pmcreg, AT91_CKGR_PLLAR, &pmc_cache.pllar);
-	regmap_read(pmcreg, AT91_PMC_MCKR, &pmc_cache.mckr);
-	regmap_read(pmcreg, AT91_PMC_USB, &pmc_cache.usb);
-	regmap_read(pmcreg, AT91_PMC_IMR, &pmc_cache.imr);
-	regmap_read(pmcreg, AT91_PMC_PCSR1, &pmc_cache.pcsr1);
-
-	for (i = 0; registered_ids[i]; i++) {
-		regmap_write(pmcreg, AT91_PMC_PCR,
-			     (registered_ids[i] & AT91_PMC_PCR_PID_MASK));
-		regmap_read(pmcreg, AT91_PMC_PCR,
-			    &pmc_cache.pcr[registered_ids[i]]);
-	}
-	for (i = 0; registered_pcks[i]; i++) {
-		num = registered_pcks[i] - 1;
-		regmap_read(pmcreg, AT91_PMC_PCKR(num), &pmc_cache.pckr[num]);
-	}
-
-	return 0;
-}
-
-static bool pmc_ready(unsigned int mask)
-{
-	unsigned int status;
-
-	regmap_read(pmcreg, AT91_PMC_SR, &status);
-
-	return ((status & mask) == mask) ? 1 : 0;
-}
-
-static void pmc_resume(void)
-{
-	int i;
-	u8 num;
-	u32 tmp;
-	u32 mask = AT91_PMC_MCKRDY | AT91_PMC_LOCKA;
-
-	regmap_read(pmcreg, AT91_PMC_MCKR, &tmp);
-	if (pmc_cache.mckr != tmp)
-		pr_warn("MCKR was not configured properly by the firmware\n");
-	regmap_read(pmcreg, AT91_CKGR_PLLAR, &tmp);
-	if (pmc_cache.pllar != tmp)
-		pr_warn("PLLAR was not configured properly by the firmware\n");
-
-	regmap_write(pmcreg, AT91_PMC_SCER, pmc_cache.scsr);
-	regmap_write(pmcreg, AT91_PMC_PCER, pmc_cache.pcsr0);
-	regmap_write(pmcreg, AT91_CKGR_UCKR, pmc_cache.uckr);
-	regmap_write(pmcreg, AT91_CKGR_MOR, pmc_cache.mor);
-	regmap_write(pmcreg, AT91_CKGR_MCFR, pmc_cache.mcfr);
-	regmap_write(pmcreg, AT91_PMC_USB, pmc_cache.usb);
-	regmap_write(pmcreg, AT91_PMC_IMR, pmc_cache.imr);
-	regmap_write(pmcreg, AT91_PMC_PCER1, pmc_cache.pcsr1);
-
-	for (i = 0; registered_ids[i]; i++) {
-		regmap_write(pmcreg, AT91_PMC_PCR,
-			     pmc_cache.pcr[registered_ids[i]] |
-			     AT91_PMC_PCR_CMD);
-	}
-	for (i = 0; registered_pcks[i]; i++) {
-		num = registered_pcks[i] - 1;
-		regmap_write(pmcreg, AT91_PMC_PCKR(num), pmc_cache.pckr[num]);
-	}
-
-	if (pmc_cache.uckr & AT91_PMC_UPLLEN)
-		mask |= AT91_PMC_LOCKU;
-
-	while (!pmc_ready(mask))
-		cpu_relax();
-}
-
-static struct syscore_ops pmc_syscore_ops = {
-	.suspend = pmc_suspend,
-	.resume = pmc_resume,
-};
-
-static const struct of_device_id sama5d2_pmc_dt_ids[] = {
-	{ .compatible = "atmel,sama5d2-pmc" },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, sama5d2_pmc_dt_ids);
-
-static int __init pmc_register_ops(void)
-{
-	struct device_node *np;
-
-	np = of_find_matching_node(NULL, sama5d2_pmc_dt_ids);
-	if (!np)
-		return -ENODEV;
-
-	pmcreg = device_node_to_regmap(np);
-	if (IS_ERR(pmcreg))
-		return PTR_ERR(pmcreg);
-
-	register_syscore_ops(&pmc_syscore_ops);
-
-	return 0;
-}
-/* This has to happen before arch_initcall because of the tcb_clksrc driver */
-postcore_initcall(pmc_register_ops);
-#endif
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index f9b2324f6aac..6c8801a0f9c5 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -8,23 +8,29 @@
 #ifndef __PMC_H_
 #define __PMC_H_
 
-#include <io.h>
-#include <linux/bitops.h>
-#include <linux/printk.h>
+#include <linux/io.h>
+#include <linux/regmap.h>
+#include <of.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/spinlock.h>
+
+#include <dt-bindings/clock/at91.h>
+
+extern spinlock_t pmc_pcr_lock;
 
 struct pmc_data {
 	unsigned int ncore;
-	struct clk **chws;
+	struct clk_hw **chws;
 	unsigned int nsystem;
-	struct clk **shws;
+	struct clk_hw **shws;
 	unsigned int nperiph;
-	struct clk **phws;
+	struct clk_hw **phws;
 	unsigned int ngck;
-	struct clk **ghws;
+	struct clk_hw **ghws;
 	unsigned int npck;
-	struct clk **pchws;
+	struct clk_hw **pchws;
 
-	struct clk *hwtable[];
+	struct clk_hw *hwtable[];
 };
 
 struct clk_range {
@@ -45,14 +51,20 @@ extern const struct clk_master_layout at91sam9x5_master_layout;
 
 struct clk_master_characteristics {
 	struct clk_range output;
-	u32 divisors[4];
+	u32 divisors[5];
 	u8 have_div3_pres;
 };
 
 struct clk_pll_layout {
 	u32 pllr_mask;
-	u16 mul_mask;
+	u32 mul_mask;
+	u32 frac_mask;
+	u32 div_mask;
+	u32 endiv_mask;
 	u8 mul_shift;
+	u8 frac_shift;
+	u8 div_shift;
+	u8 endiv_shift;
 };
 
 extern const struct clk_pll_layout at91rm9200_pll_layout;
@@ -89,6 +101,20 @@ struct clk_pcr_layout {
 	u32 pid_mask;
 };
 
+/**
+ * struct at91_clk_pms - Power management state for AT91 clock
+ * @rate: clock rate
+ * @parent_rate: clock parent rate
+ * @status: clock status (enabled or disabled)
+ * @parent: clock parent index
+ */
+struct at91_clk_pms {
+	unsigned long rate;
+	unsigned long parent_rate;
+	unsigned int status;
+	unsigned int parent;
+};
+
 #define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))
 #define field_prep(_mask, _val) (((_val) << (ffs(_mask) - 1)) & (_mask))
 
@@ -101,122 +127,142 @@ struct pmc_data *pmc_data_allocate(unsigned int ncore, unsigned int nsystem,
 int of_at91_get_clk_range(struct device_node *np, const char *propname,
 			  struct clk_range *range);
 
-struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data);
+struct clk_hw *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
 				 const char *parent_name);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
 				const char *parent_name);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
 				const char *parent_name);
 
-struct clk * __init
-at91_clk_register_generated(struct regmap *regmap,
+struct clk_hw * __init
+at91_clk_register_generated(struct regmap *regmap, spinlock_t *lock,
 			    const struct clk_pcr_layout *layout,
 			    const char *name, const char **parent_names,
-			    u8 num_parents, u8 id, bool pll_audio,
-			    const struct clk_range *range);
+			    u32 *mux_table, u8 num_parents, u8 id,
+			    const struct clk_range *range, int chg_pid);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 			const char *parent_name);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
 			  const char * const *parent_names,
 			  unsigned int num_parents, u8 bus_id);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_main_rc_osc(struct regmap *regmap, const char *name,
 			      u32 frequency, u32 accuracy);
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_main_osc(struct regmap *regmap, const char *name,
 			   const char *parent_name, bool bypass);
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_rm9200_main(struct regmap *regmap,
 			      const char *name,
 			      const char *parent_name);
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_sam9x5_main(struct regmap *regmap, const char *name,
 			      const char **parent_names, int num_parents);
 
-struct clk * __init
-at91_clk_register_master(struct regmap *regmap, const char *name,
-			 int num_parents, const char **parent_names,
-			 const struct clk_master_layout *layout,
-			 const struct clk_master_characteristics *characteristics);
+struct clk_hw * __init
+at91_clk_register_master_pres(struct regmap *regmap, const char *name,
+			      int num_parents, const char **parent_names,
+			      const struct clk_master_layout *layout,
+			      const struct clk_master_characteristics *characteristics,
+			      spinlock_t *lock);
 
-struct clk * __init
+struct clk_hw * __init
+at91_clk_register_master_div(struct regmap *regmap, const char *name,
+			     const char *parent_names,
+			     const struct clk_master_layout *layout,
+			     const struct clk_master_characteristics *characteristics,
+			     spinlock_t *lock, u32 flags);
+
+struct clk_hw * __init
+at91_clk_sama7g5_register_master(struct regmap *regmap,
+				 const char *name, int num_parents,
+				 const char **parent_names, u32 *mux_table,
+				 spinlock_t *lock, u8 id, bool critical,
+				 int chg_pid);
+
+struct clk_hw * __init
 at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 			     const char *parent_name, u32 id);
-struct clk * __init
-at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
+struct clk_hw * __init
+at91_clk_register_sam9x5_peripheral(struct regmap *regmap, spinlock_t *lock,
 				    const struct clk_pcr_layout *layout,
 				    const char *name, const char *parent_name,
-				    u32 id, const struct clk_range *range);
+				    u32 id, const struct clk_range *range,
+				    int chg_pid, unsigned long flags);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_pll(struct regmap *regmap, const char *name,
 		      const char *parent_name, u8 id,
 		      const struct clk_pll_layout *layout,
 		      const struct clk_pll_characteristics *characteristics);
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 			 const char *parent_name);
 
-struct clk * __init
-sam9x60_clk_register_pll(struct regmap *regmap,
-			 const char *name, const char *parent_name, u8 id,
-			 const struct clk_pll_characteristics *characteristics);
+struct clk_hw * __init
+sam9x60_clk_register_div_pll(struct regmap *regmap, spinlock_t *lock,
+			     const char *name, const char *parent_name, u8 id,
+			     const struct clk_pll_characteristics *characteristics,
+			     const struct clk_pll_layout *layout, u32 flags);
 
-struct clk * __init
+struct clk_hw * __init
+sam9x60_clk_register_frac_pll(struct regmap *regmap, spinlock_t *lock,
+			      const char *name, const char *parent_name,
+			      struct clk_hw *parent_hw, u8 id,
+			      const struct clk_pll_characteristics *characteristics,
+			      const struct clk_pll_layout *layout, u32 flags);
+
+struct clk_hw * __init
 at91_clk_register_programmable(struct regmap *regmap, const char *name,
 			       const char **parent_names, u8 num_parents, u8 id,
-			       const struct clk_programmable_layout *layout);
+			       const struct clk_programmable_layout *layout,
+			       u32 *mux_table);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_sam9260_slow(struct regmap *regmap,
 			       const char *name,
 			       const char **parent_names,
 			       int num_parents);
 
-struct clk * __init
+struct clk_hw * __init
 at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_system(struct regmap *regmap, const char *name,
-			 const char *parent_name, u8 id);
+			 const char *parent_name, u8 id, unsigned long flags);
 
-struct clk * __init
+struct clk_hw * __init
 at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char **parent_names, u8 num_parents);
-struct clk * __init
+struct clk_hw * __init
 at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 			     const char *parent_name);
-struct clk * __init
+struct clk_hw * __init
 sam9x60_clk_register_usb(struct regmap *regmap, const char *name,
 			 const char **parent_names, u8 num_parents);
-
-struct clk * __init
+struct clk_hw * __init
 at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 			    const char *parent_name, const u32 *divisors);
 
-struct clk * __init
+struct clk_hw * __init
 at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 		       const char *name, const char *parent_name);
 
-#ifdef CONFIG_PM
-void pmc_register_id(u8 id);
-void pmc_register_pck(u8 pck);
-#else
-static inline void pmc_register_id(u8 id) {}
-static inline void pmc_register_pck(u8 pck) {}
-#endif
+struct clk_hw * __init
+at91_clk_sama7g5_register_utmi(struct regmap *regmap, const char *name,
+			       const char *parent_name);
 
 #endif /* __PMC_H_ */
diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 9651b616c8d5..3a477ffc952b 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -1,18 +1,16 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(pmc_pll_lock);
+static DEFINE_SPINLOCK(mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 140000000, .max = 200000000 },
 	.divisors = { 1, 2, 4, 3 },
@@ -26,7 +24,7 @@ static const struct clk_master_layout sam9x60_master_layout = {
 };
 
 static const struct clk_range plla_outputs[] = {
-	{ .min = 300000000, .max = 600000000 },
+	{ .min = 2343750, .max = 1200000000 },
 };
 
 static const struct clk_pll_characteristics plla_characteristics = {
@@ -46,6 +44,20 @@ static const struct clk_pll_characteristics upll_characteristics = {
 	.upll = true,
 };
 
+static const struct clk_pll_layout pll_frac_layout = {
+	.mul_mask = GENMASK(31, 24),
+	.frac_mask = GENMASK(21, 0),
+	.mul_shift = 24,
+	.frac_shift = 0,
+};
+
+static const struct clk_pll_layout pll_div_layout = {
+	.div_mask = GENMASK(7, 0),
+	.endiv_mask = BIT(29),
+	.div_shift = 0,
+	.endiv_shift = 29,
+};
+
 static const struct clk_programmable_layout sam9x60_programmable_layout = {
 	.pres_mask = 0xff,
 	.pres_shift = 8,
@@ -64,17 +76,23 @@ static const struct clk_pcr_layout sam9x60_pcr_layout = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } sam9x60_systemck[] = {
-	{ .n = "ddrck",  .p = "masterck", .id = 2 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck",  .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
 	{ .n = "uhpck",  .p = "usbck",    .id = 6 },
 	{ .n = "pck0",   .p = "prog0",    .id = 8 },
 	{ .n = "pck1",   .p = "prog1",    .id = 9 },
-	{ .n = "qspick", .p = "masterck", .id = 19 },
+	{ .n = "qspick", .p = "masterck_div", .id = 19 },
 };
 
 static const struct {
 	char *n;
+	unsigned long flags;
 	u8 id;
 } sam9x60_periphck[] = {
 	{ .n = "pioA_clk",   .id = 2, },
@@ -121,7 +139,11 @@ static const struct {
 	{ .n = "pioD_clk",   .id = 44, },
 	{ .n = "tcb1_clk",   .id = 45, },
 	{ .n = "dbgu_clk",   .id = 47, },
-	{ .n = "mpddr_clk",  .id = 49, },
+	/*
+	 * mpddr_clk feeds DDR controller and is enabled by bootloader thus we
+	 * need to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "mpddr_clk",  .id = 49, .flags = CLK_IS_CRITICAL },
 };
 
 static const struct {
@@ -160,10 +182,10 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	const char *td_slck_name, *md_slck_name, *mainxtal_name;
 	struct pmc_data *sam9x60_pmc;
 	const char *parent_names[6];
+	struct clk_hw *main_osc_hw;
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
-	bool bypass;
 
 	i = of_property_match_string(np, "clock-names", "td_slck");
 	if (i < 0)
@@ -193,17 +215,15 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	if (!sam9x60_pmc)
 		return;
 
-	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 24000000,
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
 					   50000000);
 	if (IS_ERR(hw))
 		goto err_free;
 
-	bypass = of_property_read_bool(np, "atmel,osc-bypass");
-
-	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
-					bypass);
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name, 0);
 	if (IS_ERR(hw))
 		goto err_free;
+	main_osc_hw = hw;
 
 	parent_names[0] = "main_rc_osc";
 	parent_names[1] = "main_osc";
@@ -213,15 +233,45 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 
 	sam9x60_pmc->chws[PMC_MAIN] = hw;
 
-	hw = sam9x60_clk_register_pll(regmap, "pllack",
-				      "mainck", 0, &plla_characteristics);
+	hw = sam9x60_clk_register_frac_pll(regmap, &pmc_pll_lock, "pllack_fracck",
+					   "mainck", sam9x60_pmc->chws[PMC_MAIN],
+					   0, &plla_characteristics,
+					   &pll_frac_layout,
+					   /*
+					    * This feeds pllack_divck which
+					    * feeds CPU. It should not be
+					    * disabled.
+					    */
+					   CLK_IS_CRITICAL | CLK_SET_RATE_GATE);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = sam9x60_clk_register_div_pll(regmap, &pmc_pll_lock, "pllack_divck",
+					  "pllack_fracck", 0, &plla_characteristics,
+					  &pll_div_layout,
+					   /*
+					    * This feeds CPU. It should not
+					    * be disabled.
+					    */
+					  CLK_IS_CRITICAL | CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
 	sam9x60_pmc->chws[PMC_PLLACK] = hw;
 
-	hw = sam9x60_clk_register_pll(regmap, "upllck",
-				      "main_osc", 1, &upll_characteristics);
+	hw = sam9x60_clk_register_frac_pll(regmap, &pmc_pll_lock, "upllck_fracck",
+					   "main_osc", main_osc_hw, 1,
+					   &upll_characteristics,
+					   &pll_frac_layout, CLK_SET_RATE_GATE);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = sam9x60_clk_register_div_pll(regmap, &pmc_pll_lock, "upllck_divck",
+					  "upllck_fracck", 1, &upll_characteristics,
+					  &pll_div_layout,
+					  CLK_SET_RATE_GATE |
+					  CLK_SET_PARENT_GATE |
+					  CLK_SET_RATE_PARENT);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -229,17 +279,24 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 
 	parent_names[0] = md_slck_name;
 	parent_names[1] = "mainck";
-	parent_names[2] = "pllack";
-	hw = at91_clk_register_master(regmap, "masterck", 3, parent_names,
-				      &sam9x60_master_layout,
-				      &mck_characteristics);
+	parent_names[2] = "pllack_divck";
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 3,
+					   parent_names, &sam9x60_master_layout,
+					   &mck_characteristics, &mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres", &sam9x60_master_layout,
+					  &mck_characteristics, &mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
 	sam9x60_pmc->chws[PMC_MCK] = hw;
 
-	parent_names[0] = "pllack";
-	parent_names[1] = "upllck";
+	parent_names[0] = "pllack_divck";
+	parent_names[1] = "upllck_divck";
 	parent_names[2] = "main_osc";
 	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 3);
 	if (IS_ERR(hw))
@@ -248,15 +305,18 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	parent_names[0] = md_slck_name;
 	parent_names[1] = td_slck_name;
 	parent_names[2] = "mainck";
-	parent_names[3] = "masterck";
-	parent_names[4] = "pllack";
-	parent_names[5] = "upllck";
-	for (i = 0; i < 8; i++) {
-		char *name = xasprintf("prog%d", i);
+	parent_names[3] = "masterck_div";
+	parent_names[4] = "pllack_divck";
+	parent_names[5] = "upllck_divck";
+	for (i = 0; i < 2; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 6, i,
-						    &sam9x60_programmable_layout);
+						    &sam9x60_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -266,7 +326,8 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(sam9x60_systemck); i++) {
 		hw = at91_clk_register_system(regmap, sam9x60_systemck[i].n,
 					      sam9x60_systemck[i].p,
-					      sam9x60_systemck[i].id);
+					      sam9x60_systemck[i].id,
+					      sam9x60_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -274,12 +335,13 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sam9x60_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sam9x60_pcr_layout,
 							 sam9x60_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 sam9x60_periphck[i].id,
-							 &range);
+							 &range, INT_MIN,
+							 sam9x60_periphck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -287,20 +349,19 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sam9x60_gck); i++) {
-		hw = at91_clk_register_generated(regmap,
+		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock,
 						 &sam9x60_pcr_layout,
 						 sam9x60_gck[i].n,
-						 parent_names, 6,
+						 parent_names, NULL, 6,
 						 sam9x60_gck[i].id,
-						 false,
-						 &sam9x60_gck[i].r);
+						 &sam9x60_gck[i].r, INT_MIN);
 		if (IS_ERR(hw))
 			goto err_free;
 
 		sam9x60_pmc->ghws[sam9x60_gck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, sam9x60_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sam9x60_pmc);
 
 	return;
 
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index b25adafab91a..96c0d1f6a46d 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 124000000, .max = 166000000 },
 	.divisors = { 1, 2, 4, 3 },
@@ -44,16 +41,21 @@ static const struct clk_pcr_layout sama5d2_pcr_layout = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } sama5d2_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
-	{ .n = "lcdck", .p = "masterck", .id = 3 },
-	{ .n = "uhpck", .p = "usbck",    .id = 6 },
-	{ .n = "udpck", .p = "usbck",    .id = 7 },
-	{ .n = "pck0",  .p = "prog0",    .id = 8 },
-	{ .n = "pck1",  .p = "prog1",    .id = 9 },
-	{ .n = "pck2",  .p = "prog2",    .id = 10 },
-	{ .n = "iscck", .p = "masterck", .id = 18 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
+	{ .n = "lcdck", .p = "masterck_div", .id = 3 },
+	{ .n = "uhpck", .p = "usbck",        .id = 6 },
+	{ .n = "udpck", .p = "usbck",        .id = 7 },
+	{ .n = "pck0",  .p = "prog0",        .id = 8 },
+	{ .n = "pck1",  .p = "prog1",        .id = 9 },
+	{ .n = "pck2",  .p = "prog2",        .id = 10 },
+	{ .n = "iscck", .p = "masterck_div", .id = 18 },
 };
 
 static const struct {
@@ -101,6 +103,7 @@ static const struct {
 
 static const struct {
 	char *n;
+	unsigned long flags;
 	u8 id;
 } sama5d2_periphck[] = {
 	{ .n = "dma0_clk",    .id = 6, },
@@ -108,7 +111,11 @@ static const struct {
 	{ .n = "aes_clk",     .id = 9, },
 	{ .n = "aesb_clk",    .id = 10, },
 	{ .n = "sha_clk",     .id = 12, },
-	{ .n = "mpddr_clk",   .id = 13, },
+	/*
+	 * mpddr_clk feeds DDR controller and is enabled by bootloader thus we
+	 * need to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "mpddr_clk",   .id = 13, .flags = CLK_IS_CRITICAL },
 	{ .n = "matrix0_clk", .id = 15, },
 	{ .n = "sdmmc0_hclk", .id = 31, },
 	{ .n = "sdmmc1_hclk", .id = 32, },
@@ -122,21 +129,30 @@ static const struct {
 	char *n;
 	u8 id;
 	struct clk_range r;
-	bool pll;
+	int chg_pid;
 } sama5d2_gck[] = {
-	{ .n = "sdmmc0_gclk", .id = 31, },
-	{ .n = "sdmmc1_gclk", .id = 32, },
-	{ .n = "tcb0_gclk",   .id = 35, .r = { .min = 0, .max = 83000000 }, },
-	{ .n = "tcb1_gclk",   .id = 36, .r = { .min = 0, .max = 83000000 }, },
-	{ .n = "pwm_gclk",    .id = 38, .r = { .min = 0, .max = 83000000 }, },
-	{ .n = "isc_gclk",    .id = 46, },
-	{ .n = "pdmic_gclk",  .id = 48, },
-	{ .n = "i2s0_gclk",   .id = 54, .pll = true },
-	{ .n = "i2s1_gclk",   .id = 55, .pll = true },
-	{ .n = "can0_gclk",   .id = 56, .r = { .min = 0, .max = 80000000 }, },
-	{ .n = "can1_gclk",   .id = 57, .r = { .min = 0, .max = 80000000 }, },
-	{ .n = "classd_gclk", .id = 59, .r = { .min = 0, .max = 100000000 },
-	  .pll = true },
+	{ .n = "flx0_gclk",   .id = 19, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "flx1_gclk",   .id = 20, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "flx2_gclk",   .id = 21, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "flx3_gclk",   .id = 22, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "flx4_gclk",   .id = 23, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "uart0_gclk",  .id = 24, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "uart1_gclk",  .id = 25, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "uart2_gclk",  .id = 26, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "uart3_gclk",  .id = 27, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "uart4_gclk",  .id = 28, .chg_pid = INT_MIN, .r = { .min = 0, .max = 27666666 }, },
+	{ .n = "sdmmc0_gclk", .id = 31, .chg_pid = INT_MIN, },
+	{ .n = "sdmmc1_gclk", .id = 32, .chg_pid = INT_MIN, },
+	{ .n = "tcb0_gclk",   .id = 35, .chg_pid = INT_MIN, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "tcb1_gclk",   .id = 36, .chg_pid = INT_MIN, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "pwm_gclk",    .id = 38, .chg_pid = INT_MIN, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "isc_gclk",    .id = 46, .chg_pid = INT_MIN, },
+	{ .n = "pdmic_gclk",  .id = 48, .chg_pid = INT_MIN, },
+	{ .n = "i2s0_gclk",   .id = 54, .chg_pid = 5, },
+	{ .n = "i2s1_gclk",   .id = 55, .chg_pid = 5, },
+	{ .n = "can0_gclk",   .id = 56, .chg_pid = INT_MIN, .r = { .min = 0, .max = 80000000 }, },
+	{ .n = "can1_gclk",   .id = 57, .chg_pid = INT_MIN, .r = { .min = 0, .max = 80000000 }, },
+	{ .n = "classd_gclk", .id = 59, .chg_pid = 5, .r = { .min = 0, .max = 100000000 }, },
 };
 
 static const struct clk_programmable_layout sama5d2_programmable_layout = {
@@ -154,7 +170,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	struct pmc_data *sama5d2_pmc;
 	const char *parent_names[6];
 	struct regmap *regmap, *regmap_sfr;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -173,7 +189,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sama5d2_pmc = pmc_data_allocate(PMC_AUDIOPLLCK + 1,
+	sama5d2_pmc = pmc_data_allocate(PMC_AUDIOPINCK + 1,
 					nck(sama5d2_systemck),
 					nck(sama5d2_periph32ck),
 					nck(sama5d2_gck), 3);
@@ -221,6 +237,8 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	sama5d2_pmc->chws[PMC_AUDIOPINCK] = hw;
+
 	hw = at91_clk_register_audio_pll_pmc(regmap, "audiopll_pmcck",
 					     "audiopll_fracck");
 	if (IS_ERR(hw))
@@ -242,15 +260,24 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91sam9x5_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91sam9x5_master_layout,
+					   &mck_characteristics, &mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91sam9x5_master_layout,
+					  &mck_characteristics, &mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
 	sama5d2_pmc->chws[PMC_MCK] = hw;
 
-	hw = at91_clk_register_h32mx(regmap, "h32mxck", "masterck");
+	hw = at91_clk_register_h32mx(regmap, "h32mxck", "masterck_div");
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -266,16 +293,17 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < 3; i++) {
-		char *name;
+		char name[6];
 
-		name = xasprintf("prog%d", i);
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 6, i,
-						    &sama5d2_programmable_layout);
+						    &sama5d2_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -285,7 +313,8 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(sama5d2_systemck); i++) {
 		hw = at91_clk_register_system(regmap, sama5d2_systemck[i].n,
 					      sama5d2_systemck[i].p,
-					      sama5d2_systemck[i].id);
+					      sama5d2_systemck[i].id,
+					      sama5d2_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -293,12 +322,13 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sama5d2_pcr_layout,
 							 sama5d2_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 sama5d2_periphck[i].id,
-							 &range);
+							 &range, INT_MIN,
+							 sama5d2_periphck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -306,12 +336,13 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d2_periph32ck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sama5d2_pcr_layout,
 							 sama5d2_periph32ck[i].n,
 							 "h32mxck",
 							 sama5d2_periph32ck[i].id,
-							 &sama5d2_periph32ck[i].r);
+							 &sama5d2_periph32ck[i].r,
+							 INT_MIN, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -322,16 +353,16 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < ARRAY_SIZE(sama5d2_gck); i++) {
-		hw = at91_clk_register_generated(regmap,
+		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock,
 						 &sama5d2_pcr_layout,
 						 sama5d2_gck[i].n,
-						 parent_names, 6,
+						 parent_names, NULL, 6,
 						 sama5d2_gck[i].id,
-						 sama5d2_gck[i].pll,
-						 &sama5d2_gck[i].r);
+						 &sama5d2_gck[i].r,
+						 sama5d2_gck[i].chg_pid);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -358,11 +389,12 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 		sama5d2_pmc->chws[PMC_I2S1_MUX] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d2_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama5d2_pmc);
 
 	return;
 
 err_free:
 	kfree(sama5d2_pmc);
 }
-CLK_OF_DECLARE_DRIVER(sama5d2_pmc, "atmel,sama5d2-pmc", sama5d2_pmc_setup);
+
+CLK_OF_DECLARE(sama5d2_pmc, "atmel,sama5d2-pmc", sama5d2_pmc_setup);
diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
index fdd97e583424..53a1a7413a02 100644
--- a/drivers/clk/at91/sama5d3.c
+++ b/drivers/clk/at91/sama5d3.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 0, .max = 166000000 },
 	.divisors = { 1, 2, 4, 3 },
@@ -44,22 +41,28 @@ static const struct clk_pcr_layout sama5d3_pcr_layout = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } sama5d3_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
-	{ .n = "lcdck", .p = "masterck", .id = 3 },
-	{ .n = "smdck", .p = "smdclk",   .id = 4 },
-	{ .n = "uhpck", .p = "usbck",    .id = 6 },
-	{ .n = "udpck", .p = "usbck",    .id = 7 },
-	{ .n = "pck0",  .p = "prog0",    .id = 8 },
-	{ .n = "pck1",  .p = "prog1",    .id = 9 },
-	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
+	{ .n = "lcdck", .p = "masterck_div", .id = 3 },
+	{ .n = "smdck", .p = "smdclk",       .id = 4 },
+	{ .n = "uhpck", .p = "usbck",        .id = 6 },
+	{ .n = "udpck", .p = "usbck",        .id = 7 },
+	{ .n = "pck0",  .p = "prog0",        .id = 8 },
+	{ .n = "pck1",  .p = "prog1",        .id = 9 },
+	{ .n = "pck2",  .p = "prog2",        .id = 10 },
 };
 
 static const struct {
 	char *n;
 	u8 id;
 	struct clk_range r;
+	unsigned long flags;
 } sama5d3_periphck[] = {
 	{ .n = "dbgu_clk", .id = 2, },
 	{ .n = "hsmc_clk", .id = 5, },
@@ -103,7 +106,11 @@ static const struct {
 	{ .n = "tdes_clk", .id = 44, },
 	{ .n = "trng_clk", .id = 45, },
 	{ .n = "fuse_clk", .id = 48, },
-	{ .n = "mpddr_clk", .id = 49, },
+	/*
+	 * mpddr_clk feeds DDR controller and is enabled by bootloader thus we
+	 * need to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "mpddr_clk", .id = 49, .flags = CLK_IS_CRITICAL },
 };
 
 static void __init sama5d3_pmc_setup(struct device_node *np)
@@ -112,7 +119,7 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
 	struct pmc_data *sama5d3_pmc;
 	const char *parent_names[5];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -176,9 +183,18 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91sam9x5_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91sam9x5_master_layout,
+					   &mck_characteristics, &mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91sam9x5_master_layout,
+					  &mck_characteristics, &mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -198,13 +214,16 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 3; i++) {
-		char *name = xasprintf("prog%d", i);
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91sam9x5_programmable_layout);
+						    &at91sam9x5_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -214,7 +233,8 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(sama5d3_systemck); i++) {
 		hw = at91_clk_register_system(regmap, sama5d3_systemck[i].n,
 					      sama5d3_systemck[i].p,
-					      sama5d3_systemck[i].id);
+					      sama5d3_systemck[i].id,
+					      sama5d3_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -222,19 +242,21 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d3_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sama5d3_pcr_layout,
 							 sama5d3_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 sama5d3_periphck[i].id,
-							 &sama5d3_periphck[i].r);
+							 &sama5d3_periphck[i].r,
+							 INT_MIN,
+							 sama5d3_periphck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
 		sama5d3_pmc->phws[sama5d3_periphck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d3_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama5d3_pmc);
 
 	return;
 
@@ -245,4 +267,4 @@ static void __init sama5d3_pmc_setup(struct device_node *np)
  * The TCB is used as the clocksource so its clock is needed early. This means
  * this can't be a platform driver.
  */
-CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
+CLK_OF_DECLARE(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 8c6b2c1e2da7..8fbd81088349 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <linux/regmap.h>
-#include <stdio.h>
+#include <linux/clk-provider.h>
 #include <mfd/syscon.h>
-
-#include <linux/clk.h>
 #include <linux/slab.h>
-#include <linux/types.h>
+#include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
 
 #include "pmc.h"
 
+static DEFINE_SPINLOCK(mck_lock);
+
 static const struct clk_master_characteristics mck_characteristics = {
 	.output = { .min = 125000000, .max = 200000000 },
 	.divisors = { 1, 2, 4, 3 },
@@ -43,16 +40,21 @@ static const struct clk_pcr_layout sama5d4_pcr_layout = {
 static const struct {
 	char *n;
 	char *p;
+	unsigned long flags;
 	u8 id;
 } sama5d4_systemck[] = {
-	{ .n = "ddrck", .p = "masterck", .id = 2 },
-	{ .n = "lcdck", .p = "masterck", .id = 3 },
-	{ .n = "smdck", .p = "smdclk",   .id = 4 },
-	{ .n = "uhpck", .p = "usbck",    .id = 6 },
-	{ .n = "udpck", .p = "usbck",    .id = 7 },
-	{ .n = "pck0",  .p = "prog0",    .id = 8 },
-	{ .n = "pck1",  .p = "prog1",    .id = 9 },
-	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+	/*
+	 * ddrck feeds DDR controller and is enabled by bootloader thus we need
+	 * to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "ddrck", .p = "masterck_div", .id = 2, .flags = CLK_IS_CRITICAL },
+	{ .n = "lcdck", .p = "masterck_div", .id = 3 },
+	{ .n = "smdck", .p = "smdclk",       .id = 4 },
+	{ .n = "uhpck", .p = "usbck",        .id = 6 },
+	{ .n = "udpck", .p = "usbck",        .id = 7 },
+	{ .n = "pck0",  .p = "prog0",        .id = 8 },
+	{ .n = "pck1",  .p = "prog1",        .id = 9 },
+	{ .n = "pck2",  .p = "prog2",        .id = 10 },
 };
 
 static const struct {
@@ -107,12 +109,17 @@ static const struct {
 
 static const struct {
 	char *n;
+	unsigned long flags;
 	u8 id;
 } sama5d4_periphck[] = {
 	{ .n = "dma0_clk", .id = 8 },
 	{ .n = "cpkcc_clk", .id = 10 },
 	{ .n = "aesb_clk", .id = 13 },
-	{ .n = "mpddr_clk", .id = 16 },
+	/*
+	 * mpddr_clk feeds DDR controller and is enabled by bootloader thus we
+	 * need to keep it enabled in case there is no Linux consumer for it.
+	 */
+	{ .n = "mpddr_clk", .id = 16, .flags = CLK_IS_CRITICAL },
 	{ .n = "matrix0_clk", .id = 18 },
 	{ .n = "vdec_clk", .id = 19 },
 	{ .n = "dma1_clk", .id = 50 },
@@ -127,7 +134,7 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	struct pmc_data *sama5d4_pmc;
 	const char *parent_names[5];
 	struct regmap *regmap;
-	struct clk *hw;
+	struct clk_hw *hw;
 	int i;
 	bool bypass;
 
@@ -191,15 +198,24 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
-				      &at91sam9x5_master_layout,
-				      &mck_characteristics);
+	hw = at91_clk_register_master_pres(regmap, "masterck_pres", 4,
+					   parent_names,
+					   &at91sam9x5_master_layout,
+					   &mck_characteristics, &mck_lock);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_master_div(regmap, "masterck_div",
+					  "masterck_pres",
+					  &at91sam9x5_master_layout,
+					  &mck_characteristics, &mck_lock,
+					  CLK_SET_RATE_GATE);
 	if (IS_ERR(hw))
 		goto err_free;
 
 	sama5d4_pmc->chws[PMC_MCK] = hw;
 
-	hw = at91_clk_register_h32mx(regmap, "h32mxck", "masterck");
+	hw = at91_clk_register_h32mx(regmap, "h32mxck", "masterck_div");
 	if (IS_ERR(hw))
 		goto err_free;
 
@@ -221,15 +237,16 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	parent_names[1] = "mainck";
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
-	parent_names[4] = "masterck";
+	parent_names[4] = "masterck_div";
 	for (i = 0; i < 3; i++) {
-		char *name;
+		char name[6];
 
-		name = xasprintf("prog%d", i);
+		snprintf(name, sizeof(name), "prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
 						    parent_names, 5, i,
-						    &at91sam9x5_programmable_layout);
+						    &at91sam9x5_programmable_layout,
+						    NULL);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -239,7 +256,8 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(sama5d4_systemck); i++) {
 		hw = at91_clk_register_system(regmap, sama5d4_systemck[i].n,
 					      sama5d4_systemck[i].p,
-					      sama5d4_systemck[i].id);
+					      sama5d4_systemck[i].id,
+					      sama5d4_systemck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -247,12 +265,13 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d4_periphck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sama5d4_pcr_layout,
 							 sama5d4_periphck[i].n,
-							 "masterck",
+							 "masterck_div",
 							 sama5d4_periphck[i].id,
-							 &range);
+							 &range, INT_MIN,
+							 sama5d4_periphck[i].flags);
 		if (IS_ERR(hw))
 			goto err_free;
 
@@ -260,23 +279,24 @@ static void __init sama5d4_pmc_setup(struct device_node *np)
 	}
 
 	for (i = 0; i < ARRAY_SIZE(sama5d4_periph32ck); i++) {
-		hw = at91_clk_register_sam9x5_peripheral(regmap,
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
 							 &sama5d4_pcr_layout,
 							 sama5d4_periph32ck[i].n,
 							 "h32mxck",
 							 sama5d4_periph32ck[i].id,
-							 &range);
+							 &range, INT_MIN, 0);
 		if (IS_ERR(hw))
 			goto err_free;
 
 		sama5d4_pmc->phws[sama5d4_periph32ck[i].id] = hw;
 	}
 
-	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d4_pmc);
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama5d4_pmc);
 
 	return;
 
 err_free:
 	kfree(sama5d4_pmc);
 }
-CLK_OF_DECLARE_DRIVER(sama5d4_pmc, "atmel,sama5d4-pmc", sama5d4_pmc_setup);
+
+CLK_OF_DECLARE(sama5d4_pmc, "atmel,sama5d4-pmc", sama5d4_pmc_setup);
diff --git a/drivers/clk/at91/sama7g5.c b/drivers/clk/at91/sama7g5.c
new file mode 100644
index 000000000000..7d333671766b
--- /dev/null
+++ b/drivers/clk/at91/sama7g5.c
@@ -0,0 +1,1133 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SAMA7G5 PMC code.
+ *
+ * Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
+ *
+ */
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <mfd/syscon.h>
+#include <linux/slab.h>
+#include <stdio.h>
+
+#include <dt-bindings/clock/at91.h>
+
+#include "pmc.h"
+
+#define SAMA7G5_INIT_TABLE(_table, _count)		\
+	do {						\
+		u8 _i;					\
+		for (_i = 0; _i < (_count); _i++)	\
+			(_table)[_i] = _i;		\
+	} while (0)
+
+#define SAMA7G5_FILL_TABLE(_to, _from, _count)		\
+	do {						\
+		u8 _i;					\
+		for (_i = 0; _i < (_count); _i++) {	\
+			(_to)[_i] = (_from)[_i];	\
+		}					\
+	} while (0)
+
+static DEFINE_SPINLOCK(pmc_pll_lock);
+static DEFINE_SPINLOCK(pmc_mck0_lock);
+static DEFINE_SPINLOCK(pmc_mckX_lock);
+
+/*
+ * PLL clocks identifiers
+ * @PLL_ID_CPU:		CPU PLL identifier
+ * @PLL_ID_SYS:		System PLL identifier
+ * @PLL_ID_DDR:		DDR PLL identifier
+ * @PLL_ID_IMG:		Image subsystem PLL identifier
+ * @PLL_ID_BAUD:	Baud PLL identifier
+ * @PLL_ID_AUDIO:	Audio PLL identifier
+ * @PLL_ID_ETH:		Ethernet PLL identifier
+ */
+enum pll_ids {
+	PLL_ID_CPU,
+	PLL_ID_SYS,
+	PLL_ID_DDR,
+	PLL_ID_IMG,
+	PLL_ID_BAUD,
+	PLL_ID_AUDIO,
+	PLL_ID_ETH,
+	PLL_ID_MAX,
+};
+
+/*
+ * PLL type identifiers
+ * @PLL_TYPE_FRAC:	fractional PLL identifier
+ * @PLL_TYPE_DIV:	divider PLL identifier
+ */
+enum pll_type {
+	PLL_TYPE_FRAC,
+	PLL_TYPE_DIV,
+};
+
+/* Layout for fractional PLLs. */
+static const struct clk_pll_layout pll_layout_frac = {
+	.mul_mask	= GENMASK(31, 24),
+	.frac_mask	= GENMASK(21, 0),
+	.mul_shift	= 24,
+	.frac_shift	= 0,
+};
+
+/* Layout for DIVPMC dividers. */
+static const struct clk_pll_layout pll_layout_divpmc = {
+	.div_mask	= GENMASK(7, 0),
+	.endiv_mask	= BIT(29),
+	.div_shift	= 0,
+	.endiv_shift	= 29,
+};
+
+/* Layout for DIVIO dividers. */
+static const struct clk_pll_layout pll_layout_divio = {
+	.div_mask	= GENMASK(19, 12),
+	.endiv_mask	= BIT(30),
+	.div_shift	= 12,
+	.endiv_shift	= 30,
+};
+
+/*
+ * CPU PLL output range.
+ * Notice: The upper limit has been setup to 1000000002 due to hardware
+ * block which cannot output exactly 1GHz.
+ */
+static const struct clk_range cpu_pll_outputs[] = {
+	{ .min = 2343750, .max = 1000000002 },
+};
+
+/* PLL output range. */
+static const struct clk_range pll_outputs[] = {
+	{ .min = 2343750, .max = 1200000000 },
+};
+
+/* CPU PLL characteristics. */
+static const struct clk_pll_characteristics cpu_pll_characteristics = {
+	.input = { .min = 12000000, .max = 50000000 },
+	.num_output = ARRAY_SIZE(cpu_pll_outputs),
+	.output = cpu_pll_outputs,
+};
+
+/* PLL characteristics. */
+static const struct clk_pll_characteristics pll_characteristics = {
+	.input = { .min = 12000000, .max = 50000000 },
+	.num_output = ARRAY_SIZE(pll_outputs),
+	.output = pll_outputs,
+};
+
+/*
+ * PLL clocks description
+ * @n:		clock name
+ * @p:		clock parent
+ * @l:		clock layout
+ * @c:		clock characteristics
+ * @t:		clock type
+ * @f:		clock flags
+ * @eid:	export index in sama7g5->chws[] array
+ */
+static const struct {
+	const char *n;
+	const char *p;
+	const struct clk_pll_layout *l;
+	const struct clk_pll_characteristics *c;
+	unsigned long f;
+	u8 t;
+	u8 eid;
+} sama7g5_plls[][PLL_ID_MAX] = {
+	[PLL_ID_CPU] = {
+		{ .n = "cpupll_fracck",
+		  .p = "mainck",
+		  .l = &pll_layout_frac,
+		  .c = &cpu_pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		   /*
+		    * This feeds cpupll_divpmcck which feeds CPU. It should
+		    * not be disabled.
+		    */
+		  .f = CLK_IS_CRITICAL, },
+
+		{ .n = "cpupll_divpmcck",
+		  .p = "cpupll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &cpu_pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		   /* This feeds CPU. It should not be disabled. */
+		  .f = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
+		  .eid = PMC_CPUPLL, },
+	},
+
+	[PLL_ID_SYS] = {
+		{ .n = "syspll_fracck",
+		  .p = "mainck",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		   /*
+		    * This feeds syspll_divpmcck which may feed critical parts
+		    * of the systems like timers. Therefore it should not be
+		    * disabled.
+		    */
+		  .f = CLK_IS_CRITICAL | CLK_SET_RATE_GATE, },
+
+		{ .n = "syspll_divpmcck",
+		  .p = "syspll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		   /*
+		    * This may feed critical parts of the systems like timers.
+		    * Therefore it should not be disabled.
+		    */
+		  .f = CLK_IS_CRITICAL | CLK_SET_RATE_GATE,
+		  .eid = PMC_SYSPLL, },
+	},
+
+	[PLL_ID_DDR] = {
+		{ .n = "ddrpll_fracck",
+		  .p = "mainck",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		   /*
+		    * This feeds ddrpll_divpmcck which feeds DDR. It should not
+		    * be disabled.
+		    */
+		  .f = CLK_IS_CRITICAL | CLK_SET_RATE_GATE, },
+
+		{ .n = "ddrpll_divpmcck",
+		  .p = "ddrpll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		   /* This feeds DDR. It should not be disabled. */
+		  .f = CLK_IS_CRITICAL | CLK_SET_RATE_GATE, },
+	},
+
+	[PLL_ID_IMG] = {
+		{ .n = "imgpll_fracck",
+		  .p = "mainck",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		  .f = CLK_SET_RATE_GATE, },
+
+		{ .n = "imgpll_divpmcck",
+		  .p = "imgpll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		  .f = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		       CLK_SET_RATE_PARENT, },
+	},
+
+	[PLL_ID_BAUD] = {
+		{ .n = "baudpll_fracck",
+		  .p = "mainck",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		  .f = CLK_SET_RATE_GATE, },
+
+		{ .n = "baudpll_divpmcck",
+		  .p = "baudpll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		  .f = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		       CLK_SET_RATE_PARENT, },
+	},
+
+	[PLL_ID_AUDIO] = {
+		{ .n = "audiopll_fracck",
+		  .p = "main_xtal",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		  .f = CLK_SET_RATE_GATE, },
+
+		{ .n = "audiopll_divpmcck",
+		  .p = "audiopll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		  .f = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		       CLK_SET_RATE_PARENT,
+		  .eid = PMC_AUDIOPMCPLL, },
+
+		{ .n = "audiopll_diviock",
+		  .p = "audiopll_fracck",
+		  .l = &pll_layout_divio,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		  .f = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		       CLK_SET_RATE_PARENT,
+		  .eid = PMC_AUDIOIOPLL, },
+	},
+
+	[PLL_ID_ETH] = {
+		{ .n = "ethpll_fracck",
+		  .p = "main_xtal",
+		  .l = &pll_layout_frac,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_FRAC,
+		  .f = CLK_SET_RATE_GATE, },
+
+		{ .n = "ethpll_divpmcck",
+		  .p = "ethpll_fracck",
+		  .l = &pll_layout_divpmc,
+		  .c = &pll_characteristics,
+		  .t = PLL_TYPE_DIV,
+		  .f = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		       CLK_SET_RATE_PARENT, },
+	},
+};
+
+/*
+ * Master clock (MCK[1..4]) description
+ * @n:			clock name
+ * @ep:			extra parents names array
+ * @ep_chg_chg_id:	index in parents array that specifies the changeable
+ *			parent
+ * @ep_count:		extra parents count
+ * @ep_mux_table:	mux table for extra parents
+ * @id:			clock id
+ * @eid:		export index in sama7g5->chws[] array
+ * @c:			true if clock is critical and cannot be disabled
+ */
+static const struct {
+	const char *n;
+	const char *ep[4];
+	int ep_chg_id;
+	u8 ep_count;
+	u8 ep_mux_table[4];
+	u8 id;
+	u8 eid;
+	u8 c;
+} sama7g5_mckx[] = {
+	{ .n = "mck1",
+	  .id = 1,
+	  .ep = { "syspll_divpmcck", },
+	  .ep_mux_table = { 5, },
+	  .ep_count = 1,
+	  .ep_chg_id = INT_MIN,
+	  .eid = PMC_MCK1,
+	  .c = 1, },
+
+	{ .n = "mck2",
+	  .id = 2,
+	  .ep = { "ddrpll_divpmcck", },
+	  .ep_mux_table = { 6, },
+	  .ep_count = 1,
+	  .ep_chg_id = INT_MIN,
+	  .c = 1, },
+
+	{ .n = "mck3",
+	  .id = 3,
+	  .ep = { "syspll_divpmcck", "ddrpll_divpmcck", "imgpll_divpmcck", },
+	  .ep_mux_table = { 5, 6, 7, },
+	  .ep_count = 3,
+	  .ep_chg_id = 5, },
+
+	{ .n = "mck4",
+	  .id = 4,
+	  .ep = { "syspll_divpmcck", },
+	  .ep_mux_table = { 5, },
+	  .ep_count = 1,
+	  .ep_chg_id = INT_MIN,
+	  .c = 1, },
+};
+
+/*
+ * System clock description
+ * @n:	clock name
+ * @p:	clock parent name
+ * @id: clock id
+ */
+static const struct {
+	const char *n;
+	const char *p;
+	u8 id;
+} sama7g5_systemck[] = {
+	{ .n = "pck0",		.p = "prog0", .id = 8, },
+	{ .n = "pck1",		.p = "prog1", .id = 9, },
+	{ .n = "pck2",		.p = "prog2", .id = 10, },
+	{ .n = "pck3",		.p = "prog3", .id = 11, },
+	{ .n = "pck4",		.p = "prog4", .id = 12, },
+	{ .n = "pck5",		.p = "prog5", .id = 13, },
+	{ .n = "pck6",		.p = "prog6", .id = 14, },
+	{ .n = "pck7",		.p = "prog7", .id = 15, },
+};
+
+/* Mux table for programmable clocks. */
+static u32 sama7g5_prog_mux_table[] = { 0, 1, 2, 5, 6, 7, 8, 9, 10, };
+
+/*
+ * Peripheral clock description
+ * @n:		clock name
+ * @p:		clock parent name
+ * @r:		clock range values
+ * @id:		clock id
+ * @chgp:	index in parent array of the changeable parent
+ */
+static const struct {
+	const char *n;
+	const char *p;
+	struct clk_range r;
+	u8 chgp;
+	u8 id;
+} sama7g5_periphck[] = {
+	{ .n = "pioA_clk",	.p = "mck0", .id = 11, },
+	{ .n = "securam_clk",	.p = "mck0", .id = 18, },
+	{ .n = "sfr_clk",	.p = "mck1", .id = 19, },
+	{ .n = "hsmc_clk",	.p = "mck1", .id = 21, },
+	{ .n = "xdmac0_clk",	.p = "mck1", .id = 22, },
+	{ .n = "xdmac1_clk",	.p = "mck1", .id = 23, },
+	{ .n = "xdmac2_clk",	.p = "mck1", .id = 24, },
+	{ .n = "acc_clk",	.p = "mck1", .id = 25, },
+	{ .n = "aes_clk",	.p = "mck1", .id = 27, },
+	{ .n = "tzaesbasc_clk",	.p = "mck1", .id = 28, },
+	{ .n = "asrc_clk",	.p = "mck1", .id = 30, .r = { .max = 200000000, }, },
+	{ .n = "cpkcc_clk",	.p = "mck0", .id = 32, },
+	{ .n = "csi_clk",	.p = "mck3", .id = 33, .r = { .max = 266000000, }, .chgp = 1, },
+	{ .n = "csi2dc_clk",	.p = "mck3", .id = 34, .r = { .max = 266000000, }, .chgp = 1, },
+	{ .n = "eic_clk",	.p = "mck1", .id = 37, },
+	{ .n = "flex0_clk",	.p = "mck1", .id = 38, },
+	{ .n = "flex1_clk",	.p = "mck1", .id = 39, },
+	{ .n = "flex2_clk",	.p = "mck1", .id = 40, },
+	{ .n = "flex3_clk",	.p = "mck1", .id = 41, },
+	{ .n = "flex4_clk",	.p = "mck1", .id = 42, },
+	{ .n = "flex5_clk",	.p = "mck1", .id = 43, },
+	{ .n = "flex6_clk",	.p = "mck1", .id = 44, },
+	{ .n = "flex7_clk",	.p = "mck1", .id = 45, },
+	{ .n = "flex8_clk",	.p = "mck1", .id = 46, },
+	{ .n = "flex9_clk",	.p = "mck1", .id = 47, },
+	{ .n = "flex10_clk",	.p = "mck1", .id = 48, },
+	{ .n = "flex11_clk",	.p = "mck1", .id = 49, },
+	{ .n = "gmac0_clk",	.p = "mck1", .id = 51, },
+	{ .n = "gmac1_clk",	.p = "mck1", .id = 52, },
+	{ .n = "icm_clk",	.p = "mck1", .id = 55, },
+	{ .n = "isc_clk",	.p = "mck3", .id = 56, .r = { .max = 266000000, }, .chgp = 1, },
+	{ .n = "i2smcc0_clk",	.p = "mck1", .id = 57, .r = { .max = 200000000, }, },
+	{ .n = "i2smcc1_clk",	.p = "mck1", .id = 58, .r = { .max = 200000000, }, },
+	{ .n = "matrix_clk",	.p = "mck1", .id = 60, },
+	{ .n = "mcan0_clk",	.p = "mck1", .id = 61, .r = { .max = 200000000, }, },
+	{ .n = "mcan1_clk",	.p = "mck1", .id = 62, .r = { .max = 200000000, }, },
+	{ .n = "mcan2_clk",	.p = "mck1", .id = 63, .r = { .max = 200000000, }, },
+	{ .n = "mcan3_clk",	.p = "mck1", .id = 64, .r = { .max = 200000000, }, },
+	{ .n = "mcan4_clk",	.p = "mck1", .id = 65, .r = { .max = 200000000, }, },
+	{ .n = "mcan5_clk",	.p = "mck1", .id = 66, .r = { .max = 200000000, }, },
+	{ .n = "pdmc0_clk",	.p = "mck1", .id = 68, .r = { .max = 200000000, }, },
+	{ .n = "pdmc1_clk",	.p = "mck1", .id = 69, .r = { .max = 200000000, }, },
+	{ .n = "pit64b0_clk",	.p = "mck1", .id = 70, },
+	{ .n = "pit64b1_clk",	.p = "mck1", .id = 71, },
+	{ .n = "pit64b2_clk",	.p = "mck1", .id = 72, },
+	{ .n = "pit64b3_clk",	.p = "mck1", .id = 73, },
+	{ .n = "pit64b4_clk",	.p = "mck1", .id = 74, },
+	{ .n = "pit64b5_clk",	.p = "mck1", .id = 75, },
+	{ .n = "pwm_clk",	.p = "mck1", .id = 77, },
+	{ .n = "qspi0_clk",	.p = "mck1", .id = 78, },
+	{ .n = "qspi1_clk",	.p = "mck1", .id = 79, },
+	{ .n = "sdmmc0_clk",	.p = "mck1", .id = 80, },
+	{ .n = "sdmmc1_clk",	.p = "mck1", .id = 81, },
+	{ .n = "sdmmc2_clk",	.p = "mck1", .id = 82, },
+	{ .n = "sha_clk",	.p = "mck1", .id = 83, },
+	{ .n = "spdifrx_clk",	.p = "mck1", .id = 84, .r = { .max = 200000000, }, },
+	{ .n = "spdiftx_clk",	.p = "mck1", .id = 85, .r = { .max = 200000000, }, },
+	{ .n = "ssc0_clk",	.p = "mck1", .id = 86, .r = { .max = 200000000, }, },
+	{ .n = "ssc1_clk",	.p = "mck1", .id = 87, .r = { .max = 200000000, }, },
+	{ .n = "tcb0_ch0_clk",	.p = "mck1", .id = 88, .r = { .max = 200000000, }, },
+	{ .n = "tcb0_ch1_clk",	.p = "mck1", .id = 89, .r = { .max = 200000000, }, },
+	{ .n = "tcb0_ch2_clk",	.p = "mck1", .id = 90, .r = { .max = 200000000, }, },
+	{ .n = "tcb1_ch0_clk",	.p = "mck1", .id = 91, .r = { .max = 200000000, }, },
+	{ .n = "tcb1_ch1_clk",	.p = "mck1", .id = 92, .r = { .max = 200000000, }, },
+	{ .n = "tcb1_ch2_clk",	.p = "mck1", .id = 93, .r = { .max = 200000000, }, },
+	{ .n = "tcpca_clk",	.p = "mck1", .id = 94, },
+	{ .n = "tcpcb_clk",	.p = "mck1", .id = 95, },
+	{ .n = "tdes_clk",	.p = "mck1", .id = 96, },
+	{ .n = "trng_clk",	.p = "mck1", .id = 97, },
+	{ .n = "udphsa_clk",	.p = "mck1", .id = 104, },
+	{ .n = "udphsb_clk",	.p = "mck1", .id = 105, },
+	{ .n = "uhphs_clk",	.p = "mck1", .id = 106, },
+};
+
+/*
+ * Generic clock description
+ * @n:			clock name
+ * @pp:			PLL parents
+ * @pp_mux_table:	PLL parents mux table
+ * @r:			clock output range
+ * @pp_chg_id:		id in parent array of changeable PLL parent
+ * @pp_count:		PLL parents count
+ * @id:			clock id
+ */
+static const struct {
+	const char *n;
+	const char *pp[8];
+	const char pp_mux_table[8];
+	struct clk_range r;
+	int pp_chg_id;
+	u8 pp_count;
+	u8 id;
+} sama7g5_gck[] = {
+	{ .n  = "adc_gclk",
+	  .id = 26,
+	  .r = { .max = 100000000, },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 9, },
+	  .pp_count = 3,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "asrc_gclk",
+	  .id = 30,
+	  .r = { .max = 200000000 },
+	  .pp = { "audiopll_divpmcck", },
+	  .pp_mux_table = { 9, },
+	  .pp_count = 1,
+	  .pp_chg_id = 3, },
+
+	{ .n  = "csi_gclk",
+	  .id = 33,
+	  .r = { .max = 27000000  },
+	  .pp = { "ddrpll_divpmcck", "imgpll_divpmcck", },
+	  .pp_mux_table = { 6, 7, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex0_gclk",
+	  .id = 38,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex1_gclk",
+	  .id = 39,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex2_gclk",
+	  .id = 40,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex3_gclk",
+	  .id = 41,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex4_gclk",
+	  .id = 42,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex5_gclk",
+	  .id = 43,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex6_gclk",
+	  .id = 44,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex7_gclk",
+	  .id = 45,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex8_gclk",
+	  .id = 46,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex9_gclk",
+	  .id = 47,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex10_gclk",
+	  .id = 48,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "flex11_gclk",
+	  .id = 49,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "gmac0_gclk",
+	  .id = 51,
+	  .r = { .max = 125000000 },
+	  .pp = { "ethpll_divpmcck", },
+	  .pp_mux_table = { 10, },
+	  .pp_count = 1,
+	  .pp_chg_id = 3, },
+
+	{ .n  = "gmac1_gclk",
+	  .id = 52,
+	  .r = { .max = 50000000  },
+	  .pp = { "ethpll_divpmcck", },
+	  .pp_mux_table = { 10, },
+	  .pp_count = 1,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "gmac0_tsu_gclk",
+	  .id = 53,
+	  .r = { .max = 300000000 },
+	  .pp = { "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 9, 10, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "gmac1_tsu_gclk",
+	  .id = 54,
+	  .r = { .max = 300000000 },
+	  .pp = { "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 9, 10, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "i2smcc0_gclk",
+	  .id = 57,
+	  .r = { .max = 100000000 },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "i2smcc1_gclk",
+	  .id = 58,
+	  .r = { .max = 100000000 },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "mcan0_gclk",
+	  .id = 61,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "mcan1_gclk",
+	  .id = 62,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "mcan2_gclk",
+	  .id = 63,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "mcan3_gclk",
+	  .id = 64,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "mcan4_gclk",
+	  .id = 65,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "mcan5_gclk",
+	  .id = 66,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pdmc0_gclk",
+	  .id = 68,
+	  .r = { .max = 50000000  },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pdmc1_gclk",
+	  .id = 69,
+	  .r = { .max = 50000000, },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b0_gclk",
+	  .id = 70,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b1_gclk",
+	  .id = 71,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b2_gclk",
+	  .id = 72,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b3_gclk",
+	  .id = 73,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b4_gclk",
+	  .id = 74,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "pit64b5_gclk",
+	  .id = 75,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "qspi0_gclk",
+	  .id = 78,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "qspi1_gclk",
+	  .id = 79,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "sdmmc0_gclk",
+	  .id = 80,
+	  .r = { .max = 208000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "sdmmc1_gclk",
+	  .id = 81,
+	  .r = { .max = 208000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "sdmmc2_gclk",
+	  .id = 82,
+	  .r = { .max = 208000000 },
+	  .pp = { "syspll_divpmcck", "baudpll_divpmcck", },
+	  .pp_mux_table = { 5, 8, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "spdifrx_gclk",
+	  .id = 84,
+	  .r = { .max = 150000000 },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n = "spdiftx_gclk",
+	  .id = 85,
+	  .r = { .max = 25000000  },
+	  .pp = { "syspll_divpmcck", "audiopll_divpmcck", },
+	  .pp_mux_table = { 5, 9, },
+	  .pp_count = 2,
+	  .pp_chg_id = 4, },
+
+	{ .n  = "tcb0_ch0_gclk",
+	  .id = 88,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "tcb1_ch0_gclk",
+	  .id = 91,
+	  .r = { .max = 200000000 },
+	  .pp = { "syspll_divpmcck", "imgpll_divpmcck", "baudpll_divpmcck",
+		  "audiopll_divpmcck", "ethpll_divpmcck", },
+	  .pp_mux_table = { 5, 7, 8, 9, 10, },
+	  .pp_count = 5,
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "tcpca_gclk",
+	  .id = 94,
+	  .r = { .max = 32768, },
+	  .pp_chg_id = INT_MIN, },
+
+	{ .n  = "tcpcb_gclk",
+	  .id = 95,
+	  .r = { .max = 32768, },
+	  .pp_chg_id = INT_MIN, },
+};
+
+/* MCK0 characteristics. */
+static const struct clk_master_characteristics mck0_characteristics = {
+	.output = { .min = 32768, .max = 200000000 },
+	.divisors = { 1, 2, 4, 3, 5 },
+	.have_div3_pres = 1,
+};
+
+/* MCK0 layout. */
+static const struct clk_master_layout mck0_layout = {
+	.mask = 0x773,
+	.pres_shift = 4,
+	.offset = 0x28,
+};
+
+/* Programmable clock layout. */
+static const struct clk_programmable_layout programmable_layout = {
+	.pres_mask = 0xff,
+	.pres_shift = 8,
+	.css_mask = 0x1f,
+	.have_slck_mck = 0,
+	.is_pres_direct = 1,
+};
+
+/* Peripheral clock layout. */
+static const struct clk_pcr_layout sama7g5_pcr_layout = {
+	.offset = 0x88,
+	.cmd = BIT(31),
+	.gckcss_mask = GENMASK(12, 8),
+	.pid_mask = GENMASK(6, 0),
+};
+
+static void __init sama7g5_pmc_setup(struct device_node *np)
+{
+	const char *td_slck_name, *md_slck_name, *mainxtal_name;
+	struct pmc_data *sama7g5_pmc;
+	const char *parent_names[10];
+	void **alloc_mem = NULL;
+	int alloc_mem_size = 0;
+	struct regmap *regmap;
+	struct clk_hw *hw;
+	bool bypass;
+	int i, j;
+
+	i = of_property_match_string(np, "clock-names", "td_slck");
+	if (i < 0)
+		return;
+
+	td_slck_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "md_slck");
+	if (i < 0)
+		return;
+
+	md_slck_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "main_xtal");
+	if (i < 0)
+		return;
+
+	mainxtal_name = of_clk_get_parent_name(np, i);
+
+	regmap = device_node_to_regmap(np);
+	if (IS_ERR(regmap))
+		return;
+
+	sama7g5_pmc = pmc_data_allocate(PMC_MCK1 + 1,
+					nck(sama7g5_systemck),
+					nck(sama7g5_periphck),
+					nck(sama7g5_gck), 8);
+	if (!sama7g5_pmc)
+		return;
+
+	alloc_mem = kmalloc(sizeof(void *) *
+			    (ARRAY_SIZE(sama7g5_mckx) + ARRAY_SIZE(sama7g5_gck)),
+			    GFP_KERNEL);
+	if (!alloc_mem)
+		goto err_free;
+
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
+					   50000000);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = "main_rc_osc";
+	parent_names[1] = "main_osc";
+	hw = at91_clk_register_sam9x5_main(regmap, "mainck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama7g5_pmc->chws[PMC_MAIN] = hw;
+
+	for (i = 0; i < PLL_ID_MAX; i++) {
+		for (j = 0; j < 3; j++) {
+			struct clk_hw *parent_hw;
+
+			if (!sama7g5_plls[i][j].n)
+				continue;
+
+			switch (sama7g5_plls[i][j].t) {
+			case PLL_TYPE_FRAC:
+				if (!strcmp(sama7g5_plls[i][j].p, "mainck"))
+					parent_hw = sama7g5_pmc->chws[PMC_MAIN];
+				else
+					parent_hw = __clk_get_hw(of_clk_get_by_name(np,
+						sama7g5_plls[i][j].p));
+
+				hw = sam9x60_clk_register_frac_pll(regmap,
+					&pmc_pll_lock, sama7g5_plls[i][j].n,
+					sama7g5_plls[i][j].p, parent_hw, i,
+					sama7g5_plls[i][j].c,
+					sama7g5_plls[i][j].l,
+					sama7g5_plls[i][j].f);
+				break;
+
+			case PLL_TYPE_DIV:
+				hw = sam9x60_clk_register_div_pll(regmap,
+					&pmc_pll_lock, sama7g5_plls[i][j].n,
+					sama7g5_plls[i][j].p, i,
+					sama7g5_plls[i][j].c,
+					sama7g5_plls[i][j].l,
+					sama7g5_plls[i][j].f);
+				break;
+
+			default:
+				continue;
+			}
+
+			if (IS_ERR(hw))
+				goto err_free;
+
+			if (sama7g5_plls[i][j].eid)
+				sama7g5_pmc->chws[sama7g5_plls[i][j].eid] = hw;
+		}
+	}
+
+	parent_names[0] = "cpupll_divpmcck";
+	hw = at91_clk_register_master_div(regmap, "mck0", "cpupll_divpmcck",
+					  &mck0_layout, &mck0_characteristics,
+					  &pmc_mck0_lock, CLK_GET_RATE_NOCACHE);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama7g5_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = md_slck_name;
+	parent_names[1] = td_slck_name;
+	parent_names[2] = "mainck";
+	for (i = 0; i < ARRAY_SIZE(sama7g5_mckx); i++) {
+		u8 num_parents = 3 + sama7g5_mckx[i].ep_count;
+		u32 *mux_table;
+
+		mux_table = kmalloc_array(num_parents, sizeof(*mux_table),
+					  GFP_KERNEL);
+		if (!mux_table)
+			goto err_free;
+
+		SAMA7G5_INIT_TABLE(mux_table, 3);
+		SAMA7G5_FILL_TABLE(&mux_table[3], sama7g5_mckx[i].ep_mux_table,
+				   sama7g5_mckx[i].ep_count);
+		SAMA7G5_FILL_TABLE(&parent_names[3], sama7g5_mckx[i].ep,
+				   sama7g5_mckx[i].ep_count);
+
+		hw = at91_clk_sama7g5_register_master(regmap, sama7g5_mckx[i].n,
+				   num_parents, parent_names, mux_table,
+				   &pmc_mckX_lock, sama7g5_mckx[i].id,
+				   sama7g5_mckx[i].c,
+				   sama7g5_mckx[i].ep_chg_id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		alloc_mem[alloc_mem_size++] = mux_table;
+
+		if (sama7g5_mckx[i].eid)
+			sama7g5_pmc->chws[sama7g5_mckx[i].eid] = hw;
+	}
+
+	hw = at91_clk_sama7g5_register_utmi(regmap, "utmick", "main_xtal");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama7g5_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = md_slck_name;
+	parent_names[1] = td_slck_name;
+	parent_names[2] = "mainck";
+	parent_names[3] = "syspll_divpmcck";
+	parent_names[4] = "ddrpll_divpmcck";
+	parent_names[5] = "imgpll_divpmcck";
+	parent_names[6] = "baudpll_divpmcck";
+	parent_names[7] = "audiopll_divpmcck";
+	parent_names[8] = "ethpll_divpmcck";
+	for (i = 0; i < 8; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name, parent_names,
+						    9, i,
+						    &programmable_layout,
+						    sama7g5_prog_mux_table);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama7g5_pmc->pchws[i] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama7g5_systemck); i++) {
+		hw = at91_clk_register_system(regmap, sama7g5_systemck[i].n,
+					      sama7g5_systemck[i].p,
+					      sama7g5_systemck[i].id, 0);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama7g5_pmc->shws[sama7g5_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama7g5_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
+						&sama7g5_pcr_layout,
+						sama7g5_periphck[i].n,
+						sama7g5_periphck[i].p,
+						sama7g5_periphck[i].id,
+						&sama7g5_periphck[i].r,
+						sama7g5_periphck[i].chgp ? 0 :
+						INT_MIN, 0);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama7g5_pmc->phws[sama7g5_periphck[i].id] = hw;
+	}
+
+	parent_names[0] = md_slck_name;
+	parent_names[1] = td_slck_name;
+	parent_names[2] = "mainck";
+	for (i = 0; i < ARRAY_SIZE(sama7g5_gck); i++) {
+		u8 num_parents = 3 + sama7g5_gck[i].pp_count;
+		u32 *mux_table;
+
+		mux_table = kmalloc_array(num_parents, sizeof(*mux_table),
+					  GFP_KERNEL);
+		if (!mux_table)
+			goto err_free;
+
+		SAMA7G5_INIT_TABLE(mux_table, 3);
+		SAMA7G5_FILL_TABLE(&mux_table[3], sama7g5_gck[i].pp_mux_table,
+				   sama7g5_gck[i].pp_count);
+		SAMA7G5_FILL_TABLE(&parent_names[3], sama7g5_gck[i].pp,
+				   sama7g5_gck[i].pp_count);
+
+		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock,
+						 &sama7g5_pcr_layout,
+						 sama7g5_gck[i].n,
+						 parent_names, mux_table,
+						 num_parents,
+						 sama7g5_gck[i].id,
+						 &sama7g5_gck[i].r,
+						 sama7g5_gck[i].pp_chg_id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama7g5_pmc->ghws[sama7g5_gck[i].id] = hw;
+		alloc_mem[alloc_mem_size++] = mux_table;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama7g5_pmc);
+
+	return;
+
+err_free:
+	if (alloc_mem) {
+		for (i = 0; i < alloc_mem_size; i++)
+			kfree(alloc_mem[i]);
+		kfree(alloc_mem);
+	}
+
+	kfree(sama7g5_pmc);
+}
+
+/* Some clks are used for a clocksource */
+CLK_OF_DECLARE(sama7g5_pmc, "microchip,sama7g5-pmc", sama7g5_pmc_setup);
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 3b50c2b08c3a..1e03537cf19b 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -5,19 +5,12 @@
  *  Copyright (C) 2013 Boris BREZILLON <b.brezillon@overkiz.com>
  */
 
-#include <common.h>
+#include <linux/clk-provider.h>
+#include <linux/clkdev.h>
 #include <clock.h>
 #include <of.h>
 #include <of_address.h>
-#include <io.h>
-#include <linux/list.h>
-#include <linux/clk.h>
-#include <linux/clk/at91_pmc.h>
-#include <linux/overflow.h>
-#include <mfd/syscon.h>
-#include <linux/regmap.h>
-
-
+#include <linux/io.h>
 
 #define SLOW_CLOCK_FREQ		32768
 #define SLOWCK_SW_CYCLES	5
@@ -38,10 +31,9 @@ struct clk_slow_osc {
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
-	const char *parent_name;
 };
 
-#define to_clk_slow_osc(_hw) container_of(_hw, struct clk_slow_osc, hw)
+#define to_clk_slow_osc(hw) container_of(hw, struct clk_slow_osc, hw)
 
 struct clk_sama5d4_slow_osc {
 	struct clk_hw hw;
@@ -49,33 +41,31 @@ struct clk_sama5d4_slow_osc {
 	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	bool prepared;
-	const char *parent_name;
 };
 
-#define to_clk_sama5d4_slow_osc(_hw) container_of(_hw, struct clk_sama5d4_slow_osc, hw)
+#define to_clk_sama5d4_slow_osc(hw) container_of(hw, struct clk_sama5d4_slow_osc, hw)
 
 struct clk_slow_rc_osc {
 	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	unsigned long frequency;
+	unsigned long accuracy;
 	unsigned long startup_usec;
-	const char *parent_name;
 };
 
-#define to_clk_slow_rc_osc(_hw) container_of(_hw, struct clk_slow_rc_osc, hw)
+#define to_clk_slow_rc_osc(hw) container_of(hw, struct clk_slow_rc_osc, hw)
 
 struct clk_sam9x5_slow {
 	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	u8 parent;
-	const char *parent_names[];
 };
 
-#define to_clk_sam9x5_slow(_hw) container_of(_hw, struct clk_sam9x5_slow, hw)
+#define to_clk_sam9x5_slow(hw) container_of(hw, struct clk_sam9x5_slow, hw)
 
-static int clk_slow_osc_enable(struct clk_hw *hw)
+static int clk_slow_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
@@ -91,7 +81,7 @@ static int clk_slow_osc_enable(struct clk_hw *hw)
 	return 0;
 }
 
-static void clk_slow_osc_disable(struct clk_hw *hw)
+static void clk_slow_osc_unprepare(struct clk_hw *hw)
 {
 	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
@@ -103,7 +93,7 @@ static void clk_slow_osc_disable(struct clk_hw *hw)
 	writel(tmp & ~osc->bits->cr_osc32en, sckcr);
 }
 
-static int clk_slow_osc_is_enabled(struct clk_hw *hw)
+static int clk_slow_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
@@ -116,12 +106,12 @@ static int clk_slow_osc_is_enabled(struct clk_hw *hw)
 }
 
 static const struct clk_ops slow_osc_ops = {
-	.enable = clk_slow_osc_enable,
-	.disable = clk_slow_osc_disable,
-	.is_enabled = clk_slow_osc_is_enabled,
+	.enable = clk_slow_osc_prepare,
+	.disable = clk_slow_osc_unprepare,
+	.is_enabled = clk_slow_osc_is_prepared,
 };
 
-static struct clk * __init
+static struct clk_hw * __init
 at91_clk_register_slow_osc(void __iomem *sckcr,
 			   const char *name,
 			   const char *parent_name,
@@ -129,21 +119,25 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 			   bool bypass,
 			   const struct clk_slow_bits *bits)
 {
-	int ret;
 	struct clk_slow_osc *osc;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
 
 	if (!sckcr || !name || !parent_name)
 		return ERR_PTR(-EINVAL);
 
-	osc = xzalloc(sizeof(*osc));
+	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
+	if (!osc)
+		return ERR_PTR(-ENOMEM);
 
-	osc->hw.clk.name = name;
-	osc->hw.clk.ops = &slow_osc_ops;
-	osc->parent_name = parent_name;
-	osc->hw.clk.parent_names = &osc->parent_name;
-	osc->hw.clk.num_parents = 1;
-	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
+	init.name = name;
+	init.ops = &slow_osc_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = CLK_IGNORE_UNUSED;
 
+	osc->hw.init = &init;
 	osc->sckcr = sckcr;
 	osc->startup_usec = startup;
 	osc->bits = bits;
@@ -152,20 +146,21 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
 					osc->bits->cr_osc32byp, sckcr);
 
-	ret = bclk_register(&osc->hw.clk);
+	hw = &osc->hw;
+	ret = clk_hw_register(NULL, &osc->hw);
 	if (ret) {
 		kfree(osc);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &osc->hw.clk;
+	return hw;
 }
 
-static void at91_clk_unregister_slow_osc(struct clk *clk)
+static void at91_clk_unregister_slow_osc(struct clk_hw *hw)
 {
-	struct clk_slow_osc *osc = to_clk_slow_osc(clk_to_clk_hw(clk));
+	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 
-	clk_unregister(clk);
+	clk_hw_unregister(hw);
 	kfree(osc);
 }
 
@@ -177,7 +172,7 @@ static unsigned long clk_slow_rc_osc_recalc_rate(struct clk_hw *hw,
 	return osc->frequency;
 }
 
-static int clk_slow_rc_osc_enable(struct clk_hw *hw)
+static int clk_slow_rc_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
@@ -189,7 +184,7 @@ static int clk_slow_rc_osc_enable(struct clk_hw *hw)
 	return 0;
 }
 
-static void clk_slow_rc_osc_disable(struct clk_hw *hw)
+static void clk_slow_rc_osc_unprepare(struct clk_hw *hw)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
@@ -197,7 +192,7 @@ static void clk_slow_rc_osc_disable(struct clk_hw *hw)
 	writel(readl(sckcr) & ~osc->bits->cr_rcen, sckcr);
 }
 
-static int clk_slow_rc_osc_is_enabled(struct clk_hw *hw)
+static int clk_slow_rc_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
@@ -205,13 +200,13 @@ static int clk_slow_rc_osc_is_enabled(struct clk_hw *hw)
 }
 
 static const struct clk_ops slow_rc_osc_ops = {
-	.enable = clk_slow_rc_osc_enable,
-	.disable = clk_slow_rc_osc_disable,
-	.is_enabled = clk_slow_rc_osc_is_enabled,
+	.enable = clk_slow_rc_osc_prepare,
+	.disable = clk_slow_rc_osc_unprepare,
+	.is_enabled = clk_slow_rc_osc_is_prepared,
 	.recalc_rate = clk_slow_rc_osc_recalc_rate,
 };
 
-static struct clk * __init
+static struct clk_hw * __init
 at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const char *name,
 			      unsigned long frequency,
@@ -220,37 +215,45 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 			      const struct clk_slow_bits *bits)
 {
 	struct clk_slow_rc_osc *osc;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
 	if (!sckcr || !name)
 		return ERR_PTR(-EINVAL);
 
-	osc = xzalloc(sizeof(*osc));
-	osc->hw.clk.name = name;
-	osc->hw.clk.ops = &slow_rc_osc_ops;
-	osc->hw.clk.parent_names = NULL;
-	osc->hw.clk.num_parents = 0;
-	/* init.flags = CLK_IGNORE_UNUSED; */
+	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
+	if (!osc)
+		return ERR_PTR(-ENOMEM);
 
+	init.name = name;
+	init.ops = &slow_rc_osc_ops;
+	init.parent_names = NULL;
+	init.num_parents = 0;
+	init.flags = CLK_IGNORE_UNUSED;
+
+	osc->hw.init = &init;
 	osc->sckcr = sckcr;
 	osc->bits = bits;
 	osc->frequency = frequency;
+	osc->accuracy = accuracy;
 	osc->startup_usec = startup;
 
-	ret = bclk_register(&osc->hw.clk);
+	hw = &osc->hw;
+	ret = clk_hw_register(NULL, &osc->hw);
 	if (ret) {
 		kfree(osc);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &osc->hw.clk;
+	return hw;
 }
 
-static void at91_clk_unregister_slow_rc_osc(struct clk *clk)
+static void at91_clk_unregister_slow_rc_osc(struct clk_hw *hw)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk_to_clk_hw(clk));
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
-	clk_unregister(clk);
+	clk_hw_unregister(hw);
 	kfree(osc);
 }
 
@@ -293,7 +296,7 @@ static const struct clk_ops sam9x5_slow_ops = {
 	.get_parent = clk_sam9x5_slow_get_parent,
 };
 
-static struct clk * __init
+static struct clk_hw * __init
 at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const char *name,
 			      const char **parent_names,
@@ -301,37 +304,43 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 			      const struct clk_slow_bits *bits)
 {
 	struct clk_sam9x5_slow *slowck;
+	struct clk_hw *hw;
+	struct clk_init_data init;
 	int ret;
 
 	if (!sckcr || !name || !parent_names || !num_parents)
 		return ERR_PTR(-EINVAL);
 
-	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
-	slowck->hw.clk.name = name;
-	slowck->hw.clk.ops = &sam9x5_slow_ops;
+	slowck = kzalloc(sizeof(*slowck), GFP_KERNEL);
+	if (!slowck)
+		return ERR_PTR(-ENOMEM);
 
-	memcpy(slowck->parent_names, parent_names,
-	       num_parents * sizeof(slowck->parent_names[0]));
-	slowck->hw.clk.parent_names = slowck->parent_names;
-	slowck->hw.clk.num_parents = num_parents;
+	init.name = name;
+	init.ops = &sam9x5_slow_ops;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+	init.flags = 0;
+
+	slowck->hw.init = &init;
 	slowck->sckcr = sckcr;
 	slowck->bits = bits;
 	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
 
-	ret = bclk_register(&slowck->hw.clk);
+	hw = &slowck->hw;
+	ret = clk_hw_register(NULL, &slowck->hw);
 	if (ret) {
 		kfree(slowck);
-		return ERR_PTR(ret);
+		hw = ERR_PTR(ret);
 	}
 
-	return &slowck->hw.clk;
+	return hw;
 }
 
-static void at91_clk_unregister_sam9x5_slow(struct clk *clk)
+static void at91_clk_unregister_sam9x5_slow(struct clk_hw *hw)
 {
-	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk_to_clk_hw(clk));
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
 
-	clk_unregister(clk);
+	clk_hw_unregister(hw);
 	kfree(slowck);
 }
 
@@ -343,7 +352,7 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 	void __iomem *regbase = of_iomap(np, 0);
 	struct device_node *child = NULL;
 	const char *xtal_name;
-	struct clk *slow_rc, *slow_osc, *slowck;
+	struct clk_hw *slow_rc, *slow_osc, *slowck;
 	bool bypass;
 	int ret;
 
@@ -386,10 +395,10 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
 
 	/* DT backward compatibility */
 	if (child)
-		ret = of_clk_add_provider(child, of_clk_src_simple_get,
+		ret = of_clk_add_hw_provider(child, of_clk_hw_simple_get,
 					     slowck);
 	else
-		ret = of_clk_add_provider(np, of_clk_src_simple_get, slowck);
+		ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
 
 	if (WARN_ON(ret))
 		goto unregister_slowck;
@@ -434,8 +443,8 @@ static const struct clk_slow_bits at91sam9x60_bits = {
 static void __init of_sam9x60_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
-	struct clk_onecell_data *clk_data;
-	struct clk *slow_rc, *slow_osc;
+	struct clk_hw_onecell_data *clk_data;
+	struct clk_hw *slow_rc, *slow_osc;
 	const char *xtal_name;
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
 	bool bypass;
@@ -444,8 +453,9 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 	if (!regbase)
 		return;
 
-	slow_rc = clk_register_fixed_rate(parent_names[0], NULL, 0,
-					  32768);
+	slow_rc = clk_hw_register_fixed_rate_with_accuracy(NULL, parent_names[0],
+							   NULL, 0, 32768,
+							   93750000);
 	if (IS_ERR(slow_rc))
 		return;
 
@@ -460,52 +470,45 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 	if (IS_ERR(slow_osc))
 		goto unregister_slow_rc;
 
-	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+	clk_data = kzalloc(struct_size(clk_data, hws, 2), GFP_KERNEL);
 	if (!clk_data)
 		goto unregister_slow_osc;
 
 	/* MD_SLCK and TD_SLCK. */
-	clk_data->clk_num = 2;
-	clk_data->clks = kcalloc(clk_data->clk_num,
-				 sizeof(*clk_data->clks), GFP_KERNEL);
-	if (!clk_data->clks)
+	clk_data->num = 2;
+	clk_data->hws[0] = clk_hw_register_fixed_rate(NULL, "md_slck",
+						      parent_names[0],
+						      0, 32768);
+	if (IS_ERR(clk_data->hws[0]))
 		goto clk_data_free;
 
-	clk_data->clks[0] = clk_register_fixed_rate("md_slck",
-						   parent_names[0],
-						   0, 32768);
-	if (IS_ERR(clk_data->clks[0]))
-		goto clks_free;
-
-	clk_data->clks[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
+	clk_data->hws[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
 							 parent_names, 2,
 							 &at91sam9x60_bits);
-	if (IS_ERR(clk_data->clks[1]))
+	if (IS_ERR(clk_data->hws[1]))
 		goto unregister_md_slck;
 
-	ret = of_clk_add_provider(np, of_clk_src_onecell_get, clk_data);
+	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 	if (WARN_ON(ret))
 		goto unregister_td_slck;
 
 	return;
 
 unregister_td_slck:
-	at91_clk_unregister_sam9x5_slow(clk_data->clks[1]);
+	at91_clk_unregister_sam9x5_slow(clk_data->hws[1]);
 unregister_md_slck:
-	clk_unregister(clk_data->clks[0]);
-clks_free:
-	kfree(clk_data->clks);
+	clk_hw_unregister(clk_data->hws[0]);
 clk_data_free:
 	kfree(clk_data);
 unregister_slow_osc:
 	at91_clk_unregister_slow_osc(slow_osc);
 unregister_slow_rc:
-	clk_unregister(slow_rc);
+	clk_hw_unregister(slow_rc);
 }
 CLK_OF_DECLARE(sam9x60_clk_sckc, "microchip,sam9x60-sckc",
 	       of_sam9x60_sckc_setup);
 
-static int clk_sama5d4_slow_osc_enable(struct clk_hw *hw)
+static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
 {
 	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
 
@@ -514,7 +517,7 @@ static int clk_sama5d4_slow_osc_enable(struct clk_hw *hw)
 
 	/*
 	 * Assume that if it has already been selected (for example by the
-	 * bootloader), enough time has aready passed.
+	 * bootloader), enough time has already passed.
 	 */
 	if ((readl(osc->sckcr) & osc->bits->cr_oscsel)) {
 		osc->prepared = true;
@@ -527,7 +530,7 @@ static int clk_sama5d4_slow_osc_enable(struct clk_hw *hw)
 	return 0;
 }
 
-static int clk_sama5d4_slow_osc_is_enabled(struct clk_hw *hw)
+static int clk_sama5d4_slow_osc_is_prepared(struct clk_hw *hw)
 {
 	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
 
@@ -535,8 +538,8 @@ static int clk_sama5d4_slow_osc_is_enabled(struct clk_hw *hw)
 }
 
 static const struct clk_ops sama5d4_slow_osc_ops = {
-	.enable = clk_sama5d4_slow_osc_enable,
-	.is_enabled = clk_sama5d4_slow_osc_is_enabled,
+	.enable = clk_sama5d4_slow_osc_prepare,
+	.is_enabled = clk_sama5d4_slow_osc_is_prepared,
 };
 
 static const struct clk_slow_bits at91sama5d4_bits = {
@@ -546,32 +549,41 @@ static const struct clk_slow_bits at91sama5d4_bits = {
 static void __init of_sama5d4_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
-	struct clk *slow_rc, *slowck;
+	struct clk_hw *slow_rc, *slowck;
 	struct clk_sama5d4_slow_osc *osc;
+	struct clk_init_data init;
+	const char *xtal_name;
 	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
 	int ret;
 
 	if (!regbase)
 		return;
 
-	slow_rc = clk_fixed(parent_names[0], 32768);
+	slow_rc = clk_hw_register_fixed_rate_with_accuracy(NULL,
+							   parent_names[0],
+							   NULL, 0, 32768,
+							   250000000);
 	if (IS_ERR(slow_rc))
 		return;
 
-	osc = xzalloc(sizeof(*osc));
-	osc->parent_name = of_clk_get_parent_name(np, 0);
-	osc->hw.clk.name = parent_names[1];
-	osc->hw.clk.ops = &sama5d4_slow_osc_ops;
-	osc->hw.clk.parent_names = &osc->parent_name;
-	osc->hw.clk.num_parents = 1;
+	xtal_name = of_clk_get_parent_name(np, 0);
 
-	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
+	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
+	if (!osc)
+		goto unregister_slow_rc;
 
+	init.name = parent_names[1];
+	init.ops = &sama5d4_slow_osc_ops;
+	init.parent_names = &xtal_name;
+	init.num_parents = 1;
+	init.flags = CLK_IGNORE_UNUSED;
+
+	osc->hw.init = &init;
 	osc->sckcr = regbase;
 	osc->startup_usec = 1200000;
 	osc->bits = &at91sama5d4_bits;
 
-	ret = bclk_register(&osc->hw.clk);
+	ret = clk_hw_register(NULL, &osc->hw);
 	if (ret)
 		goto free_slow_osc_data;
 
@@ -581,7 +593,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	if (IS_ERR(slowck))
 		goto unregister_slow_osc;
 
-	ret = of_clk_add_provider(np, of_clk_src_simple_get, slowck);
+	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, slowck);
 	if (WARN_ON(ret))
 		goto unregister_slowck;
 
@@ -590,10 +602,11 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 unregister_slowck:
 	at91_clk_unregister_sam9x5_slow(slowck);
 unregister_slow_osc:
-	clk_unregister(&osc->hw.clk);
+	clk_hw_unregister(&osc->hw);
 free_slow_osc_data:
 	kfree(osc);
-	clk_unregister(slow_rc);
+unregister_slow_rc:
+	clk_hw_unregister(slow_rc);
 }
 CLK_OF_DECLARE(sama5d4_clk_sckc, "atmel,sama5d4-sckc",
 	       of_sama5d4_sckc_setup);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 25bba3e99971..fe0b1ce3e36c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -386,6 +386,7 @@ static inline struct clk_hw *clk_to_clk_hw(const struct clk *clk)
 {
 	return container_of_safe(clk, struct clk_hw, clk);
 }
+#define __clk_get_hw(clk) clk_to_clk_hw(clk)
 
 struct clk_div_table {
 	unsigned int	val;
@@ -1028,6 +1029,21 @@ static inline void clk_bulk_disable(int num_clks,
 
 #endif
 
+/**
+ * clk_hw_register_fixed_rate_with_accuracy - register fixed-rate clock with
+ * the clock framework
+ * @dev: device that is registering this clock
+ * @name: name of this clock
+ * @parent_name: name of clock's parent
+ * @flags: framework-specific flags
+ * @fixed_rate: non-adjustable clock rate
+ * @fixed_accuracy: non-adjustable clock accuracy (ignored)
+ */
+#define clk_hw_register_fixed_rate_with_accuracy(dev, name, parent_name,      \
+						 flags, fixed_rate,	      \
+						 fixed_accuracy)	      \
+	clk_hw_register_fixed_rate((dev), (name), (parent_name), (flags), (fixed_rate))
+
 #define clk_bulk_prepare_enable clk_bulk_enable
 #define clk_bulk_disable_unprepare clk_bulk_disable
 
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
index 390437887b46..7af499bdbecb 100644
--- a/include/linux/clk/at91_pmc.h
+++ b/include/linux/clk/at91_pmc.h
@@ -12,6 +12,11 @@
 #ifndef AT91_PMC_H
 #define AT91_PMC_H
 
+#include <linux/bits.h>
+
+#define AT91_PMC_V1		(1)			/* PMC version 1 */
+#define AT91_PMC_V2		(2)			/* PMC version 2 [SAM9X60] */
+
 #define	AT91_PMC_SCER		0x00			/* System Clock Enable Register */
 #define	AT91_PMC_SCDR		0x04			/* System Clock Disable Register */
 
@@ -30,16 +35,35 @@
 #define		AT91_PMC_HCK0		(1 << 16)		/* AHB Clock (USB host) [AT91SAM9261 only] */
 #define		AT91_PMC_HCK1		(1 << 17)		/* AHB Clock (LCD) [AT91SAM9261 only] */
 
+#define AT91_PMC_PLL_CTRL0		0x0C		/* PLL Control Register 0 [for SAM9X60] */
+#define		AT91_PMC_PLL_CTRL0_ENPLL	(1 << 28)	/* Enable PLL */
+#define		AT91_PMC_PLL_CTRL0_ENPLLCK	(1 << 29)	/* Enable PLL clock for PMC */
+#define		AT91_PMC_PLL_CTRL0_ENLOCK	(1 << 31)	/* Enable PLL lock */
+
+#define AT91_PMC_PLL_CTRL1		0x10		/* PLL Control Register 1 [for SAM9X60] */
+
 #define	AT91_PMC_PCER		0x10			/* Peripheral Clock Enable Register */
 #define	AT91_PMC_PCDR		0x14			/* Peripheral Clock Disable Register */
 #define	AT91_PMC_PCSR		0x18			/* Peripheral Clock Status Register */
 
+#define AT91_PMC_PLL_ACR	0x18			/* PLL Analog Control Register [for SAM9X60] */
+#define		AT91_PMC_PLL_ACR_DEFAULT_UPLL	UL(0x12020010)	/* Default PLL ACR value for UPLL */
+#define		AT91_PMC_PLL_ACR_DEFAULT_PLLA	UL(0x00020010)	/* Default PLL ACR value for PLLA */
+#define		AT91_PMC_PLL_ACR_UTMIVR		(1 << 12)	/* UPLL Voltage regulator Control */
+#define		AT91_PMC_PLL_ACR_UTMIBG		(1 << 13)	/* UPLL Bandgap Control */
+
 #define	AT91_CKGR_UCKR		0x1C			/* UTMI Clock Register [some SAM9] */
 #define		AT91_PMC_UPLLEN		(1   << 16)		/* UTMI PLL Enable */
 #define		AT91_PMC_UPLLCOUNT	(0xf << 20)		/* UTMI PLL Start-up Time */
 #define		AT91_PMC_BIASEN		(1   << 24)		/* UTMI BIAS Enable */
 #define		AT91_PMC_BIASCOUNT	(0xf << 28)		/* UTMI BIAS Start-up Time */
 
+#define AT91_PMC_PLL_UPDT		0x1C		/* PMC PLL update register [for SAM9X60] */
+#define		AT91_PMC_PLL_UPDT_UPDATE	(1 << 8)	/* Update PLL settings */
+#define		AT91_PMC_PLL_UPDT_ID		(1 << 0)	/* PLL ID */
+#define		AT91_PMC_PLL_UPDT_ID_MSK	(0xf)		/* PLL ID mask */
+#define		AT91_PMC_PLL_UPDT_STUPTIM	(0xff << 16)	/* Startup time */
+
 #define	AT91_CKGR_MOR		0x20			/* Main Oscillator Register [not on SAM9RL] */
 #define		AT91_PMC_MOSCEN		(1    <<  0)		/* Main Oscillator Enable */
 #define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
@@ -56,6 +80,10 @@
 #define		AT91_PMC_MAINRDY	(1	<< 16)		/* Main Clock Ready */
 
 #define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
+
+#define	AT91_PMC_RATIO		0x2c			/* Processor clock ratio register [SAMA7G5 only] */
+#define		AT91_PMC_RATIO_RATIO	(0xf)		/* CPU clock ratio. */
+
 #define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
 #define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
 #define		AT91_PMC_PLLCOUNT	(0x3f  <<  8)		/* PLL Counter */
@@ -115,6 +143,34 @@
 #define			AT91_PMC_PLLADIV2_ON		(1 << 12)
 #define		AT91_PMC_H32MXDIV	BIT(24)
 
+#define	AT91_PMC_MCR_V2		0x30				/* Master Clock Register [SAMA7G5 only] */
+#define		AT91_PMC_MCR_V2_ID_MSK	(0xF)
+#define			AT91_PMC_MCR_V2_ID(_id)		((_id) & AT91_PMC_MCR_V2_ID_MSK)
+#define		AT91_PMC_MCR_V2_CMD	(1 << 7)
+#define		AT91_PMC_MCR_V2_DIV	(7 << 8)
+#define			AT91_PMC_MCR_V2_DIV1		(0 << 8)
+#define			AT91_PMC_MCR_V2_DIV2		(1 << 8)
+#define			AT91_PMC_MCR_V2_DIV4		(2 << 8)
+#define			AT91_PMC_MCR_V2_DIV8		(3 << 8)
+#define			AT91_PMC_MCR_V2_DIV16		(4 << 8)
+#define			AT91_PMC_MCR_V2_DIV32		(5 << 8)
+#define			AT91_PMC_MCR_V2_DIV64		(6 << 8)
+#define			AT91_PMC_MCR_V2_DIV3		(7 << 8)
+#define		AT91_PMC_MCR_V2_CSS	(0x1F << 16)
+#define			AT91_PMC_MCR_V2_CSS_MD_SLCK	(0 << 16)
+#define			AT91_PMC_MCR_V2_CSS_TD_SLCK	(1 << 16)
+#define			AT91_PMC_MCR_V2_CSS_MAINCK	(2 << 16)
+#define			AT91_PMC_MCR_V2_CSS_MCK0	(3 << 16)
+#define			AT91_PMC_MCR_V2_CSS_SYSPLL	(5 << 16)
+#define			AT91_PMC_MCR_V2_CSS_DDRPLL	(6 << 16)
+#define			AT91_PMC_MCR_V2_CSS_IMGPLL	(7 << 16)
+#define			AT91_PMC_MCR_V2_CSS_BAUDPLL	(8 << 16)
+#define			AT91_PMC_MCR_V2_CSS_AUDIOPLL	(9 << 16)
+#define			AT91_PMC_MCR_V2_CSS_ETHPLL	(10 << 16)
+#define		AT91_PMC_MCR_V2_EN	(1 << 28)
+
+#define AT91_PMC_XTALF		0x34			/* Main XTAL Frequency Register [SAMA7G5 only] */
+
 #define	AT91_PMC_USB		0x38			/* USB Clock Register [some SAM9 only] */
 #define		AT91_PMC_USBS		(0x1 <<  0)		/* USB OHCI Input clock selection */
 #define			AT91_PMC_USBS_PLLA		(0 << 0)
@@ -153,6 +209,7 @@
 #define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
 #define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
 #define		AT91_PMC_GCKRDY		(1 << 24)		/* Generated Clocks */
+#define		AT91_PMC_MCKXRDY	(1 << 26)		/* Master Clock x [x=1..4] Ready Status */
 #define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
 
 #define AT91_PMC_FSMR		0x70		/* Fast Startup Mode Register */
@@ -180,6 +237,8 @@
 #define		AT91_PMC_WPVS		(0x1  <<  0)		/* Write Protect Violation Status */
 #define		AT91_PMC_WPVSRC		(0xffff  <<  8)		/* Write Protect Violation Source */
 
+#define AT91_PMC_PLL_ISR0	0xEC			/* PLL Interrupt Status Register 0 [SAM9X60 only] */
+
 #define AT91_PMC_PCER1		0x100			/* Peripheral Clock Enable Register 1 [SAMA5 only]*/
 #define AT91_PMC_PCDR1		0x104			/* Peripheral Clock Enable Register 1 */
 #define AT91_PMC_PCSR1		0x108			/* Peripheral Clock Enable Register 1 */
-- 
2.39.2



