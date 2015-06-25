Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Buh-00013K-AX
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 18:30:16 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Jun 2015 20:29:11 +0200
Message-Id: <1435256953-7307-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435256953-7307-1-git-send-email-dev@lynxeye.de>
References: <1435256953-7307-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH repost 2/4] MCI: pxa: depend on right symbol
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Now that we also have PXA3XX support the dependency on
ARCH_PXA is too broad for this driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 31f7d2d..ebd8da9 100644
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
