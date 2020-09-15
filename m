Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA21-0007ng-U4
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:33 +0200
Message-Id: <20200915122539.18744-5-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM: tx28: provide header file with function prototype
To: Barebox List <barebox@lists.infradead.org>

base_board_init() doesn't have a prototype anywhere, add a header file
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c | 2 ++
 arch/arm/boards/karo-tx28/tx28.c      | 4 ++--
 arch/arm/boards/karo-tx28/tx28.h      | 3 +++
 3 files changed, 7 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx28/tx28.h

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index c9b947953b..56211d7a3a 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -22,6 +22,8 @@
 #include <mach/iomux.h>
 #include <generated/mach-types.h>
 
+#include "tx28.h"
+
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 52f74b5f36..8bd2252410 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -15,6 +15,8 @@
 #include <mach/iomux.h>
 #include <asm/mmu.h>
 
+#include "tx28.h"
+
 /* setup the CPU card internal signals */
 static const uint32_t tx28_pad_setup[] = {
 	/* NAND interface */
@@ -61,8 +63,6 @@ static const uint32_t tx28_pad_setup[] = {
 
 };
 
-extern void base_board_init(void);
-
 static int tx28_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/boards/karo-tx28/tx28.h b/arch/arm/boards/karo-tx28/tx28.h
new file mode 100644
index 0000000000..5fb1e13412
--- /dev/null
+++ b/arch/arm/boards/karo-tx28/tx28.h
@@ -0,0 +1,3 @@
+
+void base_board_init(void);
+
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
