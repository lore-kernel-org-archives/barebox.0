Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrAVM-00083Q-5M
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 14:11:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 16:10:22 +0200
Message-Id: <1283436624-29567-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
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
Subject: [PATCH 7/9] cfi_flash: use %W and IEEE 1541 format
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fa5e5ee..cbca368 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -713,7 +713,7 @@ static void cfi_info (struct device_d* dev)
 
 	printf ("CFI conformant FLASH (%d x %d)",
 		(info->portwidth << 3), (info->chipwidth << 3));
-	printf ("  Size: %ld MB in %d Sectors\n",
+	printf ("  Size: %WiB in %d Sectors\n",
 		info->size >> 20, info->sector_count);
 	printf ("  ");
 	switch (info->vendor) {
@@ -1036,7 +1036,7 @@ static int cfi_probe (struct device_d *dev)
 	}
 
 	if (info->flash_id == FLASH_UNKNOWN) {
-		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
+		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %WiB\n",
 			dev->map_base, info->size, info->size << 20);
 		return -ENODEV;
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
