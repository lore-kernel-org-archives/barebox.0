Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTaMm-0002ki-6i
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 14:33:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RTaMe-00042X-5Q
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 15:33:24 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <mgr@pengutronix.de>) id 1RTaMe-0007Oz-4K
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 15:33:24 +0100
Date: Thu, 24 Nov 2011 15:33:24 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111124143324.GA4657@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] m25p80: set the correct erasesize when we use  OPCODE_BE_4K
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/nor/m25p80.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index e6fe75e..92b07af 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -778,10 +778,12 @@ static int m25p_probe(struct device_d *dev)
 		m25p80_ops.write = m25p80_write;
 
 	/* prefer "small sector" erase if possible */
-	if (info->flags & SECT_4K)
+	if (info->flags & SECT_4K) {
 		flash->erase_opcode = OPCODE_BE_4K;
-	else
+		flash->erasesize = 4096;
+	} else {
 		flash->erase_opcode = OPCODE_SE;
+	}
 
 	flash->page_size = info->page_size;
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
