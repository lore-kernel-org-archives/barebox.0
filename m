Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp43.i.mail.ru ([94.100.177.103])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WP3YU-0006M6-GG
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 05:24:16 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Mar 2014 09:23:44 +0400
Message-Id: <1394947424-25936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] mci: core: Typo fix in printk specifier
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a18b555..1dca0c0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1813,7 +1813,7 @@ void mci_of_parse(struct mci_host *host)
 		break;
 	default:
 		dev_err(host->hw_dev,
-			"Invalid \"bus-width\" value %ud!\n", bus_width);
+			"Invalid \"bus-width\" value %u!\n", bus_width);
 	}
 
 	/* f_max is obtained from the optional "max-frequency" property */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
