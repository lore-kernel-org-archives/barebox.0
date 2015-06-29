Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-by2on0147.outbound.protection.outlook.com
 ([207.46.100.147] helo=na01-by2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9Z5Q-0002OG-HO
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 13:27:01 +0000
From: Fabio Estevam <fabio.estevam@freescale.com>
Date: Mon, 29 Jun 2015 10:26:12 -0300
Message-ID: <1435584372-5306-1-git-send-email-fabio.estevam@freescale.com>
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
Subject: [PATCH] mx53-qsb: Fix boot hang during reboot stress test
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

Fix the DDR init sequence the same way as done by aee0013e53b339a5
from U-boot in order to prevent the boot hang under reboot stress test.

Quoting this commit log:

"Currently by running the following test:
    
=> setenv bootcmd reset
=> save
=> reset
    
, we observe a hang after approximately 20-30 minutes of stress reboot test.
    
Investigation of this issue revealed that when a single DDR chip select is used,
the hang does not happen. It only happens when the two chip selects are active.
    
MX53 reference manual states at "28.6.2 Memory ZQ calibration sequence":
 
"The controller must keep the memory lines quiet (except for CK) for the ZQ
calibration time as defined in the Jedec (512 cycles for ZQCL after reset, 256
for other ZQCL and 64 for ZQCS)."
    
According to the SDE_0 and SDE_1 bit descriptions from register ESDCTL_ESDCTL:

"Writing 1 to SDE0 or SDE1 will initiate power up delays as JEDEC defines.
Power up delays are a function of the configured memory type (DDR2/DDR3/LPDDR2)"

So make sure to activate one chip select at time (CS0 first and then CS1 later),
so that the required JEDEC delay is respected for each chip select.
    
With this change applied the board has gone through three days of reboot stress
test without any hang."

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
index 95bcd19..f43b484 100644
--- a/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
+++ b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
@@ -30,7 +30,7 @@ wm 32 0x63fd9090 0x4d444c44
 wm 32 0x63fd907c 0x01370138
 wm 32 0x63fd9080 0x013b013c
 wm 32 0x63fd9018 0x00011740
-wm 32 0x63fd9000 0xc3190000
+wm 32 0x63fd9000 0x83190000
 wm 32 0x63fd900c 0x9f5152e3
 wm 32 0x63fd9010 0xb68e8a63
 wm 32 0x63fd9014 0x01ff00db
@@ -43,6 +43,7 @@ wm 32 0x63fd901c 0x00008033
 wm 32 0x63fd901c 0x00028031
 wm 32 0x63fd901c 0x052080b0
 wm 32 0x63fd901c 0x04008040
+wm 32 0x63fd9000 0xc3190000
 wm 32 0x63fd901c 0x0000803a
 wm 32 0x63fd901c 0x0000803b
 wm 32 0x63fd901c 0x00028039
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
