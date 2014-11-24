Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XsrUO-0003Qv-G8
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:29 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTx-0000NZ-C8
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:57 +0100
Message-Id: <1416827220-3103-18-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 17/20] blspec: depend on, not select flexible bootargs
To: barebox@lists.infradead.org

Blspec is a consumer of the flexible bootargs mechanism, so it should
depend on it rather than select it.

Fixes:
warning: (BLSPEC && DEFAULT_ENVIRONMENT_GENERIC_NEW) selects FLEXIBLE_BOOTARGS
which has unmet direct dependencies (COMMAND_SUPPORT && CMD_GLOBAL)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index a2cce391f461..6583aabc44d9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -478,8 +478,8 @@ config TIMESTAMP
 
 config BLSPEC
 	depends on BLOCK
+	depends on FLEXIBLE_BOOTARGS
 	select OFTREE
-	select FLEXIBLE_BOOTARGS
 	bool
 	prompt "Support bootloader spec"
 	help
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
