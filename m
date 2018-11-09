Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TQ-0002hj-BR
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:46 +0100
Message-Id: <20181109095246.15068-21-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/20] Make: Add -Wmissing-prototypes
To: Barebox List <barebox@lists.infradead.org>

-Wmissing-prototypes is a useful warning, so add it to the build.

With this we can detect conflicting function prototypes. When a file
implements a function but doesn't include the header file which
provides the prototype for it then conflicting prototypes would go
unnoticed without this warning.

MIPS already had that warning, so we can remove it from the MIPS
Makefile.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile           | 2 +-
 arch/mips/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index db474af502..203ae20e7e 100644
--- a/Makefile
+++ b/Makefile
@@ -307,7 +307,7 @@ CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffre
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -Werror-implicit-function-declaration \
-                   -fno-strict-aliasing -fno-common -Os -pipe
+                   -fno-strict-aliasing -fno-common -Os -pipe -Wmissing-prototypes
 AFLAGS          := -D__ASSEMBLY__
 
 LDFLAGS_barebox	:= -Map barebox.map
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
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
