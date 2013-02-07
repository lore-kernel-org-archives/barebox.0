Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f179.google.com ([209.85.215.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Oxw-0005Bq-7M
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 10:44:29 +0000
Received: by mail-ea0-f179.google.com with SMTP id d12so1109953eaa.10
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 02:44:26 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 11:44:57 +0100
Message-Id: <1360233900-26486-4-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
References: <1360233900-26486-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/6] memory: add function address_in_sdram_regions
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
index 81641f0..d2e9164 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -162,6 +162,22 @@ int release_sdram_region(struct resource *res)
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
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
