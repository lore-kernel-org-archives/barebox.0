Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6ES-0003TI-Rk
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 17:00:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id y11-v6so9596646plt.3
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 10:00:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 10:00:18 -0700
Message-Id: <20181015170021.22617-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] dummy_malloc: Make use of PTR_ALIGN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit type cast and alignement code in favor of PTR_ALIGN

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/dummy_malloc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index fa4f5d126..ab6712018 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -30,11 +30,9 @@ void malloc_stats(void)
 
 void *memalign(size_t alignment, size_t bytes)
 {
-	unsigned long mem = (unsigned long)sbrk(bytes + alignment);
+	void *mem = sbrk(bytes + alignment);
 
-	mem = (mem + alignment) & ~(alignment - 1);
-
-	return (void *)mem;
+	return PTR_ALIGN(mem, alignment);
 }
 
 void *malloc(size_t size)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
