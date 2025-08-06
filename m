Delivery-date: Wed, 06 Aug 2025 14:39:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQZ-007dZr-0G
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQX-0000ze-Pw
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S50TXrGQIK4Tu1LtHxltWd/FgoRRvbwLYGm0g5d105E=; b=nfmae4OVKOTYy2sCy316w+2jGL
	opreBOBRw9RFOYqtY+V7XkVuxGa9cVlftMhWRzK9FR93WYspHQlAn12yRCmC+XGRSgrZXCehtArsW
	qS7PI/udqA3wOS9ob8y4ALASe7ZHDFRg65mx/PniUreKOyC5l3dKIUzox7ScC78E8FNPWZt9RoFCK
	myIZ4G4aREjjqkFfDLIAkj2/8mFNQBfUXzcdwZYnHemJQTaMiSPllgeNHk/tkGVpvOlxuDDYnPFFx
	uOB5fqqDh6Jlq1BO1DtDZT1PAQhC58psfKeUdST6wKJ6xWIzrPOHkg9XoqUeoAccvxy+fwfrkfVG7
	kOSeyM7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ3-0000000FAJQ-0mSm;
	Wed, 06 Aug 2025 12:38:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5K-345Z
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000MT-Fc; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8q-0s;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0Z;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:54 +0200
Message-Id: <20250806123714.2092620-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053716_773933_12661D86 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/22] ARM: mmu: compare only lowest 16 bits for map type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Regions remapped as MAP_CODE are still cacheable, even if they aren't
MAP_CACHED. To handle that and to support a future use of flags in the
maptype_t, let's limit the existing memory type enumeration to the lower
16 bits and use a MAP_CODE/MAP_CACHED aware comparison helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h   |  6 +++---
 arch/arm/cpu/mmu_32.c       | 10 +++++-----
 arch/arm/cpu/mmu_64.c       |  4 ++--
 arch/powerpc/cpu-85xx/mmu.c |  2 +-
 include/mmu.h               | 19 ++++++++++++++++++-
 5 files changed, 29 insertions(+), 12 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index a545958b5cc2..e9005dfae766 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -10,8 +10,8 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
-#define ARCH_MAP_CACHED_RWX	((unsigned)-2)
-#define ARCH_MAP_CACHED_RO	((unsigned)-3)
+#define ARCH_MAP_CACHED_RWX	MAP_ARCH(2)
+#define ARCH_MAP_CACHED_RO	MAP_ARCH(3)
 
 struct device;
 
@@ -26,7 +26,7 @@ static inline maptype_t arm_mmu_maybe_skip_permissions(maptype_t map_type)
 	if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
 		return map_type;
 
-	switch (map_type) {
+	switch (map_type & MAP_TYPE_MASK) {
 	case MAP_CODE:
 	case MAP_CACHED:
 	case ARCH_MAP_CACHED_RO:
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 8d1343b5d7d7..ae86c27e7e27 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -226,7 +226,7 @@ static u32 pte_flags_to_pmd(u32 pte)
 static uint32_t get_pte_flags(maptype_t map_type)
 {
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-		switch (map_type) {
+		switch (map_type & MAP_TYPE_MASK) {
 		case ARCH_MAP_CACHED_RWX:
 			return PTE_FLAGS_CACHED_V7_RWX;
 		case ARCH_MAP_CACHED_RO:
@@ -244,7 +244,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
 			return 0x0;
 		}
 	} else {
-		switch (map_type) {
+		switch (map_type & MAP_TYPE_MASK) {
 		case ARCH_MAP_CACHED_RO:
 		case MAP_CODE:
 			return PTE_FLAGS_CACHED_RO_V4;
@@ -300,7 +300,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 			 */
 			chunk = PGDIR_SIZE;
 			val = phys_addr | pmd_flags;
-			if (map_type != MAP_FAULT)
+			if (!maptype_is_compatible(map_type, MAP_FAULT))
 				val |= PMD_TYPE_SECT;
 			// TODO break-before-make missing
 			set_pte(pgd, val);
@@ -346,7 +346,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 				val = phys_addr + i * PAGE_SIZE;
 				val |= pte_flags;
-				if (map_type != MAP_FAULT)
+				if (!maptype_is_compatible(map_type, MAP_FAULT))
 					val |= PTE_TYPE_SMALL;
 
 				// TODO break-before-make missing
@@ -375,7 +375,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 
 	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
 
-	if (map_type == MAP_UNCACHED)
+	if (maptype_is_compatible(map_type, MAP_UNCACHED))
 		dma_inv_range(virt_addr, size);
 
 	return 0;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index ad96bda702b8..9e8d36d94944 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -289,7 +289,7 @@ static void flush_cacheable_pages(void *start, size_t size)
 
 static unsigned long get_pte_attrs(maptype_t map_type)
 {
-	switch (map_type) {
+	switch (map_type & MAP_TYPE_MASK) {
 	case MAP_CACHED:
 		return attrs_xn() | CACHED_MEM;
 	case MAP_UNCACHED:
@@ -330,7 +330,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	if (attrs == ~0UL)
 		return -EINVAL;
 
-	if (map_type != MAP_CACHED)
+	if (!maptype_is_compatible(map_type, MAP_CACHED))
 		flush_cacheable_pages(virt_addr, size);
 
 	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
diff --git a/arch/powerpc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
index 5fe9ba9db6d8..eec4d3e05b56 100644
--- a/arch/powerpc/cpu-85xx/mmu.c
+++ b/arch/powerpc/cpu-85xx/mmu.c
@@ -27,7 +27,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	if (phys_addr != virt_to_phys(virt_addr))
 		return -ENOSYS;
 
-	switch (flags) {
+	switch (flags & MAP_TYPE_MASK) {
 	case MAP_UNCACHED:
 		pte_flags = MAS2_I;
 		break;
diff --git a/include/mmu.h b/include/mmu.h
index db8453f58521..29992ae1d6c6 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -16,6 +16,9 @@
 #define MAP_WRITECOMBINE	MAP_UNCACHED
 #endif
 
+#define MAP_TYPE_MASK	0xFFFF
+#define MAP_ARCH(x)	((u16)~(x))
+
 /*
  * Depending on the architecture the default mapping can be
  * cached or uncached. Without ARCH_HAS_REMAP being set this
@@ -25,11 +28,25 @@
 
 #include <asm/mmu.h>
 
+static inline bool maptype_is_compatible(maptype_t active, maptype_t check)
+{
+	active &= MAP_TYPE_MASK;
+	check &= MAP_TYPE_MASK;
+
+	if (active == check)
+		return true;
+	if (active == MAP_CODE && check == MAP_CACHED)
+		return true;
+
+	return false;
+}
+
 #ifndef ARCH_HAS_REMAP
 static inline int arch_remap_range(void *virt_addr, phys_addr_t phys_addr,
 				   size_t size, maptype_t map_type)
 {
-	if (map_type == MAP_ARCH_DEFAULT && phys_addr == virt_to_phys(virt_addr))
+	if (maptype_is_compatible(map_type, MAP_ARCH_DEFAULT) &&
+	    phys_addr == virt_to_phys(virt_addr))
 		return 0;
 
 	return -EINVAL;
-- 
2.39.5



