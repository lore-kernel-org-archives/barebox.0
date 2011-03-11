Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pxqxf-0003YK-3M
	for barebox@lists.infradead.org; Fri, 11 Mar 2011 01:16:12 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 11 Mar 2011 02:10:40 +0100
Message-Id: <1299805841-23710-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1299805841-23710-1-git-send-email-plagnioj@jcrosoft.com>
References: <1299805841-23710-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] at91: fix missing nand_device in board config in board
	that nand
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9261ek/env/config    |    1 +
 arch/arm/boards/at91sam9263ek/env/config    |    1 +
 arch/arm/boards/at91sam9m10g45ek/env/config |    1 +
 arch/arm/boards/pm9g45/env/config           |    1 +
 4 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 1203705..b8ca18d 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -29,6 +29,7 @@ kernelimage=uImage
 #kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
+nand_device=atmel_nand
 nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 25036af..f1cb751 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -29,6 +29,7 @@ kernelimage=uImage
 #kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
+nand_device=atmel_nand
 nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 1203705..b8ca18d 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -29,6 +29,7 @@ kernelimage=uImage
 #kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
+nand_device=atmel_nand
 nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index 1203705..b8ca18d 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -29,6 +29,7 @@ kernelimage=uImage
 #kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
+nand_device=atmel_nand
 nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
