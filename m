Delivery-date: Fri, 28 Nov 2025 18:22:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Ao-005rFf-38
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2An-0001bZ-VW
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BsjUuH8nsqLzGzejRHQ86+NU05KpaKQ2NnWbldZoNhU=; b=RCpohhg9EyjsRF19iMgVcESunv
	KHxZd6TqmOuFKJgXXlgEeMhyJa2+cAcvwFbe0IKYRKKObZpjp6uBDQ2BX8M1YnWT4djktY0lerHXg
	VhoIwZxCcTavocLjIPHXEol46Ms2wNGXA3V+96QVJAOAM0wo1X+5fbuBs7EqX5EtniLHNKSvwXKAG
	Phd1qgtIhshYyUYBASoCjACjJyCxIkZUp/gac8tUHqPGSjDfQ39DudsFZ8Au4UkaMrqThCOYXYzDq
	LTshO5Xnk9IRuO6GSc5IVHGiEatZ961ww4Dy2VfM6w8+Gvs1RKr9UNP5B8IV1UaZw8BxjfsLYuICV
	pxlkyJeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AM-00000000ivC-2VPh;
	Fri, 28 Nov 2025 17:21:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AK-00000000iu7-0jMO
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AI-0001E5-Kx; Fri, 28 Nov 2025 18:21:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AI-002zVG-1T;
	Fri, 28 Nov 2025 18:21:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AI-000000009Ov-1V1A;
	Fri, 28 Nov 2025 18:21:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:45 +0100
Message-ID: <20251128172149.36116-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092152_212597_7F8B2416 
X-CRM114-Status: GOOD (  18.22  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] memory: drop superfluous struct memory_bank::start/size parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These struct members do not have more info than what's already in the
resource, so just drop them, so code doesn't have to keep them in-sync.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c |  4 ++--
 arch/arm/lib32/atags.c    |  6 +++---
 arch/arm/lib32/bootm.c    |  6 +++---
 arch/arm/lib32/bootz.c    | 10 +++++-----
 commands/bfetch.c         |  2 +-
 common/memory.c           | 18 +++++++-----------
 include/memory.h          |  2 --
 7 files changed, 21 insertions(+), 27 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index b3d9e9579686..227ae4aa34e6 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -145,7 +145,7 @@ static void mmu_remap_memory_banks(void)
 		struct resource *rsv;
 		resource_size_t pos;
 
-		pos = bank->start;
+		pos = bank->res->start;
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
@@ -154,7 +154,7 @@ static void mmu_remap_memory_banks(void)
 			pos = rsv->end + 1;
 		}
 
-		remap_range_end_sans_text(pos, bank->start + bank->size, MAP_CACHED);
+		remap_range_end_sans_text(pos, bank->res->end + 1, MAP_CACHED);
 	}
 
 	/* Do this while interrupt vectors are still writable */
diff --git a/arch/arm/lib32/atags.c b/arch/arm/lib32/atags.c
index d567a13563b6..4af97f001855 100644
--- a/arch/arm/lib32/atags.c
+++ b/arch/arm/lib32/atags.c
@@ -74,7 +74,7 @@ struct tag *armlinux_get_bootparams(void)
 		return armlinux_bootparams;
 
 	for_each_memory_bank(mem)
-		return (void *)mem->start + 0x100;
+		return (void *)mem->res->start + 0x100;
 
 	BUG();
 }
@@ -110,8 +110,8 @@ static void setup_memory_tags(void)
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = bank->start;
-		params->u.mem.size = bank->size;
+		params->u.mem.start = bank->res->start;
+		params->u.mem.size = resource_size(bank->res);
 
 		params = tag_next(params);
 	}
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 69ca6d31d6c5..dca4fec0204c 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -66,11 +66,11 @@ static int sdram_start_and_size(unsigned long *start, unsigned long *size)
 	res = list_first_entry_or_null(&bank->res->children, struct resource,
 			sibling);
 	if (res)
-		*size = res->start - bank->start;
+		*size = res->start - bank->res->start;
 	else
-		*size = bank->size;
+		*size = resource_size(bank->res);
 
-	*start = bank->start;
+	*start = bank->res->start;
 
 	return 0;
 }
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index ddc53431ebd3..6ed6af1d19e3 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -48,8 +48,8 @@ static int do_bootz(int argc, char *argv[])
 	 * the first 128MB of SDRAM.
 	 */
 	zimage = memmap(fd, PROT_READ);
