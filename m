Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22e.google.com ([2607:f8b0:400e:c05::22e])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXCab-0000PM-Pc
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 21:30:31 +0000
Received: by mail-pg0-x22e.google.com with SMTP id c9-v6so5165525pgf.5
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 14:30:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 14:29:58 -0700
Message-Id: <20180624212959.27468-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180624212959.27468-1-andrew.smirnov@gmail.com>
References: <20180624212959.27468-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] commands: mmc_extcsd: Make use of devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/mmc_extcsd.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 3a418ea5e..889a6c614 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -22,6 +22,7 @@
 #include <stdio.h>
 #include <mci.h>
 #include <getopt.h>
+#include <fs.h>
 
 #define EXT_CSD_BLOCKSIZE	512
 
@@ -2404,10 +2405,8 @@ static int do_mmc_extcsd(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	devname = argv[optind];
-	if (!strncmp(devname, "/dev/", 5))
-		devname += 5;
 
-	mci = mci_get_device_by_name(devname);
+	mci = mci_get_device_by_name(devpath_to_name(devname));
 	if (mci == NULL) {
 		retval = -ENOENT;
 		goto error;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
