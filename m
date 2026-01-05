Delivery-date: Mon, 05 Jan 2026 09:07:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcy-001S3F-0s
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcx-0008Bz-9S
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BAWx75nQ4owZHQicpAcndakbVQUCNx+RYraFgos67NQ=; b=I0gGmENsvreepS7KuNpvf6hHxE
	MfAgxLOMFVTmp8Fbwp80CiI3HpXzifQDcKMU2HzVEmSnmZevVgEcDjZNjr7HlxR7gVvH565kj5+c+
	PXA4pZozXkGzqO/ek57eEP40xop/g7ZWhTO1nEpT8TZ+W4Br4lWu2Ad+hrvZofZhWsyOUIcpfL3/x
	qF3xKJqeL0TRaJ1Q1P3CbS//Q2Ra6NRux7reaSY5S79pUbV01LF1Bx4LE0IF9Gx/Q4azXl2WPM+d1
	uVHxbRfkCxr8QKSphb90au8IoK5f0mMuDNFxLwFIkKeP+teM59nljRJPYOhBjYPOKCgVqp3qithCB
	0zHVyjog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcF-0000000Ax2e-1GRt;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzO-1OD6
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfc9-0007f0-PA; Mon, 05 Jan 2026 09:06:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:39 +0100
Message-ID: <20260105080653.3240497-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_380924_68FD22D3 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] resource: make NULL in release_[sdram_]region a no-op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By handling the NULL inside release_region, we can remove some
clutter in caller error handling for release_sdram_region.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/bootm-fip.c |  5 ++---
 arch/arm/lib32/bootz.c   |  3 +--
 common/bootm.c           | 18 ++++++------------
 common/resource.c        |  2 ++
 fs/pstore/ram_core.c     |  7 +++----
 5 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
index a50b3f4431d0..8d1ea3f109d1 100644
--- a/arch/arm/cpu/bootm-fip.c
+++ b/arch/arm/cpu/bootm-fip.c
@@ -52,9 +52,8 @@ static int desc_to_sdram(struct fip_image_desc *loadable, ulong load_address)
 
 static void desc_release_sdram(struct fip_image_desc *loadable)
 {
-	struct resource *res = loadable ? desc_get_res(loadable) : NULL;
-	if (res)
-		release_sdram_region(res);
+	if (loadable)
+		release_sdram_region(desc_get_res(loadable));
 }
 
 enum { IMAGE_BL33, IMAGE_HW_CONFIG, IMAGE_COUNT };
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index 6ed6af1d19e3..0ace36271026 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -127,8 +127,7 @@ static int do_bootz(int argc, char *argv[])
 	return 0;
 
 err_out2:
-	if (res)
-		release_sdram_region(res);
+	release_sdram_region(res);
 err_out1:
 	free(zimage);
 err_out:
diff --git a/common/bootm.c b/common/bootm.c
index 26fd8227f01f..933e9dfc69fe 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -748,10 +748,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	bootm_get_override(&data->oftree_file, bootm_overrides.oftree_file);
 
 	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file)) {
-		if (data->initrd_res) {
-			release_sdram_region(data->initrd_res);
-			data->initrd_res = NULL;
-		}
+		release_sdram_region(data->initrd_res);
+		data->initrd_res = NULL;
 	}
 
 	ret = handler->bootm(data);
@@ -759,14 +757,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		pr_info("Dryrun. Aborted\n");
 
 err_out:
-	if (data->os_res)
-		release_sdram_region(data->os_res);
-	if (data->initrd_res)
-		release_sdram_region(data->initrd_res);
-	if (data->oftree_res)
-		release_sdram_region(data->oftree_res);
-	if (data->tee_res)
-		release_sdram_region(data->tee_res);
+	release_sdram_region(data->os_res);
+	release_sdram_region(data->initrd_res);
+	release_sdram_region(data->oftree_res);
+	release_sdram_region(data->tee_res);
 	if (image_is_uimage(data))
 		bootm_close_uimage(data);
 	if (data->os_fit)
diff --git a/common/resource.c b/common/resource.c
index 078dc9f2ff2d..33eb122f4668 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -97,6 +97,8 @@ struct resource *__request_region(struct resource *parent,
  */
 int release_region(struct resource *res)
 {
+	if (!res)
+		return 0;
 	if (!list_empty(&res->children))
 		return -EBUSY;
 
diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 621987f1bade..6cf99fc4b284 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -397,10 +397,9 @@ void persistent_ram_free(struct persistent_ram_zone *prz)
 	if (!prz)
 		return;
 
-	if (prz->res) {
-		release_sdram_region(prz->res);
-		prz->res = NULL;
-	}
+	release_sdram_region(prz->res);
+	prz->res = NULL;
+
 	if (prz->rs_decoder) {
 		free_rs(prz->rs_decoder);
 		prz->rs_decoder = NULL;
-- 
2.47.3



