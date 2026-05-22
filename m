Delivery-date: Fri, 22 May 2026 13:00:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbt-002Zse-11
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 13:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNbr-0002HJ-DQ
	for lore@pengutronix.de; Fri, 22 May 2026 13:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0Y+Iq4tMTd1O6qy75FFQ3EyuguuQeVO+ZOnR82imEA=; b=Mf+I/3xoX1gr22YeQflSmTym7D
	zrNcy76ICtoqgOguZTBOJKjiuZLlCbfi1dmmq8rXzAO+zlC12f7xFQz3M8Ra+SuEW3nU/KwlAht/Z
	vSA9hZbRlJ5FjN4Uk/XHnsYawAIx5ucvPFHsRMLKcXUdQ/upLgRlYLgM8RSjcbvcHyOxtA5T63iMd
	b5Ozn6jOghiFbKS+m4/FQo0++iJg2OW5Xfc+oOlJy0h+RsQaJiq7ntKGxxjHOFWmpg64HCrrrrc7q
	A0T64TmfMnZiXf1v6ul1epYbVUWGqVN/xD03WoKKlFkXYyPfJKnpSW1OSDGertQipjXjXT5eIZKCM
	2hLjDBwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNak-0000000AZRR-2Lmy;
	Fri, 22 May 2026 10:58:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNah-0000000AZOx-2s9k
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:58:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNag-0001uD-3i; Fri, 22 May 2026 12:58:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-001Fn8-1a;
	Fri, 22 May 2026 12:58:54 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQNaf-0000000BFtq-43lX;
	Fri, 22 May 2026 12:58:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 12:53:09 +0200
Message-ID: <20260522105852.2681680-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
References: <20260522105852.2681680-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_035855_722642_FA30CB28 
X-CRM114-Status: GOOD (  19.71  )
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
Subject: [PATCH master 3/6] arch: introduce CONFIG_MALLOC_OFFSET
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

CONFIG_MALLOC_OFFSET simplifies calculation by starting the malloc area
at the specified offset from end of RAM.

Boards that used to set CONFIG_MALLOC_SIZE will need to set the new
CONFIG_MALLOC_OFFSET to their value of CONFIG_MALLOC_SIZE + the area
barebox occupies at end of initial memory.

For all other boards, they can just keep the default of
CONFIG_MALLOC_OFFSET=0 and barebox will start the malloc area at half of
RAM or 1G before end, which ever is smaller.

This computation is independent of barebox size and can thus be used in
early PBL as well in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig                        | 14 +++++++++++
 common/Kconfig                      | 36 +++++++++++++++++++++++++++++
 include/asm-generic/memory_layout.h | 20 ++++++++++++++++
 3 files changed, 70 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 23e65d58d52b..bb46839a2938 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -98,6 +98,20 @@ config ARCH_HAS_MALLOC_SIZE
 	  This is selected by architectures, where CONFIG_MALLOC_SIZE
 	  can be used to specify an exact size of the malloc area.
 
+	  Eventually, this should only be selected by sandbox, with
+	  everyone else switched over to ARCH_HAS_MALLOC_OFFSET.
+
+config ARCH_HAS_MALLOC_OFFSET
+	bool
+	help
+	  This is selected by architectures, where CONFIG_MALLOC_OFFSET
+	  can be used to specify the start offset of the malloc region
+	  with respect to the end of the initial memory.
+
+	  As this offset contains also the region reserved for barebox,
+	  it greatly simplifies memory layout calculation and allows
+	  to reserve the malloc region very early on.
+
 config HAVE_EFFICIENT_UNALIGNED_ACCESS
 	bool
 
diff --git a/common/Kconfig b/common/Kconfig
index 5ba4530d3f9b..b957965125ae 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -295,6 +295,42 @@ config MALLOC_SIZE
 	default 0
 	prompt "malloc area size" if ARCH_HAS_MALLOC_SIZE
 
+config MALLOC_OFFSET
+	hex
+	default 0
+	prompt "relative malloc base offset (optional)"
+	depends on ARCH_HAS_MALLOC_OFFSET
+	help
+	  Most boards should just leave this at the default zero and barebox
+	  will dynamically determine the start of its eventual malloc area.
+	  The currently employed heuristic is:
+
+	    - if the prebootloader reports 2GiB of initial memory or more,
+	      start the malloc area at offset 1GiB from initial memory end.
+
+	    - otherwise, start the malloc area at middle of initial memory
+
+	  The malloc area is used for dynamic allocations by barebox, e.g.
+	  to uncompress a kernel. The placement of final boot artifacts happens
+	  outside of the malloc area and is not restricted to the initial
+	  memory reported by the prebootloader.
+
+	  As this heuristic may not be suitable for devices with tight memory
+	  constraints, setting a non-zero value here allows customizing the
+	  offset used to start the malloc area.
+
+	  The MALLOC_OFFSET is calculated from end of initial memory to start
+	  of the malloc area and as such, it also contains the region allocated
+	  for barebox itself. This inclusion of the barebox area differentiates
+	  this option from non-zero CONFIG_MALLOC_SIZE, but in return allows
+	  barebox to compute the start of the malloc area very early before it
+	  can know how much space barebox proper will eventually occupy.
+
+	  The iomem command can be used to determine at runtime how much space
+	  barebox requires for itself.
+
+	  If unsure, keep the default of 0x0.
+
 config SCRATCH_SIZE
 	hex
 	default 0x8000
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index b5a0306975be..2c6daf9cb2c7 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -33,6 +33,11 @@
 #define STACK_SIZE  CONFIG_STACK_SIZE
 #define SCRATCH_SIZE	CONFIG_SCRATCH_SIZE
 
+#ifndef __ASSEMBLY__
+
+#include <linux/minmax.h>
+#include <linux/sizes.h>
+
 /*
  * This generates a useless load from the specified symbol
  * to ensure linker garbage collection doesn't delete it
@@ -40,4 +45,19 @@
 #define __keep_symbolref(sym)	\
 	__asm__ __volatile__("": :"r"(&sym) :)
 
+#ifdef CONFIG_MALLOC_OFFSET
+static inline unsigned long barebox_malloc_base(unsigned long membase,
+						unsigned long memsize)
+ {
+	 unsigned long offset = CONFIG_MALLOC_OFFSET;
+
+	 if (!offset)
+		 offset = min_t(unsigned long, memsize / 2, SZ_1G);
+
+	 return max_t(unsigned long, membase + memsize - offset, membase);
+}
+#endif
+
+#endif /* __ASSEMBLY__ */
+
 #endif /* __ASM_GENERIC_MEMORY_LAYOUT_H */
-- 
2.47.3



