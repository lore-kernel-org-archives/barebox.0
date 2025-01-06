Delivery-date: Mon, 06 Jan 2025 10:19:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGb-00HQg2-1x
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGZ-0003cA-Os
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fXocjKhwYB027zMVOfnz8ItPmTU2G7JWPl5rjd9T6Qs=; b=YrDj8csZQpFdN+u/icR14k0p1T
	qTeukkbLMd+QmDeN9CkhrEIsoJx7IMteag1jXEzBmRassKIInztYHH7y/ymCpUgpXemUGKIhAGaag
	5XEJTfuqQuB/MECuVvSt1D/O6++imODydOUNL9SnbKRA4446kPxBJHhWVO5ZCoyATxhoY3mFA+VyS
	cYh5hBwo3nFU3VJxrHH87rin31qy0won0izcodJo9AzvKawa605hp/ZMZX0GQK+yeXnMmUp2udG9J
	cRgctFcWNBLyiiDnLPdnJl965Et9Ar/jHaIXqIT2AUEsQE76ZgarrWglcVkfBS1RaW5ODDn+2wLGg
	xDppLsOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjG8-00000000e1r-1Auw;
	Mon, 06 Jan 2025 09:18:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjG6-00000000dzf-08VN
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG4-00037R-PV; Mon, 06 Jan 2025 10:18:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG3-0078qn-2e;
	Mon, 06 Jan 2025 10:18:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjG4-00EPbz-1d;
	Mon, 06 Jan 2025 10:18:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:47 +0100
Message-Id: <20250106091847.3435030-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091847.3435030-1-a.fatoum@pengutronix.de>
References: <20250106091847.3435030-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011850_072315_040053ED 
X-CRM114-Status: GOOD (  15.69  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] compiler: drop intel compiler support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's likely that this is unused and Linux has since removed support for
anything, but clang and GCC as well, so let's follow suit in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/compiler-intel.h | 45 ----------------------------------
 include/linux/compiler_types.h |  2 --
 2 files changed, 47 deletions(-)
 delete mode 100644 include/linux/compiler-intel.h

diff --git a/include/linux/compiler-intel.h b/include/linux/compiler-intel.h
deleted file mode 100644
index 4c7f9befa9f6..000000000000
--- a/include/linux/compiler-intel.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __LINUX_COMPILER_TYPES_H
-#error "Please don't include <linux/compiler-intel.h> directly, include <linux/compiler.h> instead."
-#endif
-
-#ifdef __ECC
-
-/* Some compiler specific definitions are overwritten here
- * for Intel ECC compiler
- */
-
-#include <asm/intrinsics.h>
-
-/* Intel ECC compiler doesn't support gcc specific asm stmts.
- * It uses intrinsics to do the equivalent things.
- */
-
-#define barrier() __memory_barrier()
-#define barrier_data(ptr) barrier()
-
-#define RELOC_HIDE(ptr, off)					\
-  ({ unsigned long __ptr;					\
-     __ptr = (unsigned long) (ptr);				\
-    (typeof(ptr)) (__ptr + (off)); })
-
-/* This should act as an optimization barrier on var.
- * Given that this compiler does not have inline assembly, a compiler barrier
- * is the best we can do.
- */
-#define OPTIMIZER_HIDE_VAR(var) barrier()
-
-/* Intel ECC compiler doesn't support __builtin_types_compatible_p() */
-#define __must_be_array(a) 0
-
-#endif
-
-/* icc has this, but it's called _bswap16 */
-#define __HAVE_BUILTIN_BSWAP16__
-#define __builtin_bswap16 _bswap16
-
-/* The following are for compatibility with GCC, from compiler-gcc.h,
- * and may be redefined here because they should not be shared with other
- * compilers, like clang.
- */
-#define __visible	__attribute__((externally_visible))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index a713459f6e47..d208004b3989 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -69,8 +69,6 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 /* Compiler specific macros. */
 #ifdef __clang__
 #include <linux/compiler-clang.h>
-#elif defined(__INTEL_COMPILER)
-#include <linux/compiler-intel.h>
 #elif defined(__GNUC__)
 /* The above compilers also define __GNUC__, so order is important here. */
 #include <linux/compiler-gcc.h>
-- 
2.39.5



