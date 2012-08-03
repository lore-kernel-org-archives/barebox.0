Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxAvS-00071Q-D6
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 05:59:55 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 4005FFFA557
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 08:06:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 07:59:52 +0200
Message-Id: <1343973593-23482-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343973593-23482-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803055701.GA21069@game.jcrosoft.org>
 <1343973593-23482-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] arm introduce CONFIG_MACH_ARM_HEAD option to allow custom
 head
To: barebox@lists.infradead.org

This is needed by at91 to specify the size of the binary to load from the
bootrom when booting for non nor flash.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                        |    3 +++
 arch/arm/include/asm/barebox-arm-head.h |    4 ++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8665c16..8b0a28d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -14,6 +14,9 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
 
+config HAVE_MACH_ARM_HEAD
+	bool
+
 menu "System Type                   "
 
 choice
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 2c250e9..0b1d786 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -1,6 +1,9 @@
 #ifndef __ASM_ARM_HEAD_H
 #define __ASM_ARM_HEAD_H
 
+#ifdef CONFIG_HAVE_MACH_ARM_HEAD
+#include <mach/barebox-arm-head.h>
+#else
 static inline void barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
@@ -31,5 +34,6 @@ static inline void barebox_arm_head(void)
 		".word _barebox_image_size\n"		/* image size to copy */
 	);
 }
+#endif
 
 #endif /* __ASM_ARM_HEAD_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
