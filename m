Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3frH-0008Be-P9
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 09:04:52 +0000
Received: by mail-lf0-x244.google.com with SMTP id 98so5410526lfs.0
 for <barebox@lists.infradead.org>; Mon, 07 Nov 2016 01:04:31 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Nov 2016 12:04:25 +0300
Message-Id: <20161107090425.22615-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] command.h: drop unused Struct_Section attribute
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/command.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/command.h b/include/command.h
index 2e72780..43ee454 100644
--- a/include/command.h
+++ b/include/command.h
@@ -89,8 +89,6 @@ int run_command(const char *cmd);
 
 #endif	/* __ASSEMBLY__ */
 
-#define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
-
 #define BAREBOX_CMD_START(_name)							\
 extern const struct command __barebox_cmd_##_name;					\
 const struct command __barebox_cmd_##_name						\
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
