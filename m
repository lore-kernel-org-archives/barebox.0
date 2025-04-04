Delivery-date: Fri, 04 Apr 2025 17:59:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jSZ-008JH1-1J
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 17:59:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0jSY-0007Bm-Nx
	for lore@pengutronix.de; Fri, 04 Apr 2025 17:59:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b76SGUMxkzqUkbpudaeVcG35N3oGgVn5QciwJVM+gvY=; b=0LOdn1nRjyHZRgnzFq0/hGztJK
	VpykuhPNo90Gk+UloqVhnfOT8oP/cGPaBohR1n5BaN/mSwjs778Bv7g3V+eeZO6hwsR2746qMZ3X+
	d4d25NMtIb9f+65hjG1f8d1atJqis0vOGJ+8QgBfFXNchjV/7tswgzryk4g+CG9GrrvX2SS8V/9zV
	+JZLuLJ9RzPW4qXiFOlClWjcOIpdr2+XIpQXN54WRPgVkyatxUfvwULsiu63NhqEXmid7M64oOzMy
	RGbPSH5EHFy1jZ6TGij0+p+gChBcU56jxAF4C11anj1yDoV5+ToCnIS8H+5uMaNCrioNaEAP539Yx
	APAMtOQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jS2-0000000CEpH-32D0;
	Fri, 04 Apr 2025 15:59:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0jQm-0000000CEe4-3U8k
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 15:58:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jQl-0006z3-7A; Fri, 04 Apr 2025 17:58:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jQl-003I9F-05;
	Fri, 04 Apr 2025 17:58:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0jQk-00C1T9-31;
	Fri, 04 Apr 2025 17:58:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 17:58:05 +0200
Message-Id: <20250404155805.2865565-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_085808_868533_E02016E7 
X-CRM114-Status: GOOD (  14.95  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] banner: print out enabled sanitizers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KASAN and UBSAN can currently be detected only indirectly via their test
commands or in case of KASAN by observing the MMIO reservations.

Improve upon this by printing out their status on bootup if they are
enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c          |  2 +-
 common/version.c              | 12 ++++++++++++
 include/linux/kasan-enabled.h | 14 ++++++++++++++
 include/linux/kasan.h         |  1 +
 lib/kasan/generic.c           | 10 ++++++++++
 5 files changed, 38 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/kasan-enabled.h

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0022ea768b26..aa716a10c7b0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -118,7 +118,7 @@ EXPORT_SYMBOL_GPL(arm_mem_membase_get);
 
 static int barebox_memory_areas_init(void)
 {
-	if (IS_ENABLED(CONFIG_KASAN))
+	if (kasan_enabled())
 		request_sdram_region("kasan shadow", kasan_shadow_base,
 				     mem_malloc_start() - kasan_shadow_base);
 
diff --git a/common/version.c b/common/version.c
index 0cac5ee609e6..77bc0d3396fb 100644
--- a/common/version.c
+++ b/common/version.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
+#include <linux/kasan-enabled.h>
 
 const char version_string[] =
 	"barebox " UTS_RELEASE " " UTS_VERSION;
@@ -19,11 +20,22 @@ EXPORT_SYMBOL(buildsystem_version_string);
 #ifdef CONFIG_BANNER
 void barebox_banner (void)
 {
+	bool have_asan, have_ubsan;
+
 	printf("\n\n");
 	pr_info("%s\n", version_string);
 	if (strlen(buildsystem_version_string) > 0)
 		pr_info("Buildsystem version: %s\n", buildsystem_version_string);
 	printf("\n\n");
 	pr_info("Board: %s\n", barebox_get_model());
+
+	have_asan = kasan_enabled();
+	have_ubsan = IS_ENABLED(CONFIG_UBSAN);
+
+	if (have_asan || have_ubsan)
+		pr_info("Active sanitizers:%s%s%s\n",
+			have_asan && IS_ENABLED(CONFIG_KASAN) ? " K" : " ",
+			have_asan ? "ASAN" : "",
+			have_ubsan ? " UBSAN" : "");
 }
 #endif
diff --git a/include/linux/kasan-enabled.h b/include/linux/kasan-enabled.h
new file mode 100644
index 000000000000..890f6e844e1b
--- /dev/null
+++ b/include/linux/kasan-enabled.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KASAN_ENABLED_H
+#define _LINUX_KASAN_ENABLED_H
+
+#ifdef CONFIG_KASAN
+bool kasan_enabled(void);
+#else /* CONFIG_KASAN */
+static inline bool kasan_enabled(void)
+{
+	return IS_ENABLED(CONFIG_ASAN);
+}
+#endif /* CONFIG_KASAN */
+
+#endif /* LINUX_KASAN_ENABLED_H */
diff --git a/include/linux/kasan.h b/include/linux/kasan.h
index 8afdab7c9d4b..fa5ee45d4cf3 100644
--- a/include/linux/kasan.h
+++ b/include/linux/kasan.h
@@ -3,6 +3,7 @@
 #define _LINUX_KASAN_H
 
 #include <linux/types.h>
+#include <linux/kasan-enabled.h>
 
 /*
  * On 64bit architectures tlsf aligns all allocations to a 64bit
diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
index 2432f9274401..66eebac15600 100644
--- a/lib/kasan/generic.c
+++ b/lib/kasan/generic.c
@@ -14,6 +14,8 @@
  *
  */
 
+#define pr_fmt(fmt) "kasan: generic: " fmt
+
 #include <common.h>
 
 #include "kasan.h"
@@ -149,6 +151,11 @@ static __always_inline bool memory_is_poisoned(unsigned long addr, size_t size)
 
 static bool kasan_initialized;
 
+bool kasan_enabled(void)
+{
+	return kasan_initialized;
+}
+
 static __always_inline bool check_memory_region_inline(unsigned long addr,
 						size_t size, bool write,
 						unsigned long ret_ip)
@@ -223,6 +230,9 @@ void kasan_init(unsigned long membase, unsigned long memsize,
 
 	kasan_unpoison_shadow((void *)membase, memsize);
 	kasan_initialized = true;
+
+	pr_debug("initialized for 0x%08lx-0x%lx with shadow at 0x%08lx\n",
+		 kasan_shadow_start, kasan_shadowed_end, kasan_shadow_base);
 }
 
 bool __no_sanitize_address check_memory_region(unsigned long addr,
-- 
2.39.5



