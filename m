Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkeqp-0001aJ-Iy
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 00:51:09 +0000
Received: by mail-qt1-x841.google.com with SMTP id t13so17289771qtn.3
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2019 16:51:07 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Fri, 18 Jan 2019 19:50:51 -0500
Message-Id: <20190119005051.31656-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] boot: make it a little bit less verbose
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

The current boot code prints too much error messages without much value
in them. This patch prints the error string when it makes sense and
simplifies the return path of bootscript_boot(). Make use of pr_err()
in boot_entry() which is the shared code responsible for calling the
boot_entry->boot callback. Remove the unnecessary print statement
from bootsource_action() as well.

This removes a single print statement ATM, allowing us to go from this:

    booting 'sd'
    Cannot set parameter mci0.probe: No such device
    running automount command 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd' failed
    could not open /mnt/sd/zImage: No such device
    ERROR: Booting 'sd' failed: No such device
    booting 'sd' failed: No such device
    boot: No such device

to this:

    Booting entry 'sd'
    Cannot set parameter mci0.probe: No such device
    running automount command 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd' failed
    could not open /mnt/sd/zImage: No such device
    ERROR: Booting entry 'sd' failed
    boot: No such device

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 common/boot.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 41bf1ce64..974eaf5d0 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -96,8 +96,8 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	ret = run_command(bs->scriptpath);
 	if (ret) {
-		printf("Running %s failed\n", bs->scriptpath);
-		goto out;
+		pr_err("Running script '%s' failed: %s\n", bs->scriptpath, strerror(-ret));
+		return ret;
 	}
 
 	bootm_data_init_defaults(&data);
@@ -107,11 +107,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	if (dryrun)
 		data.dryrun = dryrun;
 
-	ret = bootm_boot(&data);
-	if (ret)
-		pr_err("Booting '%s' failed: %s\n", basename(bs->scriptpath), strerror(-ret));
-out:
-	return ret;
+	return bootm_boot(&data);
 }
 
 static unsigned int boot_watchdog_timeout;
@@ -135,7 +131,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
 	int ret;
 
-	printf("booting '%s'\n", be->title);
+	printf("Booting entry '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
 		ret = watchdog_set_timeout(boot_watchdog_timeout);
@@ -144,9 +140,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	}
 
 	ret = be->boot(be, verbose, dryrun);
-
 	if (ret)
-		printf("booting '%s' failed: %s\n", be->title, strerror(-ret));
+		pr_err("Booting entry '%s' failed\n", be->title);
 
 	return ret;
 }
@@ -154,11 +149,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 static void bootsource_action(struct menu *m, struct menu_entry *me)
 {
 	struct bootentry *be = container_of(me, struct bootentry, me);
-	int ret;
 
-	ret = boot_entry(be, 0, 0);
-	if (ret)
-		printf("Booting failed with: %s\n", strerror(-ret));
+	boot_entry(be, 0, 0);
 
 	printf("Press any key to continue\n");
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
