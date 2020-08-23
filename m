Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9yVv-0007oI-A9
 for barebox@lists.infradead.org; Sun, 23 Aug 2020 22:31:02 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 24 Aug 2020 00:30:53 +0200
Message-Id: <20200823223053.1710-1-rhi@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common: remove negative dependency on SANDBOX for IMD_TARGET
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

This dependency was added in commit b3d5c43cb8a2d492355a (2016-04-07,
Antony Pavlov: "common: add dependency !SANDBOX on imd target tool"),
but it seems to compile fine four years down the line.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 658437f01c5e..9e2417569bd5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -699,7 +699,6 @@ config IMD
 config IMD_TARGET
 	bool "build bareboximd target tool"
 	depends on IMD
-	depends on !SANDBOX
 
 config KERNEL_INSTALL_TARGET
 	bool
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
