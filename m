Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEUB-0004nU-Lu
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:14:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Nov 2020 17:14:32 +0100
Message-Id: <20201123161432.28064-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201123161432.28064-1-a.fatoum@pengutronix.de>
References: <20201123161432.28064-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] commands: boot: include blspec path name in entry title
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

barebox linux-appendroot option having the same bootspec file in
different partitions. boot -m will display the same title though,
which doesn't help readability. Append the name of the config
file to make the menu more useful in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index a07343f4274e..4e4ad29eb3c8 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -649,7 +649,8 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
 		}
 
-		entry->entry.title = xstrdup(blspec_entry_var_get(entry, "title"));
+		entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
+					       configname);
 		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
 						    devname ? devname : "none",
 						    hwdevname ? hwdevname : "none");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
