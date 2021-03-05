Delivery-date: Fri, 05 Mar 2021 19:43:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPk-000368-GU
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 19:43:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIFPj-0002gX-LZ
	for lore@pengutronix.de; Fri, 05 Mar 2021 19:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zryBpOW6/XU4nsbmhFbSCwm8av4YaP4moMeg41FyOMI=; b=auybMg0AJNcDUUka4MiqXjfJHG
	C6bcrrx8ETkQwvJyZnyIVEo5bA/7wZF89S/KuwEEkqHnpv3d7nosfkbX07UK8Qd3XT9MD4e4CfgSj
	CtKvP3I3sbRHh1L91rx0RRVdr2HmTNcrq0NVOnc7xr1kilZjDyQxSZB9nboDYPz8DkXOvlATAGvRX
	JDaJv7pXbitlCcD7trVH/nvZarhlO02SpiBnxmrkFm5p6I3izJLg+maEyvCkAINjQnLXeQyrIJjuo
	exY7GTPoeR0VoA4POOUfv4O5cQyPto3Xvid0rtZNILayfLZd/hYGLVuFVd0sAYLvsw+Dn5NIlNHD+
	s/5YZ7fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFOT-00G0qk-7w; Fri, 05 Mar 2021 18:41:45 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFOJ-00G0oK-IW
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 18:41:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id C9DA91A5728
 for <barebox@lists.infradead.org>; Fri,  5 Mar 2021 18:41:33 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLWN9ATA;
 Fri, 05 Mar 2021 18:41:33 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 9B59F1A5726;
 Fri,  5 Mar 2021 18:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 725CD27E073C;
 Fri,  5 Mar 2021 19:41:33 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 26uNT19036mp; Fri,  5 Mar 2021 19:41:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D485127E0732;
 Fri,  5 Mar 2021 19:41:32 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D485127E0732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614969692;
 bh=zG7XqWJKM7t24bJHC0xp9t6qiu1v3n7KsVQPL0iX63E=;
 h=From:To:Date:Message-Id;
 b=gul3Hsik2joJTpjxBFhG+gMtBbsmREGHq4SGOB11JQnPzdH4OCI4PtNQavUCG1Yvz
 6Kx+CsIpJuYSmLEgO/eWmH8m4an6o2t7S6d1T3AnvlqDBx1qS14UvAZxA4GMwBJL2b
 NnKMnqpFwQPwYuMhlO2JUfGCVT7fnWfg7nsy9J3Y=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AOyPiEraHpqS; Fri,  5 Mar 2021 19:41:32 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id B463127E0673;
 Fri,  5 Mar 2021 19:41:32 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri,  5 Mar 2021 19:33:23 +0100
Message-Id: <20210305183327.29753-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_184136_464662_3729A53A 
X-CRM114-Status: GOOD (  11.73  )
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
Subject: [PATCH v2 1/5] kvx: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes v1 -> v2: nothing
---
 arch/kvx/Kconfig              |  1 +
 arch/kvx/include/asm/setjmp.h | 15 +++++++
 arch/kvx/lib/Makefile         |  2 +-
 arch/kvx/lib/setjmp.S         | 85 +++++++++++++++++++++++++++++++++++
 4 files changed, 102 insertions(+), 1 deletion(-)
 create mode 100644 arch/kvx/include/asm/setjmp.h
 create mode 100644 arch/kvx/lib/setjmp.S

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 3327021e1..8483ae6e6 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -11,6 +11,7 @@ config KVX
 	select ELF
 	select FLEXIBLE_BOOTARGS
 	select GENERIC_FIND_NEXT_BIT
+	select HAS_ARCH_SJLJ
 	select LIBFDT
 	select MFD_SYSCON
 	select OF_BAREBOX_DRIVERS
