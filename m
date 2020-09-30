Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNc5k-0001kV-ES
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 13:24:21 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kNc5i-0004GK-9D
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 15:24:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Sep 2020 15:24:16 +0200
Message-Id: <20200930132417.351944-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] drivers/ddr/imx8: remove leftover DEBUG defines
To: barebox@lists.infradead.org

This produces quite a bit of log noise and should not be
enabled by default.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/ddr/imx8m/ddr_init.c     | 2 +-
 drivers/ddr/imx8m/ddrphy_train.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 374601b786c2..093b9ea905db 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -2,7 +2,7 @@
 /*
  * Copyright 2018-2019 NXP
  */
-#define DEBUG
+
 #include <common.h>
 #include <errno.h>
 #include <io.h>
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index c2238cc66b3b..2563b809467a 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -2,7 +2,7 @@
 /*
  * Copyright 2018 NXP
  */
-#define DEBUG
+
 #include <common.h>
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
