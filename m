Delivery-date: Mon, 05 Jan 2026 20:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2g-001ctl-00
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2f-0006Bn-87
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:15:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RRJPg0eSQ5hPu5r2j9R65ZD5eNP1gn7Cd3yWTADS/Ls=; b=P6i95YBpjP9bau15XzY0qv8OM0
	RVK8P05n2VFZtUVrdejeFCPM10r8ZXbrm7fuNQMGG2WuZ33ZR+rygOGQ+Q//QlTUZ68dLzPEsZrqj
	jfwSMXz8Q5+g8xc/+mSTEfrjK2fPIp90f7X61mHUcV09TimftmJYk7EbE6Vu9cyBOS/mZnatkjbsW
	G4g5LWn0Iv62KKdyMHr23lAfdIGrQRSisMKPj23uX4pOFzCXiqnJ4thKUIg9tTO8u7+Qis+jPyO+3
	LSuXtiDxTOFg8+e9iOnvLhcNhQqmKcpkRLO/mS4B1IPMkiCYRDsvaZ98oBJHZaAGnudF31tT9SCf0
	dpDyW9dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1v-0000000BxVd-0wbf;
	Mon, 05 Jan 2026 19:14:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1t-0000000BxTz-1FbB
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:14:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-0005tD-Gx; Mon, 05 Jan 2026 20:14:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-009E5k-12;
	Mon, 05 Jan 2026 20:14:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-00000002a4z-3mgj;
	Mon, 05 Jan 2026 20:14:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 20:12:53 +0100
Message-ID: <20260105191410.615318-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111413_379797_EE87F72E 
X-CRM114-Status: GOOD (  20.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] usb: dwc3: add support for Global SoC Bus Configuration Register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Quoting kernel commit d504bfa6cfd1 ("usb: dwc3: enable CCI support for
AMD-xilinx DWC3 controller"):

  The GSBUSCFG0 register bits [31:16] are used to configure the cache type
  settings of the descriptor and data write/read transfers (Cacheable,
  Bufferable/Posted). When CCI is enabled in the design, DWC3 core GSBUSCFG0
  cache bits must be updated to support CCI enabled transfers in USB.

We don't operate the ZynqMP in cache-coherent mode in barebox, but we do
operate the 64-bit Layerscape SoCs in this mode, so prepare for being
able to set this register.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 37 +++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h |  8 ++++++++
 drivers/usb/dwc3/glue.h | 14 ++++++++++++++
 3 files changed, 59 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 472630c95392..cb22f19e39cc 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -445,6 +445,18 @@ static void dwc3_cache_hwparams(struct dwc3 *dwc)
 		parms->hwparams9 = dwc3_readl(dwc->regs, DWC3_GHWPARAMS9);
 }
 
+static void dwc3_config_soc_bus(struct dwc3 *dwc)
+{
+	if (dwc->gsbuscfg0_reqinfo != DWC3_GSBUSCFG0_REQINFO_UNSPECIFIED) {
+		u32 reg;
+
+		reg = dwc3_readl(dwc->regs, DWC3_GSBUSCFG0);
+		reg &= ~DWC3_GSBUSCFG0_REQINFO(~0);
+		reg |= DWC3_GSBUSCFG0_REQINFO(dwc->gsbuscfg0_reqinfo);
+		dwc3_writel(dwc->regs, DWC3_GSBUSCFG0, reg);
+	}
+}
+
 static int dwc3_core_ulpi_init(struct dwc3 *dwc)
 {
 	int intf;
@@ -903,6 +915,8 @@ static int dwc3_core_init(struct dwc3 *dwc)
 
 	dwc3_set_incr_burst_type(dwc);
 
+	dwc3_config_soc_bus(dwc);
+
 	usb_phy_set_suspend(dwc->usb2_phy, 0);
 	usb_phy_set_suspend(dwc->usb3_phy, 0);
 	ret = phy_power_on(dwc->usb2_generic_phy);
@@ -1147,6 +1161,26 @@ static void dwc3_core_exit_mode(struct dwc3 *dwc)
 	dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);
 }
 
