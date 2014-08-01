Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XD7re-00069Z-DI
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 08:06:58 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Fri, 1 Aug 2014 16:06:36 +0800
Message-ID: <1406880396-3577-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: sama5d3_xplained: import smc timing from U-Boot
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

From: Matteo Fortini <matteo.fortini@gmail.com>

The configuration for NAND has been aligned with values
from U-Boot and completed with TIMINGS initialization

Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
[voice.shen@atmel.com: apply this patch from Matteo Fortini for
		       sama5d3xek to sama5d3_xplained board]
Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 arch/arm/boards/sama5d3_xplained/init.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
index ae18863..5674225 100644
--- a/arch/arm/boards/sama5d3_xplained/init.c
+++ b/arch/arm/boards/sama5d3_xplained/init.c
@@ -57,21 +57,30 @@ static struct atmel_nand_data nand_pdata = {
 };
 
 static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
-	.ncs_read_setup		= 0,
-	.nrd_setup		= 1,
-	.ncs_write_setup	= 0,
-	.nwe_setup		= 1,
+	.ncs_read_setup		= 1,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 1,
+	.nwe_setup		= 2,
 
-	.ncs_read_pulse		= 6,
-	.nrd_pulse		= 4,
+	.ncs_read_pulse		= 5,
+	.nrd_pulse		= 3,
 	.ncs_write_pulse	= 5,
 	.nwe_pulse		= 3,
 
-	.read_cycle		= 6,
-	.write_cycle		= 5,
+	.read_cycle		= 8,
+	.write_cycle		= 8,
 
 	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
-	.tdf_cycles		= 1,
+	.tdf_cycles		= 3,
+
+	.tclr			= 3,
+	.tadl			= 10,
+	.tar			= 3,
+	.ocms			= 0,
+	.trr			= 4,
+	.twb			= 5,
+	.rbnsel			= 3,
+	.nfsel			= 1
 };
 
 static void ek_add_device_nand(void)
@@ -87,7 +96,7 @@ static void ek_add_device_nand(void)
 		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_8;
 
 	/* configure chip-select 3 (NAND) */
-	sam9_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
+	sama5_smc_configure(0, 3, &cm_nand_smc_config);
 
 	at91_add_device_nand(&nand_pdata);
 }
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
