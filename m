Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SsBBj-0007l9-K9
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 11:16:08 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 263ACFFA666
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 13:21:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Jul 2012 13:16:34 +0200
Message-Id: <1342782994-21728-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] piggy.lzo.S: fix out of tree build
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 3ade6cc..4696789 100644
--- a/Makefile
+++ b/Makefile
@@ -719,9 +719,9 @@ barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
 	@echo "  LZO    " $@
 	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
 
-piggy.lzo.o: barebox-uncompressed.bin.lzo piggy.lzo.S
+piggy.lzo.o: barebox-uncompressed.bin.lzo $(src)/piggy.lzo.S
 	@echo "  CC     " $@
-	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c piggy.lzo.S -o $@
+	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.lzo.S -o $@
 
 ifdef CONFIG_IMAGE_COMPRESSION_LZO
 barebox: piggy.lzo.o
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
