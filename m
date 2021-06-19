Delivery-date: Sat, 19 Jun 2021 06:57:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2T-0004ei-RP
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2S-0002Gj-Gu
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsfvOW7wZIwJC2OhhTTakcH9vZWgvZmnBS6epAiEnpU=; b=OH/XJkfG6VEs3M
	XGEmvHkBUKQrD7gfI/kwjkkylXNrE+lCVul9MTc7peLNJPem257j0/EFGHEcNvYaOMtLbyqzGsDm3
	u2qC73K6v8bm6P9YU34Vr8WgYSknF03YJ3MBsogBpjk+3Vo6IfYHy8DfBuKE7/eQVNUYrEvqF8hYG
	gFiKqGec082LF1gaByeo8Ym5ilLAH/ECs8ezcRueZI61mgQm8yQxlUHM2DbrQZBrewdCgjseWb6Ck
	gvZ3cGLhNP9qE3QDA2ZB2407ftd98HFb6nHzWRf9J1x5gr4Dg/VIkhH0ts9BX0W/AErQUq9f6EmP+
	6WrbH9ALD9IbNO2UAuLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT10-00GKPp-Hj; Sat, 19 Jun 2021 04:55:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSx2-00GHrJ-9Q
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008M1-SX; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001Kd-Mq; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:30 +0200
Message-Id: <20210619045055.779-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215124_390612_AE1171FD 
X-CRM114-Status: GOOD (  15.98  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/29] RISC-V: cpuinfo: return some output for non-SBI
 systems as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If barebox managed to actually execute the cpuinfo command, it probably
means that it's assumption which instructon set is being used and
whether it runs in machine or supervisor mode is correct.

Add that output to cpuinfo, so it shows at least something for non-SBI
configurations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/sbi.h |  8 ++----
 arch/riscv/lib/cpuinfo.c     | 55 +++++++++++++++++++++++++-----------
 commands/Kconfig             |  4 +--
 3 files changed, 43 insertions(+), 24 deletions(-)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index ab1fc9a128e5..eb4018de382e 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -9,9 +9,7 @@
 
 #include <linux/types.h>
 
-#ifdef CONFIG_RISCV_SBI
 enum sbi_ext_id {
-#ifdef CONFIG_RISCV_SBI_V01
 	SBI_EXT_0_1_SET_TIMER = 0x0,
 	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
 	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
@@ -21,7 +19,7 @@ enum sbi_ext_id {
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
 	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
 	SBI_EXT_0_1_SHUTDOWN = 0x8,
-#endif
+
 	SBI_EXT_BASE = 0x10,
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
@@ -167,7 +165,5 @@ static inline unsigned long sbi_minor_version(void)
 }
 
 int sbi_err_map_linux_errno(int err);
-#else /* CONFIG_RISCV_SBI */
-static inline int sbi_remote_fence_i(const unsigned long *hart_mask) { return -1; }
-#endif /* CONFIG_RISCV_SBI */
+
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/lib/cpuinfo.c b/arch/riscv/lib/cpuinfo.c
index 21b99a990a1a..16305e6c4d96 100644
--- a/arch/riscv/lib/cpuinfo.c
+++ b/arch/riscv/lib/cpuinfo.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <command.h>
 #include <asm/sbi.h>
+#include <asm/system.h>
 
 static const char *implementations[] = {
 	[0] = "\"Berkeley Boot Loader (BBL)\" ",
@@ -12,34 +13,56 @@ static const char *implementations[] = {
 	[5] = "\"Diosix\" ",
 };
 
+static const char *modes[] = {
+	[RISCV_U_MODE] = "U",
+	[RISCV_S_MODE] = "S",
+	[RISCV_HS_MODE] = "HS",
+	[RISCV_M_MODE] = "M",
+};
+
 static int do_cpuinfo(int argc, char *argv[])
 {
 	const char *implementation = "";
+	enum riscv_mode mode;
 	unsigned long impid;
 
-	printf("SBI specification v%lu.%lu detected\n",
-	       sbi_major_version(), sbi_minor_version());
+	mode = riscv_mode() & RISCV_MODE_MASK;
+
+	printf("%s barebox for %s-Mode\n",
+	       IS_ENABLED(CONFIG_ARCH_RV64I) ? "RV64I" : "RV32I",
+	       modes[mode]);
+
+	switch (mode) {
+	case RISCV_S_MODE:
+		if (!IS_ENABLED(CONFIG_RISCV_SBI))
+			break;
+		printf("SBI specification v%lu.%lu detected\n",
+		       sbi_major_version(), sbi_minor_version());
 
-	if (sbi_spec_is_0_1())
-		return 0;
+		if (sbi_spec_is_0_1())
+			return 0;
 
-	impid = __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_ID);
-	if (impid < ARRAY_SIZE(implementations))
-		implementation = implementations[impid];
+		impid = __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_ID);
+		if (impid < ARRAY_SIZE(implementations))
+			implementation = implementations[impid];
 
-	printf("SBI implementation ID=0x%lx %sVersion=0x%lx\n",
-	       impid, implementation, __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION));
+		printf("SBI implementation ID=0x%lx %sVersion=0x%lx\n",
+		       impid, implementation, __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION));
 
-	printf("SBI Machine VENDORID=0x%lx ARCHID=0x%lx MIMPID=0x%lx\n",
-	       __sbi_base_ecall(SBI_EXT_BASE_GET_MVENDORID),
-	       __sbi_base_ecall(SBI_EXT_BASE_GET_MARCHID),
-	       __sbi_base_ecall(SBI_EXT_BASE_GET_MIMPID));
+		printf("SBI Machine VENDORID=0x%lx ARCHID=0x%lx MIMPID=0x%lx\n",
+		       __sbi_base_ecall(SBI_EXT_BASE_GET_MVENDORID),
+		       __sbi_base_ecall(SBI_EXT_BASE_GET_MARCHID),
+		       __sbi_base_ecall(SBI_EXT_BASE_GET_MIMPID));
+		break;
+	default:
+		break;
+	}
 
 	return 0;
 }
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-BAREBOX_CMD_DESC("show CPU information")
-BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_END
+	BAREBOX_CMD_DESC("show CPU information")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
diff --git a/commands/Kconfig b/commands/Kconfig
index 7bb36d6e417e..22375360885b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -47,9 +47,9 @@ config CMD_ARM_CPUINFO
 config CMD_RISCV_CPUINFO
 	bool "cpuinfo command"
 	default y
-	depends on RISCV_SBI
+	depends on RISCV
 	help
-	  Show SBI info about RISC-V CPU
+	  Show info about RISC-V CPU
 
 config CMD_DEVINFO
 	tristate
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

