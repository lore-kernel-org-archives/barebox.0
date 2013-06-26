Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfk-0001vn-U8
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:52 +0200
Message-Id: <1372233657-19455-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] ARM: i.MX53 loco: prepare multiboard support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 446b7f3..3c8842c 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -83,6 +83,9 @@ static int loco_late_init(void)
 	struct mc34708 *mc34708;
 	int rev;
 
+	if (!of_machine_is_compatible("fsl,imx53-qsb"))
+		return 0;
+
 	device_detect_by_name("mmc0");
 
 	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
@@ -120,10 +123,13 @@ static int loco_late_init(void)
 }
 late_initcall(loco_late_init);
 
-static int loco_core_init(void)
+static int loco_postcore_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx53-qsb"))
+		return 0;
+
 	imx53_init_lowlevel(1000);
 
 	return 0;
 }
-core_initcall(loco_core_init);
+postcore_initcall(loco_postcore_init);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
