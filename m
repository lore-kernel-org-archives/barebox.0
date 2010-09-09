Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OthgF-0003oc-Qm
	for barebox@lists.infradead.org; Thu, 09 Sep 2010 14:00:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Sep 2010 15:59:52 +0200
Message-Id: <1284040793-32145-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100909135543.GF9112@game.jcrosoft.org>
References: <20100909135543.GF9112@game.jcrosoft.org>
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
Subject: [PATCH 6/7] add passwd command
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |   23 ++++++++++++
 commands/Makefile |    1 +
 commands/passwd.c |   98 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 122 insertions(+), 0 deletions(-)
 create mode 100644 commands/passwd.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 57c9b75..0c9a6ef 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -60,6 +60,29 @@ config CMD_MENU_MANAGEMENT
 	depends on CMD_MENU
 	prompt "menu scripts management"
 
+config CMD_PASSWD
+	tristate
+	select PASSWORD
+	prompt "passwd"
+
+if CMD_PASSWD
+
+choice
+	prompt "passwd mode"
+
+config PASSWD_MODE_HIDE
+	bool "Hide"
+
+config PASSWD_MODE_STAR
+	bool "Star"
+
+config PASSWD_MODE_CLEAR
+	bool "Clear"
+
+endchoice
+
+endif
+
 endmenu
 
 menu "file commands                 "
diff --git a/commands/Makefile b/commands/Makefile
index 154a778..3012e65 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -51,3 +51,4 @@ obj-$(CONFIG_CMD_UNLZO)		+= unlzo.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
+obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
diff --git a/commands/passwd.c b/commands/passwd.c
new file mode 100644
index 0000000..9435091
--- /dev/null
+++ b/commands/passwd.c
@@ -0,0 +1,98 @@
+/*
+ * Copyright (c) 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <password.h>
+#include <errno.h>
+
+#define PASSWD_MAX_LENGTH	(128 + 1)
+
+#if defined(CONFIG_PASSWD_MODE_STAR)
+#define PASSWD_MODE STAR
+#elif defined(CONFIG_PASSWD_MODE_CLEAR)
+#define PASSWD_MODE CLEAR
+#else
+#define PASSWD_MODE HIDE
+#endif
+
+static int do_passwd(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned char passwd2[PASSWD_MAX_LENGTH];
+	unsigned char passwd1[PASSWD_MAX_LENGTH];
+	int passwd1_len;
+	int passwd2_len;
+	int ret = 1;
+
+	puts("Enter new password: ");
+	passwd1_len = password(passwd1, PASSWD_MAX_LENGTH, PASSWD_MODE);
+
+	if (passwd1_len < 0)
+		return 1;
+
+	puts("Retype new password: ");
+	passwd2_len = password(passwd2, PASSWD_MAX_LENGTH, PASSWD_MODE);
+
+	if (passwd2_len < 0)
+		return 1;
+
+	if (passwd2_len != passwd1_len) {
+		goto err;
+	} else {
+		if (passwd1_len == 0) {
+			ret = 0;
+			goto disable;
+		}
+
+		if (strncmp(passwd1, passwd2, passwd1_len) != 0)
+			goto err;
+	}
+
+	ret = set_passwd(passwd1, passwd1_len);
+
+	if (ret < 0) {
+		puts("Sorry, passwords write failed\n");
+		ret = 1;
+		goto disable;
+	}
+
+	return 0;
+err:
+	puts("Sorry, passwords do not match\n");
+	puts("passwd: password unchanged\n");
+	return 1;
+
+disable:
+	passwd_disable();
+	puts("passwd: password disabled\n");
+	return ret;
+}
+
+static const __maybe_unused char cmd_passwd_help[] =
+"Usage: passwd\n"
+"passwd allow you to specify a password\n"
+"to disable it put an empty password\n"
+;
+
+BAREBOX_CMD_START(passwd)
+	.cmd		= do_passwd,
+	.usage		= "passwd",
+	BAREBOX_CMD_HELP(cmd_passwd_help)
+BAREBOX_CMD_END
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
