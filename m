Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sy-00028m-KJ
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:45 +0000
Received: by mail-pa0-x242.google.com with SMTP id a20so26973462pag.3
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:38 -0800
Message-Id: <1453089161-6697-17-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/20] e1000: Properly release SW_FW_SYNC semaphore bits
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As described in the datasheet Software/Firmware synchronisation bits
are expected to be released by the software after it is done using
it. Add a porper subroutine to do that instead of relying on the
Firmware clearing those bits due to timeout.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h |  1 +
 drivers/net/e1000/main.c  | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 5e24758..cb6c914 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2138,6 +2138,7 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 		uint16_t *data);

 int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
+int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask);

 struct e1000_fixup_table {
 	uint32_t orig, fixed;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 4518be8..05d38ac 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -274,6 +274,21 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 	return E1000_SUCCESS;
 }

+int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask)
+{
+	uint32_t swfw_sync;
+
+	if (e1000_get_hw_eeprom_semaphore(hw))
+		return -E1000_ERR_SWFW_SYNC;
+
+	swfw_sync = E1000_READ_REG(hw, SW_FW_SYNC);
+	swfw_sync &= ~mask;
+	E1000_WRITE_REG(hw, SW_FW_SYNC, swfw_sync);
+
+	e1000_put_hw_eeprom_semaphore(hw);
+	return E1000_SUCCESS;
+}
+
 static bool e1000_is_second_port(struct e1000_hw *hw)
 {
 	switch (hw->mac_type) {
@@ -1348,6 +1363,11 @@ static int32_t e1000_write_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint
 	E1000_WRITE_REG(hw, KUMCTRLSTA, reg_val);
 	udelay(2);

+	if (e1000_swfw_sync_release(hw, swfw) < 0)
+		dev_warn(hw->dev,
+			 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+			 swfw);
+
 	return E1000_SUCCESS;
 }

@@ -1375,6 +1395,11 @@ static int32_t e1000_read_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint1
 	reg_val = E1000_READ_REG(hw, KUMCTRLSTA);
 	*data = (uint16_t)reg_val;

+	if (e1000_swfw_sync_release(hw, swfw) < 0)
+		dev_warn(hw->dev,
+			 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+			 swfw);
+
 	return E1000_SUCCESS;
 }

@@ -2804,6 +2829,11 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)

 		if (hw->mac_type >= e1000_82571)
 			mdelay(10);
+
+		if (e1000_swfw_sync_release(hw, swfw) < 0)
+			dev_warn(hw->dev,
+				 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+				 swfw);
 	} else {
 		/* Read the Extended Device Control Register, assert the PHY_RESET_DIR
 		 * bit to put the PHY into reset. Then, take it out of reset.
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
