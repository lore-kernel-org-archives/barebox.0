Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbQU-00020d-SA
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:05:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbQJ-00027Y-Us
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:04:52 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:04:13 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111161004.13969.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH/next] x86: Provide 'unaligned' macros for x86 arch as well
To: barebox@lists.infradead.org

These macros are used in the generic partition detection code.
So, x86 would fails without it.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

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
index 0000000..34f2367
--- /dev/null
+++ b/arch/x86/include/asm/unaligned.h
@@ -0,0 +1,11 @@
+#ifndef _ASM_X86_UNALIGNED_H
+#define _ASM_X86_UNALIGNED_H
+
+#include <linux/unaligned/le_byteshift.h>
+#include <linux/unaligned/be_byteshift.h>
+#include <linux/unaligned/generic.h>
+
+#define get_unaligned	__get_unaligned_le
+#define put_unaligned	__put_unaligned_le
+
+#endif /* _ASM_X86_UNALIGNED_H */

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
