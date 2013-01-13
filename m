Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f46.google.com ([74.125.83.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZL-0002Oi-E1
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:04 +0000
Received: by mail-ee0-f46.google.com with SMTP id e49so1593167eek.19
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:42:01 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:20 +0100
Message-Id: <1358098943-18928-7-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 6/9] memory: add function address_in_sdram_regions
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Add function address_in_sdram_regions to check if a address
is in any sdram region.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/memory.c  | 13 +++++++++++++
 include/memory.h |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/common/memory.c b/common/memory.c
index 7dd1384..24dd0dd 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -158,6 +158,19 @@ int release_sdram_region(struct resource *res)
 	return release_region(res);
 }
 
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
