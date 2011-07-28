Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qY-Vz
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:01:01 +0200
Message-Id: <1311840062-11446-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM i.MX pcm037: use device registration helpers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |   21 ++++++++-------------
 1 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index af4ad8b..839138d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -39,18 +39,6 @@
 #include <mach/imx-nand.h>
 #include <mach/devices-imx31.h>
 
-/*
- * SMSC 9217 network controller
- * connected to CS line 1 and interrupt line
- * GPIO3, data width is 16 bit
- */
-static struct device_d network_dev = {
-	.id	  = -1,
-	.name     = "smc911x",
-	.map_base = IMX_CS1_BASE,
-	.size     = IMX_CS1_RANGE,	/* area size */
-};
-
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
 #define SDRAM0	128
 #elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
@@ -224,7 +212,14 @@ static int imx31_devices_init(void)
 	add_mem_device("sram0", IMX_CS4_BASE, IMX_CS4_RANGE, /* area size */
 				   IORESOURCE_MEM_WRITEABLE);
 	imx31_add_nand(&nand_info);
-	register_device(&network_dev);
+
+	/*
+	 * SMSC 9217 network controller
+	 * connected to CS line 1 and interrupt line
+	 * GPIO3, data width is 16 bit
+	 */
+	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
+			IORESOURCE_MEM, NULL);
 
 	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, SDRAM0 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
