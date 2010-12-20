Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIe-0003Ed-JN
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:21 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000U4-9y
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xP-7S
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:02 +0100
Message-Id: <1292857509-13881-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/10] ARM Chumby: Fix unit of the clocks after the change to
	Hz
To: barebox@lists.infradead.org

With the change to Hz as the main clock unit on the STM architecture the
Chumby must also use this unit.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index e0706f8..10fbba8 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -266,9 +266,9 @@ static int falconwing_devices_init(void)
 		imx_gpio_mode(pad_setup[i]);
 
 	register_device(&sdram_dev);
-	imx_set_ioclk(480U * 1000U);	/* enable IOCLK to run at the PLL frequency */
+	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
-	imx_set_sspclk(0, 100U * 1000U, 1);
+	imx_set_sspclk(0, 100000000, 1);
 	register_device(&mci_dev);
 
 	armlinux_add_dram(&sdram_dev);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
