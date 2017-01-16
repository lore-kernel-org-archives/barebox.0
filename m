Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4nh-0008Oj-NI
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:46:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cT4nK-0005ol-E5
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:45:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 16 Jan 2017 11:45:44 +0100
Message-Id: <20170116104546.21842-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] defaultenv: select COMMAND_SUPPORT and GLOBALVAR
To: barebox@lists.infradead.org

To satisfy the direct dependencies of the selected commands.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 74e973999a3a..2383b772f8c5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -856,6 +856,8 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	depends on DEFAULT_ENVIRONMENT
 	depends on !DEFAULT_ENVIRONMENT_GENERIC_NEW
 	depends on SHELL_HUSH
+	select COMMAND_SUPPORT
+	select GLOBALVAR
 	select CMD_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
