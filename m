Delivery-date: Wed, 22 Nov 2023 18:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4e-004djj-1H
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4e-0008Ju-24
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DE8sZ/xOIyOmSd0S3NJb8Yvon5dOVOVJl9nDQjk5QLg=; b=4UsHAJONImuihZeQcumKqueuLs
	d92nrkfBP7e3tRRkFuSPrYm5zkjKgnRBeBkh+KTIjmCnkeLDEoP1Y/4+borTcpPq0nQyFLYLJfeB5
	kmKqMz1eJXaCZa1eRV6981wIDifm2D0/3PSlnzaCQIVib8EovZMo7MPsWj+OZ0PhtX1D1bieQO22M
	5bvgVLG+j5G6rJltwmaWFKIGJm/WQ21A6OMnS8ITGU/jr587n5wCiW0t6oJfnl8mWKPuwf3YBqsn4
	lgPt4kWGubtWZVkFnwuSn17iBG4v8DyFeh1G2FMDlfLymwigWxUCqQPO2DkpGNam9gR70hT+pUxdZ
	3WY3P02A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r3D-002fCI-2U;
	Wed, 22 Nov 2023 17:30:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r35-002f7v-1V
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:30:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-0007Sv-4f; Wed, 22 Nov 2023 18:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-00ArSj-OH; Wed, 22 Nov 2023 18:30:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-001lAy-24;
	Wed, 22 Nov 2023 18:30:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:32 +0100
Message-Id: <20231122172951.376531-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093003_668544_C3C435A5 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 01/20] include: provide linux/errno.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have the historic baggage of having to support different errno
definitions depending on architecture. We thus have only
asm-generic/errno.h and include that from errno.h and elsewhere
directly.

Kernel code however includes <linux/errno.h>, so let's provide that file
as well and define there the Linux-specific errno's and include
<asm-generic/errno.h> for all other errnos.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
   - unchanged
---
 arch/powerpc/lib/misc.S         |  2 +-
 arch/powerpc/lib/ppcstring.S    |  2 +-
 common/optee.c                  |  2 +-
 include/asm-generic/errno.h     | 11 ----------
 include/bbu.h                   |  2 +-
 include/errno.h                 |  2 +-
 include/linux/err.h             |  2 +-
 include/linux/errno.h           | 36 +++++++++++++++++++++++++++++++++
 include/linux/pstore.h          |  2 +-
 include/mach/at91/iomux.h       |  2 +-
 include/tee/optee.h             |  2 +-
 lib/reed_solomon/reed_solomon.c |  2 +-
 12 files changed, 46 insertions(+), 21 deletions(-)
 create mode 100644 include/linux/errno.h

diff --git a/arch/powerpc/lib/misc.S b/arch/powerpc/lib/misc.S
index c45f02ba3af0..024d26ed58e9 100644
--- a/arch/powerpc/lib/misc.S
+++ b/arch/powerpc/lib/misc.S
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <asm/ppc_asm.tmpl>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 	.globl	__ashrdi3
 __ashrdi3:
diff --git a/arch/powerpc/lib/ppcstring.S b/arch/powerpc/lib/ppcstring.S
index cce85e3252a8..55f96cc9a448 100644
--- a/arch/powerpc/lib/ppcstring.S
+++ b/arch/powerpc/lib/ppcstring.S
@@ -9,7 +9,7 @@
  * 2 of the License, or (at your option) any later version.
  */
 #include <asm/ppc_asm.tmpl>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 	.globl	strcpy
 strcpy:
