Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7V0-00073B-S6
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:56:15 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Yk7Ue-00089K-PF
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 10:55:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 10:55:49 +0200
Message-Id: <1429520152-27399-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] MCI: pxa: depend on right symbol
To: barebox@lists.infradead.org

Now that we also have PXA3XX support the dependency on
ARCH_PXA is too broad for this driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 31f7d2d4eae6..ebd8da9591ec 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -95,7 +95,7 @@ config MCI_OMAP_HSMMC
 
 config MCI_PXA
 	bool "PXA"
-	depends on ARCH_PXA
+	depends on ARCH_PXA2XX
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  XScale PXA25x / PXA27x based system.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
