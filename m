Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XY-0003e9-42
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:57 +0100
Message-Id: <1454064243-26558-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/23] scripts: imx: Drop double check
To: Barebox List <barebox@lists.infradead.org>

We have the same "if (*line == '\0')" check twice. Remove one of them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index fa705ff..79abed2 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -35,9 +35,6 @@ static int parse_line(char *line, char *argv[])
 		while ((*line == ' ') || (*line == '\t'))
 			++line;
 
-		if (*line == '\0')	/* end of line, no more args	*/
-			argv[nargs] = NULL;
-
 		if (*line == '\0') {	/* end of line, no more args	*/
 			argv[nargs] = NULL;
 			return nargs;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