diff --git a/common/optee.c b/common/optee.c
index b460fbcd0161..32a6c0a15b94 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -4,7 +4,7 @@
 
 #include <tee/optee.h>
 #include <linux/printk.h>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 int optee_verify_header(struct optee_header *hdr)
 {
diff --git a/include/asm-generic/errno.h b/include/asm-generic/errno.h
index a96f8864dfd4..7629d5c8dd58 100644
--- a/include/asm-generic/errno.h
+++ b/include/asm-generic/errno.h
@@ -134,15 +134,4 @@
 #define	EKEYREVOKED	128	/* Key has been revoked */
 #define	EKEYREJECTED	129	/* Key was rejected by service */
 
-/* Should never be seen by user programs */
-#define ERESTARTSYS	512
-#define ERESTARTNOINTR	513
-#define ERESTARTNOHAND	514	/* restart if no handler.. */
-#define ENOIOCTLCMD	515	/* No ioctl command */
-#define EPROBE_DEFER	517	/* Driver requests probe retry */
-
-#define ENOTSUPP	524	/* Operation is not supported */
-
-#define _LAST_ERRNO	524
-
 #endif
diff --git a/include/bbu.h b/include/bbu.h
index cec7e22d4d90..0a4f324ade5b 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -2,7 +2,7 @@
 #ifndef __INCLUDE_BBU_H
 #define __INCLUDE_BBU_H
 
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 #include <linux/list.h>
 #include <linux/types.h>
 #include <filetype.h>
diff --git a/include/errno.h b/include/errno.h
index 164426596604..6ec7af4d7e9f 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -2,7 +2,7 @@
 #ifndef __ERRNO_H
 #define __ERRNO_H
 
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 #include <linux/err.h>
 
 extern int errno;
diff --git a/include/linux/err.h b/include/linux/err.h
index db7ad6cc5bfa..d743b4d0928a 100644
--- a/include/linux/err.h
+++ b/include/linux/err.h
@@ -5,7 +5,7 @@
 
 #include <linux/compiler.h>
 
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 /*
  * Kernel pointers have redundant information, so we can use a
diff --git a/include/linux/errno.h b/include/linux/errno.h
new file mode 100644
index 000000000000..b3bf44d24936
--- /dev/null
+++ b/include/linux/errno.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_ERRNO_H
+#define _LINUX_ERRNO_H
+
+#include <asm-generic/errno.h>
+
+
+/*
+ * These should never be seen by user programs.  To return one of ERESTART*
+ * codes, signal_pending() MUST be set.  Note that ptrace can observe these
+ * at syscall exit tracing, but they will never be left for the debugged user
+ * process to see.
+ */
+#define ERESTARTSYS	512
+#define ERESTARTNOINTR	513
+#define ERESTARTNOHAND	514	/* restart if no handler.. */
+#define ENOIOCTLCMD	515	/* No ioctl command */
+#define ERESTART_RESTARTBLOCK 516 /* restart by calling sys_restart_syscall */
+#define EPROBE_DEFER	517	/* Driver requests probe retry */
+#define EOPENSTALE	518	/* open found a stale dentry */
+#define ENOPARAM	519	/* Parameter not supported */
+
+/* Defined for the NFSv3 protocol */
+#define EBADHANDLE	521	/* Illegal NFS file handle */
+#define ENOTSYNC	522	/* Update synchronization mismatch */
+#define EBADCOOKIE	523	/* Cookie is stale */
+#define ENOTSUPP	524	/* Operation is not supported */
+#define ETOOSMALL	525	/* Buffer or request is too small */
+#define ESERVERFAULT	526	/* An untranslatable error occurred */
+#define EBADTYPE	527	/* Type not supported by server */
+#define EJUKEBOX	528	/* Request initiated, but will not complete before timeout */
+#define EIOCBQUEUED	529	/* iocb queued, will get completion event */
+#define ERECALLCONFLICT	530	/* conflict with recalled state */
+#define ENOGRACE	531	/* NFS file lock reclaim refused */
+
+#endif
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index f598f31a5438..90e3bd2d4255 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -23,7 +23,7 @@
 
 #include <linux/time.h>
 #include <linux/types.h>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 struct module;
 
diff --git a/include/mach/at91/iomux.h b/include/mach/at91/iomux.h
index 84b50e05e0dc..f3ac93474222 100644
--- a/include/mach/at91/iomux.h
+++ b/include/mach/at91/iomux.h
@@ -7,7 +7,7 @@
 #define __ASM_ARCH_AT91_GPIO_H
 
 #include <io.h>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 #include <mach/at91/at91_pio.h>
 #include <mach/at91/hardware.h>
 #include <mach/at91/gpio.h>
diff --git a/include/tee/optee.h b/include/tee/optee.h
index fa124236ba5e..607f5072d385 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -11,7 +11,7 @@
 #define _OPTEE_H
 
 #include <types.h>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 #define OPTEE_MAGIC             0x4554504f
 #define OPTEE_VERSION           1
diff --git a/lib/reed_solomon/reed_solomon.c b/lib/reed_solomon/reed_solomon.c
index 51c67c3c8d5d..80c0ec4f7ab9 100644
--- a/lib/reed_solomon/reed_solomon.c
+++ b/lib/reed_solomon/reed_solomon.c
@@ -44,7 +44,7 @@
 #include <module.h>
 #include <linux/string.h>
 #include <stdio.h>
-#include <asm-generic/errno.h>
+#include <linux/errno.h>
 
 /* This list holds all currently allocated rs control structures */
 static LIST_HEAD (rslist);
-- 
2.39.2



