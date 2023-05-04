Delivery-date: Thu, 04 May 2023 10:19:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBG-004LKK-MR
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBE-0001ti-Nu
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/UvWztU2kYnNoxpsRuoSrVZRi/JpoRDMFXN2OKDx5I=; b=mANJxb651euTKSi7lmqo7jbNXd
	CgfIJ5ZHMllcEZF+Wn72xixQT2YmFrEXzMGCDWSg3HjgB0vDd2kLNw3CBEav42e1mdPMPPBNgwjUW
	1cGO4HPznhClszNvlOLqz19rvbyFtzqBPpcsV9PWhPHuVh5RIXz1FVrbaVsnkz7UiPrGlRzQJMy0F
	+pvLxCNsOc+mR7nmjsrcivGD92dhVQmjvyChNjvIR7nGQvScGsZ5M6SJl3yzslKQuxIDoumP0LHCN
	UHDb6KypPnA3TpLhj6otxzrvWMTuw1tYYEDhinvXtRJTWuDFdn4f5TbfRyDPkb6c+rGXjvoZ9CnP4
	Q8PB4Gtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA4-0074YU-0z;
	Thu, 04 May 2023 08:18:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074TR-1w
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001IJ-TX; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0011FS-8O; Thu, 04 May 2023 10:17:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hby-G9; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:44 +0200
Message-Id: <20230504081745.305841-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_670420_7A42596B 
X-CRM114-Status: GOOD (  16.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/18] ARM: rockchip: rk3588: add memsize detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Extend the DMC driver for rk3588

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 52 +++++++++++++++++++++++++++++++-----
 include/mach/rockchip/dmc.h  |  1 +
 2 files changed, 47 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index dd60db5830..85fa8acd19 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -29,6 +29,8 @@
 struct rockchip_dmc_drvdata {
 	unsigned int os_reg2;
 	unsigned int os_reg3;
+	unsigned int os_reg4;
+	unsigned int os_reg5;
 	resource_size_t internal_registers_start;
 };
 
@@ -151,12 +153,39 @@ resource_size_t rk3568_ram0_size(void)
 	return size;
 }
 
+#define RK3588_PMUGRF_BASE 0xfd58a000
+#define RK3588_PMUGRF_OS_REG2           0x208
+#define RK3588_PMUGRF_OS_REG3           0x20c
+#define RK3588_PMUGRF_OS_REG4           0x210
+#define RK3588_PMUGRF_OS_REG5           0x214
+
+resource_size_t rk3588_ram0_size(void)
+{
+	void __iomem *pmugrf = IOMEM(RK3588_PMUGRF_BASE);
+	u32 sys_reg2, sys_reg3, sys_reg4, sys_reg5;
+	resource_size_t size, size1, size2;
+
+	sys_reg2 = readl(pmugrf + RK3588_PMUGRF_OS_REG2);
+	sys_reg3 = readl(pmugrf + RK3588_PMUGRF_OS_REG3);
+	sys_reg4 = readl(pmugrf + RK3588_PMUGRF_OS_REG4);
+	sys_reg5 = readl(pmugrf + RK3588_PMUGRF_OS_REG5);
+
+	size1 = rockchip_sdram_size(sys_reg2, sys_reg3);
+	size2 = rockchip_sdram_size(sys_reg4, sys_reg5);
+
+	pr_info("%s() size1 = %llu, size2 = %llu\n", __func__, (u64)size1, (u64)size2);
+
+	size = min_t(resource_size_t, RK3568_INT_REG_START, size1 + size2);
+
+	return size;
+}
+
 static int rockchip_dmc_probe(struct device *dev)
 {
 	const struct rockchip_dmc_drvdata *drvdata;
 	resource_size_t membase, memsize;
 	struct regmap *regmap;
-	u32 sys_reg2, sys_reg3;
+	u32 sys_rega, sys_regb;
 
 	regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
 	if (IS_ERR(regmap))
@@ -166,10 +195,15 @@ static int rockchip_dmc_probe(struct device *dev)
 	if (!drvdata)
 		return -ENOENT;
 
-	regmap_read(regmap, drvdata->os_reg2, &sys_reg2);
-	regmap_read(regmap, drvdata->os_reg3, &sys_reg3);
+	regmap_read(regmap, drvdata->os_reg2, &sys_rega);
+	regmap_read(regmap, drvdata->os_reg3, &sys_regb);
+	memsize = rockchip_sdram_size(sys_rega, sys_regb);
 
-	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
+	if (drvdata->os_reg4) {
+		regmap_read(regmap, drvdata->os_reg4, &sys_rega);
+		regmap_read(regmap, drvdata->os_reg5, &sys_regb);
+		memsize += rockchip_sdram_size(sys_rega, sys_regb);
+	}
 
 	dev_info(dev, "Detected memory size: %pa\n", &memsize);
 
@@ -194,8 +228,10 @@ static const struct rockchip_dmc_drvdata rk3399_drvdata = {
 };
 
 static const struct rockchip_dmc_drvdata rk3568_drvdata = {
-	.os_reg2 = RK3568_PMUGRF_OS_REG2,
-	.os_reg3 = RK3568_PMUGRF_OS_REG3,
+	.os_reg2 = RK3588_PMUGRF_OS_REG2,
+	.os_reg3 = RK3588_PMUGRF_OS_REG3,
+	.os_reg4 = RK3588_PMUGRF_OS_REG4,
+	.os_reg5 = RK3588_PMUGRF_OS_REG5,
 	.internal_registers_start = RK3568_INT_REG_START,
 };
 
@@ -208,6 +244,10 @@ static struct of_device_id rockchip_dmc_dt_ids[] = {
 		.compatible = "rockchip,rk3568-dmc",
 		.data = &rk3568_drvdata,
 	},
+	{
+		.compatible = "rockchip,rk3588-dmc",
+		.data = &rk3568_drvdata,
+	},
 	{ /* sentinel */ }
 };
 
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
index ff197d50a0..ed256f6daf 100644
--- a/include/mach/rockchip/dmc.h
+++ b/include/mach/rockchip/dmc.h
@@ -82,5 +82,6 @@ enum {
 
 resource_size_t rk3399_ram0_size(void);
 resource_size_t rk3568_ram0_size(void);
+resource_size_t rk3588_ram0_size(void);
 
 #endif
-- 
2.39.2



