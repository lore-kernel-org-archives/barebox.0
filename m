Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qr6jy-00046M-Om
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 11:14:27 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id F10DDFFCD82
	for <barebox@lists.infradead.org>;
	Wed, 10 Aug 2011 13:06:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Aug 2011 12:47:09 +0200
Message-Id: <1312973230-27870-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1312973230-27870-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312973230-27870-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] defaultenv: move common env to defaultenv/common
To: barebox@lists.infradead.org

this will allow later to add custom part depending on option

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile                          |    2 +-
 defaultenv/{ => common}/bin/_update      |    0
 defaultenv/{ => common}/bin/_update_help |    0
 defaultenv/{ => common}/bin/boot         |    0
 defaultenv/{ => common}/bin/hush_hack    |    0
 defaultenv/{ => common}/bin/init         |    0
 defaultenv/{ => common}/bin/update       |    0
 7 files changed, 1 insertions(+), 1 deletions(-)
 rename defaultenv/{ => common}/bin/_update (100%)
 rename defaultenv/{ => common}/bin/_update_help (100%)
 rename defaultenv/{ => common}/bin/boot (100%)
 rename defaultenv/{ => common}/bin/hush_hack (100%)
 rename defaultenv/{ => common}/bin/init (100%)
 rename defaultenv/{ => common}/bin/update (100%)

diff --git a/common/Makefile b/common/Makefile
index 9fed2ae..531000a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -32,7 +32,7 @@ $(obj)/startup.o: include/generated/barebox_default_env.h
 $(obj)/env.o: include/generated/barebox_default_env.h
 
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
-DEFAULT_ENVIRONMENT_PATH = "defaultenv"
+DEFAULT_ENVIRONMENT_PATH = "defaultenv/common"
 endif
 
 ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
diff --git a/defaultenv/bin/_update b/defaultenv/common/bin/_update
similarity index 100%
rename from defaultenv/bin/_update
rename to defaultenv/common/bin/_update
diff --git a/defaultenv/bin/_update_help b/defaultenv/common/bin/_update_help
similarity index 100%
rename from defaultenv/bin/_update_help
rename to defaultenv/common/bin/_update_help
diff --git a/defaultenv/bin/boot b/defaultenv/common/bin/boot
similarity index 100%
rename from defaultenv/bin/boot
rename to defaultenv/common/bin/boot
diff --git a/defaultenv/bin/hush_hack b/defaultenv/common/bin/hush_hack
similarity index 100%
rename from defaultenv/bin/hush_hack
rename to defaultenv/common/bin/hush_hack
diff --git a/defaultenv/bin/init b/defaultenv/common/bin/init
similarity index 100%
rename from defaultenv/bin/init
rename to defaultenv/common/bin/init
diff --git a/defaultenv/bin/update b/defaultenv/common/bin/update
similarity index 100%
rename from defaultenv/bin/update
rename to defaultenv/common/bin/update
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
