Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvVB-0000qZ-9T
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:02:58 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0D72YRA017345
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:02:34 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0D72YJ08709
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:02:34 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:02:30 +0900
Message-Id: <1421132550-12063-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] powerpc: include <linux/stringify.h> to avoid dupulicated
 defines
To: barebox@lists.infradead.org

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/ppc/lib/crtsavres.S | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/ppc/lib/crtsavres.S b/arch/ppc/lib/crtsavres.S
index a764ae4..b0fbbfc 100644
--- a/arch/ppc/lib/crtsavres.S
+++ b/arch/ppc/lib/crtsavres.S
@@ -33,13 +33,11 @@
  *    the executable file might be covered by the GNU General Public License.
  */
 
+#include <linux/stringify.h>
 #include <asm/ppc_asm.tmpl>
 
 #define N_FUN   36
 
-#define __stringify_1(x...)	#x
-#define __stringify(x...)	__stringify_1(x)
-
 #define _GLOBAL(n)	\
 	.text;		\
 	.stabs __stringify(n:F-1),N_FUN,0,0,n;\
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
