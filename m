Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjorq-0002YJ-Gy
 for barebox@lists.infradead.org; Thu, 30 Oct 2014 12:30:19 +0000
Received: by mail-lb0-f179.google.com with SMTP id w7so4200249lbi.38
 for <barebox@lists.infradead.org>; Thu, 30 Oct 2014 05:29:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 30 Oct 2014 15:30:39 +0300
Message-Id: <1414672239-9998-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1414672239-9998-1-git-send-email-antonynpavlov@gmail.com>
References: <1414672239-9998-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] Makefile: fix typos
To: barebox@lists.infradead.org

This patch is based on these linux kernel commits:

    commit d384e35a25445bb60457b7dab8cffe178c6b7ecb
    Author: Linus Nilsson <lajnold@acc.umu.se>
    Date:   Sun Jan 20 17:10:01 2008 +0100

        Makefile: Change typoed 'behavour' to 'behaviour'

    commit fe8d0a41081d6d0912386f3672ccc0bf1d675630
    Author: Kirill Smelkov <kirr@mns.spb.ru>
    Date:   Thu Apr 9 15:34:34 2009 +0400

        kbuild: fix a few typos in top-level Makefile

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index c5f965e..8eb50d4 100644
--- a/Makefile
+++ b/Makefile
@@ -12,7 +12,7 @@ NAME = None
 
 # Do not:
 # o  use make's built-in rules and variables
-#    (this increases performance and avoid hard-to-debug behavour);
+#    (this increases performance and avoids hard-to-debug behaviour);
 # o  print "Entering directory ...";
 MAKEFLAGS += -rR --no-print-directory
 
@@ -1211,6 +1211,5 @@ FORCE:
 Makefile: ;
 
 # Declare the contents of the .PHONY variable as phony.  We keep that
-# information in a variable se we can use it in if_changed and friends.
+# information in a variable so we can use it in if_changed and friends.
 .PHONY: $(PHONY)
-
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
