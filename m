Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003yw-HR
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:58:58 +0200
Message-Id: <1351234748-24994-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] ARM Samsung: fix pbl build for tiny210 board
To: barebox@lists.infradead.org

The Tiny210 needs lowlevel.o and memory setup in the pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-tiny210/Makefile |    1 +
 arch/arm/mach-samsung/Makefile               |    1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boards/friendlyarm-tiny210/Makefile b/arch/arm/boards/friendlyarm-tiny210/Makefile
index 9c38e60..20060a5 100644
--- a/arch/arm/boards/friendlyarm-tiny210/Makefile
+++ b/arch/arm/boards/friendlyarm-tiny210/Makefile
@@ -1 +1,2 @@
 obj-y += tiny210.o lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 0ffe370..46393e1 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -7,4 +7,5 @@ pbl-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o mem-s3c64xx.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
+pbl-$(CONFIG_ARCH_S5PCxx) += mem-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
