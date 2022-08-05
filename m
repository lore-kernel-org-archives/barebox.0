Delivery-date: Fri, 05 Aug 2022 09:44:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs02-00CFTe-Ab
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 09:44:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs03-0006FH-3z
	for lore@pengutronix.de; Fri, 05 Aug 2022 09:44:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A17nBES0bKzozQJn7S791ED44iAEpvYSgEgd5d1viM0=; b=RhmwPlaTiXJiFYDCDvzjB3eWFE
	HBQ+3L9mwVpYVfu6cMF2acyj8UAPDct7SKzvDjvoKXS1xKkxZLmOIlwX9+H+eoDWb2OGXd0FGhSf4
	J6Uwy8bb1ZB8FXVj7i9n5Demy/USQlNPoy9EhO2Wny5pwGhOEzJjEH5ZSsT8QNPFsSWJeqV9QgIfl
	XiowDMmxtUP4xSnfZ0779KNCRINcsm/ZQZh06h1WlIKf2+lmLyxcyQcNxetpfzqKMGulyQKlUKhgM
	qaT5AiG0rJ/F1mjYNKnyIaA7UDK9VRYkwRa1UO2vq0eE5SHVYyA95+5E91vC4L1FPJvCr9nzF+Mg4
	AHL8XjJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryo-00CxiW-6d; Fri, 05 Aug 2022 07:42:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryj-00CxgG-5S
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 07:42:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryh-00064g-TJ; Fri, 05 Aug 2022 09:42:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJrye-001qki-TQ; Fri, 05 Aug 2022 09:42:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryg-004pBW-I3; Fri, 05 Aug 2022 09:42:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 09:42:36 +0200
Message-Id: <20220805074237.1148255-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
References: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_004241_233329_9A0412CF 
X-CRM114-Status: GOOD (  14.55  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: asm: factor relocation related functions in asm/reloc.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like done for RISC-V, move declaration of the relocation functions
into asm/reloc.h

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 29 +--------------------
 arch/arm/include/asm/reloc.h       | 42 ++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/include/asm/reloc.h

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8795c89d515b..d901cb10013d 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -20,6 +20,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/common.h>
 #include <asm/sections.h>
+#include <asm/reloc.h>
 
 /*
  * We have a 4GiB address space split into 1MiB sections, with each
@@ -27,34 +28,6 @@
  */
 #define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
 
-unsigned long get_runtime_offset(void);
-
-/* global_variable_offset() - Access global variables when not running at link address
- *
- * Get the offset of global variables when not running at the address we are
- * linked at.
- */
-static inline unsigned long global_variable_offset(void)
-{
-#ifdef CONFIG_CPU_V8
-	unsigned long text;
-
-	__asm__ __volatile__(
-		"adr    %0, _text\n"
-		: "=r" (text)
-		:
-		: "memory");
-	return text - (unsigned long)_text;
-#else
-	return get_runtime_offset();
-#endif
-}
-
-void setup_c(void);
-void pbl_barebox_break(void);
-void relocate_to_current_adr(void);
-void relocate_to_adr(unsigned long target);
-void relocate_to_adr_full(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
 struct barebox_arm_boarddata {
diff --git a/arch/arm/include/asm/reloc.h b/arch/arm/include/asm/reloc.h
new file mode 100644
index 000000000000..0002c96c014c
--- /dev/null
+++ b/arch/arm/include/asm/reloc.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ASM_RELOC_H_
+#define _ASM_RELOC_H_
+
+#include <asm/sections.h>
+
+unsigned long get_runtime_offset(void);
+
+/* global_variable_offset() - Access global variables when not running at link address
+ *
+ * Get the offset of global variables when not running at the address we are
+ * linked at.
+ */
+static inline unsigned long global_variable_offset(void)
+{
+#ifdef CONFIG_CPU_V8
+	unsigned long text;
+
+	__asm__ __volatile__(
+		"adr    %0, _text\n"
+		: "=r" (text)
+		:
+		: "memory");
+	return text - (unsigned long)_text;
+#else
+	return get_runtime_offset();
+#endif
+}
+#define global_variable_offset() global_variable_offset()
+
+void relocate_to_current_adr(void);
+void relocate_to_adr(unsigned long target);
+void relocate_to_adr_full(unsigned long target);
+
+void pbl_barebox_break(void);
+
+void setup_c(void);
+
+#include <asm-generic/reloc.h>
+
+#endif
-- 
2.30.2



