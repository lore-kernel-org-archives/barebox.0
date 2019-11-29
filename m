Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzF-0006RJ-Ek
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-36
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:58 +0100
Message-Id: <20191129151505.23946-33-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 32/39] ubootvarfs: depend on OFTREE
To: barebox@lists.infradead.org

This driver can only be probed from DT and needs some OFTREE only
functions to work correctly. Depend on the config option to make
sure they are available.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/misc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 0f736f8bded3..8abbf69b3a83 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -25,6 +25,7 @@ config DEV_MEM
 
 config UBOOTVAR
 	bool "U-Boot environment storage"
+	depends on OFTREE
 	help
 	  This driver exposes U-Boot environment variable storage as a
 	  single mmap-able device, hiding various low-level details
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
