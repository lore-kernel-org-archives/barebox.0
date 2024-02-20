Delivery-date: Tue, 20 Feb 2024 10:32:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTu-00FqiJ-0B
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTm-0002ih-J5
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v+WbU+rKxJj5g9y/5Zcw88k8/5QVftm03tfL9gUymBA=; b=yX8XSqaz2ZQFjAKt3TyeSxpeAU
	5GJUZaWAmoppRtsxLzA2dmtp38s+ranyce0xhtHt2ipCqL2gffBy1o33PdrnmQDS+LfYezHdaouOv
	bw6Cwh8ejAz6/hm7cjyl0FMqcjmugyQjgX8hv6HoXvrlPjrB4+85Xw7NemSflwq1Oe5NvKrb0XCEi
	Dlvh0L7K/OJF7ISWuJuA3xEDq3ph0qvBzews/8PkVRONqC3DIqh86qGrELvtAPK37xtLDaQ8BYdV0
	SuI2jpkbM0VU9PDSuTm2KgNq3OlUh2PHyoghSG9Q/BjOYmTptkS66jz/leod6YHQMqdl0d7gmdIJ3
	9iPUXPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT7-0000000Dztb-0use;
	Tue, 20 Feb 2024 09:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000Dzo7-04fz
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002F2-N1; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001oht-6x; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-0P;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:49 +0100
Message-Id: <20240220093100.1539120-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_169814_8A1049C8 
X-CRM114-Status: GOOD (  12.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 03/14] ARM: replace ENTRY_FUNCTION_HEAD with ENTRY_FUNCTION_WITHSTACK_HEAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow SoC-specific entry functions that don't replicate the code in
ENTRY_FUNCTION, we provide a helper macro that support specifying
a custom HEAD, but only on arm32. Make this macro private by prefixing
with __ and implement the superset ENTRY_FUNCTION_WITHSTACK_HEAD for
both arm32 and arm64 that should be used instead.

Eventually, we will want to switch away from naked functions on arm32,
like we did on arm64 and then we could use the same implementation for
both platforms (and support clang on arm32!), but till then, this seems
the least ugly way to go about it.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h    | 20 ++++++++++++++------
 include/mach/at91/barebox-arm.h       |  2 +-
 include/mach/mvebu/barebox-arm-head.h |  2 +-
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 382fa8505a66..361edcf37eef 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -165,7 +165,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 
 void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 
-#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+#define ENTRY_FUNCTION_WITHSTACK_HEAD(name, stack_top, head, arg0, arg1, arg2)	\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
 	static void __##name(ulong, ulong, ulong);			\
@@ -175,20 +175,24 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 		{							\
 			static __section(.pbl_board_stack_top_##name)	\
 				const ulong __stack_top = (stack_top);	\
-			__keep_symbolref(__barebox_arm64_head);		\
+			__keep_symbolref(head);				\
 			__keep_symbolref(__stack_top);			\
 			__##name(r0, r1, r2);				\
 		}							\
 		static void noinline __##name				\
 			(ulong arg0, ulong arg1, ulong arg2)
 
+#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+	ENTRY_FUNCTION_WITHSTACK_HEAD(name, stack_top,			\
+			      __barebox_arm64_head, arg0, arg1, arg2)
+
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	ENTRY_FUNCTION_WITHSTACK(name, 0, arg0, arg1, arg2)
 
 #else
-#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+#define ENTRY_FUNCTION_WITHSTACK_HEAD(name, stack_top, head, arg0, arg1, arg2)	\
 	static void ____##name(ulong, ulong, ulong);			\
-	ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
+	__ENTRY_FUNCTION_HEAD(name, head, arg0, arg1, arg2)		\
 	{								\
 		if (stack_top)						\
 			arm_setup_stack(stack_top);			\
@@ -197,7 +201,7 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 	static void noinline ____##name					\
 		(ulong arg0, ulong arg1, ulong arg2)
 
-#define ENTRY_FUNCTION_HEAD(name, head, arg0, arg1, arg2)		\
+#define __ENTRY_FUNCTION_HEAD(name, head, arg0, arg1, arg2)		\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
 	static void __##name(ulong, ulong, ulong);			\
@@ -212,7 +216,11 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 		(ulong arg0, ulong arg1, ulong arg2)
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)		\
-		ENTRY_FUNCTION_HEAD(name, __barebox_arm_head, arg0, arg1, arg2)
+	__ENTRY_FUNCTION_HEAD(name, __barebox_arm_head, arg0, arg1, arg2)
+
+#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+	ENTRY_FUNCTION_WITHSTACK_HEAD(name, stack_top, \
+			      __barebox_arm_head, arg0, arg1, arg2)
 #endif
 
 /*
diff --git a/include/mach/at91/barebox-arm.h b/include/mach/at91/barebox-arm.h
index f1014542bee2..f82b82ebed8b 100644
--- a/include/mach/at91/barebox-arm.h
+++ b/include/mach/at91/barebox-arm.h
@@ -69,6 +69,6 @@ static __always_inline void __barebox_at91_head(void)
 	SAMA5_ENTRY_FUNCTION(name, SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE, r4)
 
 #define AT91_ENTRY_FUNCTION(fn, r0, r1, r2)					\
-	ENTRY_FUNCTION_HEAD(fn, __barebox_at91_head, r0, r1, r2)
+	ENTRY_FUNCTION_WITHSTACK_HEAD(fn, 0, __barebox_at91_head, r0, r1, r2)
 
 #endif
diff --git a/include/mach/mvebu/barebox-arm-head.h b/include/mach/mvebu/barebox-arm-head.h
index 76e426e3b867..5afd900201c6 100644
--- a/include/mach/mvebu/barebox-arm-head.h
+++ b/include/mach/mvebu/barebox-arm-head.h
@@ -55,4 +55,4 @@ static inline void __barebox_mvebu_head(void)
 }
 
 #define ENTRY_FUNCTION_MVEBU(name, arg0, arg1, arg2) \
-	ENTRY_FUNCTION_HEAD(name, __barebox_mvebu_head, arg0, arg1, arg2)
+	ENTRY_FUNCTION_WITHSTACK_HEAD(name, 0, __barebox_mvebu_head, arg0, arg1, arg2)
-- 
2.39.2



