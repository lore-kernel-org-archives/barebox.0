Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Oj-0001Xt-NJ
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:51 +0100
Message-Id: <20190313094202.14901-5-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/15] ARM: Add arm64 pbl udelay
To: Barebox List <barebox@lists.infradead.org>

PBL often needs a way to udelay execution. Since we have a generic timer
in ARMv8 we can implement a generic udelay.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib64/Makefile |  2 +-
 arch/arm/lib64/pbl.c    | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/lib64/pbl.c

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 4c0019fabe..5068431342 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -6,4 +6,4 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o string.o
 extra-y += barebox.lds
 obj-pbl-y   += runtime-offset.o
 
-pbl-y	+= div0.o
+pbl-y	+= div0.o pbl.o
diff --git a/arch/arm/lib64/pbl.c b/arch/arm/lib64/pbl.c
new file mode 100644
index 0000000000..0cef08e4d2
--- /dev/null
+++ b/arch/arm/lib64/pbl.c
@@ -0,0 +1,17 @@
+#include <asm/system.h>
+#include <clock.h>
+#include <common.h>
+
+void udelay(unsigned long us)
+{
+	unsigned long cntfrq = get_cntfrq();
+	unsigned long ticks = (us * cntfrq) / 1000000;
+	unsigned long start = get_cntpct();
+
+	while ((long)(start + ticks - get_cntpct()) > 0);
+}
+
+void mdelay(unsigned long ms)
+{
+	udelay(ms * 1000);
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
