Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9o8l-0002dl-QV
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 11:58:40 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 10 Feb 2021 12:58:10 +0100
Message-Id: <20210210115807.4223-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20210210115807.4223-1-r.czerwinski@pengutronix.de>
References: <20210210115807.4223-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 3/3] commands: readline: release command slice
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Release the command slice around readline to let the workqueues run
while waiting for input.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 commands/readline.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/commands/readline.c b/commands/readline.c
index 796b4def95..ece25d12f5 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -5,6 +5,7 @@
 #include <common.h>
 #include <environment.h>
 #include <malloc.h>
+#include <slice.h>
 #include <xfuncs.h>
 
 static int do_readline(int argc, char *argv[])
@@ -14,11 +15,16 @@ static int do_readline(int argc, char *argv[])
 	if (argc < 3)
 		return COMMAND_ERROR_USAGE;
 
+	command_slice_release();
+
 	if (readline(argv[1], buf, CONFIG_CBSIZE) < 0) {
+		command_slice_acquire();
 		free(buf);
 		return COMMAND_ERROR;
 	}
 
+	command_slice_acquire();
+
 	setenv(argv[2], buf);
 	free(buf);
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
