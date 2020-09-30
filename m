Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mj-30
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:19:56 +0200
Message-Id: <20200930072005.1407-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/12] commands: uimage: fix indeterminate exit code of command
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Depending on passed options, uimage may never assign ret a value.
Fix this by returning COMMAND_SUCCESS by default.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/uimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/uimage.c b/commands/uimage.c
index 982da7101aa7..fb4df780bdd0 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -19,7 +19,7 @@ static int uimage_flush(void *buf, unsigned int len)
 static int do_uimage(int argc, char *argv[])
 {
 	struct uimage_handle *handle;
-	int ret;
+	int ret = 0;
 	int verify = 0;
 	int fd;
 	int opt;
@@ -84,7 +84,7 @@ static int do_uimage(int argc, char *argv[])
 err:
 	uimage_close(handle);
 
-	return ret ? 1 : 0;
+	return ret ? COMMAND_ERROR : COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_HELP_START(uimage)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
