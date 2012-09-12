Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLN-0001wi-V4
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:10 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F13BFFF9F8D
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:23 +0200
Message-Id: <1347461308-24208-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] defaultenv: enable glovalvar support
To: barebox@lists.infradead.org

This will allow to do not have 2 set of var for defaultenv and the new
defaultenv-2.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig      |    1 +
 defaultenv/bin/init |    2 ++
 2 files changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index b97392c..9378783 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -575,6 +575,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	select CMD_CRC
 	select CMD_CRC_CMP
 	select CMD_AUTOMOUNT if HAVE_DEFAULT_ENVIRONMENT_NEW
+	select CMD_GLOBAL
 	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index f535e37..adb3c43 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -3,6 +3,8 @@
 PATH=/env/bin
 export PATH
 
+global hostname
+
 . /env/config
 if [ -e /dev/nor0 -a -n "$nor_parts" ]; then
 	addpart /dev/nor0 $nor_parts
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
