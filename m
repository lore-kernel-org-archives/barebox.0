Delivery-date: Fri, 11 Aug 2023 12:28:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNj-00GSdk-Bf
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNh-0007Yp-FQ
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uDpdFu+Sd5qgNJ1CP/chwtsvqrd0y//IUpiriTvbzDg=; b=YcT1QhiA1g2B6XeTlaBHQZYZvn
	q8T6hZubCV4S7BcS9ki9sr+1ycw3lkE2RAFVsUGeT8JxW+sDY35TQ/qO0y5mTxGRGeVls3AwE+8ZK
	PFE+mkPKAJ/hNXG8IZ1vjX+NBCaUd84d/gb/dHYdrIKLvaimrlCRlWVncvEHZkZR3AKA6hr20+0kC
	sQKLEucIUa2BjRwehGwCOaM4GGMzd5shjFwVMiGsoBdzxk/bO+viGhbXHu68n6XvLeuuIp2Qib0zT
	TK2Nghtt2eJ4lUYA5kHlqRXCY9dUGvDSbfaS3Ys9HBbpSE9xuve01cut/tHOFwHBcAH1pY5fX+08+
	HRqeq06A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMO-00AD9C-0g;
	Fri, 11 Aug 2023 10:27:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0b-0W
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:08 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPME-00073K-0U
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:52 +0200
Message-Id: <20230811102657.271931-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_203347_E6CECEF2 
X-CRM114-Status: GOOD (  20.80  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/11] net: phy: import phy_{read,write,modify}_mmd helpers from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux have added helper functions to access and modify the mmd
registers. The helpers are clause22/45 agnostic and can handle both the
same way. Since barebox does not have clause45 support we need to inform
the user that this is not supported at the moment. Therefore we also
need the is_c45 flag which is ported from Linux as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 drivers/net/phy/phy.c | 109 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/phy.h   |  10 ++++
 2 files changed, 119 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index c1b8cb46e6be..4cabb436e461 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -905,6 +905,115 @@ int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 	return 0;
 }
 
+/**
+ * phy_read_mmd - Convenience function for reading a register
+ * from an MMD on a given PHY.
+ * @phydev: The phy_device struct
+ * @devad: The MMD to read from
+ * @regnum: The register on the MMD to read
+ *
+ * Same rules as for phy_read();
+ */
+int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
+{
+	struct mii_bus *bus = phydev->bus;
+	int phy_addr = phydev->addr;
+
+	if (regnum > (u16)~0 || devad > 32)
+		return -EINVAL;
+
+	if (phydev->is_c45) {
+		phydev_warn(phydev, "Clause45 is not supported yet\n");
+		return -EOPNOTSUPP;
+	}
+
+	mmd_phy_indirect(phydev, devad, regnum);
+
+	/* Read the content of the MMD's selected register */
+	return mdiobus_read(bus, phy_addr, MII_MMD_DATA);
+}
+EXPORT_SYMBOL(phy_read_mmd);
+
+/**
+ * phy_write_mmd - Convenience function for writing a register
+ * on an MMD on a given PHY.
+ * @phydev: The phy_device struct
+ * @devad: The MMD to read from
+ * @regnum: The register on the MMD to read
+ * @val: value to write to @regnum
+ *
+ * Same rules as for phy_write();
+ */
+int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
+{
+	struct mii_bus *bus = phydev->bus;
+	int phy_addr = phydev->addr;
+
+	if (regnum > (u16)~0 || devad > 32)
+		return -EINVAL;
+
+	if (phydev->is_c45) {
+		phydev_warn(phydev, "Clause45 is not supported yet\n");
+		return -EOPNOTSUPP;
+	}
+
+	mmd_phy_indirect(phydev, devad, regnum);
+
+	/* Write the data into MMD's selected register */
+	mdiobus_write(bus, phy_addr, MII_MMD_DATA, val);
+
+	return 0;
+}
+EXPORT_SYMBOL(phy_write_mmd);
+
+/**
+ * phy_modify_mmd_changed - Function for modifying a register on MMD
+ * @phydev: the phy_device struct
+ * @devad: the MMD containing register to modify
+ * @regnum: register number to modify
+ * @mask: bit mask of bits to clear
+ * @set: new value of bits set in mask to write to @regnum
+ *
+ * Returns negative errno, 0 if there was no change, and 1 in case of change
+ */
+int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
+			   u16 mask, u16 set)
+{
+	int new, ret;
+
+	ret = phy_read_mmd(phydev, devad, regnum);
+	if (ret < 0)
+		return ret;
+
+	new = (ret & ~mask) | set;
+	if (new == ret)
+		return 0;
+
+	ret = phy_write_mmd(phydev, devad, regnum, new);
+
+	return ret < 0 ? ret : 1;
+}
+EXPORT_SYMBOL_GPL(phy_modify_mmd_changed);
+
+/**
+ * phy_modify_mmd - Convenience function for modifying a register on MMD
+ * @phydev: the phy_device struct
+ * @devad: the MMD containing register to modify
+ * @regnum: register number to modify
+ * @mask: bit mask of bits to clear
+ * @set: new value of bits set in mask to write to @regnum
+ */
+int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
+		   u16 mask, u16 set)
+{
+	int ret;
+
+	ret = phy_modify_mmd_changed(phydev, devad, regnum, mask, set);
+
+	return ret < 0 ? ret : 0;
+}
+EXPORT_SYMBOL_GPL(phy_modify_mmd);
+
 int genphy_config_init(struct phy_device *phydev)
 {
 	int val;
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 8b52c16bb228..bb728dfaf8ea 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -146,6 +146,7 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
  * @bus: Pointer to the bus this PHY is on
  * @dev: driver model device structure for this PHY
  * @phy_id: UID for this device found during discovery
+ * @c45_ids: 802.3-c45 Device Identifiers if is_c45.
  * @dev_flags: Device-specific flags used by the PHY driver.
  * @addr: Bus address of PHY
  * @attached_dev: The attached enet driver's device instance ptr
@@ -160,6 +161,8 @@ struct phy_device {
 
 	u32 phy_id;
 
+	unsigned is_c45:1;
+
 	u32 dev_flags;
 
 	phy_interface_t interface;
@@ -412,6 +415,13 @@ void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				    u16 mask, u16 set);
 
+int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum);
+int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
+int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
+		   u16 mask, u16 set);
+int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
+			   u16 mask, u16 set);
+
 static inline bool phy_acquired(struct phy_device *phydev)
 {
 	return phydev && phydev->bus && slice_acquired(&phydev->bus->slice);
-- 
2.39.2



