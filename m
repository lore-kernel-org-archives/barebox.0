Delivery-date: Fri, 28 Feb 2025 08:18:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudv-007xrS-1x
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnuds-0004Gw-02
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0Tw4VC+OSKRwPDm+uCr+hPO0Ng34w9Krkvq2NHrqNE=; b=RnRGPmscYPqdk/4yM7nc9GMho+
	PSu1Fq/9XfIU4QP8B+xCmqALlEh4VjlfYxvDpBrjuk/rlRUdFcnsXpE8dfAbWJJT3Fy2X8detsJHQ
	VYbKALCkucH8eJOATUtNz+RW2fRxtjo01v2sXvqWnEh/k6vUMFiUURqvRQw9hODt/SznnIiH5M3Au
	gR9KaSY6bhhEYQYxoqFWFaWNH7B9eU63BQx0QKO0HH9WXTXO9KnGOK6XCYoK3vOJW8gL/D8Dza/2K
	Gz/FgfWgoGlWKAlkEjM9Mh4wUquzibpWSMmdip0PIXKcaecXii/YpGzAt4wnk2s/m3YHXAAT0UVuV
	OzYRUoLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudF-00000009xjC-2Ie9;
	Fri, 28 Feb 2025 07:18:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuc9-00000009xZg-3ewT
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:16:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kI-J2; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtM-0g;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0K;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-4-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727009; l=2822;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LHA3XZjUQHaChadbPOienNWAIDMUtcdtUldgcdJpt6g=;
 b=Pz6pchN2URG8WMf294fTuCvtRgz00DQ0TG3jGPxOZbvVhaXiVLz40SpXpyjELebVbXa7THztg
 OUFIeZ0I1IFDTliS07NCSVK56JcS1G7+ZveMvZFpeE/LdMLw2e/rU/d
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231653_977024_BD9BB5BE 
X-CRM114-Status: GOOD (  13.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/13] ARM: k3: r5: add proper error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add missing error handling in the image loading code. Properly check for
errors and panic when mandatory binaries are missing instead of blindly
continuing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/r5.c | 57 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 31 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 2418e9ae73..e12c888afa 100644
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
 
@@ -348,11 +336,11 @@ static int load_fip_emmc(void)
 
 	fname = xasprintf("/dev/%s.boot%d", mmcdev, bootpart - 1);
 
-	load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
+	ret = load_fip(fname, K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE);
 
 	free(fname);
 
-	return 0;
+	return ret;
 }
 
 static int k3_r5_start_image(void)
@@ -365,11 +353,28 @@ static int k3_r5_start_image(void)
 	struct rproc *arm64_rproc;
 
 	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && bootsource_get() == BOOTSOURCE_SERIAL)
-		do_dfu();
+		err = do_dfu();
 	else if (k3_boot_is_emmc())
-		load_fip_emmc();
+		err = load_fip_emmc();
 	else
-		load_images();
+		err = load_fip("/boot/k3.fip", 0);
+
+	if (err) {
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

-- 
2.39.5



