Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPEEM-0000K4-2a
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 15:43:38 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon,  8 Apr 2013 17:43:28 +0200
Message-Id: <1365435808-32517-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] commands: i2c: change 0X to 0x
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/i2c.c b/commands/i2c.c
index 8370b43..626255d 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -45,7 +45,7 @@ static int do_i2c_probe(int argc, char *argv[])
 	if (stopaddr > 0x7F)
 		stopaddr = 0x7F;
 
-	printf("probing i2c range 0X%02x - 0x%02x :\n", startaddr, stopaddr);
+	printf("probing i2c range 0x%02x - 0x%02x :\n", startaddr, stopaddr);
 	for (addr = startaddr; addr <= stopaddr; addr++) {
 		client.addr = addr;
 		ret = i2c_write_reg(&client, 0x00, &reg, 0);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
