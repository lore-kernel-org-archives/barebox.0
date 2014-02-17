Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUmG-0003Mi-W6
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:26:59 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 2C93C18B425F
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:03 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:34 +0100
Message-Id: <1392668861-10915-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
References: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 1/8] tegra: add -fno-jump-tables to lowlevel code
To: barebox@lists.infradead.org

Lowlevel code runs when not relocated yet, so we have to make extra sure
not to emit jump-tables with absolute adresses when evaluating switch
statements.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 0fa8430..791d5d4 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,5 +1,5 @@
-CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
-CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t -fno-jump-tables
+CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t -fno-jump-tables
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
