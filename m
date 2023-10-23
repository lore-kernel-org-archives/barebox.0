Delivery-date: Mon, 23 Oct 2023 18:29:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quxo6-001OAs-Ov
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 18:29:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quxo5-0007kD-GD
	for lore@pengutronix.de; Mon, 23 Oct 2023 18:29:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=63SJoHX4Nm4KwhGAPOiICvZRzWBqyxlO1x1Ix3CvsV8=; b=RtuGY4fgqujZchlkH4rE6k4jtJ
	Z1/jtbS8LYyanj2w7I8cnMblYB5fV9Gyz1NGJn8nwVGBo21VIzQobLBdYfH/cZXs0tzfelFPLXhW/
	dWm1RjOIkcRs/5pv2yPpJSF4zfSzIgOdRYaT0tVz3+CJeHBAs4AgWgQy+IJIQnQesuCkegdL3kQLY
	7Goif/G9j5Id+t/6jYzpNxPfy7ob3pIgfYZyFJXpj6pTOQZc8pDZm+KbnNok8TYmKAuWBQksiXw+4
	y439vi0L4CCmweK89EWaZpBwUrVzVFuK/ZO79gEWfgtyayEPB5rTYYT02iSFdtaCKL8AZi/yNQFZ0
	kDV2rtjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quxmi-007pej-1T;
	Mon, 23 Oct 2023 16:28:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quxmd-007pdq-2x
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 16:28:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quxmb-0007Um-0H; Mon, 23 Oct 2023 18:28:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quxmY-003kjG-TG; Mon, 23 Oct 2023 18:27:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quxmY-002G1n-2m;
	Mon, 23 Oct 2023 18:27:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Oct 2023 18:27:47 +0200
Message-Id: <20231023162748.533468-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_092803_992649_86B51D04 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootm: replace CONFIG_BOOTM_FORCE_SIGNED_IMAGES with helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for allowing even CONFIG_BOOTM_FORCE_SIGNED_IMAGES=n
configurations to force boot of only signed images, replace direct
use of IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES) with a helper that
queries a static variable that can be forced at runtime in a follow-up
commit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
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
index 2469d4344188..dd5f26dd83e2 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -85,6 +85,13 @@ static const char * const bootm_verify_names[] = {
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
@@ -690,7 +697,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+	if (bootm_signed_images_are_forced()) {
 		data->verify = BOOTM_VERIFY_SIGNATURE;
 
 		/*
@@ -953,7 +960,7 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+	if (bootm_signed_images_are_forced())
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
diff --git a/include/bootm.h b/include/bootm.h
index ee2b574521db..25308d43a30e 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -147,6 +147,8 @@ int bootm_get_os_size(struct image_data *data);
 enum bootm_verify bootm_get_verify_mode(void);
 void bootm_set_verify_mode(enum bootm_verify mode);
 
+bool bootm_signed_images_are_forced(void);
+
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
-- 
2.39.2



