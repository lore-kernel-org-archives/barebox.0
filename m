Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RHsta-00079G-GM
	for barebox@lists.infradead.org; Sun, 23 Oct 2011 07:55:04 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 61B17100850F
	for <barebox@lists.infradead.org>;
	Sun, 23 Oct 2011 09:51:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 23 Oct 2011 15:48:19 +0800
Message-Id: <1319356101-4521-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] sandbox: move __SANDBOX__ to Makefile
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/Makefile       |    2 +-
 arch/sandbox/board/config.h |    2 --
 2 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 4ca17ed..860ed1c 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,5 +1,5 @@
 
-CPPFLAGS += -fno-strict-aliasing
+CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing
 
 machine-y := sandbox
 
diff --git a/arch/sandbox/board/config.h b/arch/sandbox/board/config.h
index c96d762..ca15136 100644
--- a/arch/sandbox/board/config.h
+++ b/arch/sandbox/board/config.h
@@ -1,6 +1,4 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define __SANDBOX__
-
 #endif	/* __CONFIG_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
