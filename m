Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9o8h-0002cc-KX
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 11:58:36 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 10 Feb 2021 12:58:08 +0100
Message-Id: <20210210115807.4223-2-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/3] commands: readline: use exit code macros
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 commands/readline.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/readline.c b/commands/readline.c
index 426f579ee4..796b4def95 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -16,13 +16,13 @@ static int do_readline(int argc, char *argv[])
 
 	if (readline(argv[1], buf, CONFIG_CBSIZE) < 0) {
 		free(buf);
-		return 1;
+		return COMMAND_ERROR;
 	}
 
 	setenv(argv[2], buf);
 	free(buf);
 
-	return 0;
+	return COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_HELP_START(readline)
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
