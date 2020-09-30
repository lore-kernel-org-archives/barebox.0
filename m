Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbbl-0003nd-Vo
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 12:53:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 14:53:03 +0200
Message-Id: <20200930125303.14933-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200930125303.14933-1-a.fatoum@pengutronix.de>
References: <20200930125303.14933-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: stm32mp: dk2: have barebox image support DK1 as well
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

The STM32MP157C-DK2 and STM32MP157A-DK1 are basically the same board
except the DK2 has a MIPI-DSI display attached and the SoC has a
crypto IP block.

Allow the same barebox image to run on both boards by deciding
that if we are compiled with a 157C-DK2 device tree, but we have
a 157A SoC, it must be a DK1 instead.

Cc: Holger Assmann <h.assmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 46366031218d..55afdd49e6e5 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -2,17 +2,23 @@
 #include <common.h>
 #include <init.h>
 #include <mach/bbu.h>
+#include <mach/revision.h>
+#include <of.h>
 
-static int dk2_postcore_init(void)
+static int dkx_postcore_init(void)
 {
 	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
 		return 0;
 
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
-					 BBU_HANDLER_FLAG_DEFAULT);
+	if (stm32mp_cputype() == CPU_STM32MP157Axx) {
+		of_property_write_strings(of_get_root_node(), "compatible",
+					  "st,stm32mp157a-dk1", "st,stm32mp157", NULL);
+		barebox_set_model("STM32MP157A-DK1");
+	} else {
+		barebox_set_model("STM32MP157C-DK2");
+	}
 
-	barebox_set_model("STM32MP157C-DK2");
-
-	return 0;
+	return stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
+						BBU_HANDLER_FLAG_DEFAULT);
 }
-postcore_initcall(dk2_postcore_init);
+postcore_initcall(dkx_postcore_init);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
