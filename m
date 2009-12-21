Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMisB-0008V3-Cc
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 14:04:35 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMis9-0006sb-4S
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:04:29 -0500
Date: Mon, 21 Dec 2009 09:04:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210901430.17057@localhost>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Remove obsolete comment referring to CFG_CMD_JFFS2.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  yes, it's a trivial patch, but i'm just trying to cut down on the
amount of output i'm getting from my scan scripts.  and there's no
such thing as CFG_CMD_JFFS2.


diff --git a/lib/crc32.c b/lib/crc32.c
index 2ed2df0..be35366 100644
--- a/lib/crc32.c
+++ b/lib/crc32.c
@@ -9,7 +9,7 @@
  */

 #ifdef __BAREBOX__	/* Shut down "ANSI does not permit..." warnings */
-#include <common.h>	/* to get command definitions like CFG_CMD_JFFS2 */
+#include <common.h>
 #endif

 #ifdef CONFIG_DYNAMIC_CRC_TABLE

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
