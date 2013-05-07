Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZfUA-0000Nz-4N
 for barebox@lists.infradead.org; Tue, 07 May 2013 10:51:06 +0000
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Tue,  7 May 2013 12:50:30 +0200
Message-Id: <1367923830-7912-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: [PATCH] sama5d3xek: correct rootfs nand partition
To: barebox@lists.infradead.org

Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
---
 arch/arm/boards/sama5d3xek/env/config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/sama5d3xek/env/config b/arch/arm/boards/sama5d3xek/env/config
index 375e90d..a7fd930 100644
--- a/arch/arm/boards/sama5d3xek/env/config
+++ b/arch/arm/boards/sama5d3xek/env/config
@@ -32,7 +32,7 @@ kernelimage=zImage
 
 nand_device=atmel_nand
 nand_parts="256k(at91bootstrap),384k(barebox)ro,256k@768k(bareboxenv),256k(bareboxenv2),128k@1536k(oftree),5M@2M(kernel),-@8M(rootfs)"
-rootfs_mtdblock_nand=7
+rootfs_mtdblock_nand=6
 
 m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
