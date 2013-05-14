Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNmS-0002Hw-HN
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:33:13 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:20 +0200
Message-Id: <1368570745-23348-8-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 07/12] arm: mach-mvebu: rename Armada 370/XP core code
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

There are more than Armada 370/XP in Marvell MVEBU SoC familiy. To avoid
irritation with source file nameing, we rename setup source file for
Armada 370/XP from core.c to armada-370-xp.c.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/Makefile                    |    3 ++-
 arch/arm/mach-mvebu/{core.c => armada-370-xp.c} |    0
 2 files changed, 2 insertions(+), 1 deletion(-)
 rename arch/arm/mach-mvebu/{core.c => armada-370-xp.c} (100%)

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 820eb10..16d271d 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1 +1,2 @@
-obj-y += core.o
+obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
+obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
diff --git a/arch/arm/mach-mvebu/core.c b/arch/arm/mach-mvebu/armada-370-xp.c
similarity index 100%
rename from arch/arm/mach-mvebu/core.c
rename to arch/arm/mach-mvebu/armada-370-xp.c
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
