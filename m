Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f179.google.com ([209.85.217.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz8o5-0000Wf-IV
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 16:40:42 +0000
Received: by mail-lb0-f179.google.com with SMTP id j14so2212519lbo.10
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 08:40:40 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jan 2013 20:52:37 +0400
Message-Id: <1359219160-18500-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
References: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/4] MIPS: introduce ram0 regions register function
To: barebox@lists.infradead.org

On MIPS there are two segments in CPU address space that
can be used for untranslated memory access: KSEG0 and KSEG1.
KSEG0 is used for cached access and KSEG1 is used for
uncached one.

The instroduced mips_add_ram0() function registers two
address regions for memory access: one in KSEG0 and
the other one in KSEG1.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/memory.h |   12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/mips/include/asm/memory.h

diff --git a/arch/mips/include/asm/memory.h b/arch/mips/include/asm/memory.h
new file mode 100644
index 0000000..2aa28b7
--- /dev/null
+++ b/arch/mips/include/asm/memory.h
@@ -0,0 +1,12 @@
+#ifndef __ASM_MIPS_MEMORY_H
+#define __ASM_MIPS_MEMORY_H
+
+#include <memory.h>
+#include <asm/addrspace.h>
+
+static inline void mips_add_ram0(resource_size_t size)
+{
+	barebox_add_memory_bank("kseg0_ram0", KSEG0, size);
+	barebox_add_memory_bank("kseg1_ram0", KSEG1, size);
+}
+#endif	/* __ASM_MIPS_MEMORY_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
