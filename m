Delivery-date: Wed, 11 Jan 2023 16:56:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFdT5-008x8e-Q2
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 16:56:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFdS1-0005v4-Pd
	for lore@pengutronix.de; Wed, 11 Jan 2023 16:55:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FdLtKKBvrHzARUvYAJvzFdCG7bxZIcy3UG3ItztLSH4=; b=ggWnsFk0dUWQ6x2aoisBrUe3Zj
	z4tV1n6/NO/BeLrN8R2I537wTpaBPo+ha41vYRkZqX/FbO9IopoissN7C1G/Av19PRnPYh++UJzks
	aVMvDDn4xWu6wom7rJ6bfNtcMecAFtyw+c3+QxqSlC17PXc2DmH76Y4XegBsm1L6EbPZd6PRyPOwI
	KbTLKS0JcuMAdqq1PRImaaqWAlI1lqVYEHe2g9tdnEfTPYGtgJdbY8eNvyGLvd84CzXEit1q3Ycz9
	GSBCJQXEGkQZtpT9PsG586TyPyRpa3qQ3laU0Yponr6hzi5l/PSyPtMO3FfLAV+fNnueMVp6uZ8Ms
	lst1GWTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFd2H-00BzgQ-6j; Wed, 11 Jan 2023 15:29:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFd2C-00BzfN-6B
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 15:29:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd22-0002jJ-Ig; Wed, 11 Jan 2023 16:28:50 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd21-005KmF-VJ; Wed, 11 Jan 2023 16:28:49 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFd20-006Uyi-W8; Wed, 11 Jan 2023 16:28:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 16:28:38 +0100
Message-Id: <20230111152836.1548942-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111152836.1548942-1-a.fatoum@pengutronix.de>
References: <20230111152836.1548942-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_072900_246455_B809F5A4 
X-CRM114-Status: GOOD (  20.31  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: i.MX8M: bootrom: access OCRAM directly if running in EL3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's straight-forward to hack barebox PBL to skip ATF installation
and to start barebox proper in EL3. This can be useful for debugging
and may in future be just a Kconfig option like we now have with
Rockchip.

In such a configuration, we don't need to copy the ROM log out of OCRAM,
because there's no ATF installed there that might overwrite it.
Therefore, just directly access the event log pointer in BootROM if
running in EL3. As 0x9e0 is in the first zero page, we use the function
in zero_page.h to temporarily disable traps in the zero page. We don't
need to do that in PBL though as even early MMU will be enabled later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - guard against NULL pointer dereference in imx8m_save_bootrom_log
    (Sascha)
  - move EL2/3 specifics into imx8m_get_bootrom_log and out of
    bootrom-cmd.c (Sascha)
---
 arch/arm/mach-imx/Makefile              |  4 +--
 arch/arm/mach-imx/bootrom-cmd.c         |  9 ++---
 arch/arm/mach-imx/include/mach/romapi.h |  2 ++
 arch/arm/mach-imx/romapi.c              | 46 ++++++++++++++++++++-----
 include/zero_page.h                     |  2 +-
 5 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index cc834fed7be7..5d70e79b57f1 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -18,8 +18,8 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
-lwl-$(CONFIG_ARCH_IMX8M) += atf.o romapi.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
+lwl-$(CONFIG_ARCH_IMX8M) += atf.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += romapi.o tzasc.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 63197e02ae2c..35e52b0f92aa 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -7,8 +7,7 @@
 #include <linux/bitops.h>
 #include <linux/bitfield.h>
 #include <mach/imx8m-regs.h>
-#include <mach/xload.h>
-#include <asm/barebox-arm.h>
+#include <mach/romapi.h>
 
 /* i.MX7 and later ID field is swapped compared to i.MX6 */
 #define ROM_EVENT_FORMAT_V0_RES	GENMASK(31, 24)
@@ -202,10 +201,8 @@ static int do_bootrom(int argc, char *argv[])
 		}
 	}
 
