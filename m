Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Us96V-0004T2-JR
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 10:07:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Jun 2013 12:06:40 +0200
Message-Id: <1372327600-24715-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Marvell boards: Fix out of tree compilation
To: barebox@lists.infradead.org

The Marvell boards accidently add a .c instead of a .o file
to the targets. This has the side effect of breaking out of tree
compilation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/globalscale-mirabox/Makefile | 2 +-
 arch/arm/boards/solidrun-cubox/Makefile      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
index 9320510..dcfc293 100644
--- a/arch/arm/boards/globalscale-mirabox/Makefile
+++ b/arch/arm/boards/globalscale-mirabox/Makefile
@@ -1 +1 @@
-obj-y += board.c
+obj-y += board.o
diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
index 9320510..dcfc293 100644
--- a/arch/arm/boards/solidrun-cubox/Makefile
+++ b/arch/arm/boards/solidrun-cubox/Makefile
@@ -1 +1 @@
-obj-y += board.c
+obj-y += board.o
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
