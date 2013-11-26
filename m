Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLJI-0008DT-W6
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:16:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:15:59 +0100
Message-Id: <1385482559-6068-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385482559-6068-1-git-send-email-s.hauer@pengutronix.de>
References: <1385482559-6068-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] common Kconfig: disable unused options for SHELL_NONE
To: barebox@lists.infradead.org

Let commandline editing and long help depend on !SHELL_NONE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index f47602e..623372b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -285,6 +285,7 @@ config SIMPLE_READLINE
 
 config LONGHELP
 	bool
+	depends on !SHELL_NONE
 	prompt "Enable long help texts"
 
 config CBSIZE
@@ -365,6 +366,7 @@ config HUSH_GETOPT
 	  This enables a getopt function builtin to hush.
 
 config CMDLINE_EDITING
+	depends on !SHELL_NONE
 	bool
 	prompt "Enable command line editing"
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
