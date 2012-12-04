Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfrDf-0004ey-Lo
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 12:03:24 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  4 Dec 2012 13:02:49 +0100
Message-Id: <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

MLO is located in SRAM and OMAP4 does not allow unaligned access in
this area:

| :/ md -w 0x40300000+2
| 40300000: 9001                                               ..
| :/ md -w 0x40300001+2
| unable to handle paging request at address 0x40300001

Patch sets the ARM_NOUNALIGNED option introduced by a previous patch.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/mach-omap/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 81f6127..445a35a 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -68,6 +68,7 @@ config OMAP_GPMC
 
 config OMAP_BUILD_IFT
 	prompt "build ift binary"
+	select ARM_NOUNALIGNED
 	bool
 
 config OMAP_BUILD_SPI
-- 
1.7.11.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
