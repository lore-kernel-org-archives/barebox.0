Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWLBE-0006Wu-6G
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 08:42:53 +0000
Received: from mail607.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 775B2FFA6A4
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 09:42:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Mar 2015 09:42:22 +0100
Message-Id: <1426236142-12050-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150313083211.GW30554@ns203013.ovh.net>
References: <20150313083211.GW30554@ns203013.ovh.net>
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
Subject: [PATCH 1/1] command: allow runtime usage
To: barebox@lists.infradead.org

this will allow as example to list the current supported digest

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/command.c  | 2 ++
 include/command.h | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/common/command.c b/common/command.c
index 61191c2..dc2cb88 100644
--- a/common/command.c
+++ b/common/command.c
@@ -47,6 +47,8 @@ void barebox_cmd_usage(struct command *cmdtp)
 		puts(cmdtp->help);
 		putchar('\n');
 	}
+	if (cmdtp->usage)
+		cmdtp->usage();
 #endif
 }
 EXPORT_SYMBOL(barebox_cmd_usage);
diff --git a/include/command.h b/include/command.h
index 5d5bf53..3aca1a9 100644
--- a/include/command.h
+++ b/include/command.h
@@ -54,6 +54,7 @@ struct command {
 	uint32_t	group;
 #ifdef	CONFIG_LONGHELP
 	const char	*help;		/* Help  message	(long)	*/
+	void		(*usage)(void);
 #endif
 }
 #ifdef __x86_64__
@@ -115,8 +116,10 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 #ifdef CONFIG_LONGHELP
 #define BAREBOX_CMD_HELP(text)	.help = text,
+#define BAREBOX_CMD_USAGE(fn)	.usage = fn,
 #else
 #define BAREBOX_CMD_HELP(text)
+#define BAREBOX_CMD_USAGE(fn)
 #endif
 
 #define BAREBOX_CMD_GROUP(grp)	.group = grp,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
