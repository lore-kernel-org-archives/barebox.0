Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m12-17.163.com ([220.181.12.17])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cPsGd-0007tu-6c
 for barebox@lists.infradead.org; Sat, 07 Jan 2017 14:46:49 +0000
From: DU HUANPENG <opentkernel@163.com>
Date: Sat,  7 Jan 2017 22:45:26 +0800
Message-Id: <1483800326-14277-1-git-send-email-opentkernel@163.com>
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
Subject: [PATCH] arm: decalare div0 as weak function
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/arm/lib/div0.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/div0.c b/arch/arm/lib/div0.c
index 852cb72..d4f3b6c 100644
--- a/arch/arm/lib/div0.c
+++ b/arch/arm/lib/div0.c
@@ -17,11 +17,11 @@
  *
  */
 #include <common.h>
+#include <linux/compiler.h>
 
 extern void __div0(void);
 
-/* Replacement (=dummy) for GNU/Linux division-by zero handler */
-void __div0 (void)
+__weak void __div0 (void)
 {
 	panic("division by zero\n");
 }
-- 
2.7.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
