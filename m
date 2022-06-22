Delivery-date: Wed, 22 Jun 2022 19:54:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o44Yz-00Ar5c-LG
	for lore@lore.pengutronix.de; Wed, 22 Jun 2022 19:54:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o44Yz-0002kv-8a
	for lore@pengutronix.de; Wed, 22 Jun 2022 19:54:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RgzsgQBq5MbLKte+hVRQgkrVvBaKDhY+5EFd0tyjTAY=; b=gZ04hkjJMdiFJV0WbT9B2BZCnn
	XXxHXsYLJEasLBs3M4Q/FRIM+cWg8bwSoG6BPXHwgNBD1JgJmovAOzQ3SKae4b2N4eLTF/YC7ss4V
	w7UeNUTmq+yDVmIpUUAtIXoJff1Maj9Zfs/fFjvio/0g8X5zGZL6bAyNL7jBujoXguflGwXagreMG
	+ZnFrts156eQ23oLL5cTc8/9hC9Gdli39O0NzZ13aK33ArXyXxL95gtN/yI9HDrnW+fT9yzjrL3FP
	VBEH2CdF+gx9q2VuNMouBbU3ahxaZPdzhuF+aa/Y58MmDV3RspSRoTaohKXdC7WvI1haruOo/8KXo
	L+YFzLdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44Vg-00BlDJ-Nz; Wed, 22 Jun 2022 17:51:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o44Vb-00BlCK-Nw
	for barebox@lists.infradead.org; Wed, 22 Jun 2022 17:51:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o44VW-0002Or-Bz; Wed, 22 Jun 2022 19:51:14 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o44VU-0025GC-91; Wed, 22 Jun 2022 19:51:13 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o44VU-00B9On-LC; Wed, 22 Jun 2022 19:51:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Jun 2022 19:51:11 +0200
Message-Id: <20220622175111.2657673-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_105119_821490_47C52813 
X-CRM114-Status: GOOD (  16.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: cpu: start: don't panic when only initial memory known
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Boards that get their memory from device tree are prone to breakage if
upstream decides to remove the /memory node or renders it unusable[0]
or to disable the DRAM controller device node[1] used to dynamically
compute the size.  While this needs to be fixed properly on a
case-by-case basis, soften the blow by using the memory size specified
by low level code as a fallback instead of just throwing the towel.

[0]: aa68c6bd3615 ("arm: rk3288-phycore-som: Fix memory node")
[1]: 0529149b2756 ("arm: imx8mq: re-enable DDRC for Barebox")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c          | 15 +++++++++++++--
 arch/arm/cpu/start.c               |  8 ++++++++
 arch/arm/include/asm/barebox-arm.h |  1 +
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 2ef1fa231f39..488a189f1c06 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -9,6 +9,7 @@
 #include <dma.h>
 #include <mmu.h>
 #include <asm/system.h>
+#include <asm/barebox-arm.h>
 #include <memory.h>
 #include "mmu.h"
 
@@ -58,14 +59,24 @@ void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 
 static int mmu_init(void)
 {
-	if (list_empty(&memory_banks))
+	if (list_empty(&memory_banks)) {
+		resource_size_t start;
+		int ret;
+
 		/*
 		 * If you see this it means you have no memory registered.
 		 * This can be done either with arm_add_mem_device() in an
 		 * initcall prior to mmu_initcall or via devicetree in the
 		 * memory node.
 		 */
-		panic("MMU: No memory bank found! Cannot continue\n");
+		pr_emerg("No memory bank registered. Limping along with initial memory\n");
+
+		start = arm_mem_membase_get();
+		ret = barebox_add_memory_bank("initmem", start,
+					      arm_mem_endmem_get() - start);
+		if (ret)
+			panic("");
+	}
 
 	__mmu_init(get_cr() & CR_M);
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c61db668658b..14cc310312ab 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -28,6 +28,7 @@
 unsigned long arm_stack_top;
 static unsigned long arm_barebox_size;
 static unsigned long arm_endmem;
+static unsigned long arm_membase;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
 
@@ -114,6 +115,12 @@ unsigned long arm_mem_endmem_get(void)
 }
 EXPORT_SYMBOL_GPL(arm_mem_endmem_get);
 
+unsigned long arm_mem_membase_get(void)
+{
+	return arm_membase;
+}
+EXPORT_SYMBOL_GPL(arm_mem_membase_get);
+
 static int barebox_memory_areas_init(void)
 {
 	if(barebox_boarddata)
@@ -148,6 +155,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
+	arm_membase = membase;
 	arm_endmem = endmem;
 	arm_stack_top = arm_mem_stack_top(membase, endmem);
 	arm_barebox_size = barebox_size;
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 15b3b6c44479..8240cce9bf5b 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -84,6 +84,7 @@ static inline void boarddata_create(void *adr, u32 machine)
 u32 barebox_arm_machine(void);
 
 unsigned long arm_mem_ramoops_get(void);
+unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
 struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
-- 
2.30.2



