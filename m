Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000AA-Gr
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:59 +0200
Message-Id: <1376551741-16438-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] Make hostname available to C Code
To: barebox@lists.infradead.org

The boards often have a sane default for the hostname. Provide a C
function for setting/getting it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c    | 34 ++++++++++++++++++++++++++++++++++
 include/common.h |  2 ++
 net/dhcp.c       |  1 -
 3 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/common/misc.c b/common/misc.c
index bb7d447..4ec0e22 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -19,6 +19,9 @@
 #include <common.h>
 #include <errno.h>
 #include <malloc.h>
+#include <magicvar.h>
+#include <globalvar.h>
+#include <environment.h>
 
 int errno;
 EXPORT_SYMBOL(errno);
@@ -149,3 +152,34 @@ const char *barebox_get_model(void)
 	return CONFIG_BOARDINFO;
 }
 EXPORT_SYMBOL(barebox_get_model);
+
+BAREBOX_MAGICVAR_NAMED(global_model, global.model, "Product name of this hardware");
+
+static char *hostname;
+
+/*
+ * The hostname is supposed to be the shortname of a board. It should
+ * contain only lowercase letters, numbers, '-', '_'. No whitespaces
+ * allowed.
+ */
+void barebox_set_hostname(const char *__hostname)
+{
+	if (IS_ENABLED(CONFIG_GLOBALVAR)) {
+		globalvar_add_simple("hostname", __hostname);
+	} else {
+		free(hostname);
+		hostname = xstrdup(__hostname);
+	}
+}
+
+const char *barebox_get_hostname(void)
+{
+	if (IS_ENABLED(CONFIG_GLOBALVAR))
+		return getenv("global.hostname");
+
+	return hostname;
+}
+EXPORT_SYMBOL(barebox_get_hostname);
+
+BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname,
+		"shortname of the board. Also used as hostname for DHCP requests");
diff --git a/include/common.h b/include/common.h
index 7d05d8b..7173efb 100644
--- a/include/common.h
+++ b/include/common.h
@@ -236,6 +236,8 @@ static inline void barebox_banner(void) {}
 
 const char *barebox_get_model(void);
 void barebox_set_model(const char *);
+const char *barebox_get_hostname(void);
+void barebox_set_hostname(const char *);
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
diff --git a/net/dhcp.c b/net/dhcp.c
index cafefcb..ff54924 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -830,7 +830,6 @@ BAREBOX_CMD_START(dhcp)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
-BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname, "hostname to send or returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
