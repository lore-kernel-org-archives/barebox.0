Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001LY-BZ
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 21805A004EE
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:43 +0200
Message-Id: <1461751489-13302-10-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 09/15] ARM: phytec-som-imx6: fix bootsource for
 phyCORE-i.MX6
To: barebox@lists.infradead.org

The phyCORE-i.MX6 has either a NAND or EMMC storage device and an
external SD-Card interface. The automatic bootsource detection in the
barebox environment should reflect that.

- If the board was booted from the external SD-Card interface, it should
  continue loading the kernel and device tree from it.

- If the board was booted from EMMC, it should load kernel and device
  tree from the boot partition on the EMMC.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../defaultenv-physom-imx6-mira/init/bootsource       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource
new file mode 100644
index 0000000..515613b
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/bootsource
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	if [ $bootsource_instance = 0 ]; then
+		global.boot.default="mmc emmc nand spi net"
+	elif [ $bootsource_instance = 3 ]; then
+		global.boot.default="emmc mmc nand spi net"
+	fi
+elif [ $bootsource = nand ]; then
+	global.boot.default="nand spi emmc mmc net"
+elif [ $bootsource = spi ]; then
+	global.boot.default="spi nand emmc mmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net nand spi emmc mmc"
+fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
