Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BR-PH
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 69/78] common: Add functions to find free RAM
Date: Fri, 16 Mar 2018 13:53:45 +0100
Message-Id: <20180316125354.23462-70-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The bootm code needs to put the Kernel image and initrd into free
RAM. Add some functions to find free RAM chunks to help this code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c  | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/memory.h |  5 +++++
 2 files changed, 56 insertions(+)

diff --git a/common/memory.c b/common/memory.c
index ff5bdc14e2..00fa7c50ff 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -171,6 +171,57 @@ int release_sdram_region(struct resource *res)
 	return release_region(res);
 }
 
+void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
+			   resource_size_t *retend)
+{
+	resource_size_t freeptr, size, maxfree = 0;
+	struct resource *last, *child;
+
+	if (list_empty(&bank->res->children)) {
+		/* No children - return the whole bank */
+		*retstart = bank->res->start;
+		*retend = bank->res->end;
+		return;
+	}
+
+	freeptr = bank->res->start;
+
+	list_for_each_entry(child, &bank->res->children, sibling) {
+		/* Check gaps between child resources */
+		size = child->start - freeptr;
+		if (size > maxfree) {
+			*retstart = freeptr;
+			*retend = child->start - 1;
+			maxfree = size;
+		}
+		freeptr = child->start + resource_size(child);
+	}
+
+	last = list_last_entry(&bank->res->children, struct resource, sibling);
+
+	/* Check gap between last child and end of memory bank */
+	freeptr = last->start + resource_size(last);
+	size = bank->res->start + resource_size(bank->res) - freeptr;
+
+	if (size > maxfree) {
+		*retstart = freeptr;
+		*retend = bank->res->end;
+	}
+}
+
+int memory_bank_first_find_space(resource_size_t *retstart,
+				 resource_size_t *retend)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		memory_bank_find_space(bank, retstart, retend);
+		return 0;
+	}
+
+	return -ENOENT;
+}
+
 #ifdef CONFIG_OFTREE
 
 static int of_memory_fixup(struct device_node *node, void *unused)
diff --git a/include/memory.h b/include/memory.h
index 165d2dc52a..56d16d20c8 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -27,4 +27,9 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 		resource_size_t size);
 int release_sdram_region(struct resource *res);
 
+void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
+			    resource_size_t *retend);
+int memory_bank_first_find_space(resource_size_t *retstart,
+				 resource_size_t *retend);
+
 #endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
