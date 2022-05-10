Delivery-date: Tue, 10 May 2022 14:14:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOlB-008HiV-Lv
	for lore@lore.pengutronix.de; Tue, 10 May 2022 14:14:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOlA-00005F-3m
	for lore@pengutronix.de; Tue, 10 May 2022 14:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KP9PHVMml8QIMFB4SIiClNcqlwgMwM3gkuvEU/Jl6CA=; b=Bw10amIXtOsFkY
	TZziJ3L4vu0RhVWWIcFMYlfphex5affXpgWoCbUI7fwdVxZpHoZmeJTmxET/nnwXQ8btrtcqehLK2
	vNFf88QIYmmbomjLALQqDiVcjX+pAlpQhZgJkJjXKw1rlbGlRfluGL9tL9ZbLAj4+zZSOxYWQr77B
	PJgywPy+QEcLke9WmtXTWh47KwIeBCzwxYwWGfhWJcHpIOXjBO7Ybsa0Y0rjxSwizRYrF/vj7cwRE
	ElIsMfo9uftaKEI7li7s0F3ZVX52RBAZOXwsiqIIswEwpDyTCJaKMwdEamIcBJIeFkkNE17aKIu+9
	jHaP1ohI+Ihpu3J0LobQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noOjb-001mYC-CL; Tue, 10 May 2022 12:12:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noOjT-001mU6-AB
 for barebox@lists.infradead.org; Tue, 10 May 2022 12:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjN-0008IB-Fk; Tue, 10 May 2022 14:12:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjO-001TpT-3p; Tue, 10 May 2022 14:12:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOjL-000uDj-T1; Tue, 10 May 2022 14:12:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 10 May 2022 14:12:41 +0200
Message-Id: <20220510121242.216065-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_051251_392361_0D1057D0 
X-CRM114-Status: GOOD (  12.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] usb: dwc2: add support st,stm32mp15-fs/hsotg devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port chip specific configuration for stm32mp15x SoC from kernel v5.18-rc4.
This patch is needed to fix USB host support on OTG port. Tested on stm32mp151.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/dwc2/dwc2.c | 51 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 1b5981c2d5..8cb99446e4 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -13,9 +13,49 @@
 #include <driver.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
+#include <of_device.h>
 
 #include "dwc2.h"
 
+static void dwc2_set_stm32mp15_fsotg_params(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *p = &dwc2->params;
+
+	p->otg_cap &= ~(DWC2_CAP_PARAM_HNP_SRP_CAPABLE
+			 | DWC2_CAP_PARAM_SRP_ONLY_CAPABLE);
+	p->otg_cap |= DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
+	p->speed = DWC2_SPEED_PARAM_FULL;
+	p->host_rx_fifo_size = 128;
+	p->host_nperio_tx_fifo_size = 96;
+	p->host_perio_tx_fifo_size = 96;
+	p->max_packet_count = 256;
+	p->phy_type = DWC2_PHY_TYPE_PARAM_FS;
+	p->i2c_enable = false;
+	p->activate_stm_fs_transceiver = true;
+	p->ahbcfg = GAHBCFG_HBSTLEN_INCR16 << GAHBCFG_HBSTLEN_SHIFT;
+	p->power_down = DWC2_POWER_DOWN_PARAM_NONE;
+	p->host_support_fs_ls_low_power = true;
+	p->host_ls_low_power_phy_clk = true;
+}
+
+static void dwc2_set_stm32mp15_hsotg_params(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *p = &dwc2->params;
+
+	p->otg_cap &= ~(DWC2_CAP_PARAM_HNP_SRP_CAPABLE
+			 | DWC2_CAP_PARAM_SRP_ONLY_CAPABLE);
+	p->otg_cap |= DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
+	p->host_rx_fifo_size = 440;
+	p->host_nperio_tx_fifo_size = 256;
+	p->host_perio_tx_fifo_size = 256;
+	p->ahbcfg = GAHBCFG_HBSTLEN_INCR16 << GAHBCFG_HBSTLEN_SHIFT;
+	p->power_down = DWC2_POWER_DOWN_PARAM_NONE;
+	p->lpm = false;
+	p->lpm_clock_gating = false;
+	p->besl = false;
+	p->hird_threshold_en = false;
+}
+
 static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 {
 	struct dwc2 *dwc2 = ctx;
@@ -43,10 +83,13 @@ static int dwc2_set_mode(void *ctx, enum usb_dr_mode mode)
 	return ret;
 }
 
+typedef void (*set_params_cb)(struct dwc2 *dwc2);
+
 static int dwc2_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct dwc2 *dwc2;
+	set_params_cb set_params;
 	int ret;
 
 	dwc2 = xzalloc(sizeof(*dwc2));
@@ -107,6 +150,10 @@ static int dwc2_probe(struct device_d *dev)
 
 	dwc2_set_default_params(dwc2);
 
+	set_params = of_device_get_match_data(dev);
+	if (set_params)
+		set_params(dwc2);
+
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 	dev->priv = dwc2;
 
@@ -148,6 +195,10 @@ static const struct of_device_id dwc2_platform_dt_ids[] = {
 	{ .compatible = "brcm,bcm2835-usb", },
 	{ .compatible = "brcm,bcm2708-usb", },
 	{ .compatible = "snps,dwc2", },
+	{ .compatible = "st,stm32mp15-fsotg",
+	  .data = dwc2_set_stm32mp15_fsotg_params },
+	{ .compatible = "st,stm32mp15-hsotg",
+	  .data = dwc2_set_stm32mp15_hsotg_params },
 	{ }
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

