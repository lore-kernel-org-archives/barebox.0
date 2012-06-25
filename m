Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj84T-000585-48
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:07:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:07:03 +0200
Message-Id: <1340626023-10847-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] sandbox: fix 64bit build
To: barebox@lists.infradead.org

On x86_64 we need CONFIG_PHYS_ADDR_T_64BIT to make the resource sizes
64bit. The kernel has this as a Kconfig variable, but on barebox sandbox
will build with whatever compiler we find, so we can't put it into Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/include/asm/types.h |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index a987219..d471d25 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -7,6 +7,13 @@
  * 64 bit
  */
 #define INTERNAL_SIZE_T unsigned long
+
+/*
+ * This is a Kconfig variable in the Kernel, but we want to detect
+ * this during compile time, so we set it here.
+ */
+#define CONFIG_PHYS_ADDR_T_64BIT
+
 #endif
 
 typedef unsigned short umode_t;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
