Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROFre-00036F-5l
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 21:39:22 +0000
Received: by mail-yw0-f49.google.com with SMTP id 31so169618ywp.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 13:39:22 -0800 (PST)
From: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date: Wed,  9 Nov 2011 19:39:56 -0200
Message-Id: <1320874797-14270-4-git-send-email-lucas.demarchi@profusion.mobi>
In-Reply-To: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
References: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
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
Subject: [PATCH 3/4] x86: fix build error because of missing header
To: barebox@lists.infradead.org

Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>
---
 arch/x86/include/asm/types.h     |    2 ++
 arch/x86/include/asm/unaligned.h |   14 ++++++++++++++
 2 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 arch/x86/include/asm/unaligned.h

diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index 17c5fd7..d520869 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -39,6 +39,8 @@ typedef unsigned short u16;
 
 typedef unsigned int u32;
 
+typedef unsigned long long u64;
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_X86_TYPES_H */
diff --git a/arch/x86/include/asm/unaligned.h b/arch/x86/include/asm/unaligned.h
new file mode 100644
index 0000000..a7bd416
--- /dev/null
+++ b/arch/x86/include/asm/unaligned.h
@@ -0,0 +1,14 @@
+#ifndef _ASM_X86_UNALIGNED_H
+#define _ASM_X86_UNALIGNED_H
+
+/*
+ * The x86 can do unaligned accesses itself.
+ */
+
+#include <linux/unaligned/access_ok.h>
+#include <linux/unaligned/generic.h>
+
+#define get_unaligned __get_unaligned_le
+#define put_unaligned __put_unaligned_le
+
+#endif /* _ASM_X86_UNALIGNED_H */
-- 
1.7.7.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
