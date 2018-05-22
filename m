Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ic-0003G0-WF
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:09 +0000
Received: by mail-wm0-x243.google.com with SMTP id f8-v6so942629wmc.4
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:33:59 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:34 +0300
Message-Id: <20180522153342.24933-5-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 04/12] i2c-mux-pca954x: fix out-of-bounds write for 64 bit
 systems
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

get_drv_data(..., &data->type) overwrites memory beyond data->type member due
to mismatch of sizeof(enum pca_type) and sizeof(void *) on 64 bit systems.

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
