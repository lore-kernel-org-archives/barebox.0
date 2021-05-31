Delivery-date: Mon, 31 May 2021 09:14:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc87-0002v9-NO
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc84-0003kv-Pi
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xl6CdboaBw3kFI/683kcgHMjS2G1iZuZHSdIoftxXPs=; b=20qbNnHOgp5N9q
	xscn2Sm379Exv5EkrNc0LW8n5tQEbof0/EaDefL8I6Dmll4byAAm4Du9W+v9ixpz8fLk/lpo8AAxy
	VCNTzGuqAq9+QjaPrMdpxLhpwoql9wLMdKCU52oQLxTadtANNAJyuL85G7b+oiQSQDv0a1NMArO5M
	9xbO6ytEZOu+FRSHXy1HH0C23Rb38HrCNOC+dqBtnrAg236wJ0MdXgxAwoW2yzwYIWklE7uDwPuFA
	BQPAjr04ULkMtuZdzkCaKhVo8ZqriCH7yHhAS3DmGXr4E7nKWg3Oxy4eZLNBPiXK4nOMuHbwHHEl5
	c9EH9cCPQWEk0obekI9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6o-00B7kR-MC; Mon, 31 May 2021 07:13:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6U-00B7ar-4D
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Du-Sn; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-00080B-Eg; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:39 +0200
Message-Id: <20210531071239.30653-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001250_356787_F2E62CAB 
X-CRM114-Status: GOOD (  15.59  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: report probe error at arm_add_mem_device() callsites
 on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Failure to add one memory bank shouldn't prevent the driver from trying
to add other memory banks, but the user should be informed as this
points at a misconfiguration. Have the probe functions eventually fail
with -EBUSY in such a case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/ddramc.c      |  4 +--
 arch/arm/mach-imx/esdctl.c       | 56 ++++++++++++++++----------------
 arch/arm/mach-omap/am33xx_scrm.c |  4 +--
 arch/arm/mach-stm32mp/ddrctrl.c  |  4 +--
 4 files changed, 31 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 0aece5345f72..8f70b4ada2a1 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -44,9 +44,7 @@ static int sama5_ddr_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
-	arm_add_mem_device("ram0", SAMA5_DDRCS, sama5_ramsize(base));
-
-	return 0;
+	return arm_add_mem_device("ram0", SAMA5_DDRCS, sama5_ramsize(base));
 }
 
 static struct of_device_id sama5_ddr_dt_ids[] = {
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index f297cd35d540..5355f55c6f33 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -32,7 +32,7 @@
 struct imx_esdctl_data {
 	unsigned long base0;
 	unsigned long base1;
-	void (*add_mem)(void *esdctlbase, struct imx_esdctl_data *);
+	int (*add_mem)(void *esdctlbase, struct imx_esdctl_data *);
 };
 
 static int imx_esdctl_disabled;
@@ -182,9 +182,11 @@ static inline u64 __imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 	return memory_sdram_size(cols, rows, banks, width);
 }
 
-static void add_mem(unsigned long base0, unsigned long size0,
+static int add_mem(unsigned long base0, unsigned long size0,
 		unsigned long base1, unsigned long size1)
 {
+	int ret0 = 0, ret1 = 0;
+
 	debug("%s: cs0 base: 0x%08lx cs0 size: 0x%08lx\n", __func__, base0, size0);
 	debug("%s: cs1 base: 0x%08lx cs1 size: 0x%08lx\n", __func__, base1, size1);
 
@@ -192,16 +194,16 @@ static void add_mem(unsigned long base0, unsigned long size0,
 		/*
 		 * concatenate both chip selects to a single bank
 		 */
-		arm_add_mem_device("ram0", base0, size0 + size1);
-
-		return;
+		return arm_add_mem_device("ram0", base0, size0 + size1);
 	}
 
 	if (size0)
-		arm_add_mem_device("ram0", base0, size0);
+		ret0 = arm_add_mem_device("ram0", base0, size0);
 
 	if (size1)
-		arm_add_mem_device(size0 ? "ram1" : "ram0", base1, size1);
+		ret1 = arm_add_mem_device(size0 ? "ram1" : "ram0", base1, size1);
+
+	return ret0 ? ret0 : ret1;
 }
 
 /*
@@ -224,35 +226,35 @@ static inline void imx_esdctl_v2_disable_default(void __iomem *esdctlbase)
 	}
 }
 
-static void imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
-	add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
+	return add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
 			data->base1, imx_v1_sdram_size(esdctlbase, 1));
 }
 
-static void imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
-	add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
+	return add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
-static void imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	imx_esdctl_v2_disable_default(esdctlbase);
 
-	add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
+	return add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
 			data->base1, imx_v2_sdram_size(esdctlbase, 1));
 }
 
-static void imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
-	add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
+	return add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
 			data->base1, imx_v3_sdram_size(esdctlbase, 1));
 }
 
-static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
+static int imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
-	add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
+	return add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
 			data->base1, imx_v4_sdram_size(esdctlbase, 1));
 }
 
@@ -281,9 +283,9 @@ static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
 	return size;
 }
 
-static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	arm_add_mem_device("ram0", data->base0,
+	return arm_add_mem_device("ram0", data->base0,
 			   imx6_mmdc_sdram_size(mmdcbase));
 }
 
@@ -303,9 +305,9 @@ static inline resource_size_t vf610_ddrmc_sdram_size(void __iomem *ddrmc)
 	return memory_sdram_size(cols, rows, banks, width);
 }
 
-static void vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	arm_add_mem_device("ram0", data->base0,
+	return arm_add_mem_device("ram0", data->base0,
 			   vf610_ddrmc_sdram_size(mmdcbase));
 }
 
@@ -467,9 +469,9 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 				   reduced_adress_space);
 }
 
-static void imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	arm_add_mem_device("ram0", data->base0,
+	return arm_add_mem_device("ram0", data->base0,
 			   imx8m_ddrc_sdram_size(mmdcbase));
 }
 
@@ -509,9 +511,9 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 				   reduced_adress_space);
 }
 
-static void imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	arm_add_mem_device("ram0", data->base0,
+	return arm_add_mem_device("ram0", data->base0,
 			   imx7d_ddrc_sdram_size(mmdcbase));
 }
 
@@ -534,9 +536,7 @@ static int imx_esdctl_probe(struct device_d *dev)
 	if (imx_esdctl_disabled)
 		return 0;
 
-	data->add_mem(base, data);
-
-	return 0;
+	return data->add_mem(base, data);
 }
 
 static __maybe_unused struct imx_esdctl_data imx1_data = {
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index 80510cf5b423..0f13a9deb6af 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -24,9 +24,7 @@
 
 static int am33xx_scrm_probe(struct device_d *dev)
 {
-	arm_add_mem_device("ram0", 0x80000000, am335x_sdram_size());
-
-	return 0;
+	return arm_add_mem_device("ram0", 0x80000000, am335x_sdram_size());
 }
 
 static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 646fe4401acf..43486c57c56a 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -132,9 +132,7 @@ static int stm32mp1_ddr_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
-	arm_add_mem_device("ram0", STM32_DDR_BASE, ddrctrl_ramsize(base));
-
-	return 0;
+	return arm_add_mem_device("ram0", STM32_DDR_BASE, ddrctrl_ramsize(base));
 }
 
 static __maybe_unused struct of_device_id stm32mp1_ddr_dt_ids[] = {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

