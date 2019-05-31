Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeok-00052Y-05
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:31:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWeoi-0005rd-JD
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:31:20 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:31:15 +0200
Message-Id: <20190531103116.27378-3-l.stach@pengutronix.de>
In-Reply-To: <20190531103116.27378-1-l.stach@pengutronix.de>
References: <20190531103116.27378-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: rdu2: extend boot script for eMMC boot
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default   | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
index 40346f69f4d9..f391d91eba4c 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
@@ -1,4 +1,13 @@
 #!/bin/sh
 
 backlight0.brightness=0
-boot mmc1
\ No newline at end of file
+if [ "$bootsource" = "spi-nor" ]; then
+	boot mmc1
+else
+	detect mmc3
+	if [ "$mmc3.boot" = "boot0" ]; then
+		boot mmc3.0
+	else
+		boot mmc3.1
+	fi
+fi
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
