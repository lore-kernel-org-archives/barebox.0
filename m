Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLFki-0005Yu-4f
 for barebox@lists.infradead.org; Tue, 22 May 2018 22:27:34 +0000
Received: by mail-pf0-x242.google.com with SMTP id c10-v6so9431229pfi.12
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 15:27:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 15:27:14 -0700
Message-Id: <20180522222714.26549-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] nvmem: snvs_lpgpr: Drop stray commas
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/snvs_lpgpr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index 6c79743cc..fe7fe599f 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -113,10 +113,10 @@ static int snvs_lpgpr_probe(struct device_d *dev)
 	cfg = &priv->cfg;
 	cfg->name = dev_name(dev);
 	cfg->dev = dev;
-	cfg->stride = 4,
-	cfg->word_size = 4,
-	cfg->size = 4,
-	cfg->bus = &snvs_lpgpr_nvmem_bus,
+	cfg->stride = 4;
+	cfg->word_size = 4;
+	cfg->size = 4;
+	cfg->bus = &snvs_lpgpr_nvmem_bus;
 
 	nvmem = nvmem_register(cfg);
 	if (IS_ERR(nvmem)) {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
