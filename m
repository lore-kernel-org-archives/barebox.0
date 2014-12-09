Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003fB-UB
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:41 +0100
Message-Id: <1418149064-26448-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] malloc: Add a function to detect if malloc pool is
 already initialized
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c  | 8 ++++++++
 include/malloc.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/common/memory.c b/common/memory.c
index 57c73ab..4725f6e 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -49,6 +49,13 @@ unsigned long mem_malloc_end(void)
 tlsf_pool tlsf_mem_pool;
 #endif
 
+int mem_malloc_initialized;
+
+int mem_malloc_is_initialized(void)
+{
+	return mem_malloc_initialized;
+}
+
 void mem_malloc_init(void *start, void *end)
 {
 	malloc_start = (unsigned long)start;
@@ -57,6 +64,7 @@ void mem_malloc_init(void *start, void *end)
 #ifdef CONFIG_MALLOC_TLSF
 	tlsf_mem_pool = tlsf_create(start, end - start + 1);
 #endif
+	mem_malloc_initialized = 1;
 }
 
 #if !defined __SANDBOX__ && !defined CONFIG_ARCH_EFI
diff --git a/include/malloc.h b/include/malloc.h
index a36f3c0..0d3c9e9 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -11,4 +11,6 @@ void *calloc(size_t, size_t);
 void malloc_stats(void);
 void *sbrk(ptrdiff_t increment);
 
+int mem_malloc_is_initialized(void);
+
 #endif /* __MALLOC_H */
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
