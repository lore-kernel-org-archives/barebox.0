Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolxX-0004mp-9G
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2020 11:19:31 +0100
Message-Id: <20200107101931.4535-4-s.hauer@pengutronix.de>
In-Reply-To: <20200107101931.4535-1-s.hauer@pengutronix.de>
References: <20200107101931.4535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: rpi_defconfig: Enable raspberry GPIO exp driver
To: Barebox List <barebox@lists.infradead.org>

Enable the recently introduced GPIO exp driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 9603a0fa30..560b3d1b11 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -83,6 +83,7 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_BCM2835=y
+CONFIG_GPIO_RASPBERRYPI_EXP=y
 CONFIG_PINCTRL_BCM283X=y
 CONFIG_REGULATOR=y
 CONFIG_FS_EXT4=y
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
