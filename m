Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1al95I-0001YO-Oy
 for barebox@lists.infradead.org; Wed, 30 Mar 2016 05:54:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Mar 2016 07:54:02 +0200
Message-Id: <1459317243-28206-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] commands: nandtest: Fix wrong format specifier
To: Barebox List <barebox@lists.infradead.org>

Fixes: 1e009bf mtd: Make erase_info structs 64bit where necessary

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nandtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index ee7725d..6d0b770 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -87,7 +87,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 	ret = erase(fd, er.length, er.start);
 	if (ret < 0) {
 		perror("\nerase");
-		printf("Could't not erase flash at 0x%08x length 0x%08x.\n",
+		printf("Could't not erase flash at 0x%08llx length 0x%08llx.\n",
 			   er.start, er.length);
 		return ret;
 	}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
