Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAxfM-0005ZA-Sc
 for barebox@lists.infradead.org; Wed, 17 May 2017 12:02:59 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 13:02:24 +0100
Message-Id: <20170517120224.30260-1-abbotti@mev.co.uk>
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
Subject: [PATCH] xfuncs: fix format specifier in pr_emerg call
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

`enomem_panic()` calls `pr_emerg()` using `%d` in the format specifier
string to print a value of type `size_t`.  Change it to `%zu`.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 lib/xfuncs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 1bcaa5e10..1942c1e7f 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -29,7 +29,7 @@ static void __noreturn enomem_panic(size_t size)
 {
 	pr_emerg("out of memory\n");
 	if (size)
-		pr_emerg("Unable to allocate %d bytes\n", size);
+		pr_emerg("Unable to allocate %zu bytes\n", size);
 
 	malloc_stats();
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
