Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTeCG-0000CU-D9
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 21:52:32 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7EF97.dip0.t-ipconnect.de [79.215.239.151])
 by lynxeye.de (Postfix) with ESMTPA id 3A25426C2001
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 23:51:39 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 15 Sep 2014 23:51:35 +0200
Message-Id: <1410817895-8184-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] Makefile: enable Werror=implicit-function-declaration
To: barebox@lists.infradead.org

This should prevent us from ever again missing an
failure similar to that one fixed in ee3254569dab
(EFI: add missing include) by throwing a build error.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index b059c3a00eaa..90b2b6368554 100644
--- a/Makefile
+++ b/Makefile
@@ -300,6 +300,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
 CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
+                   -Werror=implicit-function-declaration \
                    -fno-strict-aliasing -fno-common -Os -pipe
 AFLAGS          := -D__ASSEMBLY__
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
