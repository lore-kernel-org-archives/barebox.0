Delivery-date: Mon, 05 Dec 2022 14:33:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BbW-00BdcT-Fx
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 14:33:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BbV-0004r9-MY
	for lore@pengutronix.de; Mon, 05 Dec 2022 14:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J0cfrRwFdMsq65qEIvPq1sQjGDq6hCIsFRayUd1F25A=; b=D3l4oFsNRZZxIIT47kOcRP6MIF
	2U5DJbkZJLKD4/RclgGxq3SjPez405LNwUreImBXfdx298RLr9zR3WaeM1A1ZBvavtQoFXaOo+rIw
	U8IKJ6wP1wBTLQuX/Ok2KRz/hSsE+tVA5L+SubYLZZNVi8L6s6bMTedRhCR1G59rk9K5mUcQXEnwQ
	Sy4UKVBn55LYusXdpiadwdXwf79Gh0vRAabyAtRiZq8nlPeEZR4HsBG6drn5mVVTsirT7vaRHxaz3
	5tAV8TnSu7BEew6b5wYUe/QG8upSbZtX01FJDDjSH+kRZCxaYr4Kr7qqWWdvTxY/OCytoM1VHNGBi
	S/EzHrBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BaJ-003RbF-4q; Mon, 05 Dec 2022 13:32:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BaB-003RYN-QW
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 13:32:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba9-0004jm-E7; Mon, 05 Dec 2022 14:32:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba8-002U5c-1b; Mon, 05 Dec 2022 14:32:28 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2Ba8-00Cdd6-5n; Mon, 05 Dec 2022 14:32:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Dec 2022 14:32:27 +0100
Message-Id: <20221205133227.3010785-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221205133227.3010785-1-a.fatoum@pengutronix.de>
References: <20221205133227.3010785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_053231_888358_6C1B81A2 
X-CRM114-Status: GOOD (  15.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] of: platform: port Linux of_dma_is_coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In order to correctly handle cache-coherent systems on ARM, we need to
be able to determine whether a device instantiated from DT is DMA
coherent. Port the Linux helper that does this check.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
of_dma_is_coherent is still unused, but it will be used in future.
---
 arch/riscv/Kconfig    |  1 +
 drivers/of/Kconfig    |  4 ++++
 drivers/of/platform.c | 41 +++++++++++++++++++++++++++++++++++++++++
 include/of_address.h  |  6 ++++++
 4 files changed, 52 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index cd7f4abf5694..afbd55aa3e6f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -10,6 +10,7 @@ config RISCV
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select HAS_DMA
+	select OF_DMA_DEFAULT_COHERENT
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAVE_IMAGE_COMPRESSION
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 7283331ba9ce..4dc40b27f442 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -31,6 +31,10 @@ config FEATURE_CONTROLLER_FIXUP
 config OF_ADDRESS_PCI
 	bool
 
+config OF_DMA_DEFAULT_COHERENT
+	# arches should select this if DMA is coherent by default for OF devices
+	bool
+
 config OF_GPIO
 	depends on GPIOLIB
 	depends on OFDEVICE
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index a9a5d4c2daf2..2b5ad08c124b 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -73,6 +73,47 @@ static void of_device_make_bus_id(struct device_d *dev)
 	}
 }
 
+static struct device_node *of_get_next_dma_parent(const struct device_node *np)
+{
+	struct of_phandle_args args;
+	int ret, index;
+
+	index = of_property_match_string(np, "interconnect-names", "dma-mem");
+	if (index < 0)
+		return of_get_parent(np);
+
+	ret = of_parse_phandle_with_args(np, "interconnects",
+					 "#interconnect-cells",
+					 index, &args);
+	if (ret < 0)
+		return of_get_parent(np);
+
+	return args.np;
+}
+
+/**
+ * of_dma_is_coherent - Check if device is coherent
+ * @np:	device node
+ *
+ * It returns true if "dma-coherent" property was found
+ * for this device in the DT, or if DMA is coherent by
+ * default for OF devices on the current platform and no
+ * "dma-noncoherent" property was found for this device.
+ */
+bool of_dma_is_coherent(struct device_node *node)
+{
+	while (node) {
+		if (of_property_read_bool(node, "dma-coherent"))
+			return true;
+		if (of_property_read_bool(node, "dma-noncoherent"))
+			return false;
+		node = of_get_next_dma_parent(node);
+	}
+
+	return IS_ENABLED(CONFIG_OF_DMA_DEFAULT_COHERENT);
+}
+EXPORT_SYMBOL_GPL(of_dma_is_coherent);
+
 static void of_dma_configure(struct device_d *dev, struct device_node *np)
 {
 	u64 dma_addr, paddr, size = 0;
diff --git a/include/of_address.h b/include/of_address.h
index 66117b1fa7f8..4e5faf6f7783 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -60,6 +60,8 @@ extern void __iomem *of_iomap(struct device_node *np, int index);
 extern int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr,
 			    u64 *size);
 
+extern bool of_dma_is_coherent(struct device_node *np);
+
 #else /* CONFIG_OFTREE */
 
 static inline u64 of_translate_address(struct device_node *dev,
@@ -109,6 +111,10 @@ static inline int of_dma_get_range(struct device_node *np, u64 *dma_addr,
 	return -ENOSYS;
 }
 
+static inline bool of_dma_is_coherent(struct device_node *np)
+{
+	return false;
+}
 #endif /* CONFIG_OFTREE */
 
 #ifdef CONFIG_OF_PCI
-- 
2.30.2



