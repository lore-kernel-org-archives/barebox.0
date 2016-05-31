Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBP-00044h-A3
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:25 +0000
Received: by mail-pf0-x244.google.com with SMTP id c84so18945397pfc.1
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:29 -0700
Message-Id: <1464714580-31488-11-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/21] e1000: Remove 'page_size'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove 'page_size' from 'struct e1000_eeprom_info' since it is not
used anywhere in the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |  1 -
 drivers/net/e1000/eeprom.c | 32 +++++++++++---------------------
 2 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 76872f0..bb5f697 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -688,7 +688,6 @@ struct e1000_eeprom_info {
 	uint16_t opcode_bits;
 	uint16_t address_bits;
 	uint16_t delay_usec;
-	uint16_t page_size;
 	bool use_eerd;
 };
 
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index b6414b2..e4ef5f9 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -315,13 +315,10 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eeprom->type = e1000_eeprom_spi;
 			eeprom->opcode_bits = 8;
 			eeprom->delay_usec = 1;
-			if (eecd & E1000_EECD_ADDR_BITS) {
-				eeprom->page_size = 32;
+			if (eecd & E1000_EECD_ADDR_BITS)
 				eeprom->address_bits = 16;
-			} else {
-				eeprom->page_size = 8;
+			else
 				eeprom->address_bits = 8;
-			}
 		} else {
 			eeprom->type = e1000_eeprom_microwire;
 			eeprom->opcode_bits = 3;
@@ -341,13 +338,11 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->type = e1000_eeprom_spi;
 		eeprom->opcode_bits = 8;
 		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
+		if (eecd & E1000_EECD_ADDR_BITS)
 			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
+		else
 			eeprom->address_bits = 8;
-		}
+
 		eeprom->use_eerd = false;
 		break;
 	case e1000_82573:
@@ -355,13 +350,11 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->type = e1000_eeprom_spi;
 		eeprom->opcode_bits = 8;
 		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
+		if (eecd & E1000_EECD_ADDR_BITS)
 			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
+		else
 			eeprom->address_bits = 8;
-		}
+
 		if (e1000_is_onboard_nvm_eeprom(hw) == false) {
 			eeprom->use_eerd = true;
 
@@ -378,13 +371,11 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->type = e1000_eeprom_spi;
 		eeprom->opcode_bits = 8;
 		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS) {
-			eeprom->page_size = 32;
+		if (eecd & E1000_EECD_ADDR_BITS)
 			eeprom->address_bits = 16;
-		} else {
-			eeprom->page_size = 8;
+		else
 			eeprom->address_bits = 8;
-		}
+
 		eeprom->use_eerd = true;
 		break;
 	case e1000_igb:
@@ -392,7 +383,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->type = e1000_eeprom_invm;
 		eeprom->opcode_bits = 8;
 		eeprom->delay_usec = 1;
-		eeprom->page_size = 32;
 		eeprom->address_bits = 16;
 		eeprom->use_eerd = true;
 		break;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
