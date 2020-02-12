Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sor-0004T9-6a
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 14:16:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Feb 2020 15:16:38 +0100
Message-Id: <20200212141638.11114-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200212141638.11114-1-a.fatoum@pengutronix.de>
References: <20200212141638.11114-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] commands: boot: create boot entries on demand
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We currently create all boot entries before attempting boot. This is
less than optimal, because this may involve probing devices that won't
be used for actual boot.

Fix this by not creating boot entries till the previous boot argument
(command line argument or boot.default word) was found to be unbootable.

This means that "boot mmc1 mmc0" will now not touch mmc0 if mmc1 had a
bootable entry. This is only done when no menu or list was requested.

As the boot entries are in a linked list, the allocation done for each
boot argument could be omitted, but as the saving from skipping an
allocation is easily dwarfed by the boot medium access, we just
reallocate and enjoy the improved code clarity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/boot.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index ce4eeac6534c..aeaba3992e1d 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -90,6 +90,18 @@ static int do_boot(int argc, char *argv[])
 		ret = bootentry_create_from_name(entries, name);
 		if (ret <= 0)
 			printf("Nothing bootable found on '%s'\n", name);
+
+		if (do_list || do_menu)
+			continue;
+
+		bootentries_for_each_entry(entries, entry) {
+			ret = boot_entry(entry, verbose, dryrun);
+			if (!ret)
+				break;
+		}
+
+		bootentries_free(entries);
+		entries = bootentries_alloc();
 	}
 
 	if (list_empty(&entries->entries)) {
@@ -107,12 +119,6 @@ static int do_boot(int argc, char *argv[])
 		goto out;
 	}
 
-	bootentries_for_each_entry(entries, entry) {
-		ret = boot_entry(entry, verbose, dryrun);
-		if (!ret)
-			break;
-	}
-
 out:
 	bootentries_free(entries);
 	free(freep);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
