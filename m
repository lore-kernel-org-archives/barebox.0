Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sh-0003vv-7i
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:50 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so62570eek.23
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:46 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:47 +0100
Message-Id: <1358257730-20579-6-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 5/8] memory: add function address_in_sdram_regions
To: barebox@lists.infradead.org

Add function address_in_sdram_regions to check if a address
is in any sdram region.

Also added new macro 'ADDRESS_IN_REGIONS' to check if address
is in a special boundary with start and end address.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/memory.c  | 16 ++++++++++++++++
 include/memory.h |  6 ++++++
 2 files changed, 22 insertions(+)

diff --git a/common/memory.c b/common/memory.c
index 7dd1384..f9192ab 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -158,6 +158,22 @@ int release_sdram_region(struct resource *res)
 	return release_region(res);
 }
 
+/*
+ * Check if specific address are in any allocated region.
+ */
+int address_in_sdram_regions(resource_size_t address)
+{
+	struct memory_bank *bank = NULL;
+	struct resource *r = NULL;
+
+	for_each_memory_bank(bank)
+		list_for_each_entry(r, &bank->res->children, sibling)
+			if (ADDRESS_IN_REGIONS(address, r->start, r->end))
+				return 1;
+
+	return 0;
+}
+
 #ifdef CONFIG_OFTREE
 
 /*
diff --git a/include/memory.h b/include/memory.h
index 165d2dc..e12a28d 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -27,4 +27,10 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 		resource_size_t size);
 int release_sdram_region(struct resource *res);
 
+#define ADDRESS_IN_REGIONS(address, region_start, region_end) \
+	((address >= region_start) && \
+	 (address <= region_end))
+
+int address_in_sdram_regions(resource_size_t address);
+
 #endif
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
