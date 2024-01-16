Delivery-date: Tue, 16 Jan 2024 18:09:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw8-002FTp-2u
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw9-0007gI-Fc
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gM3uKLdjLrNOuw2+qEGYLJEJi5V02c9Gv7XDqziyaqA=; b=yf5VxWXZVgO+z3uXUsg5Yj1EAe
	ZaGFfgcbw6XB2GsLHv9Tta+hrzsiFkV67UQt8oLvByO2V8yAf+1O457PF9IZf7S9Hfi3EcttGy/Bx
	GIlJ8MAKpixW1PHqwWIMSYi2oY7YkODeUqJTKya7PFa1VFNZUP6I5RroEIspQiGGfZ4a6y8sVwmFM
	/ptVwxsT+d1Oc8YwzTOqp9KSpDMMLca9k3a/mZsLgvNlAkChb0i0HUSgdeQWkPERgO16Gb9LvIzpe
	4xLYrh9N9yALIXe2z6NRNHgHZhzASU0cLa6JIhqer7RkIvDN8BQbE+onK0kl1fins35hg5gE93Ueo
	I3eqaP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmvA-00CiIN-0o;
	Tue, 16 Jan 2024 17:08:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmux-00Ci4j-06
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=gM3uKLdjLrNOuw2+qEGYLJEJi5V02c9Gv7XDqziyaqA=; b=nAkGt64sP1no+3oPylSGHlHdxX
	4+khjJLmlBsG++IIq46rZfRJ2lq4q++DOdfzaP0VHp1FYpnM8wUESP90m4osSRRo4do8yAPppvpI9
	RV0rVSwRLQK2nC/J/jebQmKddqLNYdq0c7yOL5THA/KnoHKbR1CPZDjx4aT8es3LpM4a7UdW7VuzS
	U612mC7LyOldQCrzf3bcti9tHwxuiI02a0Ng6+vf9tuwov9IHZJUaLjBNKShO1b/bGYG7Nkqg4tXF
	8ImQSoEme3KhvpgKPsYizn1VrcV9SQkL2Oxx1uOnk2WiBdRIbgzahk8ZFy12POQynCQFCPyM45VtR
	Ni4faXGg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmup-00Ddwr-1O
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:08:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Ay
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:32 +0100
Message-Id: <20240116170738.209954-13-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170755_119921_858FA7CA 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 12/18] ARM64: mmu: add dynamic optee memory mapping support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the dynamic optee memory base address for the early mapping if
possible and fallback to the static mapping if the query failed.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c      | 14 ++++++++++++--
 arch/arm/mach-imx/esdctl.c |  4 ++++
 common/Makefile            |  2 +-
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 84f45bc2c3c1..27fd15ea1233 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -20,6 +20,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <linux/pagemap.h>
+#include <tee/optee.h>
 
 #include "mmu_64.h"
 
@@ -310,6 +311,7 @@ static void init_range(size_t total_level0_tables)
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
+	u64 optee_membase;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
@@ -326,8 +328,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	 * Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
 	 */
 	init_range(2);
-	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+
+	if (optee_get_membase(&optee_membase)) {
+		/* Fallback and place OP-TEE at the memory end region */
+		early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
+		early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+	} else {
+		early_remap_range(membase, memsize, MAP_CACHED);
+		early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
+	}
+
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	mmu_enable();
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index ac35a2de66f1..47c43d75ec75 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -29,6 +29,8 @@
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx9-regs.h>
+#include <mach/imx/scratch.h>
+#include <tee/optee.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -1004,6 +1006,8 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 
 static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 {
+	imx8m_init_scratch_space(buswidth, false);
+	optee_set_membase(imx8m_scratch_get_optee_hdr());
 	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
 			  imx8m_barebox_earlymem_size(buswidth), boarddata);
 }
diff --git a/common/Makefile b/common/Makefile
index 7fb864f61480..c31cbab9e48f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -80,7 +80,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
-pbl-$(CONFIG_PBL_OPTEE)		+= optee.o
+obj-pbl-$(CONFIG_PBL_OPTEE)	+= optee.o
 obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
 
-- 
2.39.2



