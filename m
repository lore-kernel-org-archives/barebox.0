Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b8KjQ-00014M-Ft
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:45 +0000
Received: by mail-pa0-x242.google.com with SMTP id gp3so2238791pac.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:47 -0700
Message-Id: <1464843531-1824-19-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/22] e1000: Properly release SW_FW_SYNC semaphore bits
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
index 3859f8c..c6d26d5 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -2142,6 +2142,7 @@ int32_t e1000_read_eeprom(struct e1000_hw *hw, uint16_t offset,
 		uint16_t *data);
 
 int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask);
+int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask);
 
 
 #endif	/* _E1000_HW_H_ */
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 7ee78c3..df9ae73 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -273,6 +273,21 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 	return E1000_SUCCESS;
 }
 
+int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask)
+{
+	uint32_t swfw_sync;
+
+	if (e1000_get_hw_eeprom_semaphore(hw))
+		return -E1000_ERR_SWFW_SYNC;
+
+	swfw_sync = e1000_read_reg(hw, E1000_SW_FW_SYNC);
+	swfw_sync &= ~mask;
+	e1000_write_reg(hw, E1000_SW_FW_SYNC, swfw_sync);
+
+	e1000_put_hw_eeprom_semaphore(hw);
+	return E1000_SUCCESS;
+}
+
 static bool e1000_is_second_port(struct e1000_hw *hw)
 {
 	switch (hw->mac_type) {
@@ -1347,6 +1362,11 @@ static int32_t e1000_write_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint
 	e1000_write_reg(hw, E1000_KUMCTRLSTA, reg_val);
 	udelay(2);
 
+	if (e1000_swfw_sync_release(hw, swfw) < 0)
+		dev_warn(hw->dev,
+			 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+			 swfw);
+
 	return E1000_SUCCESS;
 }
 
@@ -1374,6 +1394,11 @@ static int32_t e1000_read_kmrn_reg(struct e1000_hw *hw, uint32_t reg_addr, uint1
 	reg_val = e1000_read_reg(hw, E1000_KUMCTRLSTA);
 	*data = (uint16_t)reg_val;
 
+	if (e1000_swfw_sync_release(hw, swfw) < 0)
+		dev_warn(hw->dev,
+			 "Timeout while releasing SWFW_SYNC bits (0x%08x)\n",
+			 swfw);
+
 	return E1000_SUCCESS;
 }
 
@@ -2803,6 +2828,11 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
 
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
