Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFg7-0004yZ-S1
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:42:32 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 21:41:48 +0200
Message-Id: <1283456510-28086-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902194046.GA21449@game.jcrosoft.org>
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
Subject: [PATCH 7/9 V2] cfi_flash: use %W and IEEE 1541 format
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index fa5e5ee..bb72e39 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -713,8 +713,8 @@ static void cfi_info (struct device_d* dev)
 
 	printf ("CFI conformant FLASH (%d x %d)",
 		(info->portwidth << 3), (info->chipwidth << 3));
-	printf ("  Size: %ld MB in %d Sectors\n",
-		info->size >> 20, info->sector_count);
+	printf ("  Size: %WB in %d Sectors\n",
+		info->size, info->sector_count);
 	printf ("  ");
 	switch (info->vendor) {
 		case CFI_CMDSET_INTEL_STANDARD:
@@ -1036,8 +1036,8 @@ static int cfi_probe (struct device_d *dev)
 	}
 
 	if (info->flash_id == FLASH_UNKNOWN) {
-		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
-			dev->map_base, info->size, info->size << 20);
+		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %WB\n",
+			dev->map_base, info->size, info->size);
 		return -ENODEV;
 	}
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
