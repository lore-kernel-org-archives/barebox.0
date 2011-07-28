Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNW7-0000y8-J4
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:08:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:08:32 +0200
Message-Id: <1311847712-23515-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] net i.MX fec: rename driver struct to be generic
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 72f7faa..4cfb98b 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -666,7 +666,7 @@ static void fec_remove(struct device_d *dev)
 /**
  * Driver description for registering
  */
-static struct driver_d imx27_driver = {
+static struct driver_d fec_driver = {
         .name   = "fec_imx",
         .probe  = fec_probe,
 	.remove = fec_remove,
@@ -674,7 +674,7 @@ static struct driver_d imx27_driver = {
 
 static int fec_register(void)
 {
-        register_driver(&imx27_driver);
+        register_driver(&fec_driver);
         return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
