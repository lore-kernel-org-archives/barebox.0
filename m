Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051d-1p
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:09:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:43 +0100
Message-Id: <1355342991-549-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
References: <1355342991-549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] ARM i.MX31 pcm037: Force internal phy
To: barebox@lists.infradead.org

The smsc911x has a bootstrap pin for detecting an external phy.
Unfortunately this is pulled into the wrong direction on the pcm037
board, so force internal phy with platform data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index ff32e35..b8e55a0 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -31,6 +31,7 @@
 #include <mach/gpio.h>
 #include <mach/weim.h>
 #include <io.h>
+#include <smc911x.h>
 #include <asm/mmu.h>
 #include <partition.h>
 #include <generated/mach-types.h>
@@ -153,6 +154,10 @@ static int pcm037_mmu_init(void)
 }
 postmmu_initcall(pcm037_mmu_init);
 
+static struct smc911x_plat smsc9217_pdata = {
+	.flags = SMC911X_FORCE_INTERNAL_PHY,
+};
+
 static int imx31_devices_init(void)
 {
 	/* CS0: Nor Flash */
@@ -193,7 +198,7 @@ static int imx31_devices_init(void)
 	 * GPIO3, data width is 16 bit
 	 */
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	MX31_CS1_BASE_ADDR,
-			MX31_CS1_SIZE, IORESOURCE_MEM, NULL);
+			MX31_CS1_SIZE, IORESOURCE_MEM, &smsc9217_pdata);
 
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
