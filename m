Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViZo3-00039C-Gn
 for barebox@lists.infradead.org; Tue, 19 Nov 2013 01:08:44 +0000
Received: by mail-bk0-f41.google.com with SMTP id v15so2888806bkz.0
 for <barebox@lists.infradead.org>; Mon, 18 Nov 2013 17:08:20 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 19 Nov 2013 02:08:13 +0100
Message-Id: <1384823293-11830-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1384823293-11830-1-git-send-email-alex.aring@gmail.com>
References: <1384823293-11830-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/2] common: add dependency !SANDBOX on target tools
To: barebox@lists.infradead.org

The build of target tools fails on sandbox architecture.
We don't need any target tools in this case, so add a dependency.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index ccfbc80..06edbc2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -453,6 +453,7 @@ config BLSPEC
 
 config KERNEL_INSTALL_TARGET
 	bool
+	depends on !SANDBOX
 	prompt "Build kernel-install utility for the target"
 	help
 	  Enable this to compile the kernel-install script using the cross
@@ -610,6 +611,7 @@ config DEFAULT_ENVIRONMENT_PATH
 
 config BAREBOXENV_TARGET
 	bool
+	depends on !SANDBOX
 	prompt "build bareboxenv tool for target"
 	help
 	  'bareboxenv' is a tool to access the barebox environment from a running Linux
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
