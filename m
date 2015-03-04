Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT4MH-00021H-3t
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 08:08:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Mar 2015 09:08:22 +0100
Message-Id: <1425456502-32698-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX53 QSB: remove unused /dev/env0 partition
To: Barebox List <barebox@lists.infradead.org>

The environment on the QSB is configured via devicetree, but in
the code there's also a /dev/env0 registered which is unused. Remove
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-qsb/board.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index f65b556..dd2abb5 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -85,10 +85,6 @@ static int loco_late_init(void)
 	    !of_machine_is_compatible("fsl,imx53-qsrb"))
 		return 0;
 
-	device_detect_by_name("mmc0");
-
-	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
 	mc34708 = mc13xxx_get();
 	if (mc34708) {
 		unsigned int val;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
