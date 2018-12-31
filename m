Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbs-0000AG-EX
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id b20so17925652lfa.12
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:40 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:25 +0100
Message-Id: <20181231080725.2141-6-sam@ravnborg.org>
In-Reply-To: <20181231080725.2141-1-sam@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH v1 5/5] video: mtl017: fix driver name variable
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

It look like a copy-paste bug that the twl_driver name
was used.
Rename to the more sensible mtl_driver

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/mtl017.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
index 423fb8e4f..c04875cd0 100644
--- a/drivers/video/mtl017.c
+++ b/drivers/video/mtl017.c
@@ -268,8 +268,8 @@ static int mtl017_probe(struct device_d *dev)
 	return 0;
 }
 
-static struct driver_d twl_driver = {
+static struct driver_d mtl_driver = {
 	.name  = "mtl017",
 	.probe = mtl017_probe,
 };
-device_i2c_driver(twl_driver);
+device_i2c_driver(mtl_driver);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
