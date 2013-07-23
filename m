Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1ZpZ-0005Wc-IM
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 10:28:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 12:28:00 +0200
Message-Id: <1374575282-9592-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
References: <1374575282-9592-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ubiattach command: Properly check return values
To: barebox@lists.infradead.org

- print error when ioctl fails, not a combined message when one of
  ioctl or ubi_attach_mtd_dev failed.
- ubi_attach_mtd_dev() returns the ubi number for success, not 0, so
  check for ret < 0 to detect errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubi.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 854ea83..5b57d0b 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -71,12 +71,17 @@ static int do_ubiattach(int argc, char *argv[])
 	}
 
 	ret = ioctl(fd, MEMGETINFO, &user);
-	if (!ret)
-		ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+	if (ret) {
+		printf("MEMGETINFO failed: %s\n", strerror(-ret));
+		goto err;
+	}
 
-	if (ret)
+	ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+	if (ret < 0)
 		printf("failed to attach: %s\n", strerror(-ret));
-
+	else
+		ret = 0;
+err:
 	close(fd);
 
 	return ret ? 1 : 0;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
