Delivery-date: Thu, 23 Jun 2022 15:09:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZy-00BzD4-4m
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 15:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-0007C3-MA
	for lore@pengutronix.de; Thu, 23 Jun 2022 15:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wZxPRtijciw0L+QRmsEN+nF3ASgRtvBw4KAeL8hBL68=; b=3TEx8Gi/0lEeuaWrb0iEX30xgA
	vFzmErAjzhD2b0LrIAWgYGFMXsoI8XSzGZxFm/Xu/fPo/iXwQMoA0zV1BjBR6QMGi+duOthF8xRm3
	YfP+lOaDElE+uzcyxqcBa2enLDU8iodR03toDBpzyHlAtlLL+CIZUq6hQe4OMGzr6UlVi2cgnAjlb
	EcUXeC57lpOg44BbmxT1F29jJeSZKMnisX7QWfMHcw2qNOKpsPD/pc25dfIJP6o9BoIBKaNeSD6gH
	aiBKzneOGNC5ldLp/kJjC73d/qvgddHRqogeviCYvcqKfKrU9dnipbF/eTLwaby1UhCqCzHDGuzoM
	VepQCPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYa-00FFmF-37; Thu, 23 Jun 2022 13:07:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYQ-00FFkh-1p
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 13:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYN-0006vi-I7; Thu, 23 Jun 2022 15:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-002FGV-BJ; Thu, 23 Jun 2022 15:07:22 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-006rWx-JC; Thu, 23 Jun 2022 15:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 15:07:17 +0200
Message-Id: <20220623130717.1447999-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
References: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_060726_171688_8115C54A 
X-CRM114-Status: GOOD (  14.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 master 5/5] ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Older NXP DDR spreadsheets don't initialize ADDRMAP7, leaving it at its
POR default of zero. Now that barebox looks at ADDRMAP7 to be able to
correctly detect bigger memory sizes, barebox proper on out-of-tree
boards with older spreadsheets may read back 4x times as much RAM
as actually fitted.

Work around this by writing a trailing 0xf0f (the neutral ignore-me
value for the register) if the register wasn't written through
dram_timing_info::ddrc_cfg. We consider this safe to do, because
the DDRC is held in reset while these values are programmed.

Fixes: dad2b5636bd8 ("ARM: imx: Add imx8 support for 18 bit SDRAM row size handle")
Fixes: 6cf197fa61f9 ("arm: imx: mmdc_size: Increase row_max for imx8m")
Tested-by: Teresa Remmet <t.remmet@phytec.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - added Teresa's Tested-by
---
 drivers/ddr/imx8m/ddr_init.c | 18 ++++++++++++++++++
 drivers/ddr/imx8m/helper.c   |  6 ++++++
 include/soc/imx8m/ddr.h      |  1 +
 3 files changed, 25 insertions(+)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index ae05b136229c..9a4b4e2ca88a 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -13,14 +13,32 @@
 #include <mach/imx8m-regs.h>
 #include <mach/imx8m-ccm-regs.h>
 
+bool imx8m_ddr_old_spreadsheet = true;
+
 static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 {
 	int i = 0;
 
 	for (i = 0; i < num; i++) {
+		if (ddrc_cfg->reg == DDRC_ADDRMAP7(0))
+		    imx8m_ddr_old_spreadsheet = false;
 		reg32_write((unsigned long)ddrc_cfg->reg, ddrc_cfg->val);
 		ddrc_cfg++;
 	}
+
+	/*
+	 * Older NXP DDR configuration spreadsheets don't initialize ADDRMAP7,
+	 * which falsifies the memory size read back from the controller
+	 * in barebox proper.
+	 */
+	if (imx8m_ddr_old_spreadsheet) {
+		pr_warn("Working around old spreadsheet. Please regenerate\n");
+		/*
+		 * Alternatively, stick { DDRC_ADDRMAP7(0), 0xf0f } into
+		 * struct dram_timing_info::ddrc_cfg of your old timing file
+		 */
+		reg32_write(DDRC_ADDRMAP7(0), 0xf0f);
+	}
 }
 
 /*
diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
index 94bbb811576d..98e40849584b 100644
--- a/drivers/ddr/imx8m/helper.c
+++ b/drivers/ddr/imx8m/helper.c
@@ -62,6 +62,12 @@ void dram_config_save(struct dram_timing_info *timing_info,
 		cfg++;
 	}
 
+	if (imx8m_ddr_old_spreadsheet) {
+		cfg->reg = DDRC_ADDRMAP7(0);
+		cfg->val = 0xf0f;
+		cfg++;
+	}
+
 	/* save ddrphy config */
 	saved_timing->ddrphy_cfg = cfg;
 	for (i = 0; i < timing_info->ddrphy_cfg_num; i++) {
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 9ae7cb877686..147a7d499aaf 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -407,6 +407,7 @@ static inline void reg32setbit(unsigned long addr, u32 bit)
 #define dwc_ddrphy_apb_rd(addr) \
 	reg32_read(IOMEM(IP2APB_DDRPHY_IPS_BASE_ADDR(0)) + 4 * (addr))
 
+extern bool imx8m_ddr_old_spreadsheet;
 extern struct dram_cfg_param ddrphy_trained_csr[];
 extern uint32_t ddrphy_trained_csr_num;
 
-- 
2.30.2



