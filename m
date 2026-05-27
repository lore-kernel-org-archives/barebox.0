Delivery-date: Wed, 27 May 2026 14:18:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDH-004NxS-1Z
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 14:18:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDF-0001d5-Pi
	for lore@pengutronix.de; Wed, 27 May 2026 14:18:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mxVCtoFlzQpdqozQHfVed31WQM3fvZhntdRG+OOCP20=; b=s99fH9ComcIvhO2KVDz23+tvST
	uBvhnIaZoXB5p0w+vZpVoirVLOzS2ci0O9rRsy8UBIiFj+xJZ3Vs0SSzB7ECMkQPZhRgfRMy1+1bH
	fftypeqQ05durzb9OjNExbZN8JDomDcqDTdk/OMZIUmgF1jsS9sx/6TM3J1GJfCXUVpbRufqfF/wM
	oPNNkOQ9wWe1Efxo7kbMgOOkdRRqcWdOdlsVAvkoJwU1N3uwNMjuFGIijD1zgzu3TTw4HiV0wEK9u
	mA74+4FHNu7emDpLnPZ5Ba4EaNM/Ql1uXCe6WLOyQEsVUL5w177HaMw/GkTmWgO3wCefS/fpzxYKu
	JhioEBaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDBy-000000044A2-2jd8;
	Wed, 27 May 2026 12:16:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDBv-00000004495-1b5Z
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 12:16:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBt-0001FP-1Z; Wed, 27 May 2026 14:16:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0026eN-0w;
	Wed, 27 May 2026 14:16:52 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0000000E7Uj-3DvW;
	Wed, 27 May 2026 14:16:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: eagle.alexander923@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 27 May 2026 14:15:21 +0200
Message-ID: <20260527121649.3365172-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_051655_426416_B0C7DF74 
X-CRM114-Status: GOOD (  23.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/5] arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With barebox proper placed at end of RAM, the current CONFIG_MALLOC_SIZE
puts us into a tight spot: We must determine the size barebox proper
will occupy to subtract CONFIG_MALLOC_SIZE from it, but we may not know
the size yet in early stages of PBL, especially when we have separate
first and second stages.

This complexity in calculation is imposed onto all users, even though
most users probably don't make use of CONFIG_MALLOC_SIZE and set it to
zero anyway to let barebox compute a suitable malloc area size.

CONFIG_BAREBOX_MEMORY_OFFSET simplifies calculation by starting the
malloc area at the specified offset from start of RAM.

Boards that used to set CONFIG_MALLOC_SIZE will need to set the new
CONFIG_BAREBOX_MEMORY_OFFSET, e.g. by converting the old
CONFIG_MALLOC_SIZE value:

 initial memory_size - old CONFIG_MALLOC_SIZE
   - the area barebox occupies at end of initial memory

For all other boards, they can just keep the default of
CONFIG_BAREBOX_MEMORY_OFFSET=0 and barebox will start the malloc area at
half of RAM or 1G before end, whichever is smaller.

This computation is independent of barebox size and can thus be used in
early PBL as well in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig                        | 13 ++++++++++
 common/Kconfig                      | 38 +++++++++++++++++++++++++++++
 common/memory.c                     |  4 +++
 include/asm-generic/memory_layout.h | 24 ++++++++++++++++++
 4 files changed, 79 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 23e65d58d52b..b4fe34aa9760 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -98,6 +98,19 @@ config ARCH_HAS_MALLOC_SIZE
 	  This is selected by architectures, where CONFIG_MALLOC_SIZE
 	  can be used to specify an exact size of the malloc area.
 
+	  Eventually, this should only be selected by sandbox, with
+	  everyone else switched over to ARCH_HAS_BAREBOX_MEMORY_OFFSET.
+
+config ARCH_HAS_BAREBOX_MEMORY_OFFSET
+	bool
+	help
+	  This is selected by architectures, where CONFIG_BAREBOX_MEMORY_OFFSET
+	  can be used to specify the start offset of the barebox memory
+	  within the initially available memory (first memory bank usually).
+
+	  Compared to CONFIG_MALLOC_SIZE, this offset simplifies memory layout
+	  calculation and allows to reserve the malloc region very early on.
+
 config HAVE_EFFICIENT_UNALIGNED_ACCESS
 	bool
 
