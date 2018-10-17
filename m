Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCmVS-0001TD-QX
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 14:09:08 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 17 Oct 2018 16:08:49 +0200
Message-Id: <20181017140849.10433-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] Makefile: move -Wmissing-prototypes from mips to main
 Makefile
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Currently we get -Wmissing-prototypes warning only on arch/mips.
With this patch we should be able to see this warning on all supported
architectures.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Makefile           | 2 +-
 arch/mips/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 70d501ba5e..fa2020a07d 100644
--- a/Makefile
+++ b/Makefile
@@ -306,7 +306,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
 CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
-                   -Werror-implicit-function-declaration \
+                   -Werror-implicit-function-declaration -Wmissing-prototypes \
                    -fno-strict-aliasing -fno-common -Os -pipe
 AFLAGS          := -D__ASSEMBLY__
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 3342e0eafd..6338dc174d 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -12,7 +12,7 @@ endif
 CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
 cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
-cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
+cflags-y += -Wall -Wstrict-prototypes \
 	-Wno-uninitialized -Wno-format -Wno-main
 
 ifdef CONFIG_32BIT
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
