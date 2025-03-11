Delivery-date: Tue, 11 Mar 2025 13:42:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trywA-00Cg2F-0s
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw6-0006LO-Ol
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u5c8G6xPasM4s4duyAWb5KQCLOLZBwsWIm8dYpW6hEA=; b=4yJVrOgYKkkNThlpreNh5xS5+/
	v7BDCHCb4yb0o7f93nmAmFJsQfqXgeiWBA8NUeC0x380iAvWT7ALTQj45JBNoCItbx5NjClcWQq1C
	98BgZftQmPXJ826TJdrQi72edGHGN+r5TZ6UaBH39whR3ztO3Y++9+2VuDNv9KgwaAMF3OUHZImL4
	e+235BXnUEQgjaJc+h2jlppqoNCSGD0Gngv+C1sDVWBODbJkFHww0IJguh1yg5lJM8ECbVIZwFBz4
	/w0uS6xtWU7JgA/gw7HNCmMqT2D2Nt9el5WDSKnNhY7EbvDLpKlQTiU/ZQV5r8aEhXZqDkPRqADds
	UVYoH4qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvb-00000005h12-3OyK;
	Tue, 11 Mar 2025 12:41:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryft-00000005dEh-0u9T
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-0003BD-Uq; Tue, 11 Mar 2025 13:25:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6O-1c;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1A;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-4-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=3368;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JQWkhYbg3ktWrCGwHEJxBKDYrAo076Ucvr8uiVs3adE=;
 b=Rctvtd4aVzUGZ/O+t59MWlSYs61KrOo5RFW92xwjB5c5v/lwW4KcWjREdtuvTf3OXKXpRecWQ
 l6K94g++NC2BElsUkXN2U+sl/z3P8AOFTXGXDpZiHJCPLTHusUGsgbe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052533_259024_DE04045C 
X-CRM114-Status: GOOD (  16.17  )
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
Subject: [PATCH v2 04/14] ARM: k3: r5: add proper error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing error handling in the image loading code. Properly check for
errors and panic when mandatory binaries are missing instead of blindly
continuing.

While at it change the return value variable from 'err' to 'ret' to stay
consistent with the rest of the code in r5.c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/r5.c | 65 +++++++++++++++++++++++++++------------------------
 1 file changed, 35 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 2418e9ae73..4eaf8658da 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -283,7 +283,7 @@ static int load_fip(const char *filename, off_t offset)
 	return 0;
 }
 
-static void do_dfu(void)
+static int do_dfu(void)
 {
 	struct usbgadget_funcs funcs = {};
 	int ret;
@@ -293,37 +293,24 @@ static void do_dfu(void)
 	funcs.dfu_opts = "/fip.img(fip)cs";
 
 	ret = usbgadget_prepare_register(&funcs);
-	if (ret)
-		goto err;
+	if (ret) {
+		pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
 
 	while (1) {
 		ret = stat("/fip.img", &s);
 		if (!ret) {
 			printf("Downloaded FIP image, DFU done\n");
-			load_fip("/fip.img", 0);
-			break;
+			ret = load_fip("/fip.img", 0);
+			if (!ret)
+				return 0;
 		}
 
 		command_slice_release();
 		mdelay(50);
 		command_slice_acquire();
 	};
-
-	return;
-
-err:
-	pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
-}
-
-static int load_images(void)
-{
-	int err;
-
-	err = load_fip("/boot/k3.fip", 0);
-	if (!err)
-		return 0;
-
-	return 0;
 }
 
 static int load_fip_emmc(void)
@@ -332,6 +319,7 @@ static int load_fip_emmc(void)
 	struct mci *mci;
 	char *fname;
 	const char *mmcdev = "mmc0";
+	int ret;
 
 	device_detect_by_name(mmcdev);
 
@@ -348,16 +336,16 @@ static int load_fip_emmc(void)
 
 	fname = xasprintf("/dev/%s.boot%d", mmcdev, bootpart - 1);
 
-	load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
+	ret = load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
 
 	free(fname);
 
-	return 0;
+	return ret;
 }
 
 static int k3_r5_start_image(void)
 {
-	int err;
+	int ret;
 	struct firmware fw;
 	const struct ti_sci_handle *ti_sci;
 	struct elf_image *elf;
@@ -365,11 +353,28 @@ static int k3_r5_start_image(void)
 	struct rproc *arm64_rproc;
 
 	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && bootsource_get() == BOOTSOURCE_SERIAL)
-		do_dfu();
+		ret = do_dfu();
 	else if (k3_boot_is_emmc())
-		load_fip_emmc();
+		ret = load_fip_emmc();
 	else
-		load_images();
+		ret = load_fip("/boot/k3.fip", 0);
+
+	if (ret) {
+		pr_crit("Unable to load FIP image\n");
+		panic("Stop booting\n");
+	}
+
+	if (!have_bl31)
+		panic("No TFA found in FIP image\n");
+
+	if (!have_bl32)
+		pr_info("No OP-TEE found. Continuing without\n");
+
+	if (!have_bl33)
+		panic("No bl33 found in FIP image\n");
+
+	if (!k3_ti_dm)
+		panic("No ti-dm binary found\n");
 
 	ti_sci = ti_sci_get_handle(NULL);
 	if (IS_ERR(ti_sci))
@@ -387,9 +392,9 @@ static int k3_r5_start_image(void)
 		return PTR_ERR(elf);
 	}
 
-	err = elf_load(elf);
-	if (err) {
-		pr_err("Cannot load ELF image %pe\n", ERR_PTR(err));
+	ret = elf_load(elf);
+	if (ret) {
+		pr_err("Cannot load ELF image %pe\n", ERR_PTR(ret));
 		elf_close(elf);
 	}
 

-- 
2.39.5



