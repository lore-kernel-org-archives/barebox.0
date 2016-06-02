Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b8KjQ-0005uz-W7
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:45 +0000
Received: by mail-pf0-x242.google.com with SMTP id 62so6500625pfd.3
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:48 -0700
Message-Id: <1464843531-1824-20-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 19/22] e1000: Add EEPROM access locking for i210
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As per datasheet (section 4.6 p. 147) accessing EEPROM on i210
requires software to hold a corresponding lock bit in SW_FW_SYNC
register.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index b051a9b..9032c12 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -15,7 +15,8 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw, uint16_t offset,
 				      uint16_t words, uint16_t *data);
 static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw);
 static void e1000_release_eeprom(struct e1000_hw *hw);
-
+static int32_t e1000_acquire_eeprom_flash(struct e1000_hw *hw);
+static void e1000_release_eeprom_flash(struct e1000_hw *hw);
 
 
 /******************************************************************************
@@ -289,6 +290,11 @@ static int32_t e1000_acquire_eeprom_microwire(struct e1000_hw *hw)
 	return E1000_SUCCESS;
 }
 
+static int32_t e1000_acquire_eeprom_flash(struct e1000_hw *hw)
+{
+	return e1000_swfw_sync_acquire(hw, E1000_SWFW_EEP_SM);
+}
+
 static int32_t e1000_acquire_eeprom(struct e1000_hw *hw)
 {
 	if (hw->eeprom.acquire)
@@ -402,6 +408,9 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
 			eeprom->type = e1000_eeprom_flash;
 			eeprom->word_size = 2048;
+
+			eeprom->acquire = e1000_acquire_eeprom_flash;
+			eeprom->release = e1000_release_eeprom_flash;
 		} else {
 			eeprom->type = e1000_eeprom_invm;
 		}
@@ -620,6 +629,14 @@ static void e1000_release_eeprom_spi(struct e1000_hw *hw)
 	e1000_release_eeprom_spi_microwire_epilogue(hw);
 }
 
+static void e1000_release_eeprom_flash(struct e1000_hw *hw)
+{
+	if (e1000_swfw_sync_release(hw, E1000_SWFW_EEP_SM) < 0)
+		dev_warn(hw->dev,
+			 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+			 E1000_SWFW_EEP_SM);
+}
+
 static void e1000_release_eeprom(struct e1000_hw *hw)
 {
 	if (hw->eeprom.release)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
