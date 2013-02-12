Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from toroondcbmts05-srv.bellnexxia.net ([207.236.237.39])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5HpV-0002R1-Kb
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 15:31:37 +0000
Date: Tue, 12 Feb 2013 10:31:23 -0500
From: Xavier Douville <barebox@douville.org>
MIME-Version: 1.0
References: <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
 <20130211091905.GQ1906@pengutronix.de>
In-Reply-To: <20130211091905.GQ1906@pengutronix.de>
Message-Id: <20130212153132.XAZZ26520.toroondcbmts05-srv.bellnexxia.net@toip34-bus.srvr.bell.ca>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Do not print error message when successfully attaching more
 than one UBI device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi

This patch fix a bug where an error message is printed when 
attaching more than one UBI device. ubi_attach_mtd_dev() returns
the UBI device number (>=0) on success.

Signed-off-by: Xavier Douville <barebox@douville.org>
---
 commands/ubi.c |   12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 1653eaa..8dc95ee 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -71,15 +71,19 @@ static int do_ubiattach(int argc, char *argv[])
 	}
 
 	ret = ioctl(fd, MEMGETINFO, &user);
-	if (!ret)
+	if (!ret) {
 		ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+		if (ret >= 0) {
+			close(fd);
+			return 0;
+		}
+	}
 
-	if (ret)
-		printf("failed to attach: %s\n", strerror(-ret));
+	printf("failed to attach: %s\n", strerror(ret));
 
 	close(fd);
 
-	return ret ? 1 : 0;
+	return 1;
 }
 
 static const __maybe_unused char cmd_ubiattach_help[] =
-- 
1.7.9.5

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
