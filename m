Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9EiK-0003B7-FF
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:28:15 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 80B79FF8678
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Sep 2012 14:28:26 +0200
Message-Id: <1346848107-4664-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] defaultenv-2/ansi-colors: export color only if enable
To: barebox@lists.infradead.org

This will allow to do not check it everywhere

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/data/ansi-colors |    4 ++++
 defaultenv-2/menu/menu/mainmenu    |    4 +---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/defaultenv-2/base/data/ansi-colors b/defaultenv-2/base/data/ansi-colors
index c71b6b7..6365329 100644
--- a/defaultenv-2/base/data/ansi-colors
+++ b/defaultenv-2/base/data/ansi-colors
@@ -1,5 +1,9 @@
 #!/bin/sh
 
+if [ ${global.allow_color} != "true" ]; then
+	exit
+fi
+
 # Colors
 export RED='\e[1;31m'
 export BLUE='\e[1;34m'
diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
index d7b0033..5bd7027 100644
--- a/defaultenv-2/menu/menu/mainmenu
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -3,9 +3,7 @@
 savepath=$PATH
 export menupath=$PATH:/env/menu
 
-if [ ${global.allow_color} = "true" ]; then
-	. /env/data/ansi-colors
-fi
+. /env/data/ansi-colors
 
 while true; do
 	export PATH=${menupath}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
