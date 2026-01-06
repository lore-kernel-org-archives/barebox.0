Delivery-date: Tue, 06 Jan 2026 14:02:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hK-001tbW-08
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:02:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6hI-0003KJ-GO
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:02:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmL8QtdQq+tLHOaIlGH7/fpUfq6hKuWpIL/Z9HgMEh8=; b=L5oaK427zx/e9gUcrz6NDmB3iZ
	nYKsCE8SGfyhI8E5rBNSRxjaYGj3PMj/Ue9XVvv9a9jo8FppXmEPID4DHS4VnNkbEB6odxSmaUq2D
	2/3662nJa1NaZpVQD+GGT/k+g98LswNjVzOjR/MBBsVMO5dMwU+9/JW4KJlL0ZOnT0mulQFkwF6J4
	r9V/wYiPBHfXq1OIA1wZC7m4qvsxg4iv4ZYZ5e7WOFZ73UtQIjviPxTNtJLflwEyhtD7uQ+VQDvy9
	P1hjFO8g/vJoF7E3NIaP0Y6FnVeL2Tbzms8ALIpO2Oxwo5Z0CCMxPat6QkkvlIb4q36AV/fLHOOMy
	AoBi/zZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6go-0000000D2Tm-0JQ4;
	Tue, 06 Jan 2026 13:01:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6gl-0000000D2Qm-1qjT
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:01:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gj-0002p0-S6; Tue, 06 Jan 2026 14:01:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6gj-009Ldq-2C;
	Tue, 06 Jan 2026 14:01:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-3YWj;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-pbl-load-elf-v2-12-487bc760f045@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
In-Reply-To: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=2559;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=u+SnsEsc8N1I2sGZvQpi00qHxV2+LBjQkaEs3tgQZBA=;
 b=vzPqRyai7kwZPtR05EFFHFtuox5SmHEdG2GlpDZGNIFDvYOs7Ef4Lb4iiT4BKqgImmgAMmAqA
 g10FLqvKEusCkUdeRRVw51/fv2LpXfzaNnqqTU6JsOSaQ4DoQF4G5wi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050131_485564_11787BEC 
X-CRM114-Status: UNSURE (   9.86  )
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
Subject: [PATCH v2 12/21] mmu: introduce pbl_remap_range()
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
index 71ead41c3d274548c9427c1ce9833de309114c4d..54371e3e5973c9fe98cadef63499105134e09539 100644
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
index ddf1373ec0a801baad043146187d7f4c3eac6a2a..d4d6d1a849ba9b8666f4dcb4bd80247a70bdce1a 100644
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
index 9f582f25e1de14d47cfe2eff64f9cce81c4e492d..32d9a7aca3b9a61d542bf3e21e27f1ac51f43ee2 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -65,6 +65,9 @@ static inline bool arch_can_remap(void)
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



