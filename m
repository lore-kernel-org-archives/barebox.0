Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002DU-RB
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:37 +0200
Message-Id: <1341517020-5581-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/30] exec command: Fix compilation
To: barebox@lists.infradead.org

read_file and run_command take an additional argument now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/exec.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/exec.c b/commands/exec.c
index a25e8cf..e2509ff 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -38,11 +38,11 @@ static int do_exec(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	for (i=1; i<argc; ++i) {
-		script = read_file(argv[i]);
+		script = read_file(argv[i], NULL);
 		if (!script)
 			return 1;
 
-		if (run_command (script, flag) == -1)
+		if (run_command (script, 0) == -1)
 			goto out;
 		free(script);
 	}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
