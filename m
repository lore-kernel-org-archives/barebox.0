Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUaA6-0004pv-G3
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 10:09:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-0004sQ-71
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-00029u-5n
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 23 Apr 2013 12:09:11 +0200
Message-Id: <1366711752-25176-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366711752-25176-1-git-send-email-jbe@pengutronix.de>
References: <1366711752-25176-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] MXS/Chumby: fix MCI device registration
To: barebox@lists.infradead.org

Due to some changes in the framework a resource size of zero does not map
anything at all and it does it silently.

Defining the resource size for the MCI interface make it work again on the
Chumby.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index fd5bc4c..720fe32 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -293,7 +293,7 @@ static int falconwing_devices_init(void)
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
-	add_generic_device("mxs_mci", 0, NULL, IMX_SSP1_BASE, 0,
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP1_BASE, 0x2000,
 			   IORESOURCE_MEM, &mci_pdata);
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
 			   IORESOURCE_MEM, &fb_mode);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
