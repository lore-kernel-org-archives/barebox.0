Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROsvR-0003Cs-9n
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 15:21:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Nov 2011 16:21:44 +0100
Message-Id: <1321024905-17030-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1321024905-17030-1-git-send-email-s.hauer@pengutronix.de>
References: <1321024905-17030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mkdir command: do not fail with -p and directory already
 exists
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mkdir.c |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/commands/mkdir.c b/commands/mkdir.c
index b66795b..45e7408 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -45,10 +45,13 @@ static int do_mkdir(struct command *cmdtp, int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	while (optind < argc) {
-		if (parent)
+		if (parent) {
 			ret = make_directory(argv[optind]);
-		else
+			if (ret == -EEXIST)
+				ret = 0;
+		} else {
 			ret = mkdir(argv[optind], 0);
+		}
 		if (ret) {
 			printf("could not create %s: %s\n", argv[optind], errno_str());
 			return 1;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
