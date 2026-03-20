Delivery-date: Fri, 20 Mar 2026 09:31:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGv-002xtA-38
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:31:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGv-0003KZ-92
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:31:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PGeD0kYfY2N79k1aYDF54MtI1b3wb/rSx/QlB+mEUq4=; b=qkO4qauzsTzhq7zWXLgAyewbry
	Is239FrLYequI69Frngorjumwvr2Xt+kS1ENrCnwh4d0RwdjpWUhrBU3WvB6yDUtYRdRezTK/pgjw
	DXtbTqI/H6roeigkR0TfOUr1YN7kfXP/GvHyOrX63mv04EjoWr5KSMZDn8brcdhmGtkhBMPEvtuHc
	UivKvrFfqIfcE9gbgep6BdBdkSZ3S1d63zBJPp4FznVuN8FtJ2FfeSOdigxjRHNNg5HDVCapIM8/o
	IzL5cjsYaezOG3NZL2kX3YQqQUj1AKNi3SUxOireU0/xEintMi7ljP2iIHzPmwkjZ8V2KoetH8ULY
	ZGYfIgLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGV-0000000CLtE-26hO;
	Fri, 20 Mar 2026 08:31:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGT-0000000CLqg-1jLR
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-00031U-VR; Fri, 20 Mar 2026 09:31:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBQ-27;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2MBE;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-3-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=3550;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3n3YNdGl0syZvH0/6EFXFkb4yrVTKK37+OZJcyKNwmQ=;
 b=sw+8yHE8kQsLm3WZU2pCzSWo0h7MzWWQ0MTFeqE/jkzdQhhR82WRlqnc41gODFQRz9V0x9mJT
 lAYfj67WyDaAifTM/Aui5gR2rBB4e8rt5oKcjOcAdCnEPOpSYriePRC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013129_513073_1205F26E 
X-CRM114-Status: GOOD (  16.49  )
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
Subject: [PATCH 3/6] ARM: rockchip: atf: add OP-TEE fdt creation function
 for all SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have rk3588_open_fdt() to create an empty flattened device tree and
rk3588_fixup_mem() to populate it with the memory banks, but there is
nothing rk3588 specific in it, so refactor the code to
rockchip_create_optee_fdt() which could be used by all rockchip SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 68 ++++++++++++++++++--------------------------
 1 file changed, 27 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 4d90aeff49..37802bfade 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -145,6 +145,28 @@ static struct fwobj bl32; /* OP-TEE in barebox image */
 	} while (0)
 
 
+static int rockchip_create_optee_fdt(void *buf, int bufsize)
+{
+	unsigned long base[ROCKCHIP_MAX_DRAM_RESOURCES];
+	unsigned long size[ARRAY_SIZE(base)];
+	int i, root;
+
+	if (fdt_create_empty_tree(buf, bufsize) != 0)
+		return -EINVAL;
+
+	root = fdt_path_offset(buf, "/");
+
+	fdt_setprop_u32(buf, root, "#address-cells", 2);
+	fdt_setprop_u32(buf, root, "#size-cells", 2);
+
+	for (i = 0; i < n_mem_resources; i++) {
+		base[i] = membase[i];
+		size[i] = memsize[i];
+	}
+
+	return fdt_fixup_mem(buf, base, size, n_mem_resources);
+}
+
 static void rockchip_atf_load_bl31(void *fdt)
 {
 	unsigned long bl31_ep;
@@ -247,41 +269,10 @@ void rk3588_atf_load_bl31(void *fdt)
 	rockchip_atf_load_bl31(fdt);
 }
 
-static int rk3588_fixup_mem(void *fdt)
-{
-	/* Use 4 blocks since rk3588 has 3 gaps in the address space */
-	unsigned long base[4];
-	unsigned long size[ARRAY_SIZE(base)];
-	phys_addr_t base_tmp[ARRAY_SIZE(base)];
-	resource_size_t size_tmp[ARRAY_SIZE(base_tmp)];
-	int i, n;
-
-	n = rk3588_ram_sizes(base_tmp, size_tmp, ARRAY_SIZE(base_tmp));
-	for (i = 0; i < n; i++) {
-		base[i] = base_tmp[i];
-		size[i] = size_tmp[i];
-	}
-
-	return fdt_fixup_mem(fdt, base, size, i);
-}
-
-static int rk3588_open_fdt(const void *fdt, void *buf, int bufsize)
-{
-	int root;
-
-	if (fdt_create_empty_tree(buf, bufsize) != 0)
-		return -1;
-	root = fdt_path_offset(buf, "/");
-
-	fdt_setprop_u32(buf, root, "#address-cells", 2);
-	fdt_setprop_u32(buf, root, "#size-cells", 2);
-
-	return 0;
-}
-
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
 	phys_addr_t memend;
+	int ret;
 
 	n_mem_resources = rk3588_ram_sizes(membase, memsize, ROCKCHIP_MAX_DRAM_RESOURCES);
 
@@ -290,23 +281,18 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
-		void *fdt_scratch = NULL;
-
 		rk3588_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT)) {
 			pr_debug("Copy fdt to scratch area 0x%p (%zu bytes)\n",
 				 rk_scratch->fdt, sizeof(rk_scratch->fdt));
-			if (rk3588_open_fdt(fdt, rk_scratch->fdt, sizeof(rk_scratch->fdt)) == 0)
-				fdt_scratch = rk_scratch->fdt;
-			else
-				pr_warn("Failed to copy fdt to scratch: Continue without fdt\n");
-			if (fdt_scratch && rk3588_fixup_mem(fdt_scratch) != 0)
-				pr_warn("Failed to fixup memory nodes\n");
+			ret = rockchip_create_optee_fdt(rk_scratch->fdt, sizeof(rk_scratch->fdt));
+			if (ret)
+				pr_warn("Failed to create OP-TEE Device tree\n");
 		}
 
-		rk3588_atf_load_bl31(fdt_scratch);
+		rk3588_atf_load_bl31(rk_scratch->fdt);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 

-- 
2.47.3



