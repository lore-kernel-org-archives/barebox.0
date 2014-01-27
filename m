Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7if1-0007E9-8P
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 09:39:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Jan 2014 10:38:56 +0100
Message-Id: <1390815536-323-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX53: fix bootsource_instance detection
To: barebox@lists.infradead.org

Bootsource instance is encoded in bit 21:20 of the SBMR register,
not in bit 22:21.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4d81fd4..4416011 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -200,7 +200,7 @@ void imx53_boot_save_loc(void __iomem *src_base)
 	case BOOTSOURCE_MMC:
 	case BOOTSOURCE_SPI:
 	case BOOTSOURCE_I2C:
-		instance = (cfg1 >> 21) & 0x3;
+		instance = (cfg1 >> 20) & 0x3;
 		break;
 	default:
 		instance = 0;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
