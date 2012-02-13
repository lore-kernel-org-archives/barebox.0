Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwrfX-0001t4-1b
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 08:53:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2012 09:53:41 +0100
Message-Id: <1329123221-28492-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329123221-28492-1-git-send-email-s.hauer@pengutronix.de>
References: <1329123221-28492-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] uimage: Fix error message
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index c23f4f3..e96665a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -324,7 +324,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	if (os_type == filetype_uimage) {
 		ret = bootm_open_os_uimage(&data);
 		if (ret) {
-			printf("loading initrd failed with %s\n",
+			printf("loading os image failed with %s\n",
 					strerror(-ret));
 			goto err_out;
 		}
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
