Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLGLh-0000FV-Pn
 for barebox@lists.infradead.org; Tue, 22 May 2018 23:05:50 +0000
Received: by mail-pf0-x244.google.com with SMTP id x9-v6so9493285pfm.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 16:05:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 16:05:17 -0700
Message-Id: <20180522230518.9070-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180522230518.9070-1-andrew.smirnov@gmail.com>
References: <20180522230518.9070-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] nvmem: Use name from struct nvmem_config for cdev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Original name, 'nvmemN', doesn't really give any hint about which
physical HW it may represent, so change the code to either pick up an
DT alias or use the name passed via 'struct nvmem_config'.

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 172fa8b72..53b934bb3 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -88,26 +88,14 @@ static struct cdev_operations nvmem_chrdev_ops = {
 	.lseek = dev_lseek_default,
 };
 
-static int nvmem_register_cdev(struct nvmem_device *nvmem)
+static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 {
 	struct device_d *dev = &nvmem->dev;
 	const char *alias;
-	char *devname;
-	int err;
 
 	alias = of_alias_get(dev->device_node);
-	if (alias) {
-		devname = xstrdup(alias);
-	} else {
-		err = cdev_find_free_index("nvmem");
-		if (err < 0) {
-			dev_err(dev, "no index found to name device\n");
-			return err;
-		}
-		devname = xasprintf("nvmem%d", err);
-	}
 
-	nvmem->cdev.name = devname;
+	nvmem->cdev.name = xstrdup(alias ?: name);
 	nvmem->cdev.flags = DEVFS_IS_CHARACTER_DEV;
 	nvmem->cdev.ops = &nvmem_chrdev_ops;
 	nvmem->cdev.dev = &nvmem->dev;
@@ -222,7 +210,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 		return ERR_PTR(rval);
 	}
 
-	rval = nvmem_register_cdev(nvmem);
+	rval = nvmem_register_cdev(nvmem, config->name);
 	if (rval) {
 		kfree(nvmem);
 		return ERR_PTR(rval);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
