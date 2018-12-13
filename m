Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL2S-0001g2-Al
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:04:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so607048plo.3
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:03:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:03:35 -0800
Message-Id: <20181213070336.26837-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181213070336.26837-1-andrew.smirnov@gmail.com>
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] net/e1000: Use dev_err to report error
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Those messages shouldn't be reported in normal use scenarious and in
the case of error using dev_err saves user the trouble of having to
run a custom build of Barebox with e1000 debugging enabled to see some
initial diagnostic messages.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 70 ++++++++++++++++++++--------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index d631e44b6..87ee46094 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -231,7 +231,7 @@ static int32_t e1000_get_hw_eeprom_semaphore(struct e1000_hw *hw)
 	if (!timeout) {
 		/* Release semaphores */
 		e1000_put_hw_eeprom_semaphore(hw);
-		dev_dbg(hw->dev, "Driver can't access the Eeprom - "
+		dev_err(hw->dev, "Driver can't access the Eeprom - "
 				"SWESMBI bit is set.\n");
 		return -E1000_ERR_EEPROM;
 	}
@@ -262,7 +262,7 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 	}
 
 	if (!timeout) {
-		dev_dbg(hw->dev, "Driver can't access resource, SW_FW_SYNC timeout.\n");
+		dev_err(hw->dev, "Driver can't access resource, SW_FW_SYNC timeout.\n");
 		return -E1000_ERR_SWFW_SYNC;
 	}
 
@@ -332,7 +332,7 @@ static int e1000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 	for (i = 0; i < NODE_ADDRESS_SIZE; i += 2) {
 		if (e1000_read_eeprom(hw, i >> 1, 1, &eeprom_data) < 0) {
-			dev_dbg(hw->dev, "EEPROM Read Error\n");
+			dev_err(hw->dev, "EEPROM Read Error\n");
 			return -E1000_ERR_EEPROM;
 		}
 		adr[i] = eeprom_data & 0xff;
@@ -843,7 +843,7 @@ static int e1000_setup_link(struct e1000_hw *hw)
 	ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
 				    &eeprom_data);
 	if (ret_val < 0) {
-		dev_dbg(hw->dev, "EEPROM Read Error\n");
+		dev_err(hw->dev, "EEPROM Read Error\n");
 		return ret_val;
 	}
 
@@ -1007,7 +1007,7 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 		txcw = E1000_TXCW_ANE | E1000_TXCW_FD | E1000_TXCW_PAUSE_MASK;
 		break;
 	default:
-		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
+		dev_err(hw->dev, "Flow control param set incorrectly\n");
 		return -E1000_ERR_CONFIG;
 		break;
 	}
@@ -1045,7 +1045,7 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 			 * detect a signal. This will allow us to communicate with
 			 * non-autonegotiating link partners.
 			 */
-			dev_dbg(hw->dev, "Never got a valid link from auto-neg!!!\n");
+			dev_err(hw->dev, "Never got a valid link from auto-neg!!!\n");
 			hw->autoneg_failed = 1;
 			return -E1000_ERR_NOLINK;
 		} else {
@@ -1053,7 +1053,7 @@ static int e1000_setup_fiber_link(struct e1000_hw *hw)
 			dev_dbg(hw->dev, "Valid Link Found\n");
 		}
 	} else {
-		dev_dbg(hw->dev, "No Signal Detected\n");
+		dev_err(hw->dev, "No Signal Detected\n");
 		return -E1000_ERR_NOLINK;
 	}
 	return 0;
@@ -1093,7 +1093,7 @@ static int32_t e1000_copper_link_preconfig(struct e1000_hw *hw)
 	/* Make sure we have a valid PHY */
 	ret_val = e1000_detect_gig_phy(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error, did not detect valid phy.\n");
+		dev_err(hw->dev, "Error, did not detect valid phy.\n");
 		return ret_val;
 	}
 	dev_dbg(hw->dev, "Phy ID = %x \n", hw->phy_id);
@@ -1237,7 +1237,7 @@ static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
 
 	ret_val = e1000_phy_reset(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		dev_err(hw->dev, "Error Resetting the PHY\n");
 		return ret_val;
 	}
 
@@ -1256,7 +1256,7 @@ static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
 		/* disable lplu d3 during driver init */
 		ret_val = e1000_set_d3_lplu_state_off(hw);
 		if (ret_val) {
-			dev_dbg(hw->dev, "Error Disabling LPLU D3\n");
+			dev_err(hw->dev, "Error Disabling LPLU D3\n");
 			return ret_val;
 		}
 	}
