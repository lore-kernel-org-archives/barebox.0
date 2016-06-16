Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXC6-0001wx-Sw
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:18:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jun 2016 15:18:21 +0200
Message-Id: <1466083102-6241-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
References: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: start: simplify board_data sdram allocation
To: Barebox List <barebox@lists.infradead.org>

We already have a pointer for barebox_boarddata, so use it to
request the corresponding SDRAM region instead of calculating
it again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index d6a4c62..38f69d5 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -37,6 +37,7 @@ unsigned long arm_stack_top;
 static unsigned long arm_head_bottom;
 static unsigned long arm_barebox_size;
 static void *barebox_boarddata;
+static unsigned long barebox_boarddata_size;
 
 static bool blob_is_fdt(const void *blob)
 {
@@ -130,11 +131,9 @@ EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
 
 static int barebox_memory_areas_init(void)
 {
-	unsigned long start = arm_head_bottom;
-	unsigned long size = arm_mem_barebox_image(0, arm_stack_top,
-						   arm_barebox_size) -
-			     arm_head_bottom;
-	request_sdram_region("board data", start, size);
+	if(barebox_boarddata)
+		request_sdram_region("board data", (unsigned long)barebox_boarddata,
+				     barebox_boarddata_size);
 
 	return 0;
 }
@@ -201,6 +200,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 				 name, mem);
 			barebox_boarddata = memcpy((void *)mem, boarddata,
 						   totalsize);
+			barebox_boarddata_size = totalsize;
 			arm_head_bottom = mem;
 		}
 	}
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
