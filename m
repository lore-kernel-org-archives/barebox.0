Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwVP9-0004nP-Ng
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 10:44:20 +0000
Received: from mail631.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DDB25DC55B4
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 12:43:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  9 Jul 2013 12:43:49 +0200
Message-Id: <1373366629-2818-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] ARM: at91: animeo IP: fix partition table
To: barebox@lists.infradead.org

we now use a UBI Volume instead of user_block, kernel and root
the bootloader size is 320KiB not 256KiB

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/env/config | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/env/config b/arch/arm/boards/animeo_ip/env/config
index a0537b8..7526fcf 100644
--- a/arch/arm/boards/animeo_ip/env/config
+++ b/arch/arm/boards/animeo_ip/env/config
@@ -28,8 +28,8 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="32k(at91bootstrap),256k(barebox)ro,32k(bareboxenv),704k(user_block),1728k(kernel),-(root)"
-rootfs_mtdblock_nand=5
+nand_parts="32k(at91bootstrap),320k(barebox)ro,32k(bareboxenv),-(ubi)"
+rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
