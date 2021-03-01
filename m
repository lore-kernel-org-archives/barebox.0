Delivery-date: Mon, 01 Mar 2021 17:00:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyD-0004yf-MX
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:00:29 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkyC-0001Oh-Ko
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebrDz5MCegyTSmDdeAJ0Vp+stSNHl+P2R5/PTMWs+5M=; b=uGSYhS2erEamparbLJeH6LnHtR
	cX2VbIzvk3DQbV/+sNZopVgmHAc5xE74Ul+HwIq8jhXlNq9dRDNmc5ZiSq2Xb6B/bqZ3qksQjGdx/
	KoSdEM3lS1GxQ4+RfyBkbKL+/d18hZNzGMqWti9id/Aoqaa6r2MSiIs4QD8QdI5PQ1Ljsa9zpYjGC
	ikNd0CW1ssYuYak9y0lfxsVHsjsjEgt2wl9XKDpy1U7Iwf8kxiraoKqJhu4UtRElb6Sbxu+sdf9gw
	srl2RhtJ6H8w9u9AbHzhJoyWPm9PCZ1zS51jKOwW+6JHw81PB3q4vdLOHJXwkvSg0VJ7YsXZUt7m8
	oxoh++8w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkxA-00076y-LP; Mon, 01 Mar 2021 15:59:24 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkx2-00073Q-AU
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:59:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 6EAD31A544E
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQRP4F2;
 Mon, 01 Mar 2021 15:59:13 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 3730B1A5450;
 Mon,  1 Mar 2021 15:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0CB7327E084E;
 Mon,  1 Mar 2021 16:59:13 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id YLfDhScotaAl; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 862C827E083D;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 862C827E083D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614614352;
 bh=8IBPNxz7aVz+Sj3ZIso30dYpBxOgtB7U+9Fh5vJ3hX4=;
 h=From:To:Date:Message-Id;
 b=rHNPZr+zOR6vTTmUwc+ZBUHrinXQxIq4weXK1O+qRRFn590q4mi1u8i1xmM7ZjnfT
 zKE997e9jDfZJJw2gkwO6+wOR/adtzVEyX64Yyx6Ez+7T706aPSKIuBLhdvxLVGASt
 mcNhjw8wWQJT4KXn5p5wKMJJuFBVd2I/gJFIx7Vg=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id YrkZbkBCs-AJ; Mon,  1 Mar 2021 16:59:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 678B827E069F;
 Mon,  1 Mar 2021 16:59:12 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 16:58:48 +0100
Message-Id: <20210301155851.12463-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301155851.12463-1-jmaselbas@kalray.eu>
References: <20210301155851.12463-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105916_739636_AE1ED84E 
X-CRM114-Status: GOOD (  16.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] kvx: Implement dcache invalidation primitive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yann Sionneau <ysionneau@kalray.eu>

Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/Kconfig             |  1 +
 arch/kvx/include/asm/cache.h | 13 ++++++++++
 arch/kvx/lib/Makefile        |  2 +-
 arch/kvx/lib/cache.c         | 50 ++++++++++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/lib/cache.c

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 8483ae6e6..4e02613ec 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -12,6 +12,7 @@ config KVX
 	select FLEXIBLE_BOOTARGS
 	select GENERIC_FIND_NEXT_BIT
 	select HAS_ARCH_SJLJ
+	select HAS_CACHE
 	select LIBFDT
 	select MFD_SYSCON
 	select OF_BAREBOX_DRIVERS
diff --git a/arch/kvx/include/asm/cache.h b/arch/kvx/include/asm/cache.h
index 3be176725..efdbcc630 100644
--- a/arch/kvx/include/asm/cache.h
+++ b/arch/kvx/include/asm/cache.h
@@ -15,4 +15,17 @@ static inline void sync_caches_for_execution(void)
 	__builtin_kvx_barrier();
 }
 
+void kvx_dcache_invalidate_mem_area(uint64_t addr, int size);
+
+static inline void sync_dcache_icache(void)
+{
+	sync_caches_for_execution();
+}
+
+static inline void dcache_inval(void)
+{
+	__builtin_kvx_fence();
+	__builtin_kvx_dinval();
+}
+
 #endif /* __KVX_CACHE_H */
diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
index cee08b0fa..d271ebccf 100644
--- a/arch/kvx/lib/Makefile
+++ b/arch/kvx/lib/Makefile
@@ -3,4 +3,4 @@
 # Copyright (C) 2019 Kalray Inc.
 #
 
-obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o cache.o
diff --git a/arch/kvx/lib/cache.c b/arch/kvx/lib/cache.c
new file mode 100644
index 000000000..4e128891a
--- /dev/null
+++ b/arch/kvx/lib/cache.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
+
+#include <asm/cache.h>
+
+#define K1_DCACHE_REFILL         (12)
+#define K1_DCACHE_HWLOOP         (1)
+#define K1_DCACHE_REFILL_PERCENT (80)
+#define K1_DCACHE_LINE_SIZE    (64)
+#define K1_DCACHE_SIZE (128*1024)
+
+void kvx_dcache_invalidate_mem_area(uint64_t addr, int size)
+{
+	/* if hwloop iterations cost < _K1_DCACHE_REFILL_PERCENT cache refill,
+	 * use hwloop, otherwise invalid the whole cache
+	 */
+	if (size <
+	(K1_DCACHE_REFILL_PERCENT * (K1_DCACHE_REFILL * K1_DCACHE_SIZE))
+			/ (100 * (K1_DCACHE_REFILL + K1_DCACHE_HWLOOP))) {
+		/* number of lines that must be invalidated */
+		int invalid_lines = ((addr + size) -
+					(addr & (~(K1_DCACHE_LINE_SIZE - 1))));
+
+		invalid_lines = invalid_lines / K1_DCACHE_LINE_SIZE
+				+ (0 != (invalid_lines % K1_DCACHE_LINE_SIZE));
+		if (__builtin_constant_p(invalid_lines) && invalid_lines <= 2) {
+			/* when inlining (and doing constant folding),
+			 *  gcc is able to unroll small loops
+			 */
+			int i;
+
+			for (i = 0; i < invalid_lines; i++) {
+				__builtin_kvx_dinvall((void *)(addr
+						+ i * K1_DCACHE_LINE_SIZE));
+			}
+		} else if (invalid_lines > 0) {
+			__asm__ __volatile__ (
+				"loopdo %1, 0f\n;;\n"
+				"dinvall 0[%0]\n"
+				"addd %0 = %0, %2\n;;\n"
+				"0:\n"
+				: "+r"(addr)
+				: "r" (invalid_lines),
+				"i" (K1_DCACHE_LINE_SIZE)
+				: "ls", "le", "lc", "memory");
+		}
+	} else {
+		__builtin_kvx_dinval();
+	}
+}
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

