Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SupLn-0002hN-PP
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 18:33:24 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E3B71FF976B
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 20:39:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Jul 2012 20:32:59 +0200
Message-Id: <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120727183103.GX22657@game.jcrosoft.org>
References: <20120727183103.GX22657@game.jcrosoft.org>
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
Subject: [PATCH 01/12] kbuild: Init all relevant variables used in kbuild
 files so
To: barebox@lists.infradead.org

import from linux 3.5-rc5

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile.build |   25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index f70e2b9..1a82c44 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -7,7 +7,30 @@ src := $(obj)
 PHONY := __build
 __build:
 
-# Read .config if it exist, otherwise ignore
+# Init all relevant variables used in kbuild files so
+# 1) they have correct type
+# 2) they do not inherit any value from the environment
+obj-y :=
+obj-m :=
+lib-y :=
+lib-m :=
+always :=
+targets :=
+subdir-y :=
+subdir-m :=
+EXTRA_AFLAGS   :=
+EXTRA_CFLAGS   :=
+EXTRA_CPPFLAGS :=
+EXTRA_LDFLAGS  :=
+asflags-y  :=
+ccflags-y  :=
+cppflags-y :=
+ldflags-y  :=
+
+subdir-asflags-y :=
+subdir-ccflags-y :=
+
+# Read auto.conf if it exists, otherwise ignore
 -include include/config/auto.conf
 
 include scripts/Kbuild.include
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