+static void dwc3_get_software_properties(struct dwc3 *dwc,
+					 const struct dwc3_properties *properties)
+{
+	dwc->gsbuscfg0_reqinfo = DWC3_GSBUSCFG0_REQINFO_UNSPECIFIED;
+
+	if (properties->gsbuscfg0_reqinfo !=
+	    DWC3_GSBUSCFG0_REQINFO_UNSPECIFIED) {
+		dwc->gsbuscfg0_reqinfo = properties->gsbuscfg0_reqinfo;
+		return;
+	}
+
+	/*
+	 * TODO: Iterate over all parent nodes for finding swnode properties
+	 * and non-DT (non-ABI) properties once we have device properties..
+	 *
+	 * In Linux, this is used for Xilinx ZynqMP, which we don't configure
+	 * here.
+	 */
+}
+
 static void dwc3_get_properties(struct dwc3 *dwc)
 {
 	struct device		*dev = dwc->dev;
@@ -1416,6 +1450,8 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
 
 	dwc3_get_properties(dwc);
 
+	dwc3_get_software_properties(dwc, &data->properties);
+
 	if (!data->ignore_clocks_and_resets) {
 		if (dev->of_node) {
 			ret = clk_bulk_get_all(dev, &dwc->clks);
@@ -1497,6 +1533,7 @@ static int dwc3_probe(struct device *dev)
 
 	probe_data.dwc = dwc;
 	probe_data.res = res;
+	probe_data.properties = DWC3_DEFAULT_PROPERTIES;
 
 	return dwc3_core_probe(&probe_data);
 }
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 52853a4370ce..d49feb9918b7 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -168,6 +168,10 @@
 #define DWC3_GSBUSCFG0_INCRBRSTENA	(1 << 0) /* undefined length enable */
 #define DWC3_GSBUSCFG0_INCRBRST_MASK	0xff
 
+/* Global SoC Bus Configuration Register: AHB-prot/AXI-cache/OCP-ReqInfo */
+#define DWC3_GSBUSCFG0_REQINFO(n)	(((n) & 0xffff) << 16)
+#define DWC3_GSBUSCFG0_REQINFO_UNSPECIFIED	0xffffffff
+
 /* Global Debug LSP MUX Select */
 #define DWC3_GDBGLSPMUX_ENDBC		BIT(15)	/* Host only */
 #define DWC3_GDBGLSPMUX_HOSTSELECT(n)	((n) & 0x3fff)
@@ -1103,6 +1107,9 @@ struct dwc3_scratchpad_array {
  * @num_ep_resized: carries the current number endpoints which have had its tx
  *		    fifo resized.
  * @debug_root: root debugfs directory for this device to put its files in.
+ * @gsbuscfg0_reqinfo: store GSBUSCFG0.DATRDREQINFO, DESRDREQINFO,
+ *		       DATWRREQINFO, and DESWRREQINFO value passed from
+ *		       glue driver.
  */
 struct dwc3 {
 	struct work_struct	drd_work;
@@ -1318,6 +1325,7 @@ struct dwc3 {
 	int			last_fifo_depth;
 	int			num_ep_resized;
 	struct dentry		*debug_root;
+	u32			gsbuscfg0_reqinfo;
 };
 
 #define INCRX_BURST_MODE 0
diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
index 05d6d2723d19..f7842b42dfac 100644
--- a/drivers/usb/dwc3/glue.h
+++ b/drivers/usb/dwc3/glue.h
@@ -9,17 +9,31 @@
 #include <linux/types.h>
 #include "core.h"
 
+/**
+ * dwc3_properties: DWC3 core properties
+ * @gsbuscfg0_reqinfo: Value to be programmed in the GSBUSCFG0.REQINFO field
+ */
+struct dwc3_properties {
+	u32 gsbuscfg0_reqinfo;
+};
+
+#define DWC3_DEFAULT_PROPERTIES ((struct dwc3_properties){		\
+	.gsbuscfg0_reqinfo = DWC3_GSBUSCFG0_REQINFO_UNSPECIFIED,	\
+	})
+
 /**
  * dwc3_probe_data: Initialization parameters passed to dwc3_core_probe()
  * @dwc: Reference to dwc3 context structure
  * @res: resource for the DWC3 core mmio region
  * @ignore_clocks_and_resets: clocks and resets defined for the device should
  *		be ignored by the DWC3 core, as they are managed by the glue
+ * @properties: dwc3 software manage properties
  */
 struct dwc3_probe_data {
 	struct dwc3 *dwc;
 	struct resource *res;
 	bool ignore_clocks_and_resets;
+	struct dwc3_properties properties;
 };
 
 /**
-- 
2.47.3



