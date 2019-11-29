Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006et-T9
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz7-0006u0-QA
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:05 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:28 +0100
Message-Id: <20191129151505.23946-3-l.stach@pengutronix.de>
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
Subject: [PATCH 02/39] ratp: add more build dependencies
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/ratp/Kconfig | 1 +
 lib/Kconfig         | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
index 30462c6c9759..25150addfd75 100644
--- a/common/ratp/Kconfig
+++ b/common/ratp/Kconfig
@@ -6,6 +6,7 @@ config CONSOLE_RATP
 	select POLLER
 	select CMDLINE_EDITING
 	depends on CONSOLE_FULL
+	depends on !SHELL_NONE
 	prompt "RATP console support"
 	help
 	  This option adds support for remote controlling barebox via serial
diff --git a/lib/Kconfig b/lib/Kconfig
index 6216fdd6bac0..9a80780186a5 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -105,6 +105,11 @@ config LIBFDT
 
 config RATP
 	select CRC_ITU_T
+	select COMPILE_MEMORY
+	select COMMAND_SUPPORT
+	select POLLER
+	depends on CONSOLE_FULL
+	depends on !SHELL_NONE
 	bool "RATP protocol support"
 	help
 	  Reliable Asynchronous Transfer Protocol (RATP) is a protocol for reliably
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
