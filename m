Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bI9ew-0005w3-R9
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 07:11:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jun 2016 09:11:20 +0200
Message-Id: <1467184280-27124-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] boot command: Make verbose/dryrun options work again
To: Barebox List <barebox@lists.infradead.org>

Fixes: bc94fb3 bootm: Initialize bootm_data defaults in single place

bootm_data_init_defaults() must be called before filling in the values
from the commandline options, otherwise the values will be overwritten
in bootm_data_init_defaults().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index bd1be4b..c091b2e 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -52,10 +52,13 @@ static int boot_script(char *path)
 		goto out;
 	}
 
-	data.verbose = verbose;
-	data.dryrun = dryrun;
 	bootm_data_init_defaults(&data);
 
+	if (verbose)
+		data.verbose = verbose;
+	if (dryrun)
+		data.dryrun = dryrun;
+
 	ret = bootm_boot(&data);
 	if (ret)
 		pr_err("Booting %s failed: %s\n", basename(path), strerror(-ret));
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
