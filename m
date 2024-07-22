Delivery-date: Mon, 22 Jul 2024 19:06:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUt-001sId-1w
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUs-0002o2-Sn
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:06:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LBMAmcx9j2FaOJfiYIgW1/MGCmG+L+RJe+8tMMpdXzE=; b=M/hMyW30o5eBPi9M81BYhnHFhG
	IVFM1qbcQDCi573jH276AJhBUNs1cqgQRyvRfbGHEHmPUwy1GwPtgkcz1+t6rSLIEnMmmoSpSVBz5
	y+1jv5FhmJoEz34xCihIuOFNni6eABDFPydN44Kih1rNQgNrv93gsm3D/CfR/xHd0d+pvyc4DKlF+
	q+CwhaSLiIFxwfozAt2X8oVLf/rw9/zJYf87hzKZ/weQoAEw8yw/7n4suVZS7mw/K/E317eoDkF42
	WG323hkU3rPhmtWoznm6PSRL1EJzHRh9lW0IsMaBT1NjeZE82eSMI4ZN0U5uiiRotZ9B6/UEtCva6
	mnjtip9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUS-0000000A9B7-3EEQ;
	Mon, 22 Jul 2024 17:06:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUQ-0000000A9A9-0dku
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUO-0002ZX-Rs; Mon, 22 Jul 2024 19:06:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUO-001Qkn-F1; Mon, 22 Jul 2024 19:06:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUO-00GE2F-1D;
	Mon, 22 Jul 2024 19:06:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:18 +0200
Message-Id: <20240722170618.3867187-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100622_213825_DA284F8A 
X-CRM114-Status: GOOD (  16.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: cpuinfo: add option to print early memory map
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While the iomem command is useful for visualizing the memory map, it has
some drawbacks:

  - It is only usable once barebox init has reached the shell
  - Not all its entries reflect the early barebox memory map

Address by teaching the cpuinfo command a new -m option that prints the
early memory map and print it by default if CONFIG_DEBUG_PBL is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/common.c              | 29 +++++++++++++++++++++++++++++
 arch/arm/cpu/cpuinfo.c             | 12 ++++++++++--
 arch/arm/cpu/uncompress.c          |  4 ++++
 arch/arm/include/asm/barebox-arm.h |  1 +
 4 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index e9118b450d3f..339ef2db2534 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -156,3 +156,32 @@ int boot_cpu_mode(void)
 {
 	return __boot_cpu_mode;
 }
+
+void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base)
+{
+	printf("endmem                = 0x%08lx\n", endmem);
+	if (OPTEE_SIZE)
+		printf("arm_mem_optee         = 0x%08lx+0x%08x\n", arm_mem_optee(endmem),
+		       OPTEE_SIZE);
+	printf("arm_mem_scratch       = 0x%08lx+0x%08lx\n",
+	       arm_mem_scratch(endmem),
+	       arm_mem_barebox_image_end(endmem) - arm_mem_scratch(endmem));
+	printf("arm_mem_stack         = 0x%08lx+0x%08x\n",
+	       arm_mem_stack(endmem), STACK_SIZE);
+	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		printf("arm_mem_guard_page    = 0x%08lx+0x%08x\n",
+		       arm_mem_guard_page(endmem), PAGE_SIZE);
+	printf("arm_mem_ttb           = 0x%08lx+0x%08x\n",
+	       arm_mem_ttb(endmem), ARM_EARLY_PAGETABLE_SIZE);
+#ifdef CONFIG_FS_PSTORE_RAMOOPS
+	printf("arm_mem_ramoops       = 0x%08lx+0x%08x\n",
+	       arm_mem_ramoops(endmem), CONFIG_FS_PSTORE_RAMOOPS_SIZE);
+#endif
+	printf("arm_mem_barebox_image = 0x%08lx+0x%08lx\n",
+	       barebox_base, arm_mem_barebox_image_end(endmem) - barebox_base);
+	printf("arm_mem_early_malloc  = 0x%08lx+0x%08x\n",
+	       barebox_base - ARM_MEM_EARLY_MALLOC_SIZE, ARM_MEM_EARLY_MALLOC_SIZE);
+	printf("membase               = 0x%08lx+0x%08lx\n",
+	       membase, endmem - membase);
+}
+
diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index ce5f0109755a..7dca57248b69 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -7,7 +7,9 @@
 #include <getopt.h>
 #include <command.h>
 #include <complete.h>
+#include <memory.h>
 #include <asm/system.h>
+#include <asm/barebox-arm.h>
 
 #define CPU_ARCH_UNKNOWN	0
 #define CPU_ARCH_ARMv3		1
@@ -54,8 +56,13 @@ static int do_cpuinfo(int argc, char *argv[])
 	int opt, i;
 	int cpu_arch;
 
-	while ((opt = getopt(argc, argv, "s")) > 0) {
+	while ((opt = getopt(argc, argv, "sm")) > 0) {
 		switch (opt) {
+		case 'm':
+			print_pbl_mem_layout(arm_mem_membase_get(),
+					     arm_mem_endmem_get(),
+					     mem_malloc_end() + 1);
+			return 0;
 		case 's':
 			if (!IS_ENABLED(CONFIG_ARCH_HAS_STACK_DUMP))
 				return -ENOSYS;
@@ -277,12 +284,13 @@ static int do_cpuinfo(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(cpuinfo)
 BAREBOX_CMD_HELP_TEXT("Shows misc info about CPU")
 BAREBOX_CMD_HELP_OPT ("-s", "print call stack info (if supported)")
+BAREBOX_CMD_HELP_OPT ("-m", "print PBL memory layout")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	BAREBOX_CMD_DESC("show info about CPU")
-	BAREBOX_CMD_OPTS("[-s]")
+	BAREBOX_CMD_OPTS("[-sm]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 	BAREBOX_CMD_HELP(cmd_cpuinfo_help)
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index daacd2286698..0d9fa2c879c9 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -92,6 +92,10 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	free_mem_ptr = barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
 	free_mem_end_ptr = barebox_base;
 
+#ifdef DEBUG
+	print_pbl_mem_layout(membase, memsize, barebox_base);
+#endif
+
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 6071c6435535..7d35e88c8123 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -91,6 +91,7 @@ void *barebox_arm_boot_dtb(void);
  *                                   ↓
  *  ------------------------ arm_mem_early_malloc ----------------------
  */
+void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base);
 
 static inline unsigned long arm_mem_optee(unsigned long endmem)
 {
-- 
2.39.2



