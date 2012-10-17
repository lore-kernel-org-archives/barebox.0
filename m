Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOXFM-0003Fk-SA
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 17:17:34 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D20F9DC224B
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 19:24:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 19:15:11 +0200
Message-Id: <1350494111-17861-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350494111-17861-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121017170252.GA446@game.jcrosoft.org>
 <1350494111-17861-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] at91sam9x5ek: fix bootstrap size to 256KiB
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/env/config |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
index 6a985ce..8b655e2 100644
--- a/arch/arm/boards/at91sam9x5ek/env/config
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -29,7 +29,7 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),4M(kernel),120M(rootfs),-(data)"
+nand_parts="256k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),4M(kernel),120M(rootfs),-(data)"
 rootfs_mtdblock_nand=7
 
 autoboot_timeout=3
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
