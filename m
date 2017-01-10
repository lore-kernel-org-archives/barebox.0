Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy40-0002m9-GL
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:18 +0000
Received: by mail-pf0-x241.google.com with SMTP id 127so29397487pfg.0
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:13 -0800
Message-Id: <20170110150913.31416-21-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 20/20] i.MX: vf610-twr: Remove MSCM setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Recent kernel versions should have appropriate driver code that sets up
interrupt rounting correctly, so there's no need for that to be done in
the bootloader.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/freescale-vf610-twr/lowlevel.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index 6504273..109d44e 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -29,14 +29,9 @@ ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
 {
 	int i;
 	void *fdt;
-	void __iomem *mscm = IOMEM(VF610_MSCM_BASE_ADDR);
 
 	vf610_cpu_lowlevel_init();
 
-	for (i = 0; i < VF610_MSCM_IRSPRC_NUM; i++)
-		writew(VF610_MSCM_IRSPRC_CP0_EN,
-		       mscm + VF610_MSCM_IRSPRC(i));
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
