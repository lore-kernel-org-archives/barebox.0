Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULY9T-0008Qh-DK
 for barebox@lists.infradead.org; Fri, 29 Mar 2013 12:11:24 +0000
Received: by mail-ea0-f180.google.com with SMTP id d10so183202eaj.25
 for <barebox@lists.infradead.org>; Fri, 29 Mar 2013 05:11:19 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 29 Mar 2013 13:10:28 +0100
Message-Id: <1364559028-5177-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] ARM: sabresd: move config-board out of /env/init
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 arch/arm/boards/freescale-mx6-sabresd/env/config-board      | 7 +++++++
 arch/arm/boards/freescale-mx6-sabresd/env/init/config-board | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/config-board
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/env/init/config-board

diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
new file mode 100644
index 0000000..cf936fb
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabresd/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=SabreSD
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board b/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
deleted file mode 100644
index cf936fb..0000000
--- a/arch/arm/boards/freescale-mx6-sabresd/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=SabreSD
-global.linux.bootargs.base="console=ttymxc0,115200"
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
