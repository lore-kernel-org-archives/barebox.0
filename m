Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cd-00027Q-Uf
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:12 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so931637wib.0
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:10 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:30 +0200
Message-Id: <1348973437-31132-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/9] mmc_omap: improve error message
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 drivers/mci/omap_hsmmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index e0b245b..e6f4e47 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -238,7 +238,7 @@ static int mmc_init_setup(struct mci_host *mci, struct device_d *dev)
 	start = get_time_ns();
 	while ((readl(&mmc_base->sysstatus) & RESETDONE) == 0) {
 		if (is_timeout(start, SECOND)) {
-			dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
+			dev_dbg(hsmmc->dev, "timeout waiting for reset done\n");
 			return -ETIMEDOUT;
 		}
 	}
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
