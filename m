Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbd-0007rf-OU
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:26 +0000
Received: by padhy16 with SMTP id hy16so133243476pad.1
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:40 -0700
Message-Id: <1444589021-12727-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] common/parser.c: Do not conflate error reporting
 disciplines
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Run_command() uses 0 to indicate success and negative values to
indicate errors, whereas execute_command() uses 0 for success and
positive integers to represent error codes. Conflating the two breaks
the code that calls run_command and then checks for error code sign to
detect problems, so avoid that by doing a very simple transformation
on the result of execute_command

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/parser.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/parser.c b/common/parser.c
index ed414d0..2b95aed 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -253,7 +253,8 @@ int run_command(const char *cmd)
 			continue;
 		}
 
-		rc = execute_command(argc, argv);
+		if (execute_command(argc, argv) != COMMAND_SUCCESS)
+			rc = -1;
 	}
 
 	return rc;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
