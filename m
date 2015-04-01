Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007px-Iy
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:41 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:06 +0200
Message-Id: <1427904855-32548-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 01/10] imx-image: sort included header files
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1f37fe20bcc0..2fa84b1a1d53 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -15,17 +15,18 @@
  * GNU General Public License for more details.
  *
  */
-#include <stdio.h>
-#include <unistd.h>
+#include <endian.h>
+#include <errno.h>
+#include <fcntl.h>
 #include <getopt.h>
-#include <stdlib.h>
 #include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
 #include <string.h>
-#include <errno.h>
-#include <sys/types.h>
+#include <unistd.h>
+
 #include <sys/stat.h>
-#include <fcntl.h>
-#include <endian.h>
+#include <sys/types.h>
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
 #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
