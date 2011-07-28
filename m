Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqn-0004Cb-0A
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:42:02 +0200
Message-Id: <1311860524-28566-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
References: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM pcm037: Fix wrong sdram base
To: barebox@lists.infradead.org

got broken while switching the boards to sdram registration
helper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 6e20d1d..f011d48 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -240,7 +240,7 @@ static int imx31_devices_init(void)
 	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, SDRAM0 * 1024 * 1024,
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
