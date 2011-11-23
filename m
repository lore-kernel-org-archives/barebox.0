Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTK7N-0004Yc-2j
 for barebox@lists.infradead.org; Wed, 23 Nov 2011 21:12:34 +0000
Received: by bkat2 with SMTP id t2so2163898bka.36
 for <barebox@lists.infradead.org>; Wed, 23 Nov 2011 13:12:31 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed, 23 Nov 2011 22:12:27 +0100
Message-Id: <1322082748-17409-4-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
References: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 3/4] nios2: Include asm/unaligned.h
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

drivers/ata/disk_drive.c needs it....

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/include/asm/unaligned.h |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/unaligned.h

diff --git a/arch/nios2/include/asm/unaligned.h b/arch/nios2/include/asm/unaligned.h
new file mode 100644
index 0000000..7615e8a
--- /dev/null
+++ b/arch/nios2/include/asm/unaligned.h
@@ -0,0 +1,15 @@
+#ifndef _ASM_NIOS_UNALIGNED_H
+#define _ASM_NIOS_UNALIGNED_H
+
+#include <linux/unaligned/le_byteshift.h>
+#include <linux/unaligned/be_byteshift.h>
+#include <linux/unaligned/generic.h>
+
+/*
+ * Select endianness
+ */
+
+#define get_unaligned	__get_unaligned_le
+#define put_unaligned	__put_unaligned_le
+
+#endif /* _ASM_NIOS_UNALIGNED_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
