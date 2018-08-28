Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuYUt-0002Bs-Po
 for barebox@lists.infradead.org; Tue, 28 Aug 2018 07:33:21 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8A18FA002FF
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2018 09:33:28 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 28 Aug 2018 09:32:50 +0200
Message-Id: <1535441570-35661-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] arm: mach-omap: bbu_emmc: Fix return value
To: barebox@lists.infradead.org

Update handler returned the written bytes of the partition table on success
instead of 0. Return 0 or error code now.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/am33xx_bbu_emmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
index d3adb3744c95..1fd7222ddcea 100644
--- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -73,7 +73,7 @@ error_save_part_table:
 
 error:
 	close(fd);
-	return ret;
+	return (ret > 0) ? 0 : ret;
 }
 
 int am33xx_bbu_emmc_mlo_register_handler(const char *name, char *devicefile)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
