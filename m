Delivery-date: Fri, 20 Mar 2026 09:31:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGw-002xtL-0o
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:31:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGv-0003KP-51
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:31:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mAuwjG5vmw3anH/HQ9Jc/nio3/YfIssVJ/TxWgRrkmI=; b=te9Qv7UksVYKTAn/HBAjYBURSc
	Q0py1CFLj0Mez+iuPtwHIWCUxapO5+Bz/pTabSXZc1nQySzHekZ/L8I/CP+98uefOlhcxXGJ/62dL
	rVVDePpEfQVcnPMuyF2l0GB3q7gZLZigmETrsQYXp/I7rQ5D2RFrsrF4bRE6q1cXV+k7bmwhOBm3d
	2CVZzyGPEDQKvdfXQS7e3iQ4uiUHjzRdT+XjxjHVgj3S7A/DdAUPNcR0P8NUtAo/O6QJWpmkIclyI
	4Eib0ySVsszVmDsqQOpX6ND0EbzFSbnTE2+gQzQGOzvraXk7VokZ8ZWiq6/YPEyWnCEneljd+YEkk
	Mfx6XXIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGV-0000000CLtj-3LNU;
	Fri, 20 Mar 2026 08:31:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGT-0000000CLqk-23Cw
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGK-00031V-1E; Fri, 20 Mar 2026 09:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBN-26;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2KTR;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-1-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=12101;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=o7B3cHYrj+PZqiMnSL+vCeY/X1esYiXqmVQ5EHWWFAU=;
 b=6gxabMK2PCYUXFlXDVOxonwp4xUlAOezVsEUekj+RS4XxZbxHAhjrLcGOWB6pAi1VnKsD+3C0
 /f9qUeUi9b1BLid51SJzpAtVpd653BtanJd4bYNrDW/G19Q+2md7vhH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013129_849689_8CE4904D 
X-CRM114-Status: GOOD (  19.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] ARM: rockchip: dmc: rework DRAM functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DRAM on Rockchip SoCs is split in several regions interrupted by the
internal register space. For the PBL we used to use only the lowest DRAM
region which is enough for barebox to fit into. This recently changed on
RK3588 where we pass a FDT blob to OP-TEE which needs the whole memory.

Streamline this for all SoCs. Replace the rk3*_ram0_size functions with
a rk3*_ram_sizes set of functions which can return all regions.

The functionality to split the whole DRAM into regions was previously
duplicated in rk3588_ram_sizes() and rockchip_dmc_probe(). This patch
reduces the duplication by merging them to rockchip_ram().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c |  33 +++++-----
 arch/arm/mach-rockchip/dmc.c | 152 ++++++++++++++++++++++---------------------
 include/mach/rockchip/dmc.h  |  10 +--
 3 files changed, 100 insertions(+), 95 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 3e0a14292b..cf232e4f6e 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -168,12 +168,13 @@ void rk3562_atf_load_bl31(void *fdt)
 
 void __noreturn rk3562_barebox_entry(void *fdt)
 {
-	unsigned long membase, endmem;
+	phys_addr_t membase, memend;
+	resource_size_t memsize;
 
-	membase = RK3562_DRAM_BOTTOM;
-	endmem = rk3562_ram0_size();
+	rk3562_ram_sizes(&membase, &memsize, 1);
+	memend = membase + memsize;
 
-	rk_scratch = (void *)arm_mem_scratch(endmem);
+	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
 		rk3562_lowlevel_init();
@@ -195,7 +196,7 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, endmem - membase, fdt);
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 void rk3568_atf_load_bl31(void *fdt)
@@ -206,12 +207,13 @@ void rk3568_atf_load_bl31(void *fdt)
 
 void __noreturn rk3568_barebox_entry(void *fdt)
 {
-	unsigned long membase, endmem;
+	phys_addr_t membase, memend;
+	resource_size_t memsize;
 
-	membase = RK3568_DRAM_BOTTOM;
-	endmem = rk3568_ram0_size();
+	rk3568_ram_sizes(&membase, &memsize, 1);
+	memend = membase + memsize;
 
-	rk_scratch = (void *)arm_mem_scratch(endmem);
+	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
@@ -233,7 +235,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, endmem - membase, fdt);
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 void rk3588_atf_load_bl31(void *fdt)
@@ -318,12 +320,13 @@ void rk3576_atf_load_bl31(void *fdt)
 
 void __noreturn rk3576_barebox_entry(void *fdt)
 {
-	unsigned long membase, endmem;
+	phys_addr_t membase, memend;
+	resource_size_t memsize;
 
-	membase = RK3576_DRAM_BOTTOM;
-	endmem = rk3576_ram0_size();
+	rk3576_ram_sizes(&membase, &memsize, 1);
+	memend = membase + memsize;
 
-	rk_scratch = (void *)arm_mem_scratch(endmem);
+	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
 		void *fdt_scratch = NULL;
@@ -345,5 +348,5 @@ void __noreturn rk3576_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, endmem - membase, fdt);
+	barebox_arm_entry(membase, memsize, fdt);
 }
diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 8502859f4b..318e99d8ba 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -53,6 +53,9 @@ struct rockchip_dmc_drvdata {
 	resource_size_t membase;
 };
 
+/*
+ * Return the physical size of a single bank
+ */
 static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
 {
 	u32 rank, cs0_col, bk, cs0_row, cs1_row, bw, row_3_4;
@@ -143,73 +146,111 @@ static resource_size_t rockchip_sdram_size(u32 sys_reg2, u32 sys_reg3)
 	return (resource_size_t)size_mb << 20;
 }
 
-resource_size_t rk3399_ram0_size(void)
+/*
+ * Split the total DRAM size into regions
+ */
+static size_t rockchip_ram(phys_addr_t membase, resource_size_t memsize,
+			   phys_addr_t int_reg_start, phys_addr_t *base,
+			   resource_size_t *size, size_t n)
+{
+	int i = 0;
+
+	if (membase > int_reg_start) {
+		/*
+		 * RK3576 has internal registers below the DRAM start and thus
+		 * doesn't need any gaps in the DRAM space.
+		 */
+		base[0] = membase;
+		size[0] = memsize;
+
+		return 1;
+	}
+
+	base[i] = membase;
+	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - membase;
+	i++;
+
+	if (i < n && memsize > SZ_4G) {
+		base[i] = SZ_4G;
+		size[i] = min_t(unsigned long, DRAM_GAP1_START, memsize) - SZ_4G;
+		i++;
+	}
+	if (i < n && memsize > DRAM_GAP1_END) {
+		base[i] = DRAM_GAP1_END;
+		size[i] = min_t(unsigned long, DRAM_GAP2_START, memsize) - DRAM_GAP1_END;
+		i++;
+	}
+	if (i < n && memsize > DRAM_GAP2_END) {
+		base[i] = DRAM_GAP2_END;
+		size[i] = memsize - DRAM_GAP2_END;
+		i++;
+	}
+
+	return i;
+}
+
+size_t rk3399_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 {
 	void __iomem *pmugrf = IOMEM(RK3399_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3;
-	resource_size_t size;
+	resource_size_t memsize;
 
 	sys_reg2 = readl(pmugrf + RK3399_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3399_PMUGRF_OS_REG3);
 
-	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	size = min_t(resource_size_t, RK3399_INT_REG_START, size);
+	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
-	return size;
+	return rockchip_ram(RK3399_DRAM_BOTTOM, memsize, RK3399_INT_REG_START, base, size, n);
 }
 
-resource_size_t rk3562_ram0_size(void)
+size_t rk3562_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 {
 	void __iomem *pmugrf = IOMEM(RK3562_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3;
-	resource_size_t size;
+	resource_size_t memsize;
 
 	sys_reg2 = readl(pmugrf + RK3562_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3562_PMUGRF_OS_REG3);
 
-	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	size = min_t(resource_size_t, RK3562_INT_REG_START, size);
+	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
 
-	pr_debug("%s() = %llu\n", __func__, (u64)size);
+	pr_debug("%s() = %llu\n", __func__, (u64)memsize);
 
-	return size;
+	return rockchip_ram(RK3562_DRAM_BOTTOM, memsize, RK3562_INT_REG_START, base, size, n);
 }
 
-resource_size_t rk3568_ram0_size(void)
+size_t rk3568_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 {
 	void __iomem *pmugrf = IOMEM(RK3568_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3;
-	resource_size_t size;
+	resource_size_t memsize;
 
 	sys_reg2 = readl(pmugrf + RK3568_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3568_PMUGRF_OS_REG3);
 
-	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	size = min_t(resource_size_t, RK3568_INT_REG_START, size);
+	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
 
-	pr_debug("%s() = %llu\n", __func__, (u64)size);
+	pr_debug("%s() = %llu\n", __func__, (u64)memsize);
 
-	return size;
+	return rockchip_ram(RK3568_DRAM_BOTTOM, memsize, RK3568_INT_REG_START, base, size, n);
 }
 
-resource_size_t rk3576_ram0_size(void)
+size_t rk3576_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 {
 	void __iomem *pmugrf = IOMEM(RK3576_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3;
-	resource_size_t size;
+	resource_size_t memsize;
 
 	sys_reg2 = readl(pmugrf + RK3576_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3576_PMUGRF_OS_REG3);
 
-	size = rockchip_sdram_size(sys_reg2, sys_reg3);
-	/* RK3576 has a different memory map...? */
-	/* size = min_t(resource_size_t, RK3576_INT_REG_START, size); */
+	memsize = rockchip_sdram_size(sys_reg2, sys_reg3);
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
-	return size;
+	return rockchip_ram(RK3576_DRAM_BOTTOM, memsize, RK3576_INT_REG_START, base, size, n);
 }
 
 #define RK3588_PMUGRF_BASE 0xfd58a000
@@ -223,7 +264,6 @@ size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 	void __iomem *pmugrf = IOMEM(RK3588_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3, sys_reg4, sys_reg5;
 	resource_size_t memsize, size1, size2;
-	size_t i = 0;
 
 	sys_reg2 = readl(pmugrf + RK3588_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3588_PMUGRF_OS_REG3);
@@ -237,45 +277,18 @@ size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	memsize = size1 + size2;
 
-	base[i] = RK3588_DRAM_BOTTOM;
-	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - RK3588_DRAM_BOTTOM;
-	i++;
-
-	if (i < n && memsize > SZ_4G) {
-		base[i] = SZ_4G;
-		size[i] = min_t(unsigned long, DRAM_GAP1_START, memsize) - SZ_4G;
-		i++;
-	}
-	if (i < n && memsize > DRAM_GAP1_END) {
-		base[i] = DRAM_GAP1_END;
-		size[i] = min_t(unsigned long, DRAM_GAP2_START, memsize) - DRAM_GAP1_END;
-		i++;
-	}
-	if (i < n && memsize > DRAM_GAP2_END) {
-		base[i] = DRAM_GAP2_END;
-		size[i] = memsize - DRAM_GAP2_END;
-		i++;
-	}
-
-	return i;
-}
-
-resource_size_t rk3588_ram0_size(void)
-{
-	phys_addr_t base;
-	resource_size_t size;
-
-	rk3588_ram_sizes(&base, &size, 1);
-
-	return size;
+	return rockchip_ram(RK3588_DRAM_BOTTOM, memsize, RK3588_INT_REG_START, base, size, n);
 }
 
 static int rockchip_dmc_probe(struct device *dev)
 {
 	const struct rockchip_dmc_drvdata *drvdata;
 	resource_size_t membase, memsize, regstart;
+	phys_addr_t base[ROCKCHIP_MAX_DRAM_RESOURCES];
+	resource_size_t size[ROCKCHIP_MAX_DRAM_RESOURCES];
 	struct regmap *regmap;
 	u32 sys_rega, sys_regb;
+	int i, n_res;
 
 	regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
 	if (IS_ERR(regmap))
@@ -304,26 +317,15 @@ static int rockchip_dmc_probe(struct device *dev)
 	membase = drvdata->membase;
 	regstart = drvdata->internal_registers_start;
 
-	if (membase < regstart) {
-		/* ram0, from 0xa00000 up to SoC internal register space start */
-		arm_add_mem_device("ram0", membase,
-			min_t(resource_size_t, drvdata->internal_registers_start, memsize) - membase);
-
-		/* ram1, RAM beyond 32bit space up to first gap */
-		if (memsize > SZ_4G)
-			arm_add_mem_device("ram1", SZ_4G,
-				min_t(resource_size_t, DRAM_GAP1_START, memsize) - SZ_4G);
-
-		/* ram2, RAM between first and second gap */
-		if (memsize > DRAM_GAP1_END)
-			arm_add_mem_device("ram2", DRAM_GAP1_END,
-				min_t(resource_size_t, DRAM_GAP2_START, memsize) - DRAM_GAP1_END);
-
-		/* ram3, remaining RAM after second gap */
-		if (memsize > DRAM_GAP2_END)
-			arm_add_mem_device("ram3", DRAM_GAP2_END, memsize - DRAM_GAP2_END);
-	} else {
-		arm_add_mem_device("ram0", membase, memsize - 0xa00000);
+	n_res = rockchip_ram(membase, memsize, regstart, base, size,
+			     ROCKCHIP_MAX_DRAM_RESOURCES);
+
+	for (i = 0; i < n_res; i++) {
+		char name[sizeof("ramx")];
+
+		sprintf(name, "ram%u", i);
+
+		arm_add_mem_device(name, base[i], size[i]);
 	}
 
 	return 0;
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
index ddcf989a30..d1dde1cc65 100644
--- a/include/mach/rockchip/dmc.h
+++ b/include/mach/rockchip/dmc.h
@@ -83,12 +83,12 @@ enum {
 #define SYS_REG_CS1_COL_SHIFT(ch)		(0 + (ch) * 2)
 #define SYS_REG_CS1_COL_MASK			3
 
-resource_size_t rk3399_ram0_size(void);
-resource_size_t rk3562_ram0_size(void);
-resource_size_t rk3568_ram0_size(void);
-resource_size_t rk3576_ram0_size(void);
-resource_size_t rk3588_ram0_size(void);
+#define ROCKCHIP_MAX_DRAM_RESOURCES	4
 
+size_t rk3399_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
+size_t rk3562_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
+size_t rk3568_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
+size_t rk3576_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
 size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
 
 #endif

-- 
2.47.3



