Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5sER-0003Ji-Qc
 for barebox@lists.infradead.org; Thu, 26 May 2016 10:09:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b5sE6-00017h-AP
 for barebox@lists.infradead.org; Thu, 26 May 2016 12:09:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 26 May 2016 12:09:13 +0200
Message-Id: <1464257353-5640-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
References: <1464257353-5640-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] common: select dependencies for defaultenv-2
To: barebox@lists.infradead.org

Now that GLOBALVAR and NVVAR are user visible options they need
to be selected when selecting the global and nv command support
which uses them.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 928db0a159e1..a8c1855aab17 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -740,14 +740,17 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	bool
 	depends on DEFAULT_ENVIRONMENT
 	depends on SHELL_HUSH
+	select COMMAND_SUPPORT
 	select CMD_GETOPT
 	select GLOB
 	select GLOB_SORT
+	select GLOBALVAR
 	select CMD_GLOBAL
 	select CMD_AUTOMOUNT
 	select CMD_BASENAME
 	select CMD_READLINK
 	select CMD_DIRNAME
+	select NVVAR
 	select CMD_NV
 	select FLEXIBLE_BOOTARGS
 	select CMD_BOOT
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
