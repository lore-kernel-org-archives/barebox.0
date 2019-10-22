Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqGb-00012S-L8
 for barebox@lists.infradead.org; Tue, 22 Oct 2019 09:15:51 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 22 Oct 2019 11:15:38 +0200
Message-Id: <20191022091538.25936-1-rhi@pengutronix.de>
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
Subject: [PATCH] common: state: improve kconfig help text
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

Cc: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 common/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index b840242ac9b6..d397d8bc4d4d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -959,11 +959,11 @@ config STATE_CRYPTO
 	  for more information.
 
 config STATE_BACKWARD_COMPATIBLE
-	bool "backward compatible 'direct storage backend'"
+	bool "backward compatible 'direct' storage backend"
 	depends on STATE
 	help
-	  With this option enabled the 'direct' storage backend keeps backward
-	  compatibility with older revisions of the state framework. Newer
+	  With this option enabled, the 'direct' storage backend keeps backward
+	  compatibility with the state framework of barebox <= v2016.08.0. Newer
 	  revisions expect an additional 'meta header' and fail otherwise.
 
 config BOOTCHOOSER
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
