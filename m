Delivery-date: Mon, 05 Jan 2026 12:32:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcioc-001VGs-1t
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vciob-00077N-Jk
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:32:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TEBLhMmD02n44dRTEoIjsyzT/CwpJE2lSQD65F69SxQ=; b=IgSdPSzYFVfLO5HaKnbX+fbXNF
	Kcuucwn0K64vxfePaAbwp7kDyvqAKukD0ehhD9OTypPyHB5zHNQV1kSXsxLdgadFtOhhxEG2Sqdu3
	nAZfeykUr7pdMVqwQKcdUzO7DBt+scbkCc7sRKBzPhcwXamlCuAPzQ954i0wGT9zuK5CIWOiq43Ka
	/GMhWu24IXNKvkz/Y2kciBPqFoh5jXeMipOGjjLSFf4G94MyqTIIDP79zcVcFrGGCZOasIhhk48ue
	qyMoJBg8gRD39+jV1tpF1X11hw2rCcz8wWvuGP/ORRbxiVuws5+pwgbKpRXw3fvYv8ToEbjQF4rss
	el08CUqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcioA-0000000BCEP-46W6;
	Mon, 05 Jan 2026 11:31:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcio7-0000000BCB4-2L5C
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:31:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio6-0006jf-3m; Mon, 05 Jan 2026 12:31:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcio5-0099zb-2x;
	Mon, 05 Jan 2026 12:31:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-14Ol;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-15-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=3304;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=scfJFYms+6lvjXMUVGY8svKOZAHFvELvKHAyCbT+FKk=;
 b=RWABGloR2Pfrz8cW0mQUq6b27kT7vD6iN3xhGrIcfsE64KLenepyhID1zO/ztHwEUsGp0zBuk
 7MhYvVbLu7ZBBfKubIFeltYOPt0LHFfqeqgtCRKAAGeW9pXyVvRkOpK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_033131_621915_82AC6AAF 
X-CRM114-Status: GOOD (  12.33  )
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
Subject: [PATCH 15/19] ARM: link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of linking the raw binary barebox proper image into the PBL link
the ELF image into the PBL. With this barebox proper starts with a properly
linked and fully initialized C environment, so the calls to
relocate_to_adr() and setup_c() can be removed from barebox proper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig          |  2 ++
 arch/arm/cpu/start.c      |  4 ----
 arch/arm/cpu/uncompress.c | 32 ++++++++++++++++++++++++++------
 3 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index afa6de3cd0b145e42755e3ca2d7a13c8a69ff1d3..60975083b32f3127f982c526c6cf30ffe3e45924 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -17,6 +17,8 @@ config ARM
 	select HAVE_ARCH_BOOTM_OFTREE
 	select HW_HAS_PCI
 	select ARCH_HAS_DMA_WRITE_COMBINE
+	select ELF
+	select PBL_IMAGE_ELF
 	default y
 
 config ARCH_LINUX_NAME
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f7d4507e71588ba5e241b24b952d55e2a4b0f794..71a12abdd0941889617e6b63063304d0e4522c81 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -139,10 +139,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	if (IS_ENABLED(CONFIG_CPU_V7))
 		armv7_hyp_install();
 
-	relocate_to_adr(barebox_base);
-
-	setup_c();
-
 	barrier();
 
 	pbl_barebox_break();
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b9fc1d04db96e77c8fcd7fd1930798ea1d9294d7..ccc3c5ae3ba60e990ee73715a49a316e2a14c44e 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -20,6 +20,7 @@
 #include <asm/mmu.h>
 #include <asm/unaligned.h>
 #include <compressed-dtb.h>
+#include <elf.h>
 
 #include <debug_ll.h>
 
@@ -85,21 +86,40 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
 		set_cr(get_cr() | CR_C);
 
-	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
+	pr_debug("uncompressing barebox ELF at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
-	handoff_data_move(handoff_data);
+	pr_debug("relocating ELF in place\n");
 
-	sync_caches_for_execution();
+	struct elf_image elf;
+	int ret;
+
+	ret = elf_open_binary_into(&elf, (void *)barebox_base);
+	if (ret) {
+		pr_err("Failed to open ELF binary: %d\n", ret);
+		hang();
+	}
+
+	ret = elf_load_inplace(&elf);
+	if (ret) {
+		pr_err("Failed to relocate ELF: %d\n", ret);
+		hang();
+	}
+
+	pr_debug("ELF entry point: 0x%llx\n", elf.entry);
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(barebox_base + 1);
+		barebox = (void *)(unsigned long)(elf.entry | 1);
 	else
-		barebox = (void *)barebox_base;
+		barebox = (void *)(unsigned long)elf.entry;
+
+	handoff_data_move(handoff_data);
+
+	sync_caches_for_execution();
 
-	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
+	pr_debug("jumping to ELF entry point at 0x%p\n", barebox);
 
 	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();

-- 
2.47.3



