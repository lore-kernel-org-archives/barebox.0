Delivery-date: Wed, 03 May 2023 12:20:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bH-0033UZ-8v
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:20:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bF-0006aI-16
	for lore@pengutronix.de; Wed, 03 May 2023 12:20:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bPQDCZAVfK0rV6chw3Ttsb7V5N5m5zTODaYgRGD56LM=; b=wlZkZBvFKIcpbydMzu0SA/R9qE
	PYoX3OBkPiBYX8jZOBOlW+xd2vzy2cJHVqtE3/TW5M0pyyGW2hFiEpTBVdgYy9l3o2XMoViDEqiSf
	g2QUw4cPt2cCtuAHQpnp4Aqq34Rs14SLf1hsjheevF9RXcgiwmVftct/9l03uziCD1e2+5rfdiiXh
	VQuO4tjDc4SKQpbEYr6fzFNL9zEWt20wJMW39ROjLNzFZvOEWi3hK8NPg9pBPU/NnSvWMwEToJXgB
	wjvfTSSrWtbh2IOH+vi/YYKBtNpuZRpBgwcZWJFoyowR+ZKbzf29/hZ1wwEmZ6aEdtFM2OUk1SXJZ
	YNkmmMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a8-0046qG-2U;
	Wed, 03 May 2023 10:19:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a2-0046nb-2v
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:19:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zz-000659-EV; Wed, 03 May 2023 12:19:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zx-000nxE-LF; Wed, 03 May 2023 12:19:21 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zw-007f5E-Jt; Wed, 03 May 2023 12:19:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  3 May 2023 12:19:16 +0200
Message-Id: <20230503101919.1826193-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230503101919.1826193-1-o.rempel@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_031926_948689_17608CC1 
X-CRM114-Status: GOOD (  14.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/4] usb: dwc2: Port support for USB FIFO devicetree properties from Linux v6.3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch ports the support for "g-rx-fifo-size", "g-np-tx-fifo-size",
and "g-tx-fifo-size" devicetree properties from Linux kernel v6.3. These
properties are required for proper FIFO configuration of different USB
endpoints in the gadget mode.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/dwc2/core.c | 27 +++++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.c |  1 +
 drivers/usb/dwc2/dwc2.h |  1 +
 3 files changed, 29 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 9edd56d483..b198ba6bf8 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -188,6 +188,33 @@ void dwc2_set_default_params(struct dwc2 *dwc2)
 	}
 }
 
+void dwc2_get_device_properties(struct dwc2 *dwc2)
+{
+	struct dwc2_core_params *p = &dwc2->params;
+	struct device_node *np = dwc2->dev->of_node;
+	int num;
+
+	if ((dwc2->dr_mode == USB_DR_MODE_PERIPHERAL) ||
+	    (dwc2->dr_mode == USB_DR_MODE_OTG)) {
+		of_property_read_u32(np, "g-rx-fifo-size",
+					 &p->g_rx_fifo_size);
+
+		of_property_read_u32(np, "g-np-tx-fifo-size",
+					 &p->g_np_tx_fifo_size);
+
+		num = of_property_count_elems_of_size(np, "g-tx-fifo-size", sizeof(u32));
+		if (num > 0) {
+			num = min(num, 15);
+			memset(p->g_tx_fifo_size, 0,
+			       sizeof(p->g_tx_fifo_size));
+			of_property_read_u32_array(np,
+						       "g-tx-fifo-size",
+						       &p->g_tx_fifo_size[1],
+						       num);
+		}
+	}
+}
+
 int dwc2_check_core_version(struct dwc2 *dwc2)
 {
 	struct dwc2_hw_params *hw = &dwc2->hw_params;
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index ff4842ce62..3564cdd1d1 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -148,6 +148,7 @@ static int dwc2_probe(struct device *dev)
 		goto error;
 
 	dwc2_set_default_params(dwc2);
+	dwc2_get_device_properties(dwc2);
 
 	set_params = of_device_get_match_data(dev);
 	if (set_params)
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 15d4b69759..2e740a890e 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -9,6 +9,7 @@
 
 /* Core functions */
 void dwc2_set_default_params(struct dwc2 *dwc2);
+void dwc2_get_device_properties(struct dwc2 *dwc2);
 int dwc2_check_core_version(struct dwc2 *dwc2);
 void dwc2_get_hwparams(struct dwc2 *dwc2);
 
-- 
2.39.2



