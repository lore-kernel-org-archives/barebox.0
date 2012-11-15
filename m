Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYwCX-00053U-Tx
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:57:42 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 15 Nov 2012 10:57:15 +0100
Message-Id: <1352973435-11618-3-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
References: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
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
Subject: [TX53: boot fixes 2/2] tx53: remove reset() when not doing lowlevel
 init.
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?G=C3=BCnter=20Gebhardt?= <guenter.gebhardt@freenet.de>, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

This patch fixes a linker error when PBL_IMAGE=n and DO_LOW_LEVEL_INIT=n.
In this configuration the symbol reset() was present multiple times,
and prevented the barebox image to be linked.


Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/boards/karo-tx53/lowlevel.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 6b7314c..0ca164b 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -3,6 +3,8 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
 
+#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+
 void __naked reset(void)
 {
 	common_reset();
@@ -17,3 +19,4 @@ void __naked reset(void)
 
 	board_init_lowlevel_return();
 }
+#endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
