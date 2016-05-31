Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBP-0004d4-Tg
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:26 +0000
Received: by mail-pf0-x243.google.com with SMTP id b124so25983275pfb.0
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:32 -0700
Message-Id: <1464714580-31488-14-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/21] e1000: Consolidate SPI EEPROM init code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of the chips that bitbang SPI to access EEPROM appear to be
configured in the same way, so move common code into a separate
function and make use of it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 46 +++++++++++++++++++++-------------------------
 1 file changed, 21 insertions(+), 25 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 55a8f96..89514eb 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -260,6 +260,22 @@ static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
 	return E1000_SUCCESS;
 }
 
+static void e1000_eeprom_uses_spi(struct e1000_eeprom_info *eeprom,
+				  uint32_t eecd)
+{
+	eeprom->type = e1000_eeprom_spi;
+	eeprom->opcode_bits = 8;
+	eeprom->delay_usec = 1;
+	if (eecd & E1000_EECD_ADDR_BITS) {
+		eeprom->address_bits = 16;
+	} else {
+		eeprom->address_bits = 8;
+	}
+
+	eeprom->use_eerd = false;
+}
+
+
 /******************************************************************************
  * Sets up eeprom variables in the hw struct.  Must be called after mac_type
  * is configured.  Additionally, if this is ICH8, the flash controller GbE
@@ -312,13 +328,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	case e1000_82547:
 	case e1000_82547_rev_2:
 		if (eecd & E1000_EECD_TYPE) {
-			eeprom->type = e1000_eeprom_spi;
-			eeprom->opcode_bits = 8;
-			eeprom->delay_usec = 1;
-			if (eecd & E1000_EECD_ADDR_BITS)
-				eeprom->address_bits = 16;
-			else
-				eeprom->address_bits = 8;
+			e1000_eeprom_uses_spi(eeprom, eecd);
 		} else {
 			eeprom->type = e1000_eeprom_microwire;
 			eeprom->opcode_bits = 3;
@@ -335,27 +345,13 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		break;
 	case e1000_82571:
 	case e1000_82572:
-		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS)
-			eeprom->address_bits = 16;
-		else
-			eeprom->address_bits = 8;
-
-		eeprom->use_eerd = false;
+		e1000_eeprom_uses_spi(eeprom, eecd);
 		break;
 	case e1000_82573:
 	case e1000_82574:
-		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS)
-			eeprom->address_bits = 16;
-		else
-			eeprom->address_bits = 8;
-
-		if (e1000_is_onboard_nvm_eeprom(hw) == false) {
+		if (e1000_is_onboard_nvm_eeprom(hw)) {
+			e1000_eeprom_uses_spi(eeprom, eecd);
+		} else {
 			eeprom->use_eerd = true;
 
 			eeprom->type = e1000_eeprom_flash;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
