Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av0FU-0004Mg-T1
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 10:29:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 12:29:20 +0200
Message-Id: <1461666561-15808-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] drivers/of: Always compile of_path.c with OF support
To: Barebox List <barebox@lists.infradead.org>

of_find_path() is a OF specific library function, so always
compile it when OF support is enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 0dc2f8d..773548e 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,8 +1,8 @@
-obj-y += address.o base.o fdt.o platform.o
+obj-y += address.o base.o fdt.o platform.o of_path.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
-obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o of_path.o
+obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
