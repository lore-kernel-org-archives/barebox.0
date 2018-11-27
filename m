Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZ6D-00029y-Q3
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:52:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2018 09:51:47 +0100
Message-Id: <20181127085149.21008-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] hush: Add pr_fmt define
To: Barebox List <barebox@lists.infradead.org>

To give the hush debug output more context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 792b61ac9a..386b3d7aef 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -106,6 +106,9 @@
  * General Public License for more details.
  *
  */
+
+#define pr_fmt(fmt) "hush: " fmt
+
 #include <malloc.h>         /* malloc, free, realloc*/
 #include <xfuncs.h>
 #include <linux/ctype.h>    /* isalpha, isdigit */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
