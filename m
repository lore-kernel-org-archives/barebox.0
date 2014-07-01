Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1sx1-0002xr-9L
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 07:58:04 +0000
Received: by mail-we0-f173.google.com with SMTP id t60so9319467wes.4
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 00:57:40 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue,  1 Jul 2014 10:04:18 +0200
Message-Id: <1404201858-1626-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH] menutree: let it select GLOB and GLOB_SORT
To: barebox@lists.infradead.org

The menutree code depends on CONFIG_GLOB, without it will just hang. So
let it select it automatically. Also remove the dependency on hush, because
glob() will run with the simple shell as well.

Also add a dependency on CONFIG_GLOB_SORT. While is not strictly
needed, many people use menu/00-foo menu/10-bar menu/20-barf to sort
their menu entries.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 common/Kconfig |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1afee93..bba7f15 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -61,6 +61,8 @@ config BAREBOX_UPDATE
 
 config MENUTREE
 	bool
+	select GLOB
+	select GLOB_SORT
 
 menu "General Settings"
 
@@ -338,11 +340,13 @@ config MAXARGS
 
 config GLOB
 	bool
-	prompt "hush globbing support"
-	depends on SHELL_HUSH
+	prompt "globbing support"
 	help
 	  If you want to use wildcards like * or ? say y here.
 
+	  Globbing can be used in the HUSH shell, but is also used
+	  internally in the menutree command.
+
 config GLOB_SORT
 	select QSORT
 	bool
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
