Delivery-date: Mon, 08 Apr 2024 16:32:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtq2f-002na1-0k
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 16:32:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtq2e-0003iL-Ja
	for lore@pengutronix.de; Mon, 08 Apr 2024 16:32:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lZlBM4Kym26N1zjEknRyM9PZkNwC1Y+AHDC+1BgwcKo=; b=hc4vn4R8Vb5GxzjwyGyDC4b35T
	HiWtF2tDMY1mQStDw55fFCvJVhqrlkteXowZe0V0afHdEjqoEEg+qWbM19tbmr/unG0fSwvt48i7Z
	TddoZdUwYnFrMlMwB5n3SpIfiVYUS4S1SmrqtjSbytrow1mmurxmPw0rVLEeYVhGrCNs1BWsvWx2B
	RHZ8RkhrVmtx5uoLso2jUgs5+z3Gaz+3tyRMyN9Bt6h0wWnflg7UKCe9g3DAJx7hf4/nxgmZwG6ZS
	uowdyFLH/ypDKPjCYIOVXdPQwalvS0Y0WP48oHlHRRrnOae3R7TJJXssiQoJkAO8jY9gw3DO8tzgC
	5p6OrkzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtq2B-0000000Ft87-2wDP;
	Mon, 08 Apr 2024 14:31:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtq25-0000000Ft6m-0UWD
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 14:31:38 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rtq23-0003Ta-PY; Mon, 08 Apr 2024 16:31:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Apr 2024 16:31:30 +0200
Message-Id: <20240408143131.3630347-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_073137_196744_FEEC2247 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] bootm: replace CONFIG_BOOTM_FORCE_SIGNED_IMAGES with helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

In preparation for allowing even CONFIG_BOOTM_FORCE_SIGNED_IMAGES=n
configurations to force boot of only signed images, replace direct
use of IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES) with a helper that
queries a static variable that can be forced at runtime in a follow-up
commit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- add my s-o-b tag
v1:
- https://lore.barebox.org/barebox/20231023162748.533468-1-a.fatoum@pengutronix.de/

 arch/arm/lib32/bootm.c |  2 +-
 common/bootm.c         | 11 +++++++++--
 include/bootm.h        |  2 ++
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index e814593dce43..aeb873a3a723 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -294,7 +294,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	}
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
-		if (data->tee_file && !IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+		if (data->tee_file && !bootm_signed_images_are_forced()) {
 			ret = bootm_load_tee_from_file(data);
 			if (ret)
 				return ret;
diff --git a/common/bootm.c b/common/bootm.c
index a59fa35008a9..3cd4aa1528a7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -87,6 +87,13 @@ static const char * const bootm_verify_names[] = {
 	[BOOTM_VERIFY_SIGNATURE] = "signature",
 };
 
+static bool force_signed_images = IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES);
+
+bool bootm_signed_images_are_forced(void)
+{
+	return force_signed_images;
+}
+
 static int uimage_part_num(const char *partname)
 {
 	if (!partname)
@@ -694,7 +701,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+	if (bootm_signed_images_are_forced()) {
 		data->verify = BOOTM_VERIFY_SIGNATURE;
 
 		/*
@@ -985,7 +992,7 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+	if (bootm_signed_images_are_forced())
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
diff --git a/include/bootm.h b/include/bootm.h
index c69da85cdda1..e4d59b566edf 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -152,6 +152,8 @@ int bootm_get_os_size(struct image_data *data);
 enum bootm_verify bootm_get_verify_mode(void);
 void bootm_set_verify_mode(enum bootm_verify mode);
 
+bool bootm_signed_images_are_forced(void);
+
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
-- 
2.39.2



