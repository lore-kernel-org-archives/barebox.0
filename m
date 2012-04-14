Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5wt-0001G5-Lr
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:35:44 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B76A2FF87A4
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:36:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:17:42 +0200
Message-Id: <1334420262-4823-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414161509.GC30672@game.jcrosoft.org>
References: <20120414161509.GC30672@game.jcrosoft.org>
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
Subject: [PATCH 3/3] beagle/xload: update defconfig
To: barebox@lists.infradead.org

enable Thumb2 and menu support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index d951b1c..8a1fe84 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_TEXT_BASE=0x40200000
@@ -12,6 +13,7 @@ CONFIG_MALLOC_BASE=0x87BFFF10
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="X-load Beagle>"
 CONFIG_SHELL_NONE=y
+CONFIG_MENU=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_CONSOLE_FULL is not set
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
