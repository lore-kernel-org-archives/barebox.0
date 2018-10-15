Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6ER-0003TS-E9
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 17:00:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id y15-v6so9592293plr.12
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 10:00:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 10:00:20 -0700
Message-Id: <20181015170021.22617-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181015170021.22617-1-andrew.smirnov@gmail.com>
References: <20181015170021.22617-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] tlsf_malloc: Set errno to ENOMEM on failure
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Set errno to ENOMEM on failure so that correct error message can be
displayed by users who rely on errno.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/tlsf_malloc.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index aa3ab2397..c8900fc6b 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -28,6 +28,7 @@ extern tlsf_pool tlsf_mem_pool;
 
 void *malloc(size_t bytes)
 {
+	void *mem;
 	/*
 	 * tlsf_malloc returns NULL for zero bytes, we instead want
 	 * to have a valid pointer.
@@ -35,7 +36,11 @@ void *malloc(size_t bytes)
 	if (!bytes)
 		bytes = 1;
 
-	return tlsf_malloc(tlsf_mem_pool, bytes);
+	mem = tlsf_malloc(tlsf_mem_pool, bytes);
+	if (!mem)
+		errno = ENOMEM;
+
+	return mem;
 }
 EXPORT_SYMBOL(malloc);
 
@@ -47,13 +52,21 @@ EXPORT_SYMBOL(free);
 
 void *realloc(void *oldmem, size_t bytes)
 {
-	return tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
+	void *mem = tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
+	if (!mem)
+		errno = ENOMEM;
+
+	return mem;
 }
 EXPORT_SYMBOL(realloc);
 
 void *memalign(size_t alignment, size_t bytes)
 {
-	return tlsf_memalign(tlsf_mem_pool, alignment, bytes);
+	void *mem = tlsf_memalign(tlsf_mem_pool, alignment, bytes);
+	if (!mem)
+		errno = ENOMEM;
+
+	return mem;
 }
 EXPORT_SYMBOL(memalign);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
