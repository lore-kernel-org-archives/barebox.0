Delivery-date: Fri, 05 Mar 2021 19:43:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPk-00035x-9s
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 19:43:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPj-0002gW-HJ
	for lore@pengutronix.de; Fri, 05 Mar 2021 19:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XQ97p0bck/AuBnWDDeWwsUh+hoRlejA7bFyZjt5aDDY=; b=lL2CBPV39e8dOBlawXy/ftUM5t
	nU49m2Iq0m3Ui8LlfNArcj2lcMP/BYuvXc+nvZgTr5B+CcCgwYuilELQZAinzXcQqqAKXIGmliAfe
	WC7/3CAbLd3wBkaOYVKn5RfrQB5/3A+iEykcJ4HsLp7MQwEkLXiWZNyUboxpvZc8jibkZOcLFTgw6
	E/0DoE05/ydbjw1yr41sisJp46uRJ5Yb64O15a6W6KoW1fvLybdi8ska0wvzAYPyba81acqU2VjTN
	rQJGNXgSDs4T1GmYBjrfTdqcAEC8KSpoWeJIw0F6qeBY27H/eAkx3EwT0N3cTG/EYFaLLno0e42Dj
	+LtAhDaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFOX-00G0rT-5b; Fri, 05 Mar 2021 18:41:49 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFOJ-00G0oO-LK
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 18:41:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id AAF381A572C
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 18:41:34 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLWN9BHB;
 Fri, 05 Mar 2021 18:41:34 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 70E071A5726;
 Fri,  5 Mar 2021 18:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4AC0F27E073C;
 Fri,  5 Mar 2021 19:41:34 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id bwK0jmk71E98; Fri,  5 Mar 2021 19:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D952B27E0732;
 Fri,  5 Mar 2021 19:41:33 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D952B27E0732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614969693;
 bh=4E7j23TcbTrghphha5F/ZDXar5HolKReoJC/Lm91FRM=;
 h=From:To:Date:Message-Id;
 b=RcsW+9tiu1icb1gXtXjzQL/STGgUSsv2gPqeHSHcZOo0DTNl7E6t6lKqW0UChpu7L
 EO3Rhq+/xBxESizpAibbVk9RJQRq+i1kVEpDTV08o1OXnYVHlaMfXsEpoeM1hW49vR
 g4DSuo+V76K0uU/aMe27mcYlPoJB29vyd2gJ+sbM=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nT9VRjFlHmKn; Fri,  5 Mar 2021 19:41:33 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id C521C27E0673;
 Fri,  5 Mar 2021 19:41:33 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri,  5 Mar 2021 19:33:24 +0100
Message-Id: <20210305183327.29753-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210305183327.29753-1-jmaselbas@kalray.eu>
References: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_184136_199429_1B471CE9 
X-CRM114-Status: GOOD (  13.28  )
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
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] kvx: Implement dcache invalidation primitive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yann Sionneau <ysionneau@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes v1 -> v2:
 - renamed kvx_dcache_invalidate_mem_area to invalidate_dcache_range
 - replace the implemetation with a simpler version
---
 arch/kvx/Kconfig             |  1 +
 arch/kvx/include/asm/cache.h | 13 +++++++++++++
 arch/kvx/lib/Makefile        |  2 +-
 arch/kvx/lib/cache.c         | 25 +++++++++++++++++++++++++
 4 files changed, 40 insertions(+), 1 deletion(-)
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
index 3be176725..0bf3c8f06 100644
--- a/arch/kvx/include/asm/cache.h
+++ b/arch/kvx/include/asm/cache.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+void invalidate_dcache_range(unsigned long addr, unsigned long stop);
+
 static inline void sync_caches_for_execution(void)
 {
 	__builtin_kvx_fence();
@@ -15,4 +17,15 @@ static inline void sync_caches_for_execution(void)
 	__builtin_kvx_barrier();
 }
 
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
index 000000000..bd074de79
--- /dev/null
+++ b/arch/kvx/lib/cache.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Yann Sionneau <ysionneau@kalray.eu>, Kalray Inc.
+
+#include <asm/cache.h>
+#include <linux/kernel.h>
+
+#define KVX_DCACHE_LINE_SIZE    (64)
+#define KVX_DCACHE_SIZE (128*1024)
+
+void invalidate_dcache_range(unsigned long addr, unsigned long stop)
+{
+	long size;
+
+	addr = ALIGN_DOWN(addr, KVX_DCACHE_LINE_SIZE);
+	size = stop - addr;
+
+	if (size < KVX_DCACHE_SIZE) {
+		while (addr < stop) {
+			__builtin_kvx_dinvall((void *)addr);
+			addr += KVX_DCACHE_LINE_SIZE;
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

