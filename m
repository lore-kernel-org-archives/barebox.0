Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7JI-0001ju-QR
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:44:10 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 20 Apr 2015 10:43:35 +0200
Message-Id: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/5] command: timeout: remove unhandled '-t' option
To: barebox@lists.infradead.org

This patch removes the option '-t', as it's unhandled in the code since it was
added to barebox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/timeout.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/timeout.c b/commands/timeout.c
index feca7140d59d..3dee9606eb5d 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -37,7 +37,7 @@ static int do_timeout(int argc, char *argv[])
 	uint64_t start, second;
 	const char *varname = NULL;
 
-	while((opt = getopt(argc, argv, "t:crsav:")) > 0) {
+	while((opt = getopt(argc, argv, "crsav:")) > 0) {
 		switch(opt) {
 		case 'r':
 			flags |= TIMEOUT_RETURN;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
