Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PAMJA-0001qz-BS
	for barebox@lists.infradead.org; Mon, 25 Oct 2010 12:37:48 +0000
Received: by fxm15 with SMTP id 15so2232100fxm.36
	for <barebox@lists.infradead.org>; Mon, 25 Oct 2010 05:37:46 -0700 (PDT)
From: Marek Belisko <marek.belisko@gmail.com>
Date: Mon, 25 Oct 2010 14:39:53 +0200
Message-Id: <1288010393-3644-1-git-send-email-marek.belisko@gmail.com>
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
Subject: [PATCH] barebox:usb_gadget:Remove compilation error.
To: barebox@lists.infradead.org

Missing include <init.h> caused that __initdata was
undeclared what lead to compilation error.

Signed-off-by: Marek Belisko <marek.belisko@gmail.com>
---
 drivers/usb/gadget/epautoconf.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index e549792..78f3099 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -18,7 +18,7 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  *
  */
-
+#include <init.h>
 #include <common.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
