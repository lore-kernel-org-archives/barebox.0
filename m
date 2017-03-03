Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjjAw-0005Rw-IN
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 09:07:00 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  3 Mar 2017 10:06:33 +0100
Message-Id: <20170303090633.11500-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170228143127.2945-5-bst@pengutronix.de>
References: <20170228143127.2945-5-bst@pengutronix.de>
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
Subject: [PATCH] fixup! video: add support for Solomon SSD1307 OLED controller
 family
To: barebox@lists.infradead.org

---
 drivers/video/ssd1307fb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index ff4af2cdf493..7437d340ee41 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -415,9 +415,10 @@ static int ssd1307fb_probe(struct device_d *dev)
 					 "reset-gpios", 0);
 	if (!gpio_is_valid(par->reset)) {
 		ret = par->reset;
-		dev_err(&client->dev,
-			"Couldn't get named gpio 'reset-gpios': %s.\n",
-			strerror(-ret));
+		if (ret != -EPROBE_DEFER)
+			dev_err(&client->dev,
+				"Couldn't get named gpio 'reset-gpios': %s.\n",
+				strerror(-ret));
 		goto fb_alloc_error;
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
