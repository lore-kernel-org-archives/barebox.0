Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027c-Bq
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:23 +0200
Message-Id: <1350507817-7819-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/28] ARM nomadik boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Only one board, the nhk8815. This uses hardcoded SDRAM values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nhk8815/Makefile   |    2 ++
 arch/arm/boards/nhk8815/lowlevel.c |   10 ++++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 arch/arm/boards/nhk8815/lowlevel.c

diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
index 2b9dba4..dbb2a71 100644
--- a/arch/arm/boards/nhk8815/Makefile
+++ b/arch/arm/boards/nhk8815/Makefile
@@ -1 +1,3 @@
 obj-y += setup.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
new file mode 100644
index 0000000..3956347
--- /dev/null
+++ b/arch/arm/boards/nhk8815/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0x0, SZ_64M, 0);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
