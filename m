Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Suq0f-0004mV-1x
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 19:15:42 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6AB42FF935C
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 21:21:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Jul 2012 21:15:08 +0200
Message-Id: <1343416508-5247-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343416508-5247-1-git-send-email-plagnioj@jcrosoft.com>
References: <1343416508-5247-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] panda: add pbl support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	patch just compiled not test on the platfrom
	if someone can test it

	apply over the pbl patch serie

Best Regards,
J.
 arch/arm/boards/panda/Makefile |    2 ++
 arch/arm/mach-omap/Makefile    |    2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
index c55e26e..12b4d69 100644
--- a/arch/arm/boards/panda/Makefile
+++ b/arch/arm/boards/panda/Makefile
@@ -1 +1,3 @@
 obj-y += board.o lowlevel.o mux.o
+
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index dd9dd5e..e892c1c 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -30,3 +30,5 @@ obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
 obj-y += gpio.o
 
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_core.o
+pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
+pbl-$(CONFIG_ARCH_OMAP4) += syslib.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
