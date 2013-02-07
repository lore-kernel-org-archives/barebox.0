Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Shh-0005Op-3l
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 14:43:57 +0000
Received: by mail-ee0-f43.google.com with SMTP id c50so1402644eek.30
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 06:43:55 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu,  7 Feb 2013 15:43:50 +0100
Message-Id: <1360248231-31561-2-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
References: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 1/2] at91sam9260/9g20ek: cleanup coding style
To: barebox@lists.infradead.org

- fix some error and warnings pointed out by checkpatch.
- join some short lines.
- remove some empty lines.
- remove unnecessary headers.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 2d52f5a..e0c03ee 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -10,25 +10,15 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- *
  */
 
 #include <common.h>
-#include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <fec.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <io.h>
-#include <asm/hardware.h>
 #include <nand.h>
 #include <sizes.h>
-#include <linux/mtd/nand.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
@@ -83,7 +73,8 @@ static struct sam9_smc_config ek_9260_nand_smc_config = {
 	.read_cycle		= 5,
 	.write_cycle		= 5,
 
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+				  AT91_SMC_EXNWMODE_DISABLE,
 	.tdf_cycles		= 2,
 };
 
@@ -101,7 +92,8 @@ static struct sam9_smc_config ek_9g20_nand_smc_config = {
 	.read_cycle		= 7,
 	.write_cycle		= 7,
 
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+				  AT91_SMC_EXNWMODE_DISABLE,
 	.tdf_cycles		= 3,
 };
 
@@ -153,12 +145,11 @@ static void at91sam9260ek_phy_reset(void)
 	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
 
 	/* Wait for end hardware reset */
-	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
+		;
 
 	/* Restore NRST value */
-	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
-				     (rstc) |
-				     AT91_RSTC_URSTEN);
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
 }
 
 /*
@@ -271,7 +262,6 @@ static int at91sam9260ek_devices_init(void)
 
 	return 0;
 }
-
 device_initcall(at91sam9260ek_devices_init);
 
 static int at91sam9260ek_console_init(void)
@@ -279,5 +269,4 @@ static int at91sam9260ek_console_init(void)
 	at91_register_uart(0, 0);
 	return 0;
 }
-
 console_initcall(at91sam9260ek_console_init);
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
