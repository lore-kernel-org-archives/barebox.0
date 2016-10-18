Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwPAK-0006dY-N5
 for barebox@lists.infradead.org; Tue, 18 Oct 2016 07:50:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Oct 2016 09:50:05 +0200
Message-Id: <20161018075005.4536-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: bootm: Fix free_mem calculation when initrd is given
To: Barebox List <barebox@lists.infradead.org>

When a initrd is given we calculate the next free memory position
as:
free_mem = PAGE_ALIGN(initrd_end);
This is wrong when initrd_end exactly falls on a page boundary.
In this case PAGE_ALIGN() does nothing and free_mem becomes
initrd_end and the following bootm_load_devicetree() and thus
booting fails with -ENOMEM.

Fix this by correctly advancing to the next free memory position.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 56663fe..9f3d950 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -158,7 +158,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 		initrd_start = data->initrd_res->start;
 		initrd_end = data->initrd_res->end;
 		initrd_size = resource_size(data->initrd_res);
-		free_mem = PAGE_ALIGN(initrd_end);
+		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
 	ret = bootm_load_devicetree(data, free_mem);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
