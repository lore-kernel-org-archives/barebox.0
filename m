Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R4AFM-0001rz-4X
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 11:36:48 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so2734926bka.36
	for <barebox@lists.infradead.org>; Thu, 15 Sep 2011 04:36:47 -0700 (PDT)
Message-Id: <3e59cfc265c6623c3a5c6013991ed667111fc1df.1316086518.git.fercerpav@gmail.com>
In-Reply-To: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
References: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Thu, 15 Sep 2011 15:31:45 +0400
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
Subject: [PATCH 2/2] m25p80: use proper erasesize for SECT_4K devices
To: barebox@lists.infradead.org
Cc: Franck JULLIEN <elec4fun@gmail.com>

This fixes a bug that causes only the first 4K out of every 64K to be
erased on SECT_4K devices.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 drivers/nor/m25p80.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 6f650a5..31193cf 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -760,7 +760,10 @@ static int m25p_probe(struct device_d *dev)
 	flash->name = (char *)id->name;
 	flash->info = info;
 	flash->size = info->sector_size * info->n_sectors;
-	flash->erasesize = info->sector_size;
+	if (info->flags & SECT_4K)
+		flash->erasesize = 4096;
+	else
+		flash->erasesize = info->sector_size;
 	flash->cdev.size = info->sector_size * info->n_sectors;
 	flash->cdev.dev = dev;
 	flash->cdev.ops = &m25p80_ops;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
