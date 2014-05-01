Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfybU-0000Ai-4J
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:33:17 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyb3-00058a-2W
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:32:49 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:32:51 +0200
Message-Id: <1398979972-14446-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
References: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: eDM-QMX6: remove extra FDT memcpy
To: barebox@lists.infradead.org

Not needed anymore, as barebox now accepts FDTs outside
of it's visible DRAM, as long as it's a valid pointer.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 071918cb5341..b1ce4e9df4ec 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -136,7 +136,6 @@ static void sdram_init(void)
 }
 
 extern char __dtb_imx6q_dmo_edmqmx6_start[];
-extern char __dtb_imx6q_dmo_edmqmx6_end[];
 
 ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 {
@@ -154,14 +153,6 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 
 		mmdc_do_write_level_calibration();
 		mmdc_do_dqs_calibration();
-
-		/*
-		 * Copy the devicetree blob to sdram so that the barebox code finds it
-		 * inside valid SDRAM instead of SRAM.
-		 */
-		memcpy((void*)sdram, fdt, __dtb_imx6q_dmo_edmqmx6_end -
-		       __dtb_imx6q_dmo_edmqmx6_start);
-		fdt = (void *)sdram;
 	}
 
 	barebox_arm_entry(sdram, SZ_2G, fdt);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
