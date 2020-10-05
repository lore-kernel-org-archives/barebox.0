Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLaH-0004LU-C6
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:11:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:10:56 +0200
Message-Id: <20201005081058.2572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ARM: stm32mp: migrate board initcalls to board drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Board drivers are now the way to go. Migrate the STM32 boards to use it,
to encourage future copy-pasting in following suit.

As the board now supports both DK2 and DK1, rename the prefix to dkx_.
dk1 specifics follow in a separate commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c         | 17 +++++++++++++----
 arch/arm/boards/seeed-odyssey/board.c   | 15 +++++++++++++--
 arch/arm/boards/stm32mp157c-dk2/board.c | 18 +++++++++++++-----
 3 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index 7f1f3ccd7e06..9126973dcbdc 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -28,11 +28,9 @@ static int of_fixup_regulator_supply_disable(struct device_node *root, void *pat
 	return 0;
 }
 
-static int mc1_device_init(void)
+static int mc1_probe(struct device_d *dev)
 {
 	int flags;
-	if (!of_machine_is_compatible("lxa,stm32mp157c-mc1"))
-		return 0;
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
 	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
@@ -55,4 +53,15 @@ static int mc1_device_init(void)
 	 */
 	return of_register_fixup(of_fixup_regulator_supply_disable, "/regulator_3v3");
 }
-device_initcall(mc1_device_init);
+
+static const struct of_device_id mc1_of_match[] = {
+	{ .compatible = "lxa,stm32mp157c-mc1" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d mc1_board_driver = {
+	.name = "board-lxa-mc1",
+	.probe = mc1_probe,
+	.of_compatible = mc1_of_match,
+};
+device_platform_driver(mc1_board_driver);
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index e3fe5368731c..fd077c02b273 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -7,7 +7,7 @@
 #include <bootsource.h>
 #include <of.h>
 
-static int odyssey_device_init(void)
+static int odyssey_som_probe(struct device_d *dev)
 {
 	int flags;
 	int instance = bootsource_get_instance();
@@ -29,4 +29,15 @@ static int odyssey_device_init(void)
 
 	return 0;
 }
-device_initcall(odyssey_device_init);
+
+static const struct of_device_id odyssey_som_of_match[] = {
+	{ .compatible = "seeed,stm32mp157c-odyssey-som" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d odyssey_som_driver = {
+	.name = "odyssey-som",
+	.probe = odyssey_som_probe,
+	.of_compatible = odyssey_som_of_match,
+};
+device_platform_driver(odyssey_som_driver);
diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 46366031218d..a547209cdf5e 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -3,11 +3,8 @@
 #include <init.h>
 #include <mach/bbu.h>
 
-static int dk2_postcore_init(void)
+static int dkx_probe(struct device_d *dev)
 {
-	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
-		return 0;
-
 	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
 					 BBU_HANDLER_FLAG_DEFAULT);
 
@@ -15,4 +12,15 @@ static int dk2_postcore_init(void)
 
 	return 0;
 }
-postcore_initcall(dk2_postcore_init);
+
+static const struct of_device_id dkx_of_match[] = {
+	{ .compatible = "st,stm32mp157c-dk2" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d dkx_board_driver = {
+	.name = "board-stm32mp15xx-dkx",
+	.probe = dkx_probe,
+	.of_compatible = dkx_of_match,
+};
+postcore_platform_driver(dkx_board_driver);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
