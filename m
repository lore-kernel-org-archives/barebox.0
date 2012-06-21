Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SheB9-0003ko-Ex
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:59:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:59:50 +0200
Message-Id: <1340272790-17062-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] openrisc: fix build due to redefined phys_size_t
To: barebox@lists.infradead.org

We already have a phys_size_t since:

commit 2f05b6925676e5f3263e0d51ed2f0a92201400d8
Author: Renaud Barbier <renaud.barbier@ge.com>
Date:   Fri May 11 11:58:13 2012 +0100

    linux/types.h: define phys_size_t

    Add this definition in preparation for the introduction of the
    mpc85xx support.

    Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Fix build due to redefinition of this type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/include/asm/types.h |    2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
index 55efa36..1cdd49a 100644
--- a/arch/openrisc/include/asm/types.h
+++ b/arch/openrisc/include/asm/types.h
@@ -72,8 +72,6 @@ typedef unsigned long long u64;
 
 typedef u32 dma_addr_t;
 
-/*typedef unsigned long phys_addr_t;*/
-typedef unsigned long phys_size_t;
 #endif /* __KERNEL__ */
 
 #endif /* _ASM_TYPES_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
