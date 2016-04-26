Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av0FU-0004Mn-T0
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 10:29:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 12:29:21 +0200
Message-Id: <1461666561-15808-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461666561-15808-1-git-send-email-s.hauer@pengutronix.de>
References: <1461666561-15808-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: Fix Kconfig dependencies
To: Barebox List <barebox@lists.infradead.org>

State support does not need OF_BAREBOX_DRIVERS and never did, so drop
the dependency there. It's the state driver which needs of_find_path(),
since this symbol now is always enabled when OF is enabled, we don't
have to add the dependency to the state driver, but instead can depend
on OFDEVICE. We could depend on OF instead, but compiling the state
driver without OFDEVICE makes no sense.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig       | 1 -
 drivers/misc/Kconfig | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 8f7bb02..205ea9a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -775,7 +775,6 @@ config POLLER
 
 config STATE
 	bool "generic state infrastructure"
-	depends on OF_BAREBOX_DRIVERS
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 7a5b146..6640a70 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -17,6 +17,7 @@ config SRAM
 
 config STATE_DRV
 	tristate "state driver"
+	depends on OFDEVICE
 	depends on STATE
 
 endmenu
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
