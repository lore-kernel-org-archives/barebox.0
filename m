Delivery-date: Thu, 12 Mar 2026 15:45:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hII-00ArQS-0U
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIF-0004xn-9M
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vy/Q/gkHuqvv+ByolpzSslymGN3up3lijZAZ1YCmz20=; b=od9dMzJBuBc8PZqVkob+AFQ+YW
	1r2oaGzGKUoPZpUD7NCNa5uLkYGs95N6UP814fTGwu9o6PteM1j3fXjm0C29ry7gr/ZN8myo8JKZc
	FLCYJtYiJsqZ/+GYhghHY12/AcVraP6cB5/CgkU+ijJs4+7uKQauo9eBibA+rSiO84WvsNYyxUlq2
	biZe+yNtgO8B2gjdCi8XYZj0AtMAF9tzKe+RhDJkOCrEnI9iZcPCWPhAJBfzbOnnvK4lM6+TxmIFL
	iFPiHLJ6iQJeoR5zr6tvJu2H98VaHbvOpA9VPTlmenLidH32ZvUUzAkbMUgtw4SjCB+E1EufIIbiE
	17D6sjgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHi-0000000EEpe-1iQ3;
	Thu, 12 Mar 2026 14:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEm8-350p
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004TF-0G; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052Nz-1T;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-2xyg;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:46 +0100
Message-ID: <20260312144505.2159816-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074507_776304_19219FBF 
X-CRM114-Status: GOOD (  12.93  )
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
Subject: [PATCH 03/16] boot: add bootm_boot wrapper that takes struct bootentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct bootentry holds the overrides given to the boot command, but it's
not plumbed through to the end leading to storage of the overrides in
global variables, which is error prone with respect to nested bootm
handlers.

In preparation for passing the overrides via arguments throughout,
introduce the bootm_entry and switch users over to it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c |  2 +-
 common/blspec.c                       |  2 +-
 common/boot.c                         | 37 ++++++++++++++++++++++-----
 efi/loader/bootesp.c                  |  2 +-
 include/boot.h                        |  3 +++
 5 files changed, 37 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index c15a349c8a88..3bb2632693e5 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -406,7 +406,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 	if (dryrun)
 		bootm_data.dryrun = dryrun;
 
-	ret = bootm_boot(&bootm_data);
+	ret = bootm_entry(entry, &bootm_data);
 	if (ret)
 		goto exit_usb_boot;
 
diff --git a/common/blspec.c b/common/blspec.c
index c07e3a2d672d..ef7490085c7f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -156,7 +156,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	firmware_set_searchpath(fws);
 	free(fws);
 
-	ret = bootm_boot(&data);
+	ret = bootm_entry(be, &data);
 	if (ret)
 		pr_err("Booting failed\n");
 
diff --git a/common/boot.c b/common/boot.c
index 0fa2022be1ac..b5a4205cd9e2 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -124,7 +124,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	if (dryrun >= 2)
 		data.dryrun = dryrun - 1;
 
-	ret = bootm_boot(&data);
+	ret = bootm_entry(entry, &data);
 out:
 	bootm_data_restore_defaults(&backup);
 	return ret;
@@ -182,7 +182,6 @@ BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
 
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
-	struct bootm_overrides old;
 	int ret;
 
 	pr_info("Booting entry '%s'\n", be->title);
@@ -197,14 +196,10 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
-	old = bootm_save_overrides(be->overrides);
-
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
-	bootm_restore_overrides(old);
-
 	globalvar_set_match("linux.bootargs.dyn.", "");
 
 	return ret;
@@ -555,3 +550,33 @@ void bootsources_list(struct bootentries *bootentries)
 }
 
 BAREBOX_MAGICVAR(global.boot.default, "default boot order");
+
+/**
+ * bootm_entry - invoke bootm while taking care of overrides
+ * @be: bootentry
+ * @bootm_data: prepopulated bootm data for bootm_boot()
+ *
+ * Compared to bootm_boot(), this takes an extra @be that allows
+ * applying boot entry specific info like overrides.
+ *
+ * Return: 0 on success, or negative error code otherwise
+ */
+int bootm_entry(struct bootentry *be, const struct bootm_data *bootm_data)
+{
+	struct bootm_overrides old;
+	struct image_data *data;
+	int ret;
+
+	data = bootm_boot_prep(bootm_data);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+
+	old = bootm_save_overrides(be->overrides);
+
+	ret = bootm_boot_handler(data);
+
+	bootm_restore_overrides(old);
+
+	bootm_boot_cleanup(data);
+	return ret;
+}
diff --git a/efi/loader/bootesp.c b/efi/loader/bootesp.c
index afce5118aa68..85de1e7e6350 100644
--- a/efi/loader/bootesp.c
+++ b/efi/loader/bootesp.c
@@ -55,7 +55,7 @@ static int esp_boot(struct bootentry *be, int verbose, int dryrun)
 	 * 2) implement device tree overlay patching protocol using it?
 	 */
 
-	ret = bootm_boot(&data);
+	ret = bootm_entry(be, &data);
 	if (ret)
 		pr_err("Booting failed\n");
 
diff --git a/include/boot.h b/include/boot.h
index 836a180a0c7b..57f9cb409bf3 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -55,4 +55,7 @@ void bootsources_menu(struct bootentries *bootentries, unsigned default_entry, i
 void bootsources_list(struct bootentries *bootentries);
 int boot_entry(struct bootentry *be, int verbose, int dryrun);
 
+struct bootm_data;
+int bootm_entry(struct bootentry *be, const struct bootm_data *data);
+
 #endif /* __BOOT_H */
-- 
2.47.3



