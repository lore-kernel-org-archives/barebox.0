Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kte4R-0003Rp-OS
 for barebox@lists.infradead.org; Sun, 27 Dec 2020 21:59:24 +0000
Received: from astat.fritz.box (a89-183-86-10.net-htp.de [89.183.86.10])
 by lynxeye.de (Postfix) with ESMTPA id BCF89E7422A
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:50:46 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 27 Dec 2020 22:50:39 +0100
Message-Id: <20201227215042.101009-2-dev@lynxeye.de>
In-Reply-To: <20201227215042.101009-1-dev@lynxeye.de>
References: <20201227215042.101009-1-dev@lynxeye.de>
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
Subject: [PATCH 2/5] ddr: imx8m: remove bogus defines
To: barebox@lists.infradead.org

Most of those defines aren't used. Whether DDR_ONE_RANK should be defined
is really dependent on the used DRAM on a specific board, so move this
from the common header into the board DRAM setup.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c | 2 ++
 include/soc/imx8m/lpddr4_define.h              | 7 -------
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
index 8d6cc389ba9b..e7c01f9cc9a0 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
@@ -5,6 +5,8 @@
 
 #include <common.h>
 #include <soc/imx8m/ddr.h>
+
+#define DDR_ONE_RANK
 #include <soc/imx8m/lpddr4_define.h>
 
 static struct dram_cfg_param lpddr4_ddrc_cfg[] = {
diff --git a/include/soc/imx8m/lpddr4_define.h b/include/soc/imx8m/lpddr4_define.h
index caf5bafb6d02..805357959349 100644
--- a/include/soc/imx8m/lpddr4_define.h
+++ b/include/soc/imx8m/lpddr4_define.h
@@ -6,13 +6,6 @@
 #ifndef __LPDDR4_DEFINE_H_
 #define __LPDDR4_DEFINE_H_
 
-#define LPDDR4_DVFS_DBI
-#define DDR_ONE_RANK
-/* #define LPDDR4_DBI_ON */
-#define DFI_BUG_WR
-#define M845S_4GBx2
-#define PRETRAIN
-
 /* DRAM MR setting */
 #ifdef LPDDR4_DBI_ON
 #define LPDDR4_MR3			0xf1
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
