Delivery-date: Thu, 12 Mar 2026 15:45:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIL-00ArRY-1J
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIK-000524-FN
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tagyRoOoe9c5EqSR0SPWeiUInnnu9fo4VhVPDhR2fRQ=; b=yUxpMI16pNQ35CNYGxWEKzYdZk
	NefyPJBksb6267pLHDoPldANnRmRFeZjSdi+LsF/UJfad2Kz8/7KlC/ktD4i/vWcwOqYfOWbhIWiV
	Xn9X5Ve/Bhsn6NoluYFsi+vBozL9pd97YBsg6v8rnteK0uhXr4JGQXUXMNkw9KlO4EmANjIOaUBQj
	0xYJIj/BXWIwjdiYLsJPK4K72XdOkXIPAXi6dKlUgwPxXxpcqMyNhJ8Js5pVEbnOhfBSXahN6680p
	V/0Eu69gRscTyb1VST2nA7YVpI04zk/ksa0wpEATBxhC39Ik4WELckb8eEa+KLhB/48ffQzEPYLGw
	Yo2VVR4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHl-0000000EEsc-1n0t;
	Thu, 12 Mar 2026 14:45:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHg-0000000EEmM-0BgI
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004U2-HS; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052OM-2a;
	Thu, 12 Mar 2026 15:45:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-0BKu;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:53 +0100
Message-ID: <20260312144505.2159816-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074508_084586_D81D8E57 
X-CRM114-Status: GOOD (  13.54  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/16] bootm: support multiple entries for bootm.initrd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux can extract transparently any number of concatenated CPIOs, even
if individually compressed. This can be useful if we have two CPIOs from
different sources, e.g. an rdinit and a CPIO with the kernel modules.

Teach bootm how to collect multiple initrd entries by leveraging the
loadable chaining support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-fit.c       | 13 +++++++++----
 common/bootm-overrides.c | 17 +++++++----------
 common/bootm.c           |  7 ++++---
 3 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index 089f376fd7f1..5b110ad2f19e 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -36,7 +36,7 @@ static void loadable_from_fit_os(struct image_data *data,
  * @fit:		handle of FIT image
  * @config:		config to look up kernel in
  *
- * This creates a loadable for the first initial ram disk in the config.
+ * This creates loadables for all initial ram disks in the config and chains them.
  *
  * Return: true if initrd booting is supported and a ramdisk exists or
  *         false otherwise.
@@ -45,17 +45,22 @@ static bool loadable_from_fit_initrd(struct image_data *data,
 				struct fit_handle *fit,
 				void *config)
 {
+	int nramdisks;
+
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return false;
 
-	if (!fit_has_image(fit, config, "ramdisk"))
+	nramdisks = fit_count_images(fit, config, "ramdisk");
+	if (nramdisks < 0)
 		return false;
 
 	loadable_release(&data->initrd);
 
-	data->initrd = loadable_from_fit(fit, config, "ramdisk", 0, LOADABLE_INITRD);
+	for (int i = 0; i < nramdisks; i++)
+		loadable_chain(&data->initrd, loadable_from_fit(fit, config, "ramdisk",
+								i, LOADABLE_INITRD));
 
-	return true;
+	return nramdisks > 0;
 }
 
 /*
diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
index c1f3ee7cade8..59ca90a58684 100644
--- a/common/bootm-overrides.c
+++ b/common/bootm-overrides.c
@@ -20,16 +20,12 @@ int bootm_apply_overrides(struct image_data *data,
 	if (bootm_signed_images_are_forced())
 		return 0;
 
-	if (overrides->initrd_file) {
-		loadable_release(&data->initrd);
-
-		/* Empty string means to mask the original initrd */
-		if (nonempty(overrides->initrd_file)) {
-			data->initrd = loadable_from_file(overrides->initrd_file,
-							   LOADABLE_INITRD);
-			if (IS_ERR(data->initrd))
-				return PTR_ERR(data->initrd);
-		}
+	if (IS_ENABLED(CONFIG_BOOTM_INITRD) && overrides->initrd_file) {
+		/* loadables_from_files() will set data->initrd on empty initrd_file */
+		int ret = loadables_from_files(&data->initrd, overrides->initrd_file, ":",
+					       LOADABLE_INITRD);
+		if (ret)
+			return ret;
 		data->is_override.initrd = true;
 	}
 
@@ -48,3 +44,4 @@ int bootm_apply_overrides(struct image_data *data,
 
 	return 0;
 }
+
diff --git a/common/bootm.c b/common/bootm.c
index 25cbce6ccb3f..ddc656fb34c8 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -463,9 +463,10 @@ static int bootm_open_files(struct image_data *data)
 	}
 
 	if (data->initrd_file) {
-		data->initrd = loadable_from_file(data->initrd_file, LOADABLE_INITRD);
-		if (IS_ERR(data->initrd))
-			return PTR_ERR(data->initrd);
+		int ret = loadables_from_files(&data->initrd, data->initrd_file, ":",
+					       LOADABLE_INITRD);
+		if (ret)
+			return ret;
 	}
 
 	if (data->tee_file) {
-- 
2.47.3



