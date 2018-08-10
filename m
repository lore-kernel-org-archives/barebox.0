Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCV3-0006Qc-M3
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 18:51:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id b11-v6so4932865pfo.3
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 11:50:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 11:50:33 -0700
Message-Id: <20180810185033.7019-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX: freescale-mx6sx-sabresdb: Make ar8031_phy_fixup
 static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Declare ar8031_phy_fixup as static since it is not being exported to
any other users.
---
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 028b1dddb..0fd9af80c 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -161,7 +161,7 @@ err_out:
 }
 fs_initcall(imx6sx_sdb_setup_pmic_voltages);
 
-int ar8031_phy_fixup(struct phy_device *phydev)
+static int ar8031_phy_fixup(struct phy_device *phydev)
 {
 	/*
 	 * Enable 1.8V(SEL_1P5_1P8_POS_REG) on
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
