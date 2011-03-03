Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUI-0003OY-1a
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:19 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1676066wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:13 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:40 +0100
Message-Id: <4d701d41.9009d80a.2cd3.5e8d@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 26/54] Add arch/nios2/include/asm/bitsperlong.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/bitsperlong.h

---
 arch/nios2/include/asm/bitsperlong.h |   32 ++++++++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/bitsperlong.h

diff --git a/arch/nios2/include/asm/bitsperlong.h b/arch/nios2/include/asm/bitsperlong.h
new file mode 100644
index 0000000..4ae54e0
--- /dev/null
+++ b/arch/nios2/include/asm/bitsperlong.h
@@ -0,0 +1,32 @@
+#ifndef __ASM_GENERIC_BITS_PER_LONG
+#define __ASM_GENERIC_BITS_PER_LONG
+
+/*
+ * There seems to be no way of detecting this automatically from user
+ * space, so 64 bit architectures should override this in their
+ * bitsperlong.h. In particular, an architecture that supports
+ * both 32 and 64 bit user space must not rely on CONFIG_64BIT
+ * to decide it, but rather check a compiler provided macro.
+ */
+#ifndef __BITS_PER_LONG
+#define __BITS_PER_LONG 32
+#endif
+
+#ifdef __KERNEL__
+
+#ifdef CONFIG_64BIT
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif /* CONFIG_64BIT */
+
+/*
+ * FIXME: The check currently breaks x86-64 build, so it's
+ * temporarily disabled. Please fix x86-64 and reenable
+ */
+#if 0 && BITS_PER_LONG != __BITS_PER_LONG
+#error Inconsistent word size. Check asm/bitsperlong.h
+#endif
+
+#endif /* __KERNEL__ */
+#endif /* __ASM_GENERIC_BITS_PER_LONG */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
