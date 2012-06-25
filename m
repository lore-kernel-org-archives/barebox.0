Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFJ-0002Qe-QV
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:23 +0200
Message-Id: <1340645910-15668-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] define __user empty
To: barebox@lists.infradead.org

There is no seperate user address space, so do not generate sparse
warnings for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/ubi-barebox.h |    1 -
 include/linux/compiler.h      |    2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index d23228f..72f29a6 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -135,7 +135,6 @@ struct kmem_cache { int i; };
 #define GFP_KERNEL			0
 #define GFP_NOFS			1
 
-#define __user
 #define __init
 #define __exit
 
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 5be3dab..cc8c4de 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -4,7 +4,7 @@
 #ifndef __ASSEMBLY__
 
 #ifdef __CHECKER__
-# define __user		__attribute__((noderef, address_space(1)))
+# define __user		/* no user address space in barebox */
 # define __kernel	/* default address space */
 # define __safe		__attribute__((safe))
 # define __force	__attribute__((force))
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
