Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGyGj-0007lr-8g
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:22:42 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Nov 2010 19:18:56 +0100
Message-Id: <1289585938-22813-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [PATCH 3/5] arm/setup_memory_tags: add multiple resource support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c |   15 ++++++++++-----
 1 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index d1f8281..b74c5e8 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -73,15 +73,20 @@ static LIST_HEAD(memory_list);
 static void setup_memory_tags(void)
 {
 	struct arm_memory *mem;
+	struct resource *res;
+	int i;
 
 	list_for_each_entry(mem, &memory_list, list) {
-		params->hdr.tag = ATAG_MEM;
-		params->hdr.size = tag_size(tag_mem32);
+		for (i = 0; i < mem->dev->num_resources; i++) {
+			res = &mem->dev->resource[i];
+			params->hdr.tag = ATAG_MEM;
+			params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = dev_resource_get_start(mem->dev);
-		params->u.mem.size = dev_resource_get_size(mem->dev);
+			params->u.mem.start = res->start;
+			params->u.mem.size = res->size;
 
-		params = tag_next(params);
+			params = tag_next(params);
+		}
 	}
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
