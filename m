Delivery-date: Thu, 08 Jan 2026 17:02:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT2-002fca-1f
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 17:02:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsT0-00013A-ND
	for lore@pengutronix.de; Thu, 08 Jan 2026 17:02:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=689pm1wkFKDVa/nbhnSIBlC3ZlFxq2TNcGQOKHgWjAg=; b=mrS3A85M+CdkISq0pc6TH2kbzP
	QAJq/pxNBoZKjkqXfMDjRqXwp7nWzbSOjBKmF6saPO8nCfv96RKVnciCWnQQqQaQF5DBL0cGfPsbQ
	8XD4NFOG1bVfxaj70ldDyHIuyPNr/q0s39s40IXNJeacYOkUqt41MuoKJqNub4pNPPaVz8E0kpiQ6
	nXOfp8lMuGgSy4whgqXla9PxiUijdCkYfKpU/CvURYks0SquWK5+hvVSUAmkbjMKsYmIjn+wXXMv2
	SeTTm443gtO2VSIYcaXmiYVx2bUZQs3TkQPWXyqBfJevKdZd86u8bOPgUVqP+lhMC30UQPbR+Rbkt
	FQiL3UhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsSK-000000001yg-2TKt;
	Thu, 08 Jan 2026 16:01:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS8-000000001tX-1Nw7
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 16:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=689pm1wkFKDVa/nbhnSIBlC3ZlFxq2TNcGQOKHgWjAg=; b=XcxUrf/+kL9oBWzvxhyLzlky4X
	52p+4bLMJ/c/RTPBHwThV/3Y/rjJMlz2SxoSn1bMKJWX4u0Ru1ZeZJVHKdHNilXuNTuuww8dMPDwy
	NmjDOt/QhTEgd716atMdik7QzEn8SxIdLH9tSfFFE0Gd+Im+ghAIHpvVpPwzTEXEXl1YNY7Q4CpsP
	05vm69b390KDtsxk0KP/CfsouYQGuc2YQ5OiNdXMxXUattUbtw7vyAlGou2YgoWwRUXIQ/wbrj6fw
	TR+0GbnV07lmQmXNAtlIz5jgGJMcv+FXyHMxsezKX6kaWoAIPkE7l70usMbqOTAHYsK+KkpHvT/sk
	UTHOJ3zg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsS2-0000000DaVJ-3aCo
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 16:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-0000Sv-F1; Thu, 08 Jan 2026 17:01:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsS2-009hXV-0o;
	Thu, 08 Jan 2026 17:01:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1Xfc;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:50:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-13-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=2544;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=W9gm9ER0b+hiyQ5zGKjeQIafOjqCLiRWP9P/Xopku0g=;
 b=5+Wt/L6Kh91MD3jmJhA4lNadFkjiWwIiUDyYEwvi5y7Gv2pdZ0+zAhMgEnDPrCdq1p1W6g05c
 ESmbK9Xpz3yCZOH0dsKumzEslgFmXEhfvAWp2V9wSxYFHtg8PLBT9Ys
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_160130_958228_3EFA6902 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 13/23] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add PBL-specific memory remapping function that always uses page-wise
mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
adjacent ELF segments with different protection requirements.

Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
ARMv8 (page tables with BBM). Needed for ELF segment permission setup.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 6 ++++++
 arch/arm/cpu/mmu_64.c | 7 +++++++
 include/mmu.h         | 3 +++
 3 files changed, 16 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 71ead41c3d274548c9427c1ce9833de309114c4d..981202b789befbd04e212f48490aebb41dfb6b98 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -435,6 +435,12 @@ static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
 	__arch_remap_range((void *)addr, addr, size, map_type);
 }
 
+void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type)
+{
+	__arch_remap_range(virt_addr, phys_addr, size, map_type);
+}
+
 static bool pte_is_cacheable(uint32_t pte, int level)
 {
 	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index ddf1373ec0a801baad043146187d7f4c3eac6a2a..5ea0d39ad4c7fb219b38cf957335615d0d6e96c5 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -282,6 +282,13 @@ static void early_remap_range(uint64_t addr, size_t size, maptype_t map_type)
 	__arch_remap_range(addr, addr, size, map_type, false);
 }
 
+void pbl_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size,
+		     maptype_t map_type)
+{
+	__arch_remap_range((uint64_t)virt_addr, phys_addr,
+			   (uint64_t)size, map_type, true);
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



