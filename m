Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4n1Z-0002VD-VV
 for barebox@lists.infradead.org; Mon, 23 May 2016 10:23:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 May 2016 12:23:26 +0200
Message-Id: <1463999006-11159-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: base: Match simple-mfd devices
To: Barebox List <barebox@lists.infradead.org>

Some simple-buses are now considered to be simple-mfd devices. Match
them aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index cbe7b7c..3099c91 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1787,6 +1787,8 @@ const struct of_device_id of_default_bus_match_table[] = {
 	{
 		.compatible = "simple-bus",
 	}, {
+		.compatible = "simple-mfd",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
