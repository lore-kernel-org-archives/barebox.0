Delivery-date: Mon, 26 Jun 2023 12:39:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDjdM-004NB5-36
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 12:39:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDjdJ-0003Cr-F0
	for lore@pengutronix.de; Mon, 26 Jun 2023 12:39:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pM6FYsD+KzoDTygyxNyYzbFyY0p0L6loMctCmqfH3DU=; b=UgvHbIW53bFawbfLFMRYvTBZ9f
	lrhzzmlPe4ryRLI1jTI/GZBtzYppDneavGF8zlvPTrnBiK4ZbakZgumug5BNL3stV3rK9ONyaHgzc
	TtSib7ROEciHuUGSeNaBrNON6hlVa3tZEGZ1CrXfFXEJV9E5thoG491TcWgxKT18DyRUkh69xcIFL
	qgC3JZly2jgEoaaEw38b/LCSCY/oB4p9ijW4zHMpijCPcVfnEAZCRvD2u8JX0MEO4d8NdfA0Smvme
	i5FmCctntoHtTbFwgfhtI8w5s6F9QU3S7ND6jx8DAj8Ml4XJB5NK+LDgnDgaOLiS8G5H2MgcWH8GW
	G1H4xDmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDjc2-009y40-2t;
	Mon, 26 Jun 2023 10:38:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDjbz-009y3H-0E
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 10:38:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1qDjbu-00035F-CT; Mon, 26 Jun 2023 12:38:18 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Assmann Kai <Kai.Assmann@de.bosch.com>
Date: Mon, 26 Jun 2023 12:37:46 +0200
Message-ID: <20230626103756.983193-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_033823_124623_4F7F238C 
X-CRM114-Status: GOOD (  15.18  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: zynq: get ps_clk_rate from dt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: "Assmann Kai (BEG/EMS1)" <Kai.Assmann@de.bosch.com>

This adds a barebox-specific binding to overwrite the PS clock
frequency.

Currently the ps_clk_rate is locked to 33.3MHz. Introduce a devicetree
property "ps-clock-frequency" that specifies this clock.

If the property is found, overwrite ps_clk_rate otherwise stay at the
default 33.3MHz

Signed-off-by: Assmann Kai (BEG/MSD-NE2) <Kai.Assmann@de.bosch.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---

Notes:
    changes since v1:
     - reword commit message
     - add binding rst
     - change type of ps_clk_frequency

 .../devicetree/bindings/clocks/xlnx,ps7-clkc.rst       | 10 ++++++++++
 drivers/clk/zynq/clkc.c                                |  4 +++-
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst

diff --git a/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst b/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst
new file mode 100644
index 0000000000..523b0cf56e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clocks/xlnx,ps7-clkc.rst
@@ -0,0 +1,10 @@
+Xilinx PS7 clkc
+===============
+
+In addition to the upstream bindings, following properties are understood:
+
+Optional properties:
+
+- ``ps-clock-frequency`` : Overrides the ps clock frequency set by the driver.
+  Per default the clock is set to 33.3MHz. When this property is set, the frequency
+  is overwritten by the devicetree property.
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 1219e25f7a..d6de583e32 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -368,7 +368,7 @@ static int zynq_clock_probe(struct device *dev)
 {
 	struct resource *iores;
 	void __iomem *clk_base;
-	unsigned long ps_clk_rate = 33333330;
+	u32 ps_clk_rate = 33333330;
 	resource_size_t slcr_offset = 0;
 
 	iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
@@ -390,6 +390,8 @@ static int zynq_clock_probe(struct device *dev)
 		slcr_offset = parent_res->start;
 	}
 
+	of_property_read_u32(dev->device_node, "ps-clk-frequency", &ps_clk_rate);
+
 	iores = request_iomem_region(dev_name(dev), iores->start + slcr_offset,
 				     iores->end + slcr_offset);
 	if (IS_ERR(iores))
-- 
2.41.0



