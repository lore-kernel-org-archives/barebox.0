Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUW1P-0005wA-Gk
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 10:34:33 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 10 Jul 2017 12:33:53 +0200
Message-Id: <20170710103355.15652-7-s.trumtrar@pengutronix.de>
In-Reply-To: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
References: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 7/9] blspec: skip all devicetree tests if entry doesn't
 specify one
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

If the blspec entry does not specify a devicetree to test against,
it doesn't make any sense to check the compatible of the machine or
find the root node.

Instead of first testing the barebox devicetree check if the entry
specifies one.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/blspec.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 8132d141ab5c..b258e6600bbe 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -361,6 +361,14 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	const char *compat;
 	char *filename;
 
+	/* If the entry doesn't specifiy a devicetree we are compatible */
+	devicetree = blspec_entry_var_get(entry, "devicetree");
+	if (!devicetree)
+		return true;
+
+	if (!strcmp(devicetree, "none"))
+		return true;
+
 	/* If we don't have a root node every entry is compatible */
 	barebox_root = of_get_root_node();
 	if (!barebox_root)
@@ -375,14 +383,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	else
 		abspath = "";
 
-	/* If the entry doesn't specifiy a devicetree we are compatible */
-	devicetree = blspec_entry_var_get(entry, "devicetree");
-	if (!devicetree)
-		return true;
-
-	if (!strcmp(devicetree, "none"))
-		return true;
-
 	filename = basprintf("%s/%s", abspath, devicetree);
 
 	fdt = read_file(filename, &size);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
