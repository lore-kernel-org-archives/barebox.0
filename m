Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuoHj-0001b1-6m
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:52:52 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17Gqnu3005615
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 10:52:49 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17Gqmbi011020
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 22:22:48 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 7 Feb 2012 22:22:45 +0530
Message-ID: <1328633565-21914-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] Select CMD_LOADENV with DEFAULT_ENVIRONMENT
To: barebox@lists.infradead.org

The environment isn't loaded until this command is
is selected - even if compiled in.

This patch makes the dependency explicit.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 Problem was encountered when trying to boot Linux with
 default environmenti on OMAP3 EVM. Since the default
 config was also being improved from its current state,
 it took rather long to narrow why the compiled
 environment was being 'ignored'.

 Sending change as RFC, as I may be missing something
 obvious as well.

 common/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d1db27d..2a7cbfc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -447,6 +447,7 @@ config PARTITION_DISK_DOS
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
+	select CMD_LOADENV
 	prompt "Compile in default environment"
 	help
 	  Enabling this option will give you a default environment when
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