-	if (zimage && (unsigned long)zimage  >= bank->start &&
-			(unsigned long)zimage < bank->start + SZ_128M) {
+	if (zimage && (unsigned long)zimage  >= bank->res->start &&
+			(unsigned long)zimage < bank->res->start + SZ_128M) {
 		usemap = 1;
 		header = zimage;
 	}
@@ -82,12 +82,12 @@ static int do_bootz(int argc, char *argv[])
 		end = swab32(end);
 
 	if (!usemap) {
-		if (bank->size <= SZ_128M) {
+		if (resource_size(bank->res) <= SZ_128M) {
 			zimage = xmalloc(end);
 		} else {
-			zimage = (void *)bank->start + SZ_8M;
+			zimage = (void *)bank->res->start + SZ_8M;
 			res = request_sdram_region("zimage",
-					bank->start + SZ_8M, end,
+					bank->res->start + SZ_8M, end,
 					MEMTYPE_LOADER_CODE,
 					MEMATTRS_RWX);
 			if (!res) {
diff --git a/commands/bfetch.c b/commands/bfetch.c
index 4de6513ff08e..4de4692a6278 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -271,7 +271,7 @@ static struct bobject *print_cpu_mem_info(unsigned *line)
 	}
 
 	for_each_memory_bank(mem) {
-		memsize += mem->size;
+		memsize += resource_size(mem->res);
 		nbanks++;
 	}
 
diff --git a/common/memory.c b/common/memory.c
index bee55bd647e1..f179a3243ff1 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -185,8 +185,8 @@ static int barebox_grow_memory_bank(struct memory_bank *bank, const char *name,
 	struct resource *res;
 	resource_size_t bank_end = bank->res->end;
 
-	if (newres->start < bank->start) {
-		res = request_iomem_region(name, newres->start, bank->start - 1);
+	if (newres->start < bank->res->start) {
+		res = request_iomem_region(name, newres->start, bank->res->start - 1);
 		if (IS_ERR(res))
 			return PTR_ERR(res);
 		__merge_regions(name, bank->res, res);
@@ -199,9 +199,6 @@ static int barebox_grow_memory_bank(struct memory_bank *bank, const char *name,
 		__merge_regions(name, bank->res, res);
 	}
 
-	bank->start = newres->start;
-	bank->size = resource_size(bank->res);
-
 	return 0;
 }
 
@@ -232,8 +229,6 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	bank = xzalloc(sizeof(*bank));
 
 	bank->res = res;
-	bank->start = start;
-	bank->size = size;
 
 	list_add_tail(&bank->list, &memory_banks);
 
@@ -245,7 +240,8 @@ static int add_mem_devices(void)
 	struct memory_bank *bank;
 
 	for_each_memory_bank(bank) {
-		add_mem_device(bank->res->name, bank->start, bank->size,
+		add_mem_device(bank->res->name,
+			       bank->res->start, resource_size(bank->res),
 			       IORESOURCE_MEM_WRITEABLE);
 	}
 
@@ -400,7 +396,7 @@ static int of_memory_fixup(struct device_node *root, void *unused)
 		int len = 0;
 
 		/* Create a /memory node for each bank */
-		memnode_name = xasprintf("/memory@%lx", bank->start);
+		memnode_name = xasprintf("/memory@%llx", (u64)bank->res->start);
 
 		memnode = of_create_node(root, memnode_name);
 		if (!memnode) {
@@ -413,9 +409,9 @@ static int of_memory_fixup(struct device_node *root, void *unused)
 		if (err)
 			goto err_free;
 
-		of_write_number(tmp, bank->start, addr_cell_len);
+		of_write_number(tmp, bank->res->start, addr_cell_len);
 		len += addr_cell_len * 4;
-		of_write_number(tmp + len, bank->size, size_cell_len);
+		of_write_number(tmp + len, resource_size(bank->res), size_cell_len);
 		len += size_cell_len * 4;
 
 		err = of_set_property(memnode, "reg", tmp, len, 1);
diff --git a/include/memory.h b/include/memory.h
index 12dd4220422c..dea76dd2b1f7 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -17,8 +17,6 @@ static inline ulong mem_malloc_size(void)
 
 struct memory_bank {
 	struct list_head list;
-	unsigned long start;
-	unsigned long size;
 	struct resource *res;
 };
 
-- 
2.47.3



