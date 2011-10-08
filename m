Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYTV-0001d4-Rs
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 15:06:06 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 97616DCEDCE
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 17:07:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:41:59 +0200
Message-Id: <1318084919-3984-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] command/digest: add sha224 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |    6 ++++++
 commands/digest.c |   20 ++++++++++++++++++++
 2 files changed, 26 insertions(+), 0 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 39bdb0f..095c1b2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -252,6 +252,12 @@ config CMD_SHA256SUM
 	select SHA256
 	prompt "sha256sum"
 
+config CMD_SHA224SUM
+	tristate
+	select CMD_DIGEST
+	select SHA224
+	prompt "sha224sum"
+
 config CMD_MTEST
 	tristate
 	prompt "mtest"
diff --git a/commands/digest.c b/commands/digest.c
index 1fbffb6..fbeadf9 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -116,6 +116,26 @@ BAREBOX_CMD_END
 
 #endif /* CMD_CMD_SHA1SUM */
 
+#ifdef CONFIG_CMD_SHA224SUM
+
+static int do_sha224(struct command *cmdtp, int argc, char *argv[])
+{
+	return do_digest("sha224", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(sha224sum)
+BAREBOX_CMD_HELP_USAGE("sha224sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a sha224 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sha224sum)
+	.cmd		= do_sha224,
+	.usage		= "sha224 checksum calculation",
+	BAREBOX_CMD_HELP(cmd_sha224sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_SHA224SUM */
+
 #ifdef CONFIG_CMD_SHA256SUM
 
 static int do_sha256(struct command *cmdtp, int argc, char *argv[])
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
