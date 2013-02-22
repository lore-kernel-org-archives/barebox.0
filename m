Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f52.google.com ([74.125.83.52])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8pad-00054Q-1Z
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 10:10:51 +0000
Received: by mail-ee0-f52.google.com with SMTP id b15so203255eek.25
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2013 02:10:49 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 22 Feb 2013 11:10:42 +0100
Message-Id: <1361527842-25815-3-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 next 2/2] ARM at91 telit-evk-pro3: move config-board out of
 /env/init
To: barebox@lists.infradead.org

This is to complete the work of two recent commits:
- defenv2: move config-board out of /env/init
- defenv2: comment setting default values in /env/config

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
---
 arch/arm/boards/telit-evk-pro3/env/config-board      | 8 ++++++++
 arch/arm/boards/telit-evk-pro3/env/init/config-board | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
 delete mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board

diff --git a/arch/arm/boards/telit-evk-pro3/env/config-board b/arch/arm/boards/telit-evk-pro3/env/config-board
new file mode 100644
index 0000000..741b902
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/config-board
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=evk-pro3
+global.linux.bootargs.base="console=ttyS0,115200"
+global.boot.default=nand-ubi
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/config-board b/arch/arm/boards/telit-evk-pro3/env/init/config-board
deleted file mode 100644
index 741b902..0000000
--- a/arch/arm/boards/telit-evk-pro3/env/init/config-board
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=evk-pro3
-global.linux.bootargs.base="console=ttyS0,115200"
-global.boot.default=nand-ubi
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