@@ -1264,7 +1264,7 @@ static int32_t e1000_copper_link_igp_setup(struct e1000_hw *hw)
 	/* disable lplu d0 during driver init */
 	ret_val = e1000_set_d0_lplu_state_off(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Disabling LPLU D0\n");
+		dev_err(hw->dev, "Error Disabling LPLU D0\n");
 		return ret_val;
 	}
 
@@ -1458,7 +1458,7 @@ static int32_t e1000_copper_link_ggp_setup(struct e1000_hw *hw)
 	/* SW Reset the PHY so all changes take effect */
 	ret_val = e1000_phy_reset(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		dev_err(hw->dev, "Error Resetting the PHY\n");
 		return ret_val;
 	}
 
@@ -1587,7 +1587,7 @@ static int32_t e1000_copper_link_mgp_setup(struct e1000_hw *hw)
 	/* SW Reset the PHY so all changes take effect */
 	ret_val = e1000_phy_reset(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Resetting the PHY\n");
+		dev_err(hw->dev, "Error Resetting the PHY\n");
 		return ret_val;
 	}
 
@@ -1616,7 +1616,7 @@ static int32_t e1000_copper_link_autoneg(struct e1000_hw *hw)
 	dev_dbg(hw->dev, "Reconfiguring auto-neg advertisement params\n");
 	ret_val = e1000_phy_setup_autoneg(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Setting up Auto-Negotiation\n");
+		dev_err(hw->dev, "Error Setting up Auto-Negotiation\n");
 		return ret_val;
 	}
 	dev_dbg(hw->dev, "Restarting Auto-Neg\n");
@@ -1635,7 +1635,7 @@ static int32_t e1000_copper_link_autoneg(struct e1000_hw *hw)
 
 	ret_val = e1000_wait_autoneg(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error while waiting for autoneg to complete\n");
+		dev_err(hw->dev, "Error while waiting for autoneg to complete\n");
 		return ret_val;
 	}
 
@@ -1664,14 +1664,14 @@ static int32_t e1000_copper_link_postconfig(struct e1000_hw *hw)
 	} else {
 		ret_val = e1000_config_mac_to_phy(hw);
 		if (ret_val) {
-			dev_dbg(hw->dev, "Error configuring MAC to PHY settings\n");
+			dev_err(hw->dev, "Error configuring MAC to PHY settings\n");
 			return ret_val;
 		}
 	}
 
 	ret_val = e1000_config_fc_after_link_up(hw);
 	if (ret_val) {
-		dev_dbg(hw->dev, "Error Configuring Flow Control\n");
+		dev_err(hw->dev, "Error Configuring Flow Control\n");
 		return ret_val;
 	}
 
@@ -1984,7 +1984,7 @@ static int e1000_config_mac_to_phy(struct e1000_hw *hw)
 	 * registers depending on negotiated values.
 	 */
 	if (e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
+		dev_err(hw->dev, "PHY Read Error\n");
 		return -E1000_ERR_PHY;
 	}
 	if (phy_data & M88E1000_PSSR_DPLX)
@@ -2060,7 +2060,7 @@ static int e1000_force_mac_fc(struct e1000_hw *hw)
 		ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
 		break;
 	default:
-		dev_dbg(hw->dev, "Flow control param set incorrectly\n");
+		dev_err(hw->dev, "Flow control param set incorrectly\n");
 		return -E1000_ERR_CONFIG;
 	}
 
@@ -2099,17 +2099,17 @@ static int32_t e1000_config_fc_after_link_up(struct e1000_hw *hw)
 	 * some "sticky" (latched) bits.
 	 */
 	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error \n");
+		dev_err(hw->dev, "PHY Read Error \n");
 		return -E1000_ERR_PHY;
 	}
 
 	if (e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error \n");
+		dev_err(hw->dev, "PHY Read Error \n");
 		return -E1000_ERR_PHY;
 	}
 
 	if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
-		dev_dbg(hw->dev, "Copper PHY and Auto Neg has not completed.\n");
+		dev_err(hw->dev, "Copper PHY and Auto Neg has not completed.\n");
 		return 0;
 	}
 
