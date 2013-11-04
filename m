Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKm1-0004Pr-RO
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:05:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:27 +0100
Message-Id: <1383573870-11325-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] boot: Print boot entries in the order they are
To: barebox@lists.infradead.org

Instead of first printing the traditional entries and the bootloader
spec entries afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index f2d9836..2162365 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -132,25 +132,15 @@ static void bootsources_list(void)
 
 	blspec = bootentries_collect();
 
-	printf("\nBootscripts:\n\n");
-	printf("%-40s   %-20s\n", "name", "title");
-	printf("%-40s   %-20s\n", "----", "-----");
+	printf("%-20s %-20s  %s\n", "device", "hwdevice", "title");
+	printf("%-20s %-20s  %s\n", "------", "--------", "-----");
 
 	blspec_for_each_entry(blspec, entry) {
 		if (entry->scriptpath)
 			printf("%-40s   %s\n", basename(entry->scriptpath), entry->me.display);
-	}
-
-	if (!IS_ENABLED(CONFIG_BLSPEC))
-		return;
-
-	printf("\nBootloader spec entries:\n\n");
-	printf("%-20s %-20s  %s\n", "device", "hwdevice", "title");
-	printf("%-20s %-20s  %s\n", "------", "--------", "-----");
-
-	blspec_for_each_entry(blspec, entry)
-		if (!entry->scriptpath)
+		else
 			printf("%s\n", entry->me.display);
+	}
 
 	blspec_free(blspec);
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
