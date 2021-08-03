Delivery-date: Tue, 03 Aug 2021 11:46:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr0A-0005pd-1l
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr08-0000hG-A3
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZqe3E4oi0ezf3xmW3TnQuQNHKfzuvKm1RYV9EI8IFw=; b=az88/SAWx9083w
	Dx9BB/UvI7ge4j72GcidHr3mgkNgViNiEjQxAuR5L16vBWw8kyLrv11kGl8q8kLbrMHtpyCz6Xpm4
	A/UO1VeOVhCtu7LPC12c+JPdkOxniPLSgzQhZACCqug5RzT33mPuNVEbfl4mRrUc1WagIFRXwzP21
	GCbkGWDIuHMni28L+B4yIdulOrSLE6KHP6ZFs6HPu9mi4i/15H0UKNEaaetVJQm+0258Qq7IE4ZLM
	8J8rT0po4o+TClLJdu4P+fxbbevHIz7oY3xlbmrsWsG3LuYBNwZW9ZE1nawyy5PkwBjc9Gg2Ltk6t
	dgO5DQebovjHYospMavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqya-001r4K-B0; Tue, 03 Aug 2021 09:44:44 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyL-001qyw-2b
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:31 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 81C028A132; Tue,  3 Aug 2021 11:44:24 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id EA19B8A0FF;
 Tue,  3 Aug 2021 11:44:21 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:11 +0200
Message-Id: <20210803094418.475609-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024429_457611_7E95AC9D 
X-CRM114-Status: GOOD (  13.28  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/8] of: reserve: add xn flag mem entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the OF_RESERVE_ENTRY_FLAG_XN flag is passed while creating the
entry, a subsequent commit will use this information in the mmu to map
the area as non-executable.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/sm.c              | 2 +-
 arch/arm/cpu/start.c           | 2 +-
 arch/arm/mach-layerscape/ppa.c | 2 +-
 common/bootm.c                 | 3 ++-
 drivers/of/fdt.c               | 6 +++++-
 drivers/video/fb.c             | 3 ++-
 drivers/video/simplefb-fixup.c | 2 +-
 fs/pstore/ram.c                | 3 ++-
 include/of.h                   | 6 +++++-
 9 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index f5a1edbd4f..ebd5f76e14 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -203,7 +203,7 @@ static int of_secure_monitor_fixup(struct device_node *root, void *unused)
 	res_start = (unsigned long)_stext;
 	res_end = (unsigned long)__bss_stop;
 
-	of_add_reserve_entry(res_start, res_end);
+	of_add_reserve_entry(res_start, res_end, 0);
 
 	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c61db66865..10ac070fe3 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -227,7 +227,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
-		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
+		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1, OF_RESERVE_ENTRY_FLAG_XN);
 
 	pr_debug("starting barebox...\n");
 
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index d962fba751..6e61766e54 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	if (ret)
 		return ret;
 
-	of_add_reserve_entry(ppa_start, ppa_end);
+	of_add_reserve_entry(ppa_start, ppa_end, 0);
 
 	return 0;
 }
diff --git a/common/bootm.c b/common/bootm.c
index 89e3e93f2c..82f07b5139 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -411,7 +411,8 @@ void *bootm_get_devicetree(struct image_data *data)
 	if (data->initrd_res) {
 		of_add_initrd(data->of_root_node, data->initrd_res->start,
 				data->initrd_res->end);
-		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
+		of_add_reserve_entry(data->initrd_res->start,
+				     data->initrd_res->end, 0);
 	}
 
 	oftree = of_get_fixed_tree(data->of_root_node);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index f72f5e3a30..9356a92c5c 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -544,7 +544,8 @@ out_free:
 
 static struct of_reserve_map of_reserve_map;
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end)
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+			 int flags)
 {
 	int e = of_reserve_map.num_entries;
 
@@ -555,6 +556,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
 	of_reserve_map.end[e] = end;
 	of_reserve_map.num_entries++;
 
+	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
+		of_reserve_map.xn |= BIT(e);
+
 	return 0;
 }
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 113c1419a1..8aa4a77ef3 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -202,7 +202,8 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
 		return 0;
 
 	of_add_reserve_entry((unsigned long)info->screen_base,
-			(unsigned long)info->screen_base + info->screen_size);
+			(unsigned long)info->screen_base + info->screen_size,
+			0);
 
 	return 0;
 }
diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index a2c59de364..af7554d10f 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -131,7 +131,7 @@ static int simplefb_create_node(struct device_node *root,
 		return ret;
 
 	of_add_reserve_entry((u32)fbi->screen_base,
-			(u32)fbi->screen_base + fbi->screen_size);
+			(u32)fbi->screen_base + fbi->screen_size, 0);
 
 	return of_property_write_string(node, "status", "okay");
 }
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 958f46b0ea..e404187c83 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -639,7 +639,8 @@ static int ramoops_probe(struct device_d *dev)
 			  ramoops_ecc);
 		globalvar_add_simple("linux.bootargs.ramoops", kernelargs);
 	} else {
-		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
+		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size,
+				0);
 		of_register_fixup(ramoops_of_fixup, pdata);
 	}
 
diff --git a/include/of.h b/include/of.h
index f9c2b283de..4844e800b4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -55,9 +55,13 @@ struct of_reserve_map {
 	uint64_t start[OF_MAX_RESERVE_MAP];
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
+	u16 xn;
 };
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end);
+#define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
+
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+		 int flags);
 struct of_reserve_map *of_get_reserve_map(void);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

