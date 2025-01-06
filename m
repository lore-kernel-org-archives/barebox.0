Delivery-date: Mon, 06 Jan 2025 12:34:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUlNH-00HTCk-1Y
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 12:34:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUlNH-0008Vl-BE
	for lore@pengutronix.de; Mon, 06 Jan 2025 12:34:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMZShE+Z9Il/haWByQt4BXpjore53Z64i50mwZrgLkc=; b=NUN/9eEL22Lb3g
	c6vBkRYy8+QF1oCwluUm/dplndIS7i8k9gy79VN0Y3xk96TYzwvRyu/r3vRE2Ud95Hc9gXg35h3+Q
	dlfzITy1sacitCPgde8vn0iIppkAASen5ldlEeZCBqVZHh+PRhpr617AToO1O0MzhS0EO6iSLmAwY
	uXW6G1G6m9wfAfAk5EA2UVJJTE4KwS7lqtOI4h+DVFRXpSAl5g0sQ2ixOBweMpqz/nxusSOgMOzmW
	JjTD/cVDN9Nja2IBbIE4ANlNXpivXYFrpO/aFTIq4Wg7+Uf/RnlZcUeKyAXYL5t2LGMFTskWxE9mY
	hWvp6WTgu99XKuRhhFww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlMk-000000013Oc-47DN;
	Mon, 06 Jan 2025 11:33:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlMh-000000013Np-1fUb
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 11:33:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tUlMe-0008Nj-Lq; Mon, 06 Jan 2025 12:33:44 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 Jan 2025 12:33:40 +0100
Message-Id: <20250106113340.1224335-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_033347_436700_1E163028 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: Bastian Krause <bst@pengutronix.de>, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: imx: pass semicolons as substitute chars to compiler macros for CSF templating
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_HAB_CERTS_ENV=y, paths and PKCS#11 URIs to the HAB
certificates are taken from environment variables (allowing for better
integration with build systems). In this case these values are passed
internally via compiler macros (-D) to the imx-image host tool. PKCS#11
URIs usually contain semicolons. Semicolons, however, cannot be passed
via compiler macros and cannot be escaped.

To compensate for that, replace ';' with the substitute character '\x1a'
(with sed) before adding it as a macro and do the reverse in imx-image
while creating the CSF to be passed to NXP's cst. Ultimatively, this
allows using CONFIG_HAB_CERTS_ENV=y with PKCS#11 URIs, so build systems
do not need to set CONFIG_HABV4_* in barebox configs via tools like sed.

Note that this breaks use cases where literal substitute characters are
passed or are part of the CSF. But that shouldn't happen anyway.

An alternative approach would be base64 encoding the value before passing
it as a macro and decoding it in imx-image. But there seems to be no easy
way to encode before the kconfig variables are expanded in the CSF
template.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 scripts/Makefile.lib |  2 +-
 scripts/imx/imx.c    | 35 +++++++++++++++++++++++++++--------
 2 files changed, 28 insertions(+), 9 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c32adf07cc5..dd720228408 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -556,7 +556,7 @@ cmd_imximage_S_dcd=						\
 overwrite-hab-env = $(shell set -e; \
       test -n "$(CONFIG_HAB_CERTS_ENV)"; \
       test -n "$$$(1)"; \
-      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
+      echo -D$(1)=\\\"$(shell echo $$$(1) | sed 's/;/\x1a/g')\\\")
 
 overwrite-fit-env = $(shell set -e; \
       test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 5ccc116cfe3..f16bb8a26af 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -318,18 +318,37 @@ static int do_hab_qspi(struct config_data *data, int argc, char *argv[])
 
 static int hab_add_str(struct config_data *data, const char *str)
 {
-	data->csf = strcata(data->csf, str);
-	if (!data->csf)
-		return -ENOMEM;
+	int ret = 0;
+	char *str_replaced = strdup(str);
+
+	/*
+	 * Since semicolons cannot be passed via compiler macro (-D), these
+	 * were replaced with substitute chars (\x1a) before. Now reverse the
+	 * replacement.
+	 */
+	for (char *p = str_replaced; *p != '\0'; ++p) {
+		if (*p == '\x1a')
+			*p = ';';
+	}
+
+	data->csf = strcata(data->csf, str_replaced);
+	if (!data->csf) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
 
 	if (!data->hab_qspi_support)
-		return 0;
+		goto cleanup;
 
-	data->flexspi_csf = strcata(data->flexspi_csf, str);
-	if (!data->flexspi_csf)
-		return -ENOMEM;
+	data->flexspi_csf = strcata(data->flexspi_csf, str_replaced);
+	if (!data->flexspi_csf) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
 
-	return 0;
+cleanup:
+	free(str_replaced);
+	return ret;
 }
 
 static int hab_add_barebox_blocks(struct config_data *data,
-- 
2.39.5



