Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJi-00051j-Al
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id z9so9240334pfi.2
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:34 -0800
Message-Id: <20190129065549.29161-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/19] nvmem: Do not use DEVFS_IS_CHARACTER_DEV
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There doesn't appear any good reason to mark NVMEM cdevs as
DEVFS_IS_CHARACTER_DEV, since NVMEM devices should be able to
read/write data at arbitrary offsets and are not different from any
other cdevs representing non-volatile storage.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 63c0f997b..9fd599095 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -96,7 +96,6 @@ static int nvmem_register_cdev(struct nvmem_device *nvmem, const char *name)
 	alias = of_alias_get(dev->device_node);
 
 	nvmem->cdev.name = xstrdup(alias ?: name);
-	nvmem->cdev.flags = DEVFS_IS_CHARACTER_DEV;
 	nvmem->cdev.ops = &nvmem_chrdev_ops;
 	nvmem->cdev.dev = &nvmem->dev;
 	nvmem->cdev.size = nvmem->size;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
