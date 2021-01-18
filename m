Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1bSJ-0002y6-2Z
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:48:56 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bSH-0001d4-Qv
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:48:53 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1bSH-0002Ce-Gt
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:48:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:48:49 +0100
Message-Id: <20210118204850.8420-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/2] blspec: allow board files to overwrite config file
 settings
To: barebox@lists.infradead.org

This commit adds the support to overwrite and/or adapt blspec config
files by the following global variables:
  - global.blspec.fixup.devicetree
  - global.blspec.fixup.initrd
  - global.blspec.fixup.options
  - global.blspec.fixup.linux
  - global.blspec.fixup.devicetree-overlay.

Overwriting blspec-config's shouldn't be the normal case but there are
cases where this support is needed. One use-case can be a special
handling during update. E.g. the normal boot-flow don't need the initrd
but the update-flow uses it because the update system is on the initrd.
Another use-case could be a dynamic devicetree-overlay handling. E.g.
the board code dynamically checks which periphery boards are connected
and adds the required overlays dynamically.

A warning is printed if a already set option is overwritten to identify
unintended wrong boot behaviour early.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/blspec.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index a07343f427..b527731a27 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -210,12 +210,21 @@ err_out:
  */
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name)
 {
+	const char *match, *fixup;
 	const char *str;
 	int ret;
 
 	ret = of_property_read_string(entry->node, name, &str);
 
-	return ret ? NULL : str;
+	/* Check user specific overrides */
+	match = basprintf("global.blspec.fixup.%s", name);
+	fixup = getenv_nonempty(match);
+	free((void *)match);
+
+	if (!ret && fixup)
+		pr_warn("Overwrite %s blspec entry by fixup\n", name);
+
+	return fixup ? fixup : (ret ? NULL : str);
 }
 
 static void blspec_entry_free(struct bootentry *be)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
