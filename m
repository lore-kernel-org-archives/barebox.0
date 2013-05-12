Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbcuL-0007hU-I8
 for barebox@lists.infradead.org; Sun, 12 May 2013 20:30:14 +0000
Received: by mail-ee0-f43.google.com with SMTP id b15so3348568eek.2
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 13:29:52 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 22:29:44 +0200
Message-Id: <1368390584-18786-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368364146-6024-6-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 5/5] arm: mach-mvebu: rename Armada 370/XP core code
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

There are more than Armada 370/XP in Marvell MVEBU SoC familiy. To avoid
irritation with source file nameing, we rename setup source file for
Armada 370/XP from core.c to armada-370-xp.c.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Changelog:
v1->v2:
- make rename appear as rename not delete/add (Suggested by Thomas Petazzoni)

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Makefile                    |    4 ++--
 arch/arm/mach-mvebu/{core.c => armada-370-xp.c} |    0
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm/mach-mvebu/{core.c => armada-370-xp.c} (100%)

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 0257b73..043f08f 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,3 +1,3 @@
-obj-$(CONFIG_ARCH_ARMADA_370)	+= core.o
-obj-$(CONFIG_ARCH_ARMADA_XP)	+= core.o
+obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
+obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/core.c b/arch/arm/mach-mvebu/armada-370-xp.c
similarity index 100%
rename from arch/arm/mach-mvebu/core.c
rename to arch/arm/mach-mvebu/armada-370-xp.c
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
