Delivery-date: Mon, 05 Jan 2026 12:32:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciog-001VJ0-13
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciof-0007B0-Hc
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KKVs2lpJJst8GEOCC5u3ZK7bMMiRhd1IRk4B4UZ5YGQ=; b=lJyc4BEVc1K6iGLbDTa66xVyhC
	OJxfdJoZyEBSOYx/RzuWP4+ATwJ5H0SGvRrdO1DbgqBYY2miinD258iIzA6Ti+awfyUZuTnYdhRqG
	xnd5tGP8b4kP4Gxa//g+yQdIplHUE3pwAvUFuOnSNBO3VZisgXRV75gQ8loDI1qXvO8hF1/U6ePHr
	avMcfYgzJro3lcmRjLttFycVeMIYbS542bNM9i5kX+ywsJ3TirdPoO1MiCMIrgoeeUKU/Hnh+IrkB
	lLrFoyU4guRv7jlswhTxfqCCU7xW31KV/sfJaVwTpgh4mvyaab7xzxcfNJsvRrNyM25bwJCJzWJ5f
	nI0K0tmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioD-0000000BCIh-4Bta;
	Mon, 05 Jan 2026 11:31:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio8-0000000BCBA-0EHP
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006l7-L9; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0099zz-1T;
	Mon, 05 Jan 2026 12:31:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-11p9;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-11-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=2559;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2YkY7BsdVabSCE3n4gRXdYhY1HsfWMmHib0FHWYiqz4=;
 b=xH7q+MYdOOHYSeUEHETFfVi+q90et40f/EcArJd42c8SHePFwXXSZg403DB/TRRYnfm/x7tad
 rEBmZh/fDRBBD6MirDrrdrHrn9r5eBDwyByfPUf49aDJ2T7mhqhcG4H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033132_093396_B6AC1FDF 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/19] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add PBL-specific memory remapping function that always uses page-wise
mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
adjacent ELF segments with different protection requirements.

Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
ARMv8 (page tables with BBM). Needed for ELF segment permission setup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 7 +++++++
 arch/arm/cpu/mmu_64.c | 8 ++++++++
 include/mmu.h         | 3 +++
 3 files changed, 18 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 97c7107290ce95ddb21a322a5d0e74f3d324c528..86a55d165ba3cec5154c345a1a3a9cb959f0996f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -435,6 +435,13 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
 	__arch_remap_range((void *)addr, addr, size, map_type);
 }
 
+void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type)
+{
+	__arch_remap_range(virt_addr, phys_addr, size,
+			   map_type | ARCH_MAP_FLAG_PAGEWISE);
+}
+
 static bool pte_is_cacheable(uint32_t pte, int level)
 {
 	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index afb3d2d7efd0bc7ecde1177d1544f54d751b5dc1..63faaa46703697e527eae766392e7ea7ae186b3d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -282,6 +282,14 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 	__arch_remap_range(addr, addr, size, map_type, false);
 }
 
+void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type)
+{
+	__arch_remap_range((uint64_t)virt_addr, phys_addr,
+			   (uint64_t)size, map_type | ARCH_MAP_FLAG_PAGEWISE,
+			   true);
+}
+
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
 {
 	map_type = arm_mmu_maybe_skip_permissions(map_type);
diff --git a/include/mmu.h b/include/mmu.h
index 53603b7956c229b4c715c57b19d0398931eb2d6b..37df7b482e1d83e94e61997db6cf9834d8cf7f3c 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -64,6 +64,9 @@ static inline bool arch_can_remap(void)
 }
 #endif
 
+void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type);
+
 static inline int remap_range(void *start, size_t size, maptype_t map_type)
 {
 	return arch_remap_range(start, virt_to_phys(start), size, map_type);

-- 
2.47.3



