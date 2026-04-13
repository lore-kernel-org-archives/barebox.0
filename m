Delivery-date: Mon, 13 Apr 2026 12:22:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEQh-00BgUu-2L
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:22:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEQh-00032o-1S
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:22:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bOX5x9t9IHM7OUx3NAhqdCmr5iI3waFT8tcoajTl8as=; b=x+Dts2o0+5uJn4hnL+FNHyRNbS
	PlloDUDrha4R644HjxvFj5oY+A/m9OW8mOeRK45IpSbraryz+iT2jx5L2LwFByKfeo4M7n+HriNO7
	jBjg3jCRdUN6MFQeGXq+eAMIghRlig8CLNOMdr5sIjFuppJzcG2kA+FD7bI/hitBS5pBraCSoBwB1
	rEmYttDm5bmcp6xUrvKBR8mvJAcnrRVSKedjfbeeGMDNu3JEa5m56PacaQzMidlvWYBtl1QHhudpq
	TpWsT34eYQGSkHDUME69zmz+3VvG77/S0fjEpsvvyHJuMIOl5t/mOzYd6eVPZU+pgzBDUDSvNITui
	KRJWmFsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEQK-0000000FTyD-0nds;
	Mon, 13 Apr 2026 10:21:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEQH-0000000FTxu-3j81
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:21:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=bOX5x9t9IHM7OUx3NAhqdCmr5iI3waFT8tcoajTl8as=; b=dPJ9R2tttqP3QCJoedwRfcXXcz
	VGt3lAbiuw8maI5zMOHxKHCSXG8ENhbx4xO4SkiTcrZ/TrNIUJ8WkFfAw8bDvhHLdmBNkgtsq9pu8
	D9eNU0oDYFGTpist8MYCGUXu0xK8J6rSvCexIAlm3h+EMjOHYxu1tzqIbnsBaAd6NG5SzYtAbazjA
	iIOG31NWaEODjE1Hfxcxf6HdaDsQQK+11xfAg7CzhHFdgLCLAih7AdtJvJOf3zVggleyEbKJ+Dy1+
	tws9vkf5s8AbuEWXNyiw3aDDJzBiygjxx2uGPSfRNvXwv4gdbGd/lncYWhlADeaZ57714RX3GMMyL
	nW+riAlw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEPz-0000000Gaea-471N
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:21:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEP5-0002nl-89; Mon, 13 Apr 2026 12:20:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:20:20 +0200
Message-ID: <20260413102026.1469330-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_112134_360819_8FE54EF4 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] environment: support DT-compatible-specific overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

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
      fsl,imx8mq-evk/
        nv/boot.default

For compatible = "fsl,imx8mm-evk", "fsl,imx8mm":
  1. fsl,imx8mm/     overlay applied first  (most generic)
  2. fsl,imx8mm-evk/ overlay applied second (most specific)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/startup.c | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

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



