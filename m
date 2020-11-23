Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khCaH-00040A-Ez
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 14:12:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Nov 2020 15:12:39 +0100
Message-Id: <20201123141239.4896-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] boot: drop uneeded header #includes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Boot entry providers register themselves, so there is no need for the
common boot code to know about bootchooser or blspec or include their
headers. Remove them as well as other headers that aren't strictly
necessary and, if needed, include headers they include directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 76d03c26c4f4..28d3de243076 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -9,22 +9,19 @@
  * General Public License for more details.
  */
 
-#include <environment.h>
-#include <bootchooser.h>
+#include <boot.h>
 #include <globalvar.h>
 #include <magicvar.h>
 #include <watchdog.h>
 #include <command.h>
 #include <readkey.h>
 #include <common.h>
-#include <blspec.h>
 #include <libgen.h>
-#include <malloc.h>
 #include <bootm.h>
 #include <glob.h>
 #include <init.h>
 #include <menu.h>
-#include <fs.h>
+#include <unistd.h>
 
 #include <linux/stat.h>
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
