Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f172.google.com ([209.85.215.172])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8SWb-0001e8-7Q
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 09:33:09 +0000
Received: by mail-ea0-f172.google.com with SMTP id f13so3854602eaa.31
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 01:33:07 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu, 21 Feb 2013 10:33:04 +0100
Message-Id: <1361439184-14657-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH] defaultenv-2: fix base/init/ps1: don't reload /env/config
To: barebox@lists.infradead.org

Remove the load of /env/config because is already done by /bin/init,
so it doesn't overwrite any changes done by previous /init/* scripts that
are loaded by /bin/init.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/init/ps1 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/defaultenv-2/base/init/ps1 b/defaultenv-2/base/init/ps1
index fcbf4b6..02d7b4b 100644
--- a/defaultenv-2/base/init/ps1
+++ b/defaultenv-2/base/init/ps1
@@ -1,7 +1,5 @@
 #!/bin/sh
 
-/env/config
-
 if [ ${global.allow_color} = "true" ]; then
         export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
 else
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
