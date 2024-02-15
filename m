Delivery-date: Thu, 15 Feb 2024 17:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedd-007dB4-32
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedb-0005hy-H1
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ANtCmRL+2nj6iPVSUBPMcXwHJkiRlV2rVpbtCzE6omI=; b=Aj/fEdYmYZuMOaa50SJa2ED0ok
	+zryAYNm+7LZI39qOt5hHdQbcmSc85Q+x6uQXe7dJGdFi1VNmxWPW/l1Lb9q7hgxyFER/nsrCpvzW
	tx6RPCBALP1RYgRx6CxrLCzZWdYWcR0qyok4lXUOdlYuiXnAxTMmQc/gpmUH/gatnqjCft8QAXANg
	ik+yCFU7zQeNrY7JH0L1VAL1ACuPx3ZdM5U3HiFkQGcMzR1ZvadExQz5RgAe6bpM6nA1f2Wm9BpvC
	mkm1ngeIW767mt7AmXvosjfOBnYzkaT3Am5X4ntozMWnVDfEy3NxnN4UUsKpecZ9448c9d95FsDhS
	sUEJXPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raed4-0000000GyTk-0mx4;
	Thu, 15 Feb 2024 16:30:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecw-0000000GyPB-3Iej
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005H4-Hu; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzO-4T; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-0A;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:29:57 +0100
Message-Id: <20240215163009.2172795-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083022_853545_1E5CCC4C 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 03/15] ARM: replace ENTRY_FUNCTION_HEAD with ENTRY_FUNCTION_WITHSTACK_HEAD
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

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
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



