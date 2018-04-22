Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [84.19.187.99] (helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAJc5-0005lc-Sl
 for barebox@lists.infradead.org; Sun, 22 Apr 2018 18:21:27 +0000
Received: from localhost (p50851871.dip0.t-ipconnect.de [80.133.24.113])
 by lah-a2.de (Postfix) with ESMTPSA id 81A75408BC0A
 for <barebox@lists.infradead.org>; Sun, 22 Apr 2018 20:18:32 +0200 (CEST)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Sun, 22 Apr 2018 20:21:11 +0200
Message-Id: <20180422182111.22256-1-mail@schmidt-andreas.de>
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
Subject: [PATCH] watchdog: core: check hwdev before use it
To: barebox@lists.infradead.org

Avoid null pointer access, if hwdev was not
set before call watchdog_register.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---
 drivers/watchdog/wd_core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index d3305443d..56e8626cb 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -112,10 +112,12 @@ static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
-	const char *alias;
+	const char *alias = NULL;
 	int ret = 0;
 
-	alias = of_alias_get(wd->hwdev->device_node);
+	if (wd->hwdev)
+		alias = of_alias_get(wd->hwdev->device_node);
+
 	if (alias)
 		ret = watchdog_register_dev(wd, alias, DEVICE_ID_SINGLE);
 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