@@ -2120,12 +2120,12 @@ static int32_t e1000_config_fc_after_link_up(struct e1000_hw *hw)
 	 * negotiated.
 	 */
 	if (e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_nway_adv_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
+		dev_err(hw->dev, "PHY Read Error\n");
 		return -E1000_ERR_PHY;
 	}
 
 	if (e1000_read_phy_reg(hw, PHY_LP_ABILITY, &mii_nway_lp_ability_reg) < 0) {
-		dev_dbg(hw->dev, "PHY Read Error\n");
+		dev_err(hw->dev, "PHY Read Error\n");
 		return -E1000_ERR_PHY;
 	}
 
@@ -2251,7 +2251,7 @@ static int32_t e1000_config_fc_after_link_up(struct e1000_hw *hw)
 	 */
 	ret_val = e1000_force_mac_fc(hw);
 	if (ret_val < 0) {
-		dev_dbg(hw->dev, "Error forcing flow control settings\n");
+		dev_err(hw->dev, "Error forcing flow control settings\n");
 		return ret_val;
 	}
 
@@ -2400,11 +2400,11 @@ static int e1000_wait_autoneg(struct e1000_hw *hw)
 		 * Complete bit to be set.
 		 */
 		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
-			dev_dbg(hw->dev, "PHY Read Error\n");
+			dev_err(hw->dev, "PHY Read Error\n");
 			return -E1000_ERR_PHY;
 		}
 		if (e1000_read_phy_reg(hw, PHY_STATUS, &phy_data) < 0) {
-			dev_dbg(hw->dev, "PHY Read Error\n");
+			dev_err(hw->dev, "PHY Read Error\n");
 			return -E1000_ERR_PHY;
 		}
 		if (phy_data & MII_SR_AUTONEG_COMPLETE) {
@@ -2413,7 +2413,7 @@ static int e1000_wait_autoneg(struct e1000_hw *hw)
 		}
 		mdelay(100);
 	}
-	dev_dbg(hw->dev, "Auto-Neg timedout.\n");
+	dev_err(hw->dev, "Auto-Neg timedout.\n");
 	return -E1000_ERR_TIMEOUT;
 }
 
@@ -2579,11 +2579,11 @@ static int e1000_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
 				break;
 		}
 		if (!(mdic & E1000_MDIC_READY)) {
-			dev_dbg(hw->dev, "MDI Read did not complete\n");
+			dev_err(hw->dev, "MDI Read did not complete\n");
 			return -E1000_ERR_PHY;
 		}
 		if (mdic & E1000_MDIC_ERROR) {
-			dev_dbg(hw->dev, "MDI Error\n");
+			dev_err(hw->dev, "MDI Error\n");
 			return -E1000_ERR_PHY;
 		}
 		return mdic;
@@ -2668,7 +2668,7 @@ static int e1000_phy_write(struct mii_bus *bus, int phy_addr,
 				break;
 		}
 		if (!(mdic & E1000_MDIC_READY)) {
-			dev_dbg(hw->dev, "MDI Write did not complete\n");
+			dev_err(hw->dev, "MDI Write did not complete\n");
 			return -E1000_ERR_PHY;
 		}
 	} else {
@@ -2775,7 +2775,7 @@ static int32_t e1000_get_phy_cfg_done(struct e1000_hw *hw)
 			timeout--;
 		}
 		if (!timeout) {
-			dev_dbg(hw->dev, "MNG configuration cycle has not completed.\n");
+			dev_err(hw->dev, "MNG configuration cycle has not completed.\n");
 			return -E1000_ERR_RESET;
 		}
 		break;
@@ -2811,7 +2811,7 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw)
 			swfw = E1000_SWFW_PHY1_SM;
 
 		if (e1000_swfw_sync_acquire(hw, swfw)) {
-			dev_dbg(hw->dev, "Unable to acquire swfw sync\n");
+			dev_err(hw->dev, "Unable to acquire swfw sync\n");
 			return -E1000_ERR_SWFW_SYNC;
 		}
 
@@ -3110,12 +3110,12 @@ static int32_t e1000_detect_gig_phy(struct e1000_hw *hw)
 			phy_type = e1000_phy_igb;
 		break;
 	default:
-		dev_dbg(hw->dev, "Invalid MAC type %d\n", hw->mac_type);
+		dev_err(hw->dev, "Invalid MAC type %d\n", hw->mac_type);
 		return -E1000_ERR_CONFIG;
 	}
 
 	if (phy_type == e1000_phy_undefined) {
-		dev_dbg(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
+		dev_err(hw->dev, "Invalid PHY ID 0x%X\n", hw->phy_id);
 		return -EINVAL;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
