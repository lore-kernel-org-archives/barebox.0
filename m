Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OthgG-0003pH-95
	for barebox@lists.infradead.org; Thu, 09 Sep 2010 14:00:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Sep 2010 15:59:53 +0200
Message-Id: <1284040793-32145-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] add login support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |    9 ++++++-
 commands/Makefile |    1 +
 commands/login.c  |   63 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 71 insertions(+), 2 deletions(-)
 create mode 100644 commands/login.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 0c9a6ef..2649eeb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -60,12 +60,17 @@ config CMD_MENU_MANAGEMENT
 	depends on CMD_MENU
 	prompt "menu scripts management"
 
-config CMD_PASSWD
+config CMD_LOGIN
 	tristate
 	select PASSWORD
+	prompt "login"
+
+config CMD_PASSWD
+	tristate
+	select CMD_LOGIN
 	prompt "passwd"
 
-if CMD_PASSWD
+if CMD_LOGIN || CMD_PASSWD
 
 choice
 	prompt "passwd mode"
diff --git a/commands/Makefile b/commands/Makefile
index 3012e65..ca30b5f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -52,3 +52,4 @@ obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
 obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
+obj-$(CONFIG_CMD_LOGIN)		+= login.o
diff --git a/commands/login.c b/commands/login.c
new file mode 100644
index 0000000..7d99b73
--- /dev/null
+++ b/commands/login.c
@@ -0,0 +1,63 @@
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
+
+#define PASSWD_MAX_LENGTH	(128 + 1)
+
+#if defined(CONFIG_PASSWD_MODE_STAR)
+#define LOGIN_MODE STAR
+#elif defined(CONFIG_PASSWD_MODE_CLEAR)
+#define LOGIN_MODE CLEAR
+#else
+#define LOGIN_MODE HIDE
+#endif
+
+static int do_login(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned char passwd[PASSWD_MAX_LENGTH];
+	int passwd_len;
+
+	if (!is_passwd_enable()) {
+		puts("login: password not set\n");
+		return 0;
+	}
+
+	do {
+		puts("Password: ");
+		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE);
+
+		if (check_passwd(passwd, passwd_len))
+			return 0;
+	} while(1);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_login_help[] =
+"";
+
+BAREBOX_CMD_START(login)
+	.cmd		= do_login,
+	.usage		= "login",
+	BAREBOX_CMD_HELP(cmd_login_help)
+BAREBOX_CMD_END
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