diff --git a/arch/kvx/include/asm/setjmp.h b/arch/kvx/include/asm/setjmp.h
new file mode 100644
index 000000000..3cfc698d9
--- /dev/null
+++ b/arch/kvx/include/asm/setjmp.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2021 Jules Maselbas <jmaselbas@kalray.eu>, Kalray Inc. */
+
+#ifndef _ASM_KVX_SETJMP_H_
+#define _ASM_KVX_SETJMP_H_
+
+#include <linux/types.h>
+
+typedef u64 jmp_buf[22];
+
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+
+#endif /* _ASM_KVX_SETJMP_H_ */
diff --git a/arch/kvx/lib/Makefile b/arch/kvx/lib/Makefile
index 6e56462da..cee08b0fa 100644
--- a/arch/kvx/lib/Makefile
+++ b/arch/kvx/lib/Makefile
@@ -3,4 +3,4 @@
 # Copyright (C) 2019 Kalray Inc.
 #
 
-obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o
+obj-y	+= cpuinfo.o board.o dtb.o poweroff.o bootm.o setjmp.o
diff --git a/arch/kvx/lib/setjmp.S b/arch/kvx/lib/setjmp.S
new file mode 100644
index 000000000..829299711
--- /dev/null
+++ b/arch/kvx/lib/setjmp.S
@@ -0,0 +1,85 @@
+/* SPDX-License-Identifier: LGPL-2.1 */
+/* SPDX-FileCopyrightText: 2021 Jules Maselbas <jmaselbas@kalray.eu>, Kalray Inc. */
+
+#define REG_SIZE 8
+
+#include <linux/linkage.h>
+
+/* jmp_buf layout:
+ * [0]  = $ra,  $sp,  $cs,  $r14,
+ * [4]  = $r20, $r21, $r22, $r23,
+ * [8]  = $r24, $r25, $r26, $r27,
+ * [12] = $r28, $r29, $r30, $r31,
+ * [16] = $r18, $r19,
+ * [18] = $lc,  $le,  $ls,  xxxx
+ */
+
+/**
+ * int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+ */
+ENTRY(initjmp)
+	/* store $ra */
+	sd (0 * REG_SIZE)[$r0] = $r1
+	;;
+	/* store $sp */
+	sd (1 * REG_SIZE)[$r0] = $r2
+	make $r0 = 0
+	ret
+	;;
+ENDPROC(initjmp)
+
+/**
+ * int setjmp(jmp_buf jmp);
+ */
+ENTRY(setjmp)
+	sq (16 * REG_SIZE)[$r0] = $r18r19
+	get $r40 = $ra
+	copyd $r41 = $sp
+	;;
+	so (4 * REG_SIZE)[$r0] = $r20r21r22r23
+	get $r42 = $cs
+	copyd $r43 = $r14
+	;;
+	so (0 * REG_SIZE)[$r0] = $r40r41r42r43
+	get $r40 = $lc
+	;;
+	so (8 * REG_SIZE)[$r0] = $r24r25r26r27
+	get $r41 = $le
+	;;
+	so (12 * REG_SIZE)[$r0] = $r28r29r30r31
+	get $r42 = $ls
+	;;
+	so (18 * REG_SIZE)[$r0] = $r40r41r42r43
+	make $r0 = 0
+	ret
+	;;
+ENDPROC(setjmp)
+
+/**
+ * void longjmp(jmp_buf jmp, int ret);
+ */
+ENTRY(longjmp)
+	lo $r40r41r42r43 = (0 * REG_SIZE)[$r0]
+	;;
+	lo $r44r45r46r47 = (18 * REG_SIZE)[$r0]
+	set $ra = $r40
+	copyd $sp = $r41
+	;;
+	lo $r20r21r22r23 = (4 * REG_SIZE)[$r0]
+	set $cs = $r42
+	copyd $r14 = $r43
+	;;
+	lo $r24r25r26r27 = (8 * REG_SIZE)[$r0]
+	set $lc = $r44
+	;;
+	lo $r28r29r30r31 = (12 * REG_SIZE)[$r0]
+	set $le = $r45
+	;;
+	lq $r18r19 = (16 * REG_SIZE)[$r0]
+	set $ls = $r46
+	;;
+	/* According to man, if retval is equal to 0, then we should return 1 */
+	maxud $r0 = $r1, 1
+	ret
+	;;
+ENDPROC(longjmp)
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

