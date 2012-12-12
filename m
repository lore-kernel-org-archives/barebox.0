Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tisct-00051f-AQ
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 20:09:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 21:09:45 +0100
Message-Id: <1355342991-549-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM i.MX31 pcm037: remove unused defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |   12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index b8e55a0..68a6c8d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -39,18 +39,6 @@
 #include <mach/imx-nand.h>
 #include <mach/devices-imx31.h>
 
-#if defined CONFIG_PCM037_SDRAM_BANK0_128MB
-#define SDRAM0	128
-#elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
-#define SDRAM0	256
-#endif
-
-#if defined CONFIG_PCM037_SDRAM_BANK1_128MB
-#define SDRAM1	128
-#elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
-#define SDRAM1	256
-#endif
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
