Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTndj-00048s-27
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 09:34:20 +0000
Received: from weser.hi.4.pengutronix.de ([10.1.0.109]
 helo=weser.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aTndM-0002Pa-B8
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 10:33:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 11 Feb 2016 10:33:56 +0100
Message-Id: <1455183236-25952-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1455183236-25952-1-git-send-email-l.stach@pengutronix.de>
References: <1455183236-25952-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ratp-console: select CRC16 and POLLER,
 depend on CONSOLE_FULL
To: barebox@lists.infradead.org

RATP console selects RATP, which in turn selects CRC16, but those
chains don't work in Kconfig, so select CRC16 also from the
console option.

Also fix build errors by depending on CONSOLE_FULL and selecting
POLLER.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index fc3ed8e57d73..3b87a3c8f8d2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -623,6 +623,9 @@ config PBL_CONSOLE
 config CONSOLE_RATP
 	bool
 	select RATP
+	select CRC16
+	select POLLER
+	depends on CONSOLE_FULL
 	prompt "RATP console support"
 	help
 	  This option adds support for remote controlling barebox via serial
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
