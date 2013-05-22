Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3sF-0001Xi-58
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:54:15 +0000
Received: from mailout-de.gmx.net ([10.1.76.29]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0LiFq9-1UBAuS0JQR-00nTb9 for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:53:51 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:53:40 +0200
Message-Id: <1369209220-14529-3-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
References: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 2/2] cfi_flash: size_ratio should not be 0
To: barebox@lists.infradead.org

We will get size = 0 if size_ratio = 0

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/mtd/nor/cfi_flash.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 4b4e29d..85e96ce 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -371,7 +371,8 @@ static ulong flash_get_size (struct flash_info *info)
 		size_ratio = info->portwidth / info->chipwidth;
 		/* if the chip is x8/x16 reduce the ratio by half */
 		if ((info->interface == FLASH_CFI_X8X16)
-		    && (info->chipwidth == FLASH_CFI_BY8)) {
+		    && (info->chipwidth == FLASH_CFI_BY8)
+		    && (size_ratio != 1)) {
 			size_ratio >>= 1;
 		}
 		debug ("size_ratio %d port %d bits chip %d bits\n",
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
