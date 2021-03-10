Delivery-date: Wed, 10 Mar 2021 14:30:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvA-0001Ud-4o
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyv7-0004Yn-JG
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vbh5qW6bdRAPQ+TGZ+bLtUKyvGhCMXerZNmSwqinBEs=; b=bHODzGW/O4JPLo90RyHXQNfhv
	t/O8v/dqWUdCx+SARkyQdboCH0zGDDWAzZyw+4/GG8ah0tUdQuVZbQBEgqbU6vhCpNqhmO+9bxhhX
	CSQ9e2H0yLynqSn3KUMU3B/SxtrwZ6ET6CKqTB3JiYcxjZGJkzll7d8aeabxKmeSqznIMEIoXFWcM
	OQBID+ZKdCCTUuG0aeqpT+Bx6PF2n3che+LfbmKJAGuxKEKkZIvFAR1bdaqwV8hNoZoZii6AQX4Uk
	HS0jKyCDeNp8FO6v608daSDBYIXRPD7Bky3OnqO5AR4n1o19lw+3B2xnyVmwTSY+69eYH1bSDdagn
	oWO+9y+sQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytv-006vC4-8N; Wed, 10 Mar 2021 13:29:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unX-TH
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fu-Vh; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cO-Ms; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:25 +0100
Message-Id: <20210310132829.7662-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132836_166140_00CD03BD 
X-CRM114-Status: GOOD (  17.73  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 13/17] of_overlay: apply overlays during booting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This offers the possibility to load dt overlays on the kernel device
tree during booting. Several globalvars control which device trees
are used. global.of_overlay_dir specifies the directory where overlay
files are expected. global.of_overlay_filepattern specifies file
patterns which the overlay files must match. It is a colon separated
list for multiple file patterns. The patterns may contain '*' and '?'
wildcards. When this variable is empty then no overlays are applied.
global.of_overlay_compatible is used to apply only compatible overlays.
This is also a colon separated list which contains compatible strings.
An overlay is only applied when it's compatible to one of the strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 66 ++++++++++++++++++++++++++++++++++++++++++++
 include/of.h         | 18 ++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d42e15ed1c..b0916028fe 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -16,6 +16,7 @@
 #include <string.h>
 #include <libfile.h>
 #include <fs.h>
+#include <glob.h>
 
 static struct device_node *find_target(struct device_node *root,
 				       struct device_node *fragment)
@@ -321,12 +322,77 @@ int of_register_overlay(struct device_node *overlay)
 	return of_register_fixup(of_overlay_fixup, overlay);
 }
 
+static char *of_overlay_filepattern;
+static char *of_overlay_dir;
+
+const char *of_overlay_get_dir(void)
+{
+	return of_overlay_dir;
+}
+
+void of_overlay_set_dir(const char *path)
+{
+	free(of_overlay_dir);
+	of_overlay_dir = strdup(path);
+}
+
+int of_overlay_apply_dir(struct device_node *root, const char *dir)
+{
+	char *p, *path, *n, *str;
+	int ret = 0, i;
+	glob_t g = {};
+	int globflags = GLOB_NOCHECK;
+
+	if (!dir || !*dir)
+		return 0;
+
+	p = path = strdup(of_overlay_filepattern);
+
+	while ((n = strsep_unescaped(&p, " "))) {
+		str = basprintf("%s/%s", dir, n);
+		if (!str) {
+			ret = -ENOMEM;
+			goto out;
+		}
+
+		ret = glob(str, globflags, NULL, &g);
+
+		free(str);
+
+		if (ret)
+			goto out;
+
+		globflags |= GLOB_APPEND;
+	}
+
+	for (i = 0; i < g.gl_pathc; i++)
+		of_overlay_apply_file(root, g.gl_pathv[i]);
+
+out:
+	globfree(&g);
+
+	free(path);
+
+	return ret;
+}
+
+static int of_overlay_global_fixup(struct device_node *root, void *data)
+{
+	return of_overlay_apply_dir(root, of_overlay_dir);
+}
+
 static int of_overlay_init(void)
 {
 	globalvar_add_simple_string("of_overlay_compatible", &of_overlay_compatible);
+	globalvar_add_simple_string("of_overlay_filepattern", &of_overlay_filepattern);
+	globalvar_add_simple_string("of_overlay_dir", &of_overlay_dir);
+
+	of_register_fixup(of_overlay_global_fixup, NULL);
 
 	return 0;
 }
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of_overlay_compatible, "space separated list of compatibles an overlay must match");
+BAREBOX_MAGICVAR(global.of_overlay_filepattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of_overlay_dir, "Directory to look for dt overlays");
diff --git a/include/of.h b/include/of.h
index ecc5f5101a..54185076a8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1034,6 +1034,9 @@ int of_process_overlay(struct device_node *root,
 		    void *data);
 
 int of_overlay_load_firmware(struct device_node *root, struct device_node *overlay);
+int of_overlay_apply_dir(struct device_node *root, const char *dir);
+const char *of_overlay_get_dir(void);
+void of_overlay_set_dir(const char *path);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1071,6 +1074,21 @@ static inline int of_overlay_load_firmware(struct device_node *root, struct devi
 {
 	return -ENOSYS;
 }
+
+static inline int of_overlay_apply_dir(struct device_node *root, const char *dir)
+{
+	return 0;
+}
+
+static inline const char *of_overlay_get_dir(void)
+{
+	return NULL;
+}
+
+static inline void of_overlay_set_dir(const char *path)
+{
+}
+
 #endif
 
 #endif /* __OF_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

