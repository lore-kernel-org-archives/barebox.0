Delivery-date: Mon, 04 Aug 2025 20:29:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0071xF-0j
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 20:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwa-0007Lx-LH
	for lore@pengutronix.de; Mon, 04 Aug 2025 20:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nyPFuULb8OGX1adFxxfhNCLYSrS+l/UliQqQMRBW5gg=; b=042kh35Vj80e4fXeVU+H/EY1rP
	ElF9GWD7urEnsttmFYBi/BqBuueEA510MyA4mEH0Ah0d4rqYAc1s0NSYujIW8S0+1qx93XbcfRLd9
	o+glqydP1YmmGgQf05vG7Y65sKQ3e4dvJT/k+ZwYDpMdoPs8O1x0DR3MtfMIDVC2bklNkAMe8RGs2
	2WjX5VLnAfBiWYiWehs2S1L8gyNKjSgyVKySsIoGT3AdXw6f0LUCLlLnALdVy1MD4y3GgqQoz1dgw
	t/7W5t+Y9cRz1Ho0oZ1rSDB9U9EtTFane3Hl/GiUehBnJ8lX2OS1fhGG6Eid7ESENk7w8W8vdf8bi
	9ClaKPmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uizwJ-0000000BA11-4ASS;
	Mon, 04 Aug 2025 18:29:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytV-0000000B5LE-3a3F
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nyPFuULb8OGX1adFxxfhNCLYSrS+l/UliQqQMRBW5gg=; b=gqqBBRaxQNAmQu89YFGDEoRAjP
	rbRDCEWYGkmCOKoPKpEVK3ox7X8H/ixgUbwt+/uQs9eNaPxhtWw9+maTPRw4fOn+2jUbsnuHsPTsV
	+Ms2BxQt2MlZSBnP6IN1gY6gOTU72oVG8+vhkEYyiE+JObhHNDQit8AHd6wyw7XlD+hcXOdrlTam7
	f9BMqbNJMsTb1sRudaY7HdM7sj4tZ5eZg20eVy7hzUTqmDzp5e2g+GqKdWJkyn8f+BzFSqEdG1UUm
	AzK+a3mNtEqrMmYByGNazNrkr99qmyQ7QiFuAOKyRWsF4XDUwvz3TAItVewR6DsrYZ9iYHZcYoT+I
	9MBWm0eQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytS-0000000DtdV-3aoh
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytR-0000su-0O; Mon, 04 Aug 2025 19:22:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:23 +0200
Message-Id: <20250804172233.2158462-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182239_082045_4F0A6CAC 
X-CRM114-Status: GOOD (  10.66  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 03/13] ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

ARCH_MAP_WRITECOMBINE is defined equally for both mmu_32 and mmu_64 and
we'll add more mapping types later, so move it to a header file to be
shared by both mmu implementations.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.h | 2 ++
 arch/arm/cpu/mmu_32.c     | 1 -
 arch/arm/cpu/mmu_64.c     | 2 --
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index d0b50662570a..0f11a4b73d11 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -9,6 +9,8 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
+#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
+
 struct device;
 
 void dma_inv_range(void *ptr, size_t size);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 2c2144327380..104780ff6b98 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -23,7 +23,6 @@
 #include "mmu_32.h"
 
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
-#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
 static inline uint32_t *get_ttb(void)
 {
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index cb0803400cfd..121dd136af33 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -24,8 +24,6 @@
 
 #include "mmu_64.h"
 
-#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
-
 static uint64_t *get_ttb(void)
 {
 	return (uint64_t *)get_ttbr(current_el());
-- 
2.39.5



