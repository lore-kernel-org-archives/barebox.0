Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxb-0005NU-UB
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:26 +0000
Received: by mail-pg0-x242.google.com with SMTP id x23so1670681pgx.3
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:04:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:03:08 -0800
Message-Id: <1481565788-9115-22-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 21/21] i.MX: vf610-twr: Remove MSCM setup code
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
