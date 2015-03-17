Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo69.mail-out.ovh.net ([178.33.251.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXq4B-0002K7-VQ
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 11:53:48 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id BEF711000DA2
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 12:53:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Mar 2015 12:53:14 +0100
Message-Id: <1426593196-12509-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426593196-12509-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150317114923.GQ26127@ns203013.ovh.net>
 <1426593196-12509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] command: allow runtime usage
To: barebox@lists.infradead.org

This will allow as example to list the currently supported digest.

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
