Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Z3k-0006U5-8f
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:31:08 +0000
Received: by mail-ee0-f43.google.com with SMTP id c50so1682149eek.16
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 13:31:07 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 22:31:41 +0100
Message-Id: <1360272701-877-5-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
References: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 4/4] net: fix cpsw depends on ARCH_OMAP
To: barebox@lists.infradead.org


Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index cf6ceee..2b7decd 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -33,6 +33,7 @@ config DRIVER_NET_CS8900
 
 config DRIVER_NET_CPSW
 	bool "CPSW ethernet driver"
+	depends on ARCH_OMAP
 	select PHYLIB
 
 config DRIVER_NET_SMC911X
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