-	if (!rom_log.addr) {
-		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
-		rom_log.ptr = scratch->bootrom_log;
-	}
+	if (!rom_log.addr)
+		rom_log.ptr = imx8m_get_bootrom_log();
 
 	if (log)
 		return imx8m_bootrom_decode_log(rom_log.ptr);
diff --git a/arch/arm/mach-imx/include/mach/romapi.h b/arch/arm/mach-imx/include/mach/romapi.h
index d22ba7259dd0..2cb8e37ce9b7 100644
--- a/arch/arm/mach-imx/include/mach/romapi.h
+++ b/arch/arm/mach-imx/include/mach/romapi.h
@@ -3,6 +3,7 @@
 #define __MACH_IMX_ROMAPI_H
 
 #include <mach/xload.h>
+#include <linux/types.h>
 
 struct rom_api {
 	u16 ver;
@@ -39,6 +40,7 @@ int imx8mn_bootrom_load_image(void);
 
 /* only call after DRAM has been configured */
 void imx8m_save_bootrom_log(void *dst);
+const u32 *imx8m_get_bootrom_log(void);
 
 #define imx8mq_save_bootrom_log() imx8m_save_bootrom_log(imx8mq_scratch_space())
 #define imx8mm_save_bootrom_log() imx8m_save_bootrom_log(imx8mm_scratch_space())
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 5885fb698ecd..0936c855fd03 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -7,6 +7,10 @@
 #include <mach/romapi.h>
 #include <mach/atf.h>
 #include <mach/imx8m-regs.h>
+#include <mach/xload.h>
+#include <asm/barebox-arm.h>
+#include <zero_page.h>
+#include <pbl.h>
 
 static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
 {
@@ -50,23 +54,49 @@ int imx8mn_bootrom_load_image(void)
 	return imx8mp_bootrom_load_image();
 }
 
+const u32 *imx8m_get_bootrom_log(void)
+{
+	if (current_el() == 3) {
+		ulong rom_log_addr;
+
+		zero_page_access();
+		rom_log_addr = readl(IOMEM(0x9e0));
+		zero_page_faulting();
+
+		if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
+		    rom_log_addr >= MX8M_OCRAM_BASE_ADDR + MX8M_OCRAM_MAX_SIZE ||
+		    rom_log_addr & 0x3) {
+			pr_warn("No BootROM log found at address 0x%08lx\n", rom_log_addr);
+			return NULL;
+		}
+
+		return (u32 *)rom_log_addr;
+	}
+
+	if (!IN_PBL) {
+		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
+		return scratch->bootrom_log;
+	}
+
+	return NULL;
+}
+
 void imx8m_save_bootrom_log(void *dest)
 {
-	ulong rom_log_addr;
+	const u32 *rom_log;
 
 	if (!IS_ENABLED(CONFIG_IMX_SAVE_BOOTROM_LOG)) {
 		pr_debug("skipping bootrom log saving\n");
 		return;
 	}
 
-	rom_log_addr = *(u32 *)0x9e0;
-
-	if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
-	    rom_log_addr >= MX8M_OCRAM_BASE_ADDR + MX8M_OCRAM_MAX_SIZE ||
-	    rom_log_addr & 0x3) {
-		pr_warn("No BootROM log found at address 0x%08lx\n", rom_log_addr);
+	rom_log = imx8m_get_bootrom_log();
+	if (!rom_log) {
+		pr_warn("bootrom log not found\n");
 		return;
 	}
 
-	memcpy(dest, (u32 *)rom_log_addr, 128 * sizeof(u32));
+	pr_debug("Saving bootrom log to 0x%p\n", dest);
+
+	memcpy(dest, rom_log, 128 * sizeof(u32));
 }
diff --git a/include/zero_page.h b/include/zero_page.h
index 519e65be7628..26a12246f155 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -4,7 +4,7 @@
 
 #include <common.h>
 
-#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU
+#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU && !defined __PBL__
 
 /*
  * zero_page_faulting - fault when accessing the zero page
-- 
2.30.2



