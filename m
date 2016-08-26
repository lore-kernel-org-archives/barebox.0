Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd9pC-0000kw-Hf
 for barebox@lists.infradead.org; Fri, 26 Aug 2016 05:37:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Aug 2016 07:36:41 +0200
Message-Id: <1472189802-13765-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] defaultenv-2: remove ps1 duplicates
To: Barebox List <barebox@lists.infradead.org>

Some boards duplicate the PS1 initialization to add a '#' at the end
of the prompt. It's not worth duplicating this for this purpose. Remove
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9m10ihd/env/init/ps1 | 9 ---------
 arch/arm/boards/highbank/env/init/ps1       | 9 ---------
 arch/arm/boards/raspberry-pi/env/init/ps1   | 7 -------
 arch/arm/boards/versatile/env/init/ps1      | 7 -------
 4 files changed, 32 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/ps1
 delete mode 100644 arch/arm/boards/highbank/env/init/ps1
 delete mode 100644 arch/arm/boards/raspberry-pi/env/init/ps1
 delete mode 100644 arch/arm/boards/versatile/env/init/ps1

diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/ps1 b/arch/arm/boards/at91sam9m10ihd/env/init/ps1
deleted file mode 100644
index a94acc1..0000000
--- a/arch/arm/boards/at91sam9m10ihd/env/init/ps1
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-/env/config
-
-if [ ${global.allow_color} = "true" ]; then
-	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
-else
-	export PS1="barebox@\h:\w\n# "
-fi
diff --git a/arch/arm/boards/highbank/env/init/ps1 b/arch/arm/boards/highbank/env/init/ps1
deleted file mode 100644
index a94acc1..0000000
--- a/arch/arm/boards/highbank/env/init/ps1
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-/env/config
-
-if [ ${global.allow_color} = "true" ]; then
-	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
-else
-	export PS1="barebox@\h:\w\n# "
-fi
diff --git a/arch/arm/boards/raspberry-pi/env/init/ps1 b/arch/arm/boards/raspberry-pi/env/init/ps1
deleted file mode 100644
index f894846..0000000
--- a/arch/arm/boards/raspberry-pi/env/init/ps1
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-if [ ${global.allow_color} = "true" ]; then
-        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
-else
-        export PS1="barebox@\h:\w\n# "
-fi
diff --git a/arch/arm/boards/versatile/env/init/ps1 b/arch/arm/boards/versatile/env/init/ps1
deleted file mode 100644
index a1d0754..0000000
--- a/arch/arm/boards/versatile/env/init/ps1
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-if [ ${global.allow_color} = "true" ]; then
-	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m\n# "
-else
-	export PS1="barebox@\h:\w\n# "
-fi
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
