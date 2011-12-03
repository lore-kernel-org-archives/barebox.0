Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RWlHu-0006dB-5W
 for barebox@lists.infradead.org; Sat, 03 Dec 2011 08:49:39 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C738510108DC
 for <barebox@lists.infradead.org>; Sat,  3 Dec 2011 09:49:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Dec 2011 09:46:07 +0100
Message-Id: <1322901967-7266-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] lib: remove re-introduce sum in commit 9135dd5f672e:
 initial libfdt support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	Please apply the next is broken

Best Regards,
J.
 lib/Makefile |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index e35d4b1..ae76b4c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -29,8 +29,5 @@ obj-y			+= lzo/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
-obj-$(CONFIG_MD5)	+= md5.o
-obj-$(CONFIG_SHA1)	+= sha1.o
-obj-$(CONFIG_SHA256)	+= sha256.o
 obj-$(CONFIG_FDT)	+= fdt/
 obj-y			+= uncompress.o
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
