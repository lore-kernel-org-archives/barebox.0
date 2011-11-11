Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROn26-0004BE-DC
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 09:04:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DB0B1BF0CC
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2011 10:09:03 +0100 (CET)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 11 Nov 2011 10:03:31 +0100
Message-Id: <1321002211-14950-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] Remove md5,sh1,sh2 from lib/Makefile.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Commit 4ac3a1f9 has moved the files md5.c, sh1.c
and sh2.c from lib/* to crypto/*.
But the files were still listed in lib/Makefile.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 lib/Makefile |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index eccdfff..cb72842 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -29,7 +29,4 @@ obj-y			+= lzo/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
-obj-$(CONFIG_MD5)	+= md5.o
-obj-$(CONFIG_SHA1)	+= sha1.o
-obj-$(CONFIG_SHA256)	+= sha256.o
 obj-$(CONFIG_FDT)	+= fdt/
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
