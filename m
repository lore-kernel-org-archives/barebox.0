Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYaXm-0004Cp-8g
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 09:45:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Dec 2011 10:45:27 +0100
Message-Id: <1323337527-759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] time command: Fix needed string length
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/time.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 9a76945..c2633ba 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -10,7 +10,7 @@ static int do_time(struct command *cmdtp, int argc, char *argv[])
 	unsigned char *buf;
 	u64 start, end, diff64;
 	unsigned long diff;
-	int len = 0;
+	int len = 1; /* '\0' */
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
