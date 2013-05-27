Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtDR-0001N2-Lx
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:55:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:55:03 +0200
Message-Id: <1369644903-27284-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644903-27284-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644903-27284-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] cfi: make hardware device parent of mtd device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 645d93a..3b2346e 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -962,6 +962,7 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->numeraseregions = info->numeraseregions;
 	mtd->flags = MTD_CAP_NORFLASH;
 	mtd->type = MTD_NORFLASH;
+	mtd->parent = info->dev;
 
 	add_mtd_device(mtd, "nor");
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
