Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005iD-5y
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:20 +0200
Message-Id: <1349725584-20509-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] memory: return error in barebox_add_memory_bank
To: barebox@lists.infradead.org

When a memory bank is already registered, return an error code
instead of throwing a bug. This can happen if a board has registered
a memory bank and the same bank is then probed from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c  |    8 +++++---
 include/memory.h |    2 +-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 7174f14..2674002 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -113,15 +113,15 @@ void *sbrk(ptrdiff_t increment)
 
 LIST_HEAD(memory_banks);
 
-void barebox_add_memory_bank(const char *name, resource_size_t start,
+int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size)
 {
 	struct memory_bank *bank = xzalloc(sizeof(*bank));
 	struct device_d *dev;
 
 	bank->res = request_iomem_region(name, start, start + size - 1);
-
-	BUG_ON(!bank->res);
+	if (!bank->res)
+		return -EBUSY;
 
 	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
 
@@ -130,6 +130,8 @@ void barebox_add_memory_bank(const char *name, resource_size_t start,
 	bank->size = size;
 
 	list_add_tail(&bank->list, &memory_banks);
+
+	return 0;
 }
 
 /*
diff --git a/include/memory.h b/include/memory.h
index 4be4340..165d2dc 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -18,7 +18,7 @@ struct memory_bank {
 
 extern struct list_head memory_banks;
 
-void barebox_add_memory_bank(const char *name, resource_size_t start,
+int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size);
 
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
