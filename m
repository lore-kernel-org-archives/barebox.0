Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBU-0004i5-Co
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:30 +0000
Received: by mail-pa0-x242.google.com with SMTP id x1so9074953pav.1
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:33 -0700
Message-Id: <1464714580-31488-15-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/21] e1000: Consolidate Microwire EEPROM init code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All of the chips that bitbang Microwire to access EEPROM appear to be
configured in the same way, so move common code into a separate
function and make use of it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 52 +++++++++++++++++++---------------------------
 1 file changed, 21 insertions(+), 31 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 89514eb..2e5d46e 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -275,6 +275,22 @@ static void e1000_eeprom_uses_spi(struct e1000_eeprom_info *eeprom,
 	eeprom->use_eerd = false;
 }
 
+static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
+					uint32_t eecd)
+{
+	eeprom->type = e1000_eeprom_microwire;
+	eeprom->opcode_bits = 3;
+	eeprom->delay_usec = 50;
+	if (eecd & E1000_EECD_SIZE) {
+		eeprom->word_size = 256;
+		eeprom->address_bits = 8;
+	} else {
+		eeprom->word_size = 64;
+		eeprom->address_bits = 6;
+	}
+	eeprom->use_eerd = false;
+}
+
 
 /******************************************************************************
  * Sets up eeprom variables in the hw struct.  Must be called after mac_type
@@ -299,49 +315,23 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	case e1000_82542_rev2_1:
 	case e1000_82543:
 	case e1000_82544:
-		eeprom->type = e1000_eeprom_microwire;
-		eeprom->word_size = 64;
-		eeprom->opcode_bits = 3;
-		eeprom->address_bits = 6;
-		eeprom->delay_usec = 50;
-		eeprom->use_eerd = false;
+		e1000_eeprom_uses_microwire(eeprom, 0);
 	break;
 	case e1000_82540:
 	case e1000_82545:
 	case e1000_82545_rev_3:
 	case e1000_82546:
 	case e1000_82546_rev_3:
-		eeprom->type = e1000_eeprom_microwire;
-		eeprom->opcode_bits = 3;
-		eeprom->delay_usec = 50;
-		if (eecd & E1000_EECD_SIZE) {
-			eeprom->word_size = 256;
-			eeprom->address_bits = 8;
-		} else {
-			eeprom->word_size = 64;
-			eeprom->address_bits = 6;
-		}
-		eeprom->use_eerd = false;
+		e1000_eeprom_uses_microwire(eeprom, eecd);
 		break;
 	case e1000_82541:
 	case e1000_82541_rev_2:
 	case e1000_82547:
 	case e1000_82547_rev_2:
-		if (eecd & E1000_EECD_TYPE) {
+		if (eecd & E1000_EECD_TYPE)
 			e1000_eeprom_uses_spi(eeprom, eecd);
-		} else {
-			eeprom->type = e1000_eeprom_microwire;
-			eeprom->opcode_bits = 3;
-			eeprom->delay_usec = 50;
-			if (eecd & E1000_EECD_ADDR_BITS) {
-				eeprom->word_size = 256;
-				eeprom->address_bits = 8;
-			} else {
-				eeprom->word_size = 64;
-				eeprom->address_bits = 6;
-			}
-		}
-		eeprom->use_eerd = false;
+		else
+			e1000_eeprom_uses_microwire(eeprom, eecd);
 		break;
 	case e1000_82571:
 	case e1000_82572:
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
