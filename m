Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004gD-L3
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:19 +0200
Message-Id: <1371711261-10039-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/17] ARM: MXS: remove imx_enable_enetclk
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c | 1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c         | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index bc28463..06f75e5 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -266,7 +266,6 @@ static int mx28_evk_devices_init(void)
 			IORESOURCE_MEM, NULL);
 	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
 
-	imx_enable_enetclk();
 	mx28_evk_fec_reset();
 	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index ae633b8..b969e4b 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -387,7 +387,6 @@ void base_board_init(void)
 
 	tx28_get_ethaddr();
 
-	imx_enable_enetclk();
 	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
