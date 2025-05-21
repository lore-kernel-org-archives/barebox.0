Delivery-date: Wed, 21 May 2025 15:14:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHS-001AnC-0p
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 15:14:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHjHQ-0003vs-QP
	for lore@pengutronix.de; Wed, 21 May 2025 15:14:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=StPdbWKHI//zdhzrslEKxhvPffj+eOZAgM3ip6IV1vw=; b=KS3vF5EfhsKBAJTLiSIPuHjzj2
	2cLLmvhHD9sLjChGhfWWYv/oJc2dQMoaCBep/q0QGJDsl59EyHzZaQHEwaMvJn98Wr7ncRv8hiM5C
	4JjRp8pV0A05+p9AvJ9VBZ8Grkn5DJPYye3H82uW9xhieUzCwfYEwkB9U3NU5Ikw/5PXB9Cjxfbhd
	aVIckDMPHX4XDVXv1uDb9U2j5ZH32YRLTaib849uq579ug6hKIpDpPYYF5DQUkqXVpe+BY2h2FEMn
	9p8VC9TUSdZbDywVUo78F0ig93j5Evk7uQb2u0Uv6VCFPkUxQgjpdsX4ZsVr50SLt9vnip1sHXysZ
	reme1lrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjGw-0000000FtuR-2kgI;
	Wed, 21 May 2025 13:14:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHiwg-0000000Fq3c-0JRQ
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 12:53:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uHiwe-00073K-Os; Wed, 21 May 2025 14:53:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 21 May 2025 14:53:09 +0200
Message-Id: <20250521125309.1408613-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521125309.1408613-1-a.fatoum@barebox.org>
References: <20250521125309.1408613-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_055318_135249_19A47EA7 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] resource: retire IORESOURCE_BUSY in favor of resource::type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The way we use IORESOURCE_BUSY in barebox is different than in Linux and
was only done to have a bit that doesn't sound too off-topic.

Now that we have proper memory type and attributes, let's make use of
them and retire IORESOURCE_BUSY.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/iomemport.c         |  2 +-
 common/memory.c              | 22 ++++++----------------
 common/oftree.c              |  2 +-
 drivers/tee/optee/of_fixup.c |  2 +-
 include/memory.h             |  6 +++---
 5 files changed, 12 insertions(+), 22 deletions(-)

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
index 684907e8e933..8c9f29ca71b2 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -251,25 +251,18 @@ postmem_initcall(add_mem_devices);
 /*
  * Request a region from the registered sdram
  */
-struct resource *__request_sdram_region(const char *name, unsigned flags,
-				      resource_size_t start, resource_size_t size,
-				      enum resource_memtype memtype, unsigned memattrs)
+struct resource *__request_sdram_region(const char *name,
+					resource_size_t start, resource_size_t size)
 {
 	struct memory_bank *bank;
 
-	flags |= IORESOURCE_MEM;
-
 	for_each_memory_bank(bank) {
 		struct resource *res;
 
 		res = __request_region(bank->res, start, start + size - 1,
-				       name, flags);
-		if (!IS_ERR(res)) {
-			res->type = memtype;
-			res->attrs = memattrs;
-			res->flags |= IORESOURCE_TYPE_VALID;
+				       name, IORESOURCE_MEM);
+		if (!IS_ERR(res))
 			return res;
-		}
 	}
 
 	return NULL;
@@ -291,14 +284,11 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 		size = ALIGN(size, PAGE_SIZE);
 	}
 
-	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
+	res = request_sdram_region(name, start, size,
+				   MEMTYPE_RESERVED, MEMATTRS_RW_DEVICE);
 	if (!res)
 		return NULL;
 
-	res->type = MEMTYPE_RESERVED;
-	res->attrs = MEMATTRS_RW_DEVICE;
-	res->flags |= IORESOURCE_TYPE_VALID;
-
 	remap_range((void *)start, size, MAP_UNCACHED);
 
 	return res;
diff --git a/common/oftree.c b/common/oftree.c
index b9a854c786f6..a7479164e288 100644
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
index b7736b1a4c0e..0d175807bf88 100644
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
 	if (IS_ENABLED(CONFIG_MEMORY_ATTRIBUTES) && !IS_ERR(res)) {
 		res->type = memtype;
 		res->attrs = memattrs;
-- 
2.39.5