diff --git a/common/Kconfig b/common/Kconfig
index 1b2f12498355..f9985d8aa4b5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -300,6 +300,44 @@ config MALLOC_SIZE
 	default 0
 	prompt "malloc area size" if ARCH_HAS_MALLOC_SIZE
 
+config BAREBOX_MEMORY_OFFSET
+	hex
+	default 0
+	prompt "relative malloc base offset (optional)"
+	depends on ARCH_HAS_BAREBOX_MEMORY_OFFSET
+	help
+	  Most boards should just leave this at the default zero and barebox
+	  will dynamically determine the offset, from the start of the initial
+	  memory bank in DRAM, at which the barebox runtime region begins.
+
+	  Memory below this offset is reserved as the OS load region, used for
+	  placement of the kernel, initrd and device tree before boot.
+
+	  barebox itself, the relocated binary, BSS, stack and malloc area
+	  all live at and above this offset and will not allocate into the
+	  OS load region.
+
+	  When set to zero, following heuristic will be used:
+
+	    - If the prebootloader reports 2GiB of initial memory or more,
+	      start the barebox runtime region at offset 1GiB from
+	      start of initial memory.
+
+	    - Otherwise, start the barebox runtimer region right in the
+	      middle of the initial memory region.
+
+          This heuristic should be suitable for most boards with modern DRAM
+	  sizes. If you run into problems with it, adapt this option, so
+          it is large enough to hold the biggest OS image you expect to boot,
+	  plus initramfs and DTB.
+
+	  Note that this affects only the split in the initial memory reported
+	  by the bootloader. Placement of final boot artifacts can happen
+	  outside of the malloc area and are not restricted to this initial
+	  memory or even the first SDRAM bank.
+
+	  If unsure, keep the default of 0x0.
+
 config SCRATCH_SIZE
 	hex
 	default 0x8000
diff --git a/common/memory.c b/common/memory.c
index bf927b6a30f3..e436707cf8da 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -56,6 +56,10 @@ void mem_malloc_init(void *start, void *end)
 
 static_assert(PAGE_ALIGNED(CONFIG_MALLOC_SIZE));
 
+#ifdef CONFIG_BAREBOX_MEMORY_OFFSET
+static_assert(PAGE_ALIGNED(CONFIG_BAREBOX_MEMORY_OFFSET));
+#endif
+
 static struct resource *barebox_res;
 static resource_size_t barebox_start;
 static resource_size_t barebox_size;
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index d477f7bbdbf7..1df7aec18739 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -36,6 +36,12 @@
 #define STACK_SIZE  CONFIG_STACK_SIZE
 #define SCRATCH_SIZE	CONFIG_SCRATCH_SIZE
 
+#ifndef __ASSEMBLY__
+
+#include <linux/pagemap.h>
+#include <linux/minmax.h>
+#include <linux/sizes.h>
+
 /*
  * This generates a useless load from the specified symbol
  * to ensure linker garbage collection doesn't delete it
@@ -43,4 +49,22 @@
 #define __keep_symbolref(sym)	\
 	__asm__ __volatile__("": :"r"(&sym) :)
 
+#ifdef CONFIG_BAREBOX_MEMORY_OFFSET
+static inline unsigned long barebox_malloc_base(unsigned long membase,
+						unsigned long memsize)
+ {
+	 unsigned long offset = CONFIG_BAREBOX_MEMORY_OFFSET;
+
+	 if (offset >= memsize)
+		 offset = 0;
+
+	 if (!offset)
+		 offset = memsize - min_t(unsigned long, memsize / 2, SZ_1G);
+
+	 return PAGE_ALIGN(membase + offset);
+}
+#endif
+
+#endif /* __ASSEMBLY__ */
+
 #endif /* __ASM_GENERIC_MEMORY_LAYOUT_H */
-- 
2.47.3



