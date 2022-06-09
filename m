Delivery-date: Thu, 09 Jun 2022 07:45:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAzA-008RXM-Ps
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 07:45:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz9-0006UV-Dw
	for lore@pengutronix.de; Thu, 09 Jun 2022 07:45:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2IPoFa6jxP5Y4dlXlXNJCMJj2Ha+coUrzFghTS/LgM=; b=xC/rGXP/QUcaDI
	Vu7tVO8IDTVQQuhsnEMQ9tjgv/d09XMylkzSpr8vZjsCOgtrTNQNbhKeLVGlDuT0Abu6ntY1LwPKS
	K/jeTbpA/JNgnoph6F59pVF9e/GbdhiiGDSgeXIUbuENaTAj7uLKpf5hzzLwUbXpLEhnQe4vXUrQK
	CC3R0C0PNxafw3GzyOs4AjE4PI4+82z64mHFylogZPm2kutQ5LmDIcHJi35Ekrjd0/w9WmgNFfkIY
	UnEWVG49MnCYkse/7bWCrSs1jZgZcyHHUyDD5nv3z/vK+sqk+ItXOgTyyS1j9wb5paKdgbIIUWY3s
	cm3CTffPJKFB40a9w+Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxe-00GrYY-As; Thu, 09 Jun 2022 05:44:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxR-00GrVW-DE
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:43:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxO-0006AP-3a; Thu, 09 Jun 2022 07:43:46 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxO-007K7G-MX; Thu, 09 Jun 2022 07:43:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxL-002nNe-VL; Thu, 09 Jun 2022 07:43:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 07:43:40 +0200
Message-Id: <20220609054342.661505-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609054342.661505-1-a.fatoum@pengutronix.de>
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_224349_626216_3E667238 
X-CRM114-Status: GOOD (  14.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] of: reserve: mark runtime firmware code regions specially
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

We already map memory regions outside the memory banks with eXecute
Never to avoid speculative execution, but fail to do so currently for
firmware running from within a memory bank, but at a higher privilege
level.

In preparation for changing that, mark memory used by such elevated
firmware by a newly introduced OF_RESERVE_ENTRY_FLAG_RUNTIME_FW flag.

This introduces no functional change, but suitable future action could
be mapping eXecute Never or not mapping at all.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Compared with Rouven's v2, rename FLAG_XN to FLASG_RUNTIME_FW and
apply it where applicable. Also change runtime_fw (previously xn)
member to be a bitfield to get an error should number of reserved
regions be changed inadequately in future.
---
 arch/arm/cpu/sm.c              | 3 ++-
 arch/arm/cpu/start.c           | 3 ++-
 arch/arm/mach-layerscape/ppa.c | 2 +-
 common/bootm.c                 | 3 ++-
 drivers/of/fdt.c               | 6 +++++-
 drivers/video/fb.c             | 3 ++-
 drivers/video/simplefb-fixup.c | 2 +-
 fs/pstore/ram.c                | 3 ++-
 include/of.h                   | 6 +++++-
 9 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index f5a1edbd4fe9..a404f843ecb2 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -203,7 +203,8 @@ static int of_secure_monitor_fixup(struct device_node *root, void *unused)
 	res_start = (unsigned long)_stext;
 	res_end = (unsigned long)__bss_stop;
 
-	of_add_reserve_entry(res_start, res_end);
+	/* MMU is already set up by now, so this only affects kernel DT */
+	of_add_reserve_entry(res_start, res_end, OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
 
 	pr_debug("Reserved memory range from 0x%08lx to 0x%08lx\n", res_start, res_end);
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c61db668658b..9935bc8d53e3 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -227,7 +227,8 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
-		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
+		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1,
+				     OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
 
 	pr_debug("starting barebox...\n");
 
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index d962fba75105..a862ece69c6d 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -130,7 +130,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
 	if (ret)
 		return ret;
 
-	of_add_reserve_entry(ppa_start, ppa_end);
+	of_add_reserve_entry(ppa_start, ppa_end, OF_RESERVE_ENTRY_FLAG_RUNTIME_FW);
 
 	return 0;
 }
diff --git a/common/bootm.c b/common/bootm.c
index 3c80e8bf949b..463fd3721c81 100644
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
index 5ccbd1bb69f8..4a4eeba24bc3 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -536,7 +536,8 @@ out_free:
 
 static struct of_reserve_map of_reserve_map;
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end)
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+			 int flags)
 {
 	int e = of_reserve_map.num_entries;
 
@@ -547,6 +548,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
 	of_reserve_map.end[e] = end;
 	of_reserve_map.num_entries++;
 
+	if (flags & OF_RESERVE_ENTRY_FLAG_RUNTIME_FW)
+		of_reserve_map.runtime_fw |= BIT(e);
+
 	return 0;
 }
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 1c93dafbc989..e0a73dd415a4 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -203,7 +203,8 @@ static int fb_of_reserve_fixup(struct device_node *root, void *context)
 		return 0;
 
 	of_add_reserve_entry((unsigned long)info->screen_base,
-			(unsigned long)info->screen_base + info->screen_size);
+			(unsigned long)info->screen_base + info->screen_size,
+			0);
 
 	return 0;
 }
diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index a2c59de364a5..af7554d10ffd 100644
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
index 0d8bb8f418f4..d0ebc7a37901 100644
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
index 46b96277d581..0d125d8256d6 100644
--- a/include/of.h
+++ b/include/of.h
@@ -55,9 +55,13 @@ struct of_reserve_map {
 	uint64_t start[OF_MAX_RESERVE_MAP];
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
+	u16 runtime_fw : OF_MAX_RESERVE_MAP;
 };
 
-int of_add_reserve_entry(resource_size_t start, resource_size_t end);
+#define OF_RESERVE_ENTRY_FLAG_RUNTIME_FW	BIT(0)
+
+int of_add_reserve_entry(resource_size_t start, resource_size_t end,
+		 int flags);
 struct of_reserve_map *of_get_reserve_map(void);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

