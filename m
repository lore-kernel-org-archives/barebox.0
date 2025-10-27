Delivery-date: Mon, 27 Oct 2025 08:02:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFj-00CFla-11
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:02:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHFi-0003nv-Mu
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:02:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ViAHY7eyGpkZHph9EcJuE0gsa991LIJiSOgHj45Wilc=; b=AXLZYSnFlKbuEoNrSsHGGyD++i
	GSFSPMHfTCZZH4jUReZvCT1oU/LKGvWzEjOzTYBkUZX76GdCdUS2Myb3Kd9fIxyEXQykInsKtFqyb
	tmKu+IxmwHSmL52BrMp28Z5TIVkvVFY6IWlBj1Y0VZEOI12AgVFEIK6yQh7EKXy9zPoBVFBDcG/OO
	AwQ1PpiN6TK7wmZRzgSnPVvOcSx20oA9itFt0I5tX9Pe3hYcTg/Nrlp35xNE3Zs/P4j+N2v7hySRx
	VF1Ww7CP/pf/SEgvSOQKuPlLvX3kwl0Ph9S0EqTxpl8/s/eLZ+U0YBcDiyN3TVZ0kzzMD8TtiNOCd
	Jj3pn2lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFG-0000000DFA2-1PUo;
	Mon, 27 Oct 2025 07:02:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHFC-0000000DF7v-3rvh
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:02:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHFB-0003Rs-D2; Mon, 27 Oct 2025 08:02:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:00:55 +0100
Message-ID: <20251027070214.2425834-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027070214.2425834-1-a.fatoum@barebox.org>
References: <20251027070214.2425834-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_000218_978679_9BC08FB2 
X-CRM114-Status: GOOD (  12.50  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] phy: add phy_configure operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This callback will be needed for upcoming Rockchip MIPI-DSI PHY support.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/phy/phy-core.c  | 23 +++++++++++++++++++++++
 include/linux/phy/phy.h | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d4c704809cfa..fa404884c924 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -282,6 +282,29 @@ int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
 }
 EXPORT_SYMBOL_GPL(phy_set_mode_ext);
 
+/**
+ * phy_configure() - Changes the phy parameters
+ * @phy: the phy returned by phy_get()
+ * @opts: New configuration to apply
+ *
+ * Used to change the PHY parameters. phy_init() must have been called
+ * on the phy. The configuration will be applied on the current phy
+ * mode, that can be changed using phy_set_mode().
+ *
+ * Return: %0 if successful, a negative error code otherwise
+ */
+int phy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	if (!phy)
+		return -EINVAL;
+
+	if (!phy->ops->configure)
+		return -EOPNOTSUPP;
+
+	return phy->ops->configure(phy, opts);
+}
+EXPORT_SYMBOL_GPL(phy_configure);
+
 struct usb_phy *phy_to_usbphy(struct phy *phy)
 {
 	if (!phy)
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index b4a99c9c7037..89e62dee9139 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -44,6 +44,16 @@ enum phy_mode {
 	PHY_MODE_DP
 };
 
+/**
+ * union phy_configure_opts - Opaque generic phy configuration
+ *
+ * @mipi_dphy:	Configuration set applicable for phys supporting
+ *		the MIPI_DPHY phy mode.
+ */
+union phy_configure_opts {
+	struct phy_configure_opts_mipi_dphy	mipi_dphy;
+};
+
 /**
  * struct phy_ops - set of function pointers for performing phy operations
  * @init: operation to be performed for initializing phy
@@ -60,6 +70,18 @@ struct phy_ops {
 	int	(*power_off)(struct phy *phy);
 	int	(*set_mode)(struct phy *phy, enum phy_mode mode, int submode);
 	struct usb_phy *(*to_usbphy)(struct phy *phy);
+
+	/**
+	 * @configure:
+	 *
+	 * Optional.
+	 *
+	 * Used to change the PHY parameters. phy_init() must have
+	 * been called on the phy.
+	 *
+	 * Returns: 0 if successful, an negative error code otherwise
+	 */
+	int	(*configure)(struct phy *phy, union phy_configure_opts *opts);
 };
 
 /**
@@ -159,6 +181,7 @@ int phy_power_off(struct phy *phy);
 int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
 #define phy_set_mode(phy, mode) \
         phy_set_mode_ext(phy, mode, 0)
+int phy_configure(struct phy *phy, union phy_configure_opts *opts);
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return phy->attrs.bus_width;
@@ -222,6 +245,15 @@ static inline int phy_set_mode_ext(struct phy *phy, enum phy_mode mode,
 #define phy_set_mode(phy, mode) \
         phy_set_mode_ext(phy, mode, 0)
 
+static inline int phy_configure(struct phy *phy,
+				union phy_configure_opts *opts)
+{
+	if (!phy)
+		return 0;
+
+	return -ENOSYS;
+}
+
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return -ENOSYS;
-- 
2.47.3



