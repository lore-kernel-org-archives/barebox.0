Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihB1V-0001x8-VB
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:28:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihB1U-00063F-PC
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:28:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:28:14 +0100
Message-Id: <20191217112816.13305-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] RDU2: add support to boot from SD card autonomosly
To: barebox@lists.infradead.org

From: "Ruslan V. Sushko" <ruslan.sushko@zii.aero>

Signed-off-by: Ruslan Sushko <Ruslan.Sushko@zii.aero>
---
 .../boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
index f391d91eba4c..e3406d554373 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
@@ -2,6 +2,10 @@
 
 backlight0.brightness=0
 if [ "$bootsource" = "spi-nor" ]; then
+	echo Boot source is SPI NOR, booting SD card firmware with rootfs on SD card
+	boot mmc1
+elif [ "$bootsource" = "mmc" ] && [ "$bootsource_instance" = "1" ]; then
+	echo Boot source is SD card, booting SD card firmware with rootfs on SD card
 	boot mmc1
 else
 	detect mmc3
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
