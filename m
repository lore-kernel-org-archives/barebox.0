Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6lpL-0000SN-Ll
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 17:13:16 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 29 Aug 2012 18:13:06 +0100
Message-Id: <1346260386-19901-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ppc: add unaligned support
To: barebox@lists.infradead.org

This file is copied from Linux 2.6.39. It is added so that the P2020RDB
can still build.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/unaligned.h |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/include/asm/unaligned.h

diff --git a/arch/ppc/include/asm/unaligned.h b/arch/ppc/include/asm/unaligned.h
new file mode 100644
index 0000000..a41fa8c
--- /dev/null
+++ b/arch/ppc/include/asm/unaligned.h
@@ -0,0 +1,16 @@
+#ifndef _ASM_PPC_UNALIGNED_H
+#define _ASM_PPC_UNALIGNED_H
+
+#ifdef __KERNEL__
+
+/*
+ * The PowerPC can do unaligned accesses itself in big endian mode.
+ */
+#include <linux/unaligned/access_ok.h>
+#include <linux/unaligned/generic.h>
+
+#define get_unaligned   __get_unaligned_be
+#define put_unaligned   __put_unaligned_be
+
+#endif  /* __KERNEL__ */
+#endif  /* _ASM_PPC_UNALIGNED_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
