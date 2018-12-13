Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL93-00051n-Oy
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:10:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id t13so592232ply.13
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:10:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:33 -0800
Message-Id: <20181213071033.30932-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071033.30932-1-andrew.smirnov@gmail.com>
References: <20181213071033.30932-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] video: mtl017: Make sure errno is not used as a regulator
 pointer
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since regulator_get() can return an errno via regulator pointer, we
need to make sure we handle that case without passing bogus pointers
around.

Add code to convert mtl017->regulator to a dummy regulator if
regulator_get() fails.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/video/mtl017.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index 085ea110b..423fb8e4f 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -244,6 +244,9 @@ static int mtl017_probe(struct device_d *dev)
 	mtl017->client = to_i2c_client(dev);
 	mtl017->regulator = regulator_get(dev, "vdd");
 
+	if (IS_ERR(mtl017->regulator))
+		mtl017->regulator = NULL;
+
 	mtl017->enable_gpio = of_get_named_gpio_flags(dev->device_node,
 			"enable-gpios", 0, &flags);
 	if (gpio_is_valid(mtl017->enable_gpio)) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
