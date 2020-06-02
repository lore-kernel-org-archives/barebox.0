Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2ga-0006s4-2T
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:09 +0200
Message-Id: <20200602085412.16554-23-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 22/25] commands: tftp: drop unused variable
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The flags variables is not used. Drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/tftp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/commands/tftp.c b/commands/tftp.c
index 1569819844bf..48ff00c6217c 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -20,7 +20,6 @@ static int do_tftpb(int argc, char *argv[])
 {
 	char *source, *dest, *freep;
 	int opt;
-	unsigned long flags;
 	int tftp_push = 0;
 	int ret;
 	IPaddr_t ip;
@@ -46,13 +45,10 @@ static int do_tftpb(int argc, char *argv[])
 	else
 		dest = argv[optind];
 
-	if (tftp_push) {
+	if (tftp_push)
 		dest = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, dest);
-		flags = O_RDONLY;
-	} else {
+	else
 		source = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, source);
-		flags = O_WRONLY | O_CREAT;
-	}
 
 	if (!freep)
 		return -ENOMEM;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
