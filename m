Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOA7m-00007g-48
 for barebox@lists.infradead.org; Sat, 28 Apr 2012 16:03:55 +0000
Received: by eaak13 with SMTP id k13so408979eaa.36
 for <barebox@lists.infradead.org>; Sat, 28 Apr 2012 09:03:52 -0700 (PDT)
From: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
Date: Sat, 28 Apr 2012 18:03:10 +0200
Message-Id: <1335628990-12019-1-git-send-email-jaccon.bastiaansen@gmail.com>
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
Subject: [PATCH] Increase heapsize for i.MX21ADS board again.
To: barebox@lists.infradead.org

Barebox cannot boot the recent mainline Linux kernels for the
i.MX21ADS board anymore when using TFTP, because the heap is too
small.

Signed-off-by: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
---
 arch/arm/configs/mx21ads_defconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 175c229..e63a386 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -2,8 +2,8 @@ CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX21=y
 CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_TEXT_BASE=0xc1000000
-CONFIG_MALLOC_SIZE=0x500000
+CONFIG_TEXT_BASE=0xc3000000
+CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
