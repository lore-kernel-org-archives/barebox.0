Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQJQ-0008P4-Gt
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 19:59:34 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQJ2-0004Gt-QT
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:59:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 20:59:04 +0100
Message-Id: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/5] pbl: let pbl-console depend on !CONSOLE_NONE
To: barebox@lists.infradead.org

It doesn't make much sense to have a console in the pbl
but not in the main barebox binary.

Fixes:
pbl/console.c:34:5: error: redefinition of 'ctrlc'
include/stdio.h:60:19: note: previous definition of 'ctrlc' was here

pbl/console.c:39:6: error: redefinition of 'console_putc'
include/stdio.h:49:20: note: previous definition of 'console_putc' was here

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index cf197076dbab..74d5c4d12a39 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -886,6 +886,7 @@ config DEBUG_INITCALLS
 
 config PBL_CONSOLE
 	depends on DEBUG_LL
+	depends on !CONSOLE_NONE
 	bool "Enable console support in PBL"
 	help
 	  This enables printf/pr_* support in the PBL to get more
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
