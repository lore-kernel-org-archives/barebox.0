Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKpwh-0002KN-Q4
 for barebox@lists.infradead.org; Wed, 27 Mar 2013 12:59:16 +0000
In-Reply-To: <20130327083109.GP1906@pengutronix.de>
References: <20130327083109.GP1906@pengutronix.de>
From: Josh Cartwright <joshc@eso.teric.us>
Date: Tue, 19 Mar 2013 10:22:48 -0500
Message-Id: <20130327130025.7FF1725817@kryptos.localdomain>
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
Subject: [PATCH RESEND] parameter: fix build warning when !CONFIG_PARAMETER
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Commit 51f2ded17c35c146488f6f3b697764bb2953a156 ("param: make return
value of param getter function const") made the parameter getter const,
but neglected to change the dev_add_param() function prototype in the
!CONFIG_PARAMETER case.

Fixes the following warning with CONFIG_NAND and !CONFIG_PARAMETER:

drivers/mtd/nand/nand_base.c: In function 'add_mtd_nand_device':
drivers/mtd/nand/nand_base.c:1720:2: warning: passing argument 4 of 'dev_add_param' from incompatible pointer type [enabled by default]
include/param.h:59:19: note: expected 'char * (*)(struct device_d *, struct param_d *)' but argument is of type 'const char * (*)(struct device_d *, struct param_d *)'

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
Sorry again for then noise!

 include/param.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index 21f4f7d..3a585cd 100644
--- a/include/param.h
+++ b/include/param.h
@@ -58,7 +58,7 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
 
 static inline int dev_add_param(struct device_d *dev, char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		char *(*get)(struct device_d *, struct param_d *p),
+		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
 	return 0;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
