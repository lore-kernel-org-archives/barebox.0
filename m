Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttC-0005Ss-LE
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttB-0003R8-GE
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:17 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttB-0005Dr-7R
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:49 +0200
Message-Id: <20200413075204.17544-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/21] treewide: use cpu_relax() where appropriate
To: barebox@lists.infradead.org

Instead of doing /* cpu_relax(); */ barrier(); on upstream uses of
cpu_relax(), just use the new cpu_relax() #define directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-omap/omap4_rom_usb.c | 6 ++----
 drivers/mtd/nand/nand_denali.c     | 8 +++-----
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index 31d93c34ee52..0b3124059021 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -111,8 +111,7 @@ int omap4_usbboot_wait_read(void)
 {
 	int ret;
 	while (omap4_usbboot_data.dread.status == STATUS_WAITING)
-		/* cpu_relax(); */
-		barrier();
+		cpu_relax();
 	ret = omap4_usbboot_data.dread.status;
 	omap4_usbboot_data.dread.status = -1;
 	return ret;
@@ -153,8 +152,7 @@ int omap4_usbboot_wait_write(void)
 {
 	int ret;
 	while (omap4_usbboot_data.dwrite.status == STATUS_WAITING)
-		/* cpu_relax(); */
-		barrier();
+		cpu_relax();
 	ret = omap4_usbboot_data.dwrite.status;
 	omap4_usbboot_data.dwrite.status = -1;
 	return ret;
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index ddb03813fe78..89958456491d 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -171,7 +171,7 @@ static void reset_bank(struct denali_nand_info *denali)
 
 	/* wait for completion */
 	while (ioread32(denali->flash_reg + DEVICE_RESET) & (1 << denali->flash_bank))
-			barrier();
+		cpu_relax();
 }
 
 /* Reset the flash controller */
@@ -187,8 +187,7 @@ static uint16_t denali_nand_reset(struct denali_nand_info *denali)
 		iowrite32(1 << i, denali->flash_reg + DEVICE_RESET);
 		while (!(ioread32(denali->flash_reg + INTR_STATUS(i)) &
 			(INTR_STATUS__RST_COMP | INTR_STATUS__TIME_OUT)))
-			/* cpu_relax(); */
-			barrier();
+			cpu_relax();
 		if (ioread32(denali->flash_reg + INTR_STATUS(i)) &
 			INTR_STATUS__TIME_OUT)
 			dev_dbg(denali->dev,
@@ -953,8 +952,7 @@ static bool handle_ecc(struct denali_nand_info *denali, uint8_t *buf,
 		 */
 		while (!(read_interrupt_status(denali) &
 				INTR_STATUS__ECC_TRANSACTION_DONE))
-			/* cpu_relax(); */
-			barrier();
+			cpu_relax();
 		clear_interrupts(denali);
 		denali_set_intr_modes(denali, true);
 	}
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
