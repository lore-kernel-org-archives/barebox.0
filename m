Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXn76-0000GQ-Ki
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 07:40:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 09:39:24 +0200
Message-Id: <1397029166-4412-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
References: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] loadenv: ignore -ENOENT when removing /env
To: barebox@lists.infradead.org

With the -s option loadenv first removes /env. Ignore it when this
directory does not exist.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 7b93e86..a39ca8c 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -80,7 +80,7 @@ static int do_loadenv(int argc, char *argv[])
 		int ret;
 
 		ret = unlink_recursive(dirname, NULL);
-		if (ret) {
+		if (ret && ret != -ENOENT) {
 			eprintf("cannot remove %s: %s\n", dirname,
 					strerror(-ret));
 			return 1;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
