Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBU-0004nF-9d
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:31 +0000
Received: by mail-pf0-x244.google.com with SMTP id f144so19580828pfa.2
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:34 -0700
Message-Id: <1464714580-31488-16-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/21] e1000: Fix a bug in e1000_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are several reasons why that code in e1000_probe had to be
changed:

 - It reads from chip variant specific register (present only on
   i210) in a chip variant agnostic codepath

 - It makes no sense to check for FLUPD bit to make a decision weither
   to validate EEPROM or not since its function per datasheet is:

   " ... Flash Update.

     Writing 1b to this bit causes the content of the internal 4 KB
     shadow RAM to be written into one of the first two 4 KB sectors
     of the Flash device (Sector 0 or Sector 1). The bit is
     self-cleared immediately... "

   and it is only through sheer serendipity the defined value for
   bitmask for FLUPD is equivalent to bitmask for FLASH_DETECTED bit
   which is the bit we actually care about and need to test against
   (FLUPD for i210 has a different bitmask)

Fix those problems by replacing the i210 specific check inside of
e1000_validate_eeprom_checksum() with a chip agnostic one and using
correct bitmask.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |  1 +
 drivers/net/e1000/eeprom.c | 18 ++++++++++++++++--
 drivers/net/e1000/main.c   |  3 +--
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index bb5f697..2eb20f1 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -789,6 +789,7 @@ struct e1000_eeprom_info {
 #define E1000_EECD_SELSHAD   0x00020000 /* Select Shadow RAM */
 #define E1000_EECD_INITSRAM  0x00040000 /* Initialize Shadow RAM */
 #define E1000_EECD_FLUPD     0x00080000 /* Update FLASH */
+#define E1000_EECD_I210_FLASH_DETECTED	(1 << 19) /* FLASH detected */
 #define E1000_EECD_AUPDEN    0x00100000 /* Enable Autonomous FLASH update */
 #define E1000_EECD_SHADV     0x00200000 /* Shadow RAM Data Valid */
 #define E1000_EECD_SEC1VAL   0x00400000 /* Sector One Valid */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 2e5d46e..a7059f6 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -358,8 +358,13 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->use_eerd = true;
 		break;
 	case e1000_igb:
-		/* i210 has 4k of iNVM mapped as EEPROM */
-		eeprom->type = e1000_eeprom_invm;
+		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
+			eeprom->type = e1000_eeprom_flash;
+			eeprom->word_size = 2048;
+		} else {
+			eeprom->type = e1000_eeprom_invm;
+		}
+
 		eeprom->use_eerd = true;
 		break;
 	default:
@@ -660,6 +665,15 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 
 	DEBUGFUNC();
 
+	/*
+	  Only the following three 'types' of EEPROM can be expected
+	  to have correct EEPROM checksum
+	*/
+	if (hw->eeprom.type != e1000_eeprom_spi &&
+	    hw->eeprom.type != e1000_eeprom_microwire &&
+	    hw->eeprom.type != e1000_eeprom_flash)
+		return 0;
+
 	/* Read the EEPROM */
 	if (e1000_read_eeprom(hw, 0, EEPROM_CHECKSUM_REG + 1, buf) < 0) {
 		dev_err(&hw->edev.dev, "Unable to read EEPROM!\n");
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 4a527a3..7ee78c3 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3558,8 +3558,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		return -EINVAL;
 	}
 
-	if ((e1000_read_reg(hw, E1000_EECD) & E1000_EECD_FLUPD) &&
-	    e1000_validate_eeprom_checksum(hw))
+	if (e1000_validate_eeprom_checksum(hw))
 		return -EINVAL;
 
 	e1000_get_ethaddr(edev, edev->ethaddr);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
