Delivery-date: Tue, 02 Mar 2021 08:34:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGzY6-0005k8-Lk
	for lore@lore.pengutronix.de; Tue, 02 Mar 2021 08:34:30 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGzY2-0001ak-Av
	for lore@pengutronix.de; Tue, 02 Mar 2021 08:34:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tV1bwlLsfr5prlNDcMcVoVa3K2l3XNTDG8+eFrD3y/I=; b=gfZ8skBHYSsPviAx4o2EgNVjk6
	jVSOqTCO5yf6W4HZn9sDFMIRCe+qF/TDtAdrWM0gPlAMv2lyd2TrReLO5GwzXSOq52qp6l+Za4YCc
	rgTv1xYVMCRu/HnSjVjs0ooSsaj3ckxrsUTFVucGNVLqfMLfCXVBqKRluivDIZj3w/DS1WCC2Y/GW
	tvfqU36D8VVLRo3nvSMfkVMEJj3+PkfLRePctoxUXPUI9C8sY/FU8IHuEah154PN53LJwU9eZuc3s
	rhwqygqwW38lUzyiJC+a1YqMowrO3f62Vn+Gl8SPKkkjowO9Ri2atx1nkTbpttkZK+iaeoAO6ucHy
	AwZgJkqQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGzUZ-0005qb-7c; Tue, 02 Mar 2021 07:30:51 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGzUV-0005pr-3n
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 07:30:48 +0000
Received: from blala.de (localhost [127.0.0.1])
 by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 1227YcDb013574; Tue, 2 Mar 2021 07:34:38 GMT
Received: (from akurz@localhost)
 by blala.de (8.15.2/8.15.2/Submit) id 1227Ycxd013573;
 Tue, 2 Mar 2021 07:34:38 GMT
From: Alexander Kurz <akurz@blala.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Mar 2021 07:34:37 +0000
Message-Id: <20210302073437.13530-1-user@vserver64>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_023047_374698_D316F430 
X-CRM114-Status: GOOD (  10.58  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Alexander Kurz <akurz@blala.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: bbu: fix variable name to used semantic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Alexander Kurz <akurz@blala.de>

Both flags handle BBU behavior and should be bbu_flags.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/nxp-imx8mm-evk/board.c | 6 +++---
 arch/arm/boards/nxp-imx8mp-evk/board.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index 2603a2ab0..6e4df6006 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -33,7 +33,7 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 static int nxp_imx8mm_evk_init(void)
 {
 	int emmc_bbu_flag = 0;
-	int emmc_sd_flag = 0;
+	int sd_bbu_flag = 0;
 
 	if (!of_machine_is_compatible("fsl,imx8mm-evk"))
 		return 0;
@@ -46,14 +46,14 @@ static int nxp_imx8mm_evk_init(void)
 			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 		} else {
 			of_device_enable_path("/chosen/environment-sd");
-			emmc_sd_flag = BBU_HANDLER_FLAG_DEFAULT;
+			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 		}
 	} else {
 		of_device_enable_path("/chosen/environment-emmc");
 		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
 	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index f64f46681..a3ff59810 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -17,7 +17,7 @@
 static int nxp_imx8mp_evk_init(void)
 {
 	int emmc_bbu_flag = 0;
-	int emmc_sd_flag = 0;
+	int sd_bbu_flag = 0;
 	u32 val;
 
 	if (!of_machine_is_compatible("fsl,imx8mp-evk"))
@@ -29,14 +29,14 @@ static int nxp_imx8mp_evk_init(void)
 			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 		} else {
 			of_device_enable_path("/chosen/environment-sd");
-			emmc_sd_flag = BBU_HANDLER_FLAG_DEFAULT;
+			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 		}
 	} else {
 		of_device_enable_path("/chosen/environment-emmc");
 		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", emmc_sd_flag);
+	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
 	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
 
 	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

