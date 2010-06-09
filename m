Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMGb3-0005QP-Ep
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 08:25:14 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 11:24:56 +0300
Message-Id: <96c838395b1ca05a2712bc6e2a7c37564c68c7d4.1276071863.git.baruch@tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mx25 3ds: fix memory initialization
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 board/freescale-mx25-3-stack/3stack.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index 081487a..4aa2f21 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -276,6 +276,7 @@ static int imx25_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
 
+	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
