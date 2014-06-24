Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from alcapone.vm.bytemark.co.uk ([89.16.173.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzOtB-0001Db-HV
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:27:50 +0000
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Tue, 24 Jun 2014 13:26:32 +0200
Message-Id: <assp.025283f2bc.1403609192-5862-3-git-send-email-matteo.fortini@gmail.com>
In-Reply-To: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH 2/2] sama5d3x: HSMC NAND initialize TIMINGS and import values
 from U-Boot
To: barebox@lists.infradead.org

The configuration for NAND has been aligned with values
from U-Boot and completed with TIMINGS initialization

Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
---
 arch/arm/boards/sama5d3xek/init.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index e078642..06e354c 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -72,21 +72,32 @@ static struct atmel_nand_data nand_pdata = {
 };
 
 static struct sam9_smc_config cm_nand_smc_config = {
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
+};
+
+static struct sam9_smc_sama5d3_extra_config cm_nand_smc_sama5d_extra_config = {
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
@@ -102,7 +113,7 @@ static void ek_add_device_nand(void)
 		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
 
 	/* configure chip-select 3 (NAND) */
-	sam9_smc_configure(0, 3, &cm_nand_smc_config);
+	sam9_smc_sama5d3_configure(0, 3, &cm_nand_smc_config, &cm_nand_smc_sama5d_extra_config);
 
 	at91_add_device_nand(&nand_pdata);
 }
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
