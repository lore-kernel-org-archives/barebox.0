Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVVYN-0002Gy-L7
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 21:49:28 +0000
Received: by eaac10 with SMTP id c10so4365082eaa.36
 for <barebox@lists.infradead.org>; Tue, 29 Nov 2011 13:49:25 -0800 (PST)
From: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
Date: Tue, 29 Nov 2011 22:48:26 +0100
Message-Id: <1322603306-7121-1-git-send-email-jaccon.bastiaansen@gmail.com>
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
Subject: [PATCH 1/1] Increase heapsize for i.MX21ADS board.
To: barebox@lists.infradead.org

Barebox cannot boot the recent mainline Linux kernels for the
i.MX21ADS board anymore when using TFTP, because the heap is too
small.

This is solved by increasing the heapsize to 5Mbyte.


Signed-off-by: Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
---
 arch/arm/configs/mx21ads_defconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 52f84e1..175c229 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARCH_IMX21=y
 CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xc1000000
+CONFIG_MALLOC_SIZE=0x500000
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
