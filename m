Delivery-date: Tue, 20 Apr 2021 10:06:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP4-0008FH-OY
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP3-0004HA-Jw
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fojllDRw+EGCns7pKCt81A48vgeieL/TJOZirdbW5yk=; b=HAIPB9SFyfmggnRAtRFTDXKRSi
	P2j1x5T6PNwkaZ1fNehibTEwe/ttHT+fnN4xhn/KhZgzxgWzH6xPBPi6HXwrGq2bII5pdUW9YOHjl
	H0aegW/2EViP0KRinas/AcmBJQt+hu5MawtbYwNaUZif+QZ7XgROgX/+F1pQ3GE/RRIQczQwBDz2i
	fZB82ykYlODWPb/1x2QnILcK65kLWxMHoznMG2mJChxp6WX/b4hl3V0GQ/sRK82zOZTcfxkeF8Ex4
	WU2pVPbNJ9xCC9UHLSe22TFBJ9q5ledArI33lLfvD5M/fC8IQX1H8UZlrI5O7kgHgVNedADJZV5nN
	kKpUspxQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlNx-00BWxD-KO; Tue, 20 Apr 2021 08:05:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNi-00BWuL-9o
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=P9rd0x6yYm2nzDi8rpVS8o/DKeEuAk4xCmVOWaVuQH4=; b=GMHsEWXTouRlWWT8ZUb1fz4gyA
 dTyszFjqt0UtLh/VGT8+SZMZWdEUdzkJ7EU4rjXpXfh7kkYMAsZ9FGBbwjvOTAOS8nc/5cVXGu2FI
 zXNPPDV+9cn3VSbJ20CXRL1yPVkiMOJx6fuNTjdjSrD0dTkBX2NdY8kBhZ9VFDJ/H/1T0XAncvYPE
 HXdKfC0FmGxE2cST/xyWIzK3qfLV6vc9Dnkv/shRUKaLImuNaPh4ng/b16O63yiAiYfebfTo8C2FQ
 0xYKhxmfnlDuAREFmLfPnU+SJiYTQrxTZ1Xxe6jXPD0rahbDIDMaJ01oePZGP1cPmfcL71LzynoxA
 t1IEVfFQ==;
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNe-00BtzG-Ct
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:13 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 1D619116A05; Tue, 20 Apr 2021 09:57:19 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 78C851164FD;
 Tue, 20 Apr 2021 09:57:15 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:54 +0200
Message-Id: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010510_768310_0B8F2497 
X-CRM114-Status: GOOD (  12.14  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] of: reserve: add xn flag mem entries
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
 include/of.h                   | 7 +++++--
 9 files changed, 20 insertions(+), 10 deletions(-)

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
index 092116beb9..5c2ad1ad3a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -410,7 +410,8 @@ void *bootm_get_devicetree(struct image_data *data)
 	if (data->initrd_res) {
 		of_add_initrd(data->of_root_node, data->initrd_res->start,
 				data->initrd_res->end);
-		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
+		of_add_reserve_entry(data->initrd_res->start,
+				     data->initrd_res->end, 0);
 	}
 
 	oftree = of_get_fixed_tree(data->of_root_node);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index d98913e54a..6aade13fa0 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -537,7 +537,8 @@ out_free:
 
 static struct of_reserve_map of_reserve_map;
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end)
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+			 int flags)
 {
 	int e = of_reserve_map.num_entries;
 
@@ -548,6 +549,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
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
index 645f429bde..7c8640a1d6 100644
--- a/include/of.h
+++ b/include/of.h
@@ -54,10 +54,13 @@ struct of_reserve_map {
 	uint64_t start[OF_MAX_RESERVE_MAP];
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
+	u32 xn;
 };
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end);
-struct of_reserve_map *of_get_reserve_map(void);
+#define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
+
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+		 int flags);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

