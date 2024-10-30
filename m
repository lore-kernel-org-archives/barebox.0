Delivery-date: Wed, 30 Oct 2024 12:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-002gBG-1B
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-0003x4-Cl
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:47:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zYO57vqdMMR8BXZFlp3o4VTQIfKmaHB6+i0X6EKT/kY=; b=TcbzDMYHZeK60Zx812B9V065Vc
	IPq1CNfsNjSmOz4NcSJpY+UJwIeavOuyMEvP8/LzHAjy8r0wE+4g/a7szdKu2B+acPjNoZ70M0SBD
	KzpA8t6wusYUC2Xp3iXvWKu6IYPkCXRQpstH6Eoi+kwIUY/q6Z0vciIWtODAc5qpoRG27W4KOKSO2
	4z3JZH4+GEfarORfLkFlujnmHDk38wVMzwWP4Akk/Um0U7GeHOHWj1TThG9YtCFOTBghUmOf6qIXc
	8/T6zjn+Y3qr8bHRjEHGQaNIrNCpIG7SI+YV7Hr+XGdhLn5WHnDbKQM6pMLFeULmgkVayGCLWF/h2
	PSZ2rTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67AA-00000000CY4-1h5A;
	Wed, 30 Oct 2024 11:46:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t66uT-000000008ri-2n5Q
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-0001ga-Hf; Wed, 30 Oct 2024 12:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-001BhA-0n;
	Wed, 30 Oct 2024 12:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-00333E-0b;
	Wed, 30 Oct 2024 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 12:30:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-handoff-data-v1-2-4403e0c62c2a@pengutronix.de>
References: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
In-Reply-To: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730287836; l=3646;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7pmSrMg7T0lxV6LrdFepS1eNHB2bDxspjJjuCNhRGuM=;
 b=gn8seG/+oclRY38anhbk3dkNQoszMnVfW7kQUD0d8i6M6FgSnWW+IGuOeQc5dATaVKiX0xjti
 E3RT6tEX9t3AqmLLod4y95CMNI4BungoqmlWGRG3D+dVo75fWRrEDAn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_043045_752477_E5E87D55 
X-CRM114-Status: GOOD (  16.99  )
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
Subject: [PATCH 2/4] ARM: i.MX93: add destination argument to
 imx93_romapi_load_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pass the destination address to imx93_romapi_load_image() rather
than hardcoding the destination to MX93_ATF_BL33_BASE_ADDR.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma93xx/lowlevel.c |  1 -
 arch/arm/mach-imx/atf.c             |  2 ++
 arch/arm/mach-imx/romapi.c          | 11 +++++------
 include/mach/imx/romapi.h           |  2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
index 14733d52a3..cc5101a1a3 100644
--- a/arch/arm/boards/tqma93xx/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -81,7 +81,6 @@ static noinline void tqma93xx_continue(void)
 			break;
 		}
 
-		imx93_romapi_load_image();
 		imx93_load_and_start_image_via_tfa();
 	}
 
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 8b80460268..f4ba07bf06 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -395,6 +395,8 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	imx_set_cpu_type(IMX_CPU_IMX93);
 	imx93_init_scratch_space(true);
 
+	imx93_romapi_load_image(bl33);
+
 	/*
 	 * On completion the TF-A will jump to MX93_ATF_BL33_BASE_ADDR
 	 * in EL2. Copy the image there, but replace the PBL part of
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 0f1555abad..155e706437 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -173,13 +173,12 @@ static int imx_romapi_boot_device_seekable(struct rom_api *rom_api)
 	return seekable;
 }
 
-int imx93_romapi_load_image(void)
+int imx93_romapi_load_image(void *adr)
 {
 	struct rom_api *rom_api = (void *)0x1980;
 	int ret;
 	int seekable;
 	uint32_t offset, image_offset;
-	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
 	struct flash_header_v3 *fh;
 
 	OPTIMIZER_HIDE_VAR(rom_api);
@@ -190,7 +189,7 @@ int imx93_romapi_load_image(void)
 
 	if (!seekable) {
 		int align_size = ALIGN(barebox_pbl_size, 1024) - barebox_pbl_size;
-		void *pbl_size_aligned = bl33 + ALIGN(barebox_pbl_size, 1024);
+		void *pbl_size_aligned = adr + ALIGN(barebox_pbl_size, 1024);
 
 		/*
 		 * The USB protocol uploads in chunks of 1024 bytes. This means
@@ -209,11 +208,11 @@ int imx93_romapi_load_image(void)
 
 	pr_debug("%s: IVT offset on boot device: 0x%08x\n", __func__, offset);
 
-	ret = imx_romapi_load_seekable(rom_api, bl33, offset, 4096);
+	ret = imx_romapi_load_seekable(rom_api, adr, offset, 4096);
 	if (ret)
 		return ret;
 
-	fh = bl33;
+	fh = adr;
 
 	if (fh->tag != 0x87) {
 		pr_err("Invalid IVT header: 0x%02x, expected 0x87\n", fh->tag);
@@ -228,7 +227,7 @@ int imx93_romapi_load_image(void)
 	 * We assume the first image in the first container is the barebox image,
 	 * which is what the imx9image call in images/Makefile.imx generates.
 	 */
-	ret = imx_romapi_load_seekable(rom_api, bl33, offset + image_offset, barebox_image_size);
+	ret = imx_romapi_load_seekable(rom_api, adr, offset + image_offset, barebox_image_size);
 	if (ret)
 		return ret;
 
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index e26b98097d..9967a2a4c3 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -38,7 +38,7 @@ enum boot_dev_type_e {
 /* Below functions only load and don't start the image */
 int imx8mp_romapi_load_image(void *bl33);
 int imx8mn_romapi_load_image(void *bl33);
-int imx93_romapi_load_image(void);
+int imx93_romapi_load_image(void *adr);
 
 /* only call after DRAM has been configured */
 void imx8m_save_bootrom_log(void);

-- 
2.39.5



