Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe6z-0007PZ-FZ
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:17 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so996925wey.36
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:17 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:48 +0200
Message-Id: <1348613994-1793-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
References: <[RFC][PATCH] archosg9: add support for tablet>
 <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/7] Improved an error message and solved a minor bug
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/lib/armlinux.c  | 2 +-
 drivers/mci/omap_hsmmc.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 191274e..74d59a9 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -80,7 +80,7 @@ void armlinux_set_revision(unsigned int rev)
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
 	export_env_ull("armlinux_system_rev", rev);
 #else
-	return armlinux_system_rev;
+	armlinux_system_rev = rev;
 #endif
 }
 
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
