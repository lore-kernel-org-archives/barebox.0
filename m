Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1ePVnx-0008Gn-VS
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 15:52:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A8869A001FB
 for <barebox@lists.infradead.org>; Thu, 14 Dec 2017 16:53:26 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 14 Dec 2017 16:51:15 +0100
Message-Id: <1513266675-49103-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] ARM: boards: phytec-som-am335x: Fallback ram timings
To: barebox@lists.infradead.org

The 'get_ram_size' function can return false values with 1GB RAMs during
warm reset. If a not-existing RAM size will be returned, the fallback
RAM timings get loaded to prevent hangs.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index b1576ee..5030966 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -174,8 +174,9 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 		/* Find the ram size and set up the correct ram timings */
 		ramsize = get_ram_size((long *) 0x80000000, SZ_1G);
 		timing = get_timings_by_size(module_family, ramsize);
+		/* In case of a failure, load generic ram timings as fallback */
 		if (!timing)
-			hang();
+			timing = get_minimal_timings(module_family);
 	}
 
 	am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
