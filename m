Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAclo-0003FM-E1
 for barebox@lists.infradead.org; Sat, 17 Aug 2013 09:26:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Aug 2013 11:25:36 +0200
Message-Id: <1376731537-12102-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
References: <1376731537-12102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: i.MX: move iomux definitions to iomux.h
To: barebox@lists.infradead.org

mach/gpio.h is for the gpio API, so move unrelated stuff
away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/gpio.h     | 2 --
 arch/arm/mach-imx/include/mach/iomux-v1.h | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/gpio.h b/arch/arm/mach-imx/include/mach/gpio.h
index 489ae2c..fee693e 100644
--- a/arch/arm/mach-imx/include/mach/gpio.h
+++ b/arch/arm/mach-imx/include/mach/gpio.h
@@ -3,6 +3,4 @@
 
 #include <asm-generic/gpio.h>
 
-void imx_gpio_mode(int gpio_mode);
-
 #endif /* __ASM_ARCH_GPIO_H */
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/arch/arm/mach-imx/include/mach/iomux-v1.h
index 49dcecd..e822905 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v1.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v1.h
@@ -46,5 +46,6 @@
 #define GPIO_GIUS      (1 << 16)
 
 void imx_iomuxv1_init(void __iomem *base);
+void imx_gpio_mode(int gpio_mode);
 
 #endif /* __MACH_IOMUX_V1_H__ */
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
