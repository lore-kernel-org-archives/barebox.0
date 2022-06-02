Delivery-date: Thu, 02 Jun 2022 11:04:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgkO-000NvN-Np
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 11:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwgkN-0007Gw-0E
	for lore@pengutronix.de; Thu, 02 Jun 2022 11:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pF6B+KwPvnkpSECl6MHxqel6yLwk8RuM2mR2/K7Hpqg=; b=40tSRglDSXZqxx
	AjpQzKV9Jl/pzrHAERvbuwFfD19V8Baps0Gy7OCLff5Bv8UN1Uh2CUlX9QODepe3bOvyF3LpsTWXJ
	TbBnGFCT5ge8w7kPAAScC5EZLon+qpUyRHeQ/7+59G/m86erkEfUdHoBG0Ba7VkTPWAGpUh0r64n2
	GyVzApKyqnJn5e+DRrwRT286YAHth37oE2jij0E26IQu4nac1X2dB3POrI2Hi4cMtQLZy/n69CFVm
	1beNIT5sjX7cDFjC7TAhuiJ3hVMgEa2B7OIUNzJ9ydZPL6Di2vCizKAqICCLmrtALp/Y+UkT8eFfs
	eF+meUTkfMSedMFHXkKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgj1-002LCj-6u; Thu, 02 Jun 2022 09:02:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwgiE-002Kqe-9s
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 09:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-0006aM-1J; Thu, 02 Jun 2022 11:01:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi5-005zkq-JL; Thu, 02 Jun 2022 11:01:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwgi3-00DOLZ-05; Thu, 02 Jun 2022 11:01:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 11:01:31 +0200
Message-Id: <20220602090133.3190450-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
References: <20220602090133.3190450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_020150_412386_E137283F 
X-CRM114-Status: GOOD (  15.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] filetype: differentiate between STM32MP FSBL and SSBL images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some special handling for legacy (non-FIP) STM32 images:
We have a bootm handler for chainloading and an update handler
for use with GPT ssbl partitions. Both aren't applicable to the
TF-A image used as FSBL. As barebox always has 0x00000000 at
offset 0xfc and TF-A alrways has 0x10000000, we can use that
to differentiate between the two images to make sure we refuse
TF-A images when barebox images are expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/include/mach/bbu.h |  2 +-
 arch/arm/mach-stm32mp/stm32image.c       |  2 +-
 common/filetype.c                        | 13 ++++++++++---
 include/filetype.h                       |  3 ++-
 4 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/arch/arm/mach-stm32mp/include/mach/bbu.h
index d49fb045ea06..3a6951a8f1a0 100644
--- a/arch/arm/mach-stm32mp/include/mach/bbu.h
+++ b/arch/arm/mach-stm32mp/include/mach/bbu.h
@@ -10,7 +10,7 @@ static inline int stm32mp_bbu_mmc_register_handler(const char *name,
 						   unsigned long flags)
 {
 	return bbu_register_std_file_update(name, flags, devicefile,
-					    filetype_stm32_image_v1);
+					    filetype_stm32_image_ssbl_v1);
 }
 
 #endif /* MACH_STM32MP_BBU_H_ */
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
index caff68651c47..7867418e6caa 100644
--- a/arch/arm/mach-stm32mp/stm32image.c
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -40,7 +40,7 @@ static int do_bootm_stm32image(struct image_data *data)
 static struct image_handler image_handler_stm32_image_v1_handler = {
 	.name = "STM32 image (v1)",
 	.bootm = do_bootm_stm32image,
-	.filetype = filetype_stm32_image_v1,
+	.filetype = filetype_stm32_image_ssbl_v1,
 };
 
 static int stm32mp_register_stm32image_image_handler(void)
diff --git a/common/filetype.c b/common/filetype.c
index 0ded64b83c00..3e9e14c1d79e 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -71,7 +71,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
 	[filetype_ubootvar] = { "U-Boot environmemnt variable data",
 				"ubootvar" },
-	[filetype_stm32_image_v1] = { "STM32 image (v1)", "stm32-image-v1" },
+	[filetype_stm32_image_fsbl_v1] = { "STM32MP FSBL image (v1)", "stm32-fsbl-v1" },
+	[filetype_stm32_image_ssbl_v1] = { "STM32MP SSBL image (v1)", "stm32-ssbl-v1" },
 	[filetype_zynq_image] = { "Zynq image", "zynq-image" },
 	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
 	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
@@ -372,8 +373,14 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_unknown;
 
 	if (strncmp(buf8, "STM\x32", 4) == 0) {
-		if (buf8[74] == 0x01)
-			return filetype_stm32_image_v1;
+		if (buf8[74] == 0x01) {
+			switch(le32_to_cpu(buf[63])) {
+			case 0x00000000:
+				return filetype_stm32_image_ssbl_v1;
+			case 0x10000000:
+				return filetype_stm32_image_fsbl_v1;
+			}
+		}
 	}
 
 	if (bufsize < 512)
diff --git a/include/filetype.h b/include/filetype.h
index 9b7499fdf307..00d54e48d528 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -52,7 +52,8 @@ enum filetype {
 	filetype_layerscape_image,
 	filetype_layerscape_qspi_image,
 	filetype_ubootvar,
-	filetype_stm32_image_v1,
+	filetype_stm32_image_fsbl_v1,
+	filetype_stm32_image_ssbl_v1,
 	filetype_zynq_image,
 	filetype_mxs_sd_image,
 	filetype_rockchip_rkns_image,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

