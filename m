Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPB-0004Wm-KF
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:24 +0000
Received: by mail-wm0-x242.google.com with SMTP id a8-v6so24827344wmg.5
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:55:01 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:30 +0300
Message-Id: <20180521115438.26493-5-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-1-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 04/12] i2c/muxes/i2c-mux-pca954x: fix private data
 retrieval for 64bit mode
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 0d5515b71..395254cdc 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -180,6 +180,7 @@ static int pca954x_probe(struct device_d *dev)
 	struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
 	int num, force;
 	struct pca954x *data;
+	uintptr_t tmp;
 	int ret = -ENODEV;
 	int gpio;
 
@@ -203,7 +204,8 @@ static int pca954x_probe(struct device_d *dev)
 		goto exit_free;
 	}
 
-	ret = dev_get_drvdata(dev, (const void **)&data->type);
+	ret = dev_get_drvdata(dev, (const void **)&tmp);
+	data->type = tmp;
 	if (ret)
 		goto exit_free;
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
