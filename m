Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail403.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwT1L-0002Mz-He
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 07:39:20 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 08:37:55 +0100
Message-Id: <1358581075-22223-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv-2: move ps1 to base/init/ps1
To: barebox@lists.infradead.org

so we can overwrite it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/init |    6 ------
 defaultenv-2/base/init/ps1 |    9 +++++++++
 2 files changed, 9 insertions(+), 6 deletions(-)
 create mode 100644 defaultenv-2/base/init/ps1

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index bb4abcd..2a1f6a1 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -15,12 +15,6 @@ global editcmd=sedit
 
 /env/config
 
-if [ ${global.allow_color} = "true" ]; then
-        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
-else
-        export PS1="barebox@\h:\w "
-fi
-
 if [ -e /env/menu ]; then
 	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
 else
diff --git a/defaultenv-2/base/init/ps1 b/defaultenv-2/base/init/ps1
new file mode 100644
index 0000000..fcbf4b6
--- /dev/null
+++ b/defaultenv-2/base/init/ps1
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+/env/config
+
+if [ ${global.allow_color} = "true" ]; then
+        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
+else
+        export PS1="barebox@\h:\w "
+fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
