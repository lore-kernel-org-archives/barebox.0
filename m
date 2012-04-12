Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wp050.webpack.hosteurope.de ([2a01:488:42::50ed:8439])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIOBf-0003n2-7m
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 17:52:04 +0000
Date: Thu, 12 Apr 2012 19:50:41 +0200
From: Uwe Hermann <uwe@hermann-uwe.de>
Message-ID: <20120412175041.GD621@greenwood>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] menuconfig: Show "Barebox", not "Linux" at the top.
To: barebox@lists.infradead.org

The menuconfig configures Barebox, not the Linux kernel, so no reason
to print "Linux" there.

Signed-off-by: Uwe Hermann <uwe@hermann-uwe.de>
---
 Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Kconfig b/Kconfig
index 8e994df..53d4f5a 100644
--- a/Kconfig
+++ b/Kconfig
@@ -2,7 +2,7 @@
 # For a description of the syntax of this configuration file,
 # see Documentation/kbuild/kconfig-language.txt.
 #
-mainmenu "Linux/$ARCH $KERNELVERSION Barebox Configuration"
+mainmenu "Barebox/$ARCH $KERNELVERSION Configuration"
 
 config SRCARCH
 	string
-- 
1.7.9.5


-- 
http://hermann-uwe.de     | http://sigrok.org
http://randomprojects.org | http://unmaintained-free-software.org

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
