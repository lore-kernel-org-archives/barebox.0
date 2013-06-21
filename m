Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upy4s-0005mL-5y
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 09:56:22 +0000
Received: by mail-ea0-f178.google.com with SMTP id l15so4592940eak.9
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 02:55:59 -0700 (PDT)
Received: from [127.0.0.1] (fritzc.com. [78.47.220.26])
 by mx.google.com with ESMTPSA id n42sm6438792eeh.15.2013.06.21.02.55.57
 for <barebox@lists.infradead.org>
 (version=SSLv3 cipher=RC4-SHA bits=128/128);
 Fri, 21 Jun 2013 02:55:58 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1371808410.3949.13.camel@mars>
References: <1371808410.3949.13.camel@mars>
Date: Fri, 21 Jun 2013 11:55:56 +0200
Message-ID: <1371808556.3949.15.camel@mars>
Mime-Version: 1.0
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
Subject: [PATCH 2/2] ARM OMAP: add support for loading Environment from UBI
To: barebox@lists.infradead.org

This patch adds support to load environment from a static
UBI volume.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 common/Kconfig   |   34 ++++++++++++++++++++++++++++++++++
 common/startup.c |   17 +++++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index d36ed13..058eb21 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -103,6 +103,40 @@ config MEMINFO
 config ENVIRONMENT_VARIABLES
 	bool "environment variables support"
 
+config ENVIRONMENT_IN_UBI
+	bool "Load Environment from an UBI static volume"
+	depends on UBI
+	depends on ENV_HANDLING
+	help
+	  Say Y here if you would like to attach UBI and load
+	  the environment from an UBI volume.
+
+if ENVIRONMENT_IN_UBI
+
+menu "Configure Loading Environment from UBI"
+
+config ENV_IN_UBI_PARTITION
+	string
+	default "/dev/root"
+	prompt "Filepath of mtd partition holding UBI volumes"
+	help
+	  Filepath of mtd partition holding UBI static volume with Barebox
+	  environment inside.  This value depends on your board partition
+	  layout. Default string value is "/dev/root".
+
+config ENV_IN_UBI_VOLNAME
+	string
+	default "/dev/ubi0.bareboxenv_0"
+	prompt "Filepath of UBI static volume holding environment"
+	help
+	  Filepath of UBI static volume holding Barebox environment inside the
+	  partition. This string value depends on your UBI volume name
+	  configuration scheme. Default string is "/dev/ubi0.bareboxenv_0".
+
+endmenu
+
+endif
+
 menu "memory layout"
 
 source "pbl/Kconfig"
diff --git a/common/startup.c b/common/startup.c
index ff00ca7..01c0e1d 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -117,6 +117,23 @@ void __noreturn start_barebox(void)
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
 		int ret;
 
+		if (IS_ENABLED(CONFIG_ENVIRONMENT_IN_UBI)) {
+#ifdef CONFIG_ENVIRONMENT_IN_UBI
+			char s[PATH_MAX + 32];
+			sprintf(s, "%s%s ", "ubiattach ",
+				CONFIG_ENV_IN_UBI_PARTITION);
+			ret = run_command(s, 0);
+			if (ret) {
+				sprintf(s, "%s%s ", "unable to ubiattach ",
+					CONFIG_ENV_IN_UBI_PARTITION);
+				pr_err(s);
+			} else {
+				default_environment_path =
+					CONFIG_ENV_IN_UBI_VOLNAME;
+			}
+#endif
+		}
+
 		ret = envfs_load(default_environment_path, "/env", 0);
 
 		if (ret && IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
-- 
1.7.10.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
