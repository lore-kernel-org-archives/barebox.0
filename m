Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sy-00028n-IH
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:46 +0000
Received: by mail-pa0-x241.google.com with SMTP id yy13so32047753pab.1
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:39 -0800
Message-Id: <1453089161-6697-18-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/20] e1000: Add EEPROM access locking for i210
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
index c3677c5..aca16f7 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -16,7 +16,8 @@ static int32_t e1000_read_eeprom_eerd(struct e1000_hw *hw, uint16_t offset,
 				      uint16_t words, uint16_t *data);
 static int32_t e1000_spi_eeprom_ready(struct e1000_hw *hw);
 static void e1000_release_eeprom(struct e1000_hw *hw);
-
+static int32_t e1000_acquire_eeprom_flash(struct e1000_hw *hw);
+static void e1000_release_eeprom_flash(struct e1000_hw *hw);


 /******************************************************************************
@@ -290,6 +291,11 @@ static int32_t e1000_acquire_eeprom_microwire(struct e1000_hw *hw)
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
@@ -403,6 +409,9 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
 			eeprom->type = e1000_eeprom_flash;
 			eeprom->word_size = 2048;
+
+			eeprom->acquire = e1000_acquire_eeprom_flash;
+			eeprom->release = e1000_release_eeprom_flash;
 		} else {
 			eeprom->type = e1000_eeprom_invm;
 		}
@@ -621,6 +630,14 @@ static void e1000_release_eeprom_spi(struct e1000_hw *hw)
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
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
