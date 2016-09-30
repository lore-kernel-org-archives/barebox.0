Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpvBA-0002DH-41
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 10:36:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bpvAm-0004az-CW
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 12:36:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 12:36:02 +0200
Message-Id: <20160930103607.15791-5-l.stach@pengutronix.de>
In-Reply-To: <20160930103607.15791-1-l.stach@pengutronix.de>
References: <20160930103607.15791-1-l.stach@pengutronix.de>
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
Subject: [PATCH 05/10] arm(64): move HAS_DMA and HAS_MODULES to CPU_32
To: barebox@lists.infradead.org

We don't yet have an implementation for those two features on ARM64, so move
them to a place where they are only selected for a 32bit barebox.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig     | 2 --
 arch/arm/cpu/Kconfig | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 150320c6af86..cb121ab98dcb 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1,8 +1,6 @@
 config ARM
 	bool
 	select HAS_KALLSYMS
-	select HAS_MODULES
-	select HAS_DMA
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_IMAGE
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 9928120cc020..e45e05bdb19d 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -5,6 +5,8 @@ config PHYS_ADDR_T_64BIT
 
 config CPU_32
 	bool
+	select HAS_MODULES
+	select HAS_DMA
 
 config CPU_64
 	bool
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
