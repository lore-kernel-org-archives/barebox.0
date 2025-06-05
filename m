Delivery-date: Thu, 05 Jun 2025 21:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX3-0047uS-2w
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 21:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNGX3-0005WM-4o
	for lore@pengutronix.de; Thu, 05 Jun 2025 21:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ykhRD961DiCMOfOEzDQxu+KOd118cceDczKESfdis8=; b=ju3SX08j9QUZXCHdIZ2dnLcISN
	ifWZCYsSTpk+/0DcB0IkBaVbqaTQIFhIGkSeaLYAzzdb2OjkP2yX60zS1oD4TwTsXlwSPy64AMnLl
	dRY3r4D06lgqMoM8f6mr1aPbXG8KfhYwEKNi9skF+K6BYlBMsdHzWQwT4zj3+iEEENQCPT4HA1SBS
	43mwG6HvCbfXS/K8TFO2FZdYsr1H9pwCxWty/lH8GFBopaNRT+OnlpG7U9G0VyfDah8uKUU9k+B+B
	L8WpzoHHEcttWVprhI7MPbCjBrGc6dhxcCMsH69+A+Q7FukrVplDCpuT47JxO/T3QjlMExsJLKSxX
	1RvAW5LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGWS-0000000GWVs-231Y;
	Thu, 05 Jun 2025 19:45:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNGVR-0000000GWIB-31LN
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 19:44:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNGVN-0003sr-VX; Thu, 05 Jun 2025 21:44:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 21:44:00 +0200
Message-Id: <20250605194401.1841679-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605194401.1841679-1-a.fatoum@barebox.org>
References: <20250605194401.1841679-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_124405_759135_B44F7EE0 
X-CRM114-Status: GOOD (  16.12  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/3] resource: retire IORESOURCE_BUSY in favor of resource::type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The way we use IORESOURCE_BUSY in barebox is different than in Linux and
was only done to have a bit that doesn't sound too off-topic.

Now that we have proper memory type and attributes, let's make use of
them and retire IORESOURCE_BUSY.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - remove dependency on CONFIG_MEMORY_ATTRIBUTES
---
 commands/iomemport.c         |  2 +-
 common/memory.c              | 13 ++++++++-----
 common/oftree.c              |  2 +-
 drivers/tee/optee/of_fixup.c |  2 +-
 include/memory.h             |  6 +++---
 5 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index f2baa0e29397..bbe41f571b48 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -18,7 +18,7 @@ static void __print_resources(struct resource *res, int indent)
 
 	printf("%pa - %pa (size %pa) %s%s\n",
 			&res->start, &res->end, &size,
-			res->flags & IORESOURCE_BUSY ? "[R] " : "",
+			is_reserved_resource(res) ? "[R] " : "",
 			res->name);
 
 	list_for_each_entry(r, &res->children, sibling) {
diff --git a/common/memory.c b/common/memory.c
index f407cf0ea7e3..57f58026df8e 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -251,18 +251,16 @@ postmem_initcall(add_mem_devices);
 /*
  * Request a region from the registered sdram
  */
-struct resource *__request_sdram_region(const char *name, unsigned flags,
+struct resource *__request_sdram_region(const char *name,
 					resource_size_t start, resource_size_t size)
 {
 	struct memory_bank *bank;
 
-	flags |= IORESOURCE_MEM;
-
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
 		res = __request_region(bank->res, start, start + size - 1,
-				       name, flags);
+				       name, IORESOURCE_MEM);
 		if (!IS_ERR(res))
 			return res;
 	}
@@ -286,7 +284,12 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 		size = ALIGN(size, PAGE_SIZE);
 	}
 
-	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
+	/*
+	 * We intentionally don't use request_sdram_region() here, because we
+	 * want to set the reserved flag independently of whether
+	 * CONFIG_MEMORY_ATTRIBUTES is enabled or not
+	 */
+	res = __request_sdram_region(name, start, size);
 	if (!res)
 		return NULL;
 
diff --git a/common/oftree.c b/common/oftree.c
index 58e96c39d897..c22793de89fb 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -304,7 +304,7 @@ int of_fixup_reserved_memory(struct device_node *root, void *_res)
 
 	child = of_get_child_by_name(node, res->name) ?: of_new_node(node, res->name);
 
-	if (res->flags & IORESOURCE_BUSY)
+	if (is_reserved_resource(res))
 		of_property_write_bool(child, "no-map", true);
 
 	of_write_number(reg, res->start, addr_n_cells);
diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 223f67e872aa..f3ccff31e68a 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -37,7 +37,7 @@ int of_optee_fixup(struct device_node *root, void *_data)
 		res_core.start = arm_mem_endmem_get() - OPTEE_SIZE;
 		res_core.end = arm_mem_endmem_get() - fixup_data->shm_size - 1;
 	}
-	res_core.flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	res_core.flags = IORESOURCE_MEM;
 	reserve_resource(&res_core);
 	res_core.name = "optee_core";
 
diff --git a/include/memory.h b/include/memory.h
index 77bd4d266a72..12dd4220422c 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -30,9 +30,9 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
 #define for_each_reserved_region(mem, rsv) \
 	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
-	if (((rsv)->flags & IORESOURCE_BUSY))
+		if (is_reserved_resource(rsv))
 
-struct resource *__request_sdram_region(const char *name, unsigned flags,
+struct resource *__request_sdram_region(const char *name,
 					resource_size_t start, resource_size_t size);
 
 static inline struct resource *request_sdram_region(const char *name,
@@ -44,7 +44,7 @@ static inline struct resource *request_sdram_region(const char *name,
 	struct resource *res;
 
 	/* IORESOURCE_MEM is implicit for all SDRAM regions */
-	res = __request_sdram_region(name, 0, start, size);
+	res = __request_sdram_region(name, start, size);
 	if (IS_ENABLED(CONFIG_MEMORY_ATTRIBUTES) && res) {
 		res->type = memtype;
 		res->attrs = memattrs;
-- 
2.39.5



