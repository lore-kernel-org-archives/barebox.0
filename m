Delivery-date: Thu, 04 Mar 2021 07:31:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHhWN-0000rG-DR
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 07:31:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHhWI-0000WC-FR
	for lore@pengutronix.de; Thu, 04 Mar 2021 07:31:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tV1bwlLsfr5prlNDcMcVoVa3K2l3XNTDG8+eFrD3y/I=; b=gVIKIV8sdYKdL1lvbYyafZ2wK7
	g3S4mwx1az3tAeKifU8SJ0b+SEmKEXpGvs+aNmnypvJP3aaq6yKgDq1HzNIM9rjAtEsaD8NSp6W5W
	cM0ZNqLFEIdLgw6BMWbL2TDc7ds3L753frQAapLaORXtmKw/rrqQyjGg782h06iDA70Oj5cEV3DCn
	l4rbDNwZrkpBUX9QbKf8ZTDlrwrZD5scCo9e9D5OyHVTNoDPC0Ci2yzi5IH5Ww+YVVIsy2sV2vig1
	r+lYf4ZW3Dmef4z0jP8+4dEt3vWuBMX4kMN0McB8g4S1d0SfA+n/k4qENwGtj/uf3ri7+858JbztP
	4vCkP92w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHhUn-007vVD-JF; Thu, 04 Mar 2021 06:30:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHhUQ-007vTt-Om
 for barebox@desiato.infradead.org; Thu, 04 Mar 2021 06:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=jjn1DPiJeFXMJvaEels9QRG+PujNHZ5Mpg+5rr0QNKA=; b=CoaHaKftyPXqJCkfAPgzBa6sPt
 eB2yDhDi7RpKtX2Gh2W8Mg00aEsfeF+jm98IZ7Guh4GR5jCtZx47TR/xkpIA6SkM6XUFZsay4ZLvr
 PqOag9a2c/W1nRkr0NrrtcXfGJP0iBaNCyJjRVB7HyR0HE+zkQvW/vpv7GDeNl+cRdqxMsUdRlceg
 1k5RDwXrKTpziYWaa92C9m5cr/IK1yH+Fd+83GH6ydSXEJnUlaAMfC7ldKxvlTNuBgoa2L8c9BXsR
 C1lYnot+M+tu4IVQ1ELhrj+9B+Yg3pAFZPvvHl5bPt33qvHJZG2MdxyMi1JQ208uM9AZulw8IvBe9
 X9qiDViQ==;
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHhUH-005rNO-Sy
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 06:29:33 +0000
Received: from blala.de (localhost [127.0.0.1])
 by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 1246WxSP016124; Thu, 4 Mar 2021 06:32:59 GMT
Received: (from akurz@localhost)
 by blala.de (8.15.2/8.15.2/Submit) id 1246WxE2016123;
 Thu, 4 Mar 2021 06:32:59 GMT
From: Alexander Kurz <akurz@blala.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Alexander Kurz <akurz@blala.de>
Date: Thu,  4 Mar 2021 06:32:58 +0000
Message-Id: <20210304063258.16080-1-user@vserver64>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210304_062933_327931_3AEF854C 
X-CRM114-Status: GOOD (  10.10  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

