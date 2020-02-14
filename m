Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VwP-0000cf-Eu
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 08:03:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2020 09:03:05 +0100
Message-Id: <20200214080305.31419-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! commands: boot: create boot entries on demand
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Don't try other boot entries if one succeeds. This is the behavior
before the change, thus reinstate it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index aeaba3992e1d..aaa20faae9d4 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -97,7 +97,7 @@ static int do_boot(int argc, char *argv[])
 		bootentries_for_each_entry(entries, entry) {
 			ret = boot_entry(entry, verbose, dryrun);
 			if (!ret)
-				break;
+				goto out;
 		}
 
 		bootentries_free(entries);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
