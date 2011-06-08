Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.97.mail-out.ovh.net ([178.33.44.185]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QU9Bh-0004Mc-09
	for barebox@lists.infradead.org; Wed, 08 Jun 2011 03:12:09 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 804D14A6258
	for <barebox@lists.infradead.org>;
	Wed,  8 Jun 2011 05:12:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  8 Jun 2011 04:58:56 +0200
Message-Id: <1307501936-23279-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] at91sam9263ek: fix env location and size
To: barebox@lists.infradead.org

256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)

so we will match the erase block size

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/env/config |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index f1cb751..4e29232 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -30,7 +30,7 @@ kernelimage=uImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
