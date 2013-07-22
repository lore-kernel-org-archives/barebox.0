Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1CrS-0003XM-DC
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:56:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 11:56:23 +0200
Message-Id: <1374486983-5263-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
References: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: omap4: pcm049: register devices only when support is
 enabled
To: barebox@lists.infradead.org

With other changes coming into the tree the binary is getting too big.
Save some space by not registering devices for which no support is available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm049/board.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index b7b8ea6..6e4dbf6 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -286,7 +286,8 @@ static int pcm049_devices_init(void)
 
 	gpmc_generic_init(0x10);
 
-	pcm049_network_init();
+	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X))
+		pcm049_network_init();
 
 	omap_add_gpmc_nand_device(&nand_plat);
 
@@ -302,7 +303,8 @@ static int pcm049_devices_init(void)
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM049);
 
-	omap_add_display(&pcm049_fb_data);
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
+		omap_add_display(&pcm049_fb_data);
 
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
