Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68qw-0006XZ-DD
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 08:12:37 +0000
Received: from geraet.fritz.box (muedsl-82-207-211-016.citykom.de
 [82.207.211.16]) (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 12B5B60012
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 08:11:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Feb 2020 09:11:53 +0100
Message-Id: <20200224081154.526146-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] ARM: stm32mp: dk2: delete unused includes
To: barebox@lists.infradead.org

These includes are no longer needed because we don't need to hard code
memory size in board code anymore for the STM32MP. Drop them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/stm32mp157c-dk2/board.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 6da99d9353ac..46366031218d 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -1,9 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
-#include <linux/sizes.h>
 #include <init.h>
-#include <asm/memory.h>
-#include <mach/stm32.h>
 #include <mach/bbu.h>
 
 static int dk2_postcore_init(void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
