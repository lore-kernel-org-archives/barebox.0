Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Z2w-0001Yl-Oe
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 19:12:19 +0000
Received: from tellur.intern.lynxeye.de (p57B5F16F.dip0.t-ipconnect.de
 [87.181.241.111]) by lynxeye.de (Postfix) with ESMTPA id 1AE8C26C2001
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 20:59:27 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Jun 2015 20:59:20 +0200
Message-Id: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/4] mtd: m25p80: explicitly cast name pointer
To: barebox@lists.infradead.org

Fixes:
drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
drivers/mtd/devices/m25p80.c:271:14: warning:
assignment discards 'const' qualifier from pointer target type [enabled by default]

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mtd/devices/m25p80.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index c941767..c2e481e 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -268,7 +268,7 @@ static int m25p_probe(struct device_d *dev)
 	else if (data && data->name)
 		flash_name = data->name;
 	else if (dev->id_entry)
-		flash_name = dev->id_entry->name;
+		flash_name = (char *)dev->id_entry->name;
 	else
 		flash_name = NULL; /* auto-detect */
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
