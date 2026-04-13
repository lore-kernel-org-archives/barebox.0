Delivery-date: Mon, 13 Apr 2026 15:45:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHb5-00Bjb5-2f
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 15:45:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHb5-0001Px-4e
	for lore@pengutronix.de; Mon, 13 Apr 2026 15:45:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dq3oxwxRQrjP37F/kqk1xJy2Qsc6YAutLe3ItFX0BLE=; b=S2r6D2YVUiakYeovKCJIR6n8Ht
	maVwykp1MKWsOWLXIfwI8IQvsCGN3DLWbV7zmkHxAro+LYYo6fOC05dVty/3EvryC8DBadKxj/rOv
	87ZBtfTEbCPPF84CM4McF1K5OLJBgjcNa2iGArQhFqUviZ/lDfQk7CXpzZLvJBn/IBN9zck3doXr7
	SiIEgLWFroAcxVuGz1iEsWFHhfOvKE878rCoAcONz8eYpSyXN6EoZok1/VWLFkrbVH1VzfMXk2HiX
	LONTieuAxmDzHllWbM3IX5kor+NxapMF3Kyyj2zvcPXW7NIGN7gUl/VqHcQ1uxAJr45KCncmPpMEw
	9WUkWPYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHaZ-0000000FliU-1sN8;
	Mon, 13 Apr 2026 13:44:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHaV-0000000Flhh-18or
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 13:44:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-0001Hh-GD; Mon, 13 Apr 2026 15:44:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-005BIT-10;
	Mon, 13 Apr 2026 15:44:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHaT-0000000Ex10-0ssG;
	Mon, 13 Apr 2026 15:44:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 15:43:52 +0200
Message-ID: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_064427_331682_A9D6B1DD 
X-CRM114-Status: GOOD (  14.59  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] environment: support DT-compatible-specific overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Board-specific environments are registered from board code via
defaultenv_append_directory(), but this isn't possible when using
CONFIG_DEFAULT_ENVIRONMENT_PATH with an external environment.

Add support for a match.of_compatible/ directory convention within
the default environment. Subdirectories named after DT root compatible
strings are overlaid onto /env from most generic to most specific
after the default environment is loaded. The match.of_compatible/
directory is removed afterwards to keep /env clean.

Example layout in CONFIG_DEFAULT_ENVIRONMENT_PATH:

  barebox-defaultenv/
    nv/boot.default
    match.of_compatible/
      fsl,imx8mm/
        nv/boot.default
      fsl,imx8mm-evk/
        nv/boot.default

For compatible = "fsl,imx8mm-evk", "fsl,imx8mm":
  1. fsl,imx8mm/     overlay applied first  (most generic)
  2. fsl,imx8mm-evk/ overlay applied second (most specific)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - Fix typo in commit message (Marco)
  - Add documentation for the feature (Marco)
---
 Documentation/user/defaultenv-2.rst | 29 ++++++++++++++++++
 common/startup.c                    | 47 +++++++++++++++++++++++++++++
 2 files changed, 76 insertions(+)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index e5cb4a51bfad..2564eb959fcc 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -155,3 +155,32 @@ This contains the files to be sourced when barebox detects that the OS
 had requested a specific :ref:`reboot_mode` (via e.g. ``reboot bootloader``
 under Linux). After the ``/env/init`` scripts were executed, barebox will
 ``source /env/bmode/${global.system.reboot_mode.prev}`` if available.
+
+/env/mach.of_compatible/
+------------------------
+
+On devicetree enabled systems, this optional directory may contain
+environment overlays that should be applied onto ``/env``.
+
+Each subdirectory should be named after a device tree root compatible
+string and they will be applied from most generic to most specific match
+after the default environment is loaded.
+The ``match.of_compatible/`` directory is removed afterwards to keep
+``/env`` clean.
+
+For example, given ``CONFIG_DEFAULT_ENVIRONMENT_PATH`` pointing
+at an external ``barebox-defaultenv/`` directory::
+
+  barebox-defaultenv/
+    nv/boot.default     -> kernel-common
+    match.of_compatible/
+      fsl,imx8mm/
+        nv/boot.default -> kernel-mx8mm
+      fsl,imx8mm-evk/
+        nv/boot.default -> kernel-mx8mm-evk
+
+The final ``/env/nv/boot.default`` would be:
+
+- For ``compatible = "fsl,imx8mm-evk", "fsl,imx8mm";``,  ``kernel-mx8mm-evk``
+- For ``compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";``, ``kernel-mx8mm``
+- For ``compatible = "fsl,imx8mp-evk", "fsl,imx8mp";``,  ``kernel-common``
diff --git a/common/startup.c b/common/startup.c
index 2e2b5f820fe9..e630033e3505 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -46,6 +46,7 @@
 #include <pbl/handoff-data.h>
 #include <libfile.h>
 #include <fuzz.h>
+#include <of.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -95,6 +96,50 @@ void autoload_external_env(bool endis)
 }
 #endif
 
+static void env_merge_of_compat_overlays(const char *dir)
+{
+	struct device_node *root;
+	const char *compat;
+	struct stat s;
+	char *ofdir, *src;
+	int count;
+
+	root = of_get_root_node();
+	if (!root)
+		return;
+
+	ofdir = xasprintf("%s/match.of_compatible", dir);
+
+	if (stat(ofdir, &s) || !S_ISDIR(s.st_mode))
+		goto out;
+
+	count = of_property_count_strings(root, "compatible");
+
+	/*
+	 * Apply overlays from most generic to most specific, so that
+	 * more specific entries take precedence.
+	 */
+	for (int i = count - 1; i >= 0; i--) {
+		if (of_property_read_string_index(root, "compatible",
+						  i, &compat))
+			continue;
+
+		src = xasprintf("%s/%s", ofdir, compat);
+
+		if (stat(src, &s) == 0 && S_ISDIR(s.st_mode)) {
+			pr_debug("Applying '%s'-compatible environment overlay\n",
+				 compat);
+			copy_recursive(src, dir, 0);
+		}
+
+		free(src);
+	}
+
+	unlink_recursive(ofdir, NULL);
+out:
+	free(ofdir);
+}
+
 static int load_environment(void)
 {
 	const char *default_environment_path;
@@ -115,6 +160,8 @@ static int load_environment(void)
 		pr_info("external environment support %s. Using default environment\n",
 			IS_ENABLED(CONFIG_ENV_HANDLING) ? "disallowed" : "disabled");
 
+	env_merge_of_compat_overlays("/env");
+
 	nvvar_load();
 
 	return 0;
-- 
2.47.3



