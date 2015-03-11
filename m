Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo6.mail-out.ovh.net ([46.105.76.65])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVguY-0000UX-Li
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 13:42:59 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 3A96AFFA1F8
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 14:42:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 14:41:53 +0100
Message-Id: <1426081316-14657-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150311132634.GN30554@ns203013.ovh.net>
 <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] command: add sha384sum and sha512sum support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  | 24 ++++++++++++++++++++++++
 commands/digest.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index e4f68e7..8fa2178 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1016,6 +1016,30 @@ config CMD_SHA256SUM
 
 	  Calculate a SHA256 digest over a FILE or a memory area.
 
+config CMD_SHA384SUM
+	tristate
+	select COMPILE_DIGEST
+	select SHA384
+	prompt "sha384sum"
+	help
+	  Calculate SHA384 digest
+
+	  Usage: sha384sum FILE|AREA
+
+	  Calculate a SHA384 digest over a FILE or a memory area.
+
+config CMD_SHA512SUM
+	tristate
+	select COMPILE_DIGEST
+	select SHA512
+	prompt "sha512sum"
+	help
+	  sha512sum - calculate SHA512 digest
+
+	  Usage: sha512sum FILE|AREA
+
+	  Calculate a SHA512 digest over a FILE or a memory area.
+
 config CMD_UNCOMPRESS
 	bool
 	select UNCOMPRESS
diff --git a/commands/digest.c b/commands/digest.c
index c6a2751..20fa13f 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -159,3 +159,45 @@ BAREBOX_CMD_START(sha256sum)
 BAREBOX_CMD_END
 
 #endif /* CMD_CMD_SHA256SUM */
+
+#ifdef CONFIG_CMD_SHA384SUM
+
+static int do_sha384(int argc, char *argv[])
+{
+	return do_digest("sha384", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(sha384sum)
+BAREBOX_CMD_HELP_TEXT("Calculate a SHA384 digest over a FILE or a memory area.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sha384sum)
+	.cmd		= do_sha384,
+	BAREBOX_CMD_DESC("calculate SHA384 digest")
+	BAREBOX_CMD_OPTS("FILE|AREA")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_sha384sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_SHA384SUM */
+
+#ifdef CONFIG_CMD_SHA512SUM
+
+static int do_sha512(int argc, char *argv[])
+{
+	return do_digest("sha512", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(sha512sum)
+BAREBOX_CMD_HELP_TEXT("Calculate a SHA512 digest over a FILE or a memory area.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sha512sum)
+	.cmd		= do_sha512,
+	BAREBOX_CMD_DESC("calculate SHA512 digest")
+	BAREBOX_CMD_OPTS("FILE|AREA")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_sha512sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_SHA512SUM */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
