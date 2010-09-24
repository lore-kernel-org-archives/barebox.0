Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2bO-0004vK-9P
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:21:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 09:20:20 +0200
Message-Id: <1285312822-25116-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] blackfin: remove duplicated PAGE_SIZE define
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/blackfin/include/asm/page.h |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/blackfin/include/asm/page.h b/arch/blackfin/include/asm/page.h
index b51e6d1..ce65ee0 100644
--- a/arch/blackfin/include/asm/page.h
+++ b/arch/blackfin/include/asm/page.h
@@ -28,7 +28,6 @@
 /* PAGE_SHIFT determines the page size */
 
 #define PAGE_SHIFT			(12)
-#define PAGE_SIZE			(4096)
 #define PAGE_MASK			(~(PAGE_SIZE-1))
 
 #ifdef __KERNEL__
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
