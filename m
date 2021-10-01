Delivery-date: Fri, 01 Oct 2021 12:11:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFW0-0002Zt-G4
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:11:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVz-0006R9-9y
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:11:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UI7nQ15r1/MITDSAgowjj7H/GMs4oeHrpk+0izDnQl4=; b=04AdvvGbvM5Yao
	WvqipGnt7y8t8fXTWqlA5Z9xtdgAxE+8ZZLZaJehY2gbyGszPTOW8Vh4wMMtvEPOe5BscpNlpgMnb
	EceTy9fCBX/S+fq7iNbw9NaMjQMeO/9lFSUR/lpM3apncSf+25yrgJBpLsMRAC5O5xVux84jx0pQA
	2nBjdb0FQkoLRTUa28uD+uiA3hdwUGn2og2i1QUuAyPO3VkceasRDNfjAnlz1U5oWeI2qsD43vZu5
	prfI5imsdEgIQDVBPdKdyLXAn37nxyoUOTJ03xI0MxkqrJiK6tZ2PSSg3XeaJeFU0xZCJSmnc31Hm
	gJoCA3dp/Hg93i9bpkTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUe-00HQsB-1F; Fri, 01 Oct 2021 10:10:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUO-00HQlX-F3
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:10:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005kt-5i; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pd-Fv; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Oct 2021 12:09:46 +0200
Message-Id: <20211001100949.6891-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_031000_548837_FA7EAC7E 
X-CRM114-Status: GOOD (  14.38  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/8] ddr: imx8m: add i.MX8MN (Nano) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DRAM setup on i.MX8MP is the same as on the i.MX8MP, except for
DDRC_DDR_SS_GPR0, which the vendor's U-Boot port explicitly skips
on the nano, irrespective of the configured DRAM type. Do likewise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx8m/Kconfig        | 2 +-
 drivers/ddr/imx8m/ddr_init.c     | 8 +++++++-
 drivers/ddr/imx8m/ddrphy_utils.c | 1 +
 include/soc/imx8m/ddr.h          | 2 ++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/ddr/imx8m/Kconfig b/drivers/ddr/imx8m/Kconfig
index 7673ab5b4ccb..efc50c21d4c4 100644
--- a/drivers/ddr/imx8m/Kconfig
+++ b/drivers/ddr/imx8m/Kconfig
@@ -1,5 +1,5 @@
 menu "i.MX8M DDR controllers"
-	depends on ARCH_IMX8MQ || ARCH_IMX8MM || ARCH_IMX8MP
+	depends on ARCH_IMX8MQ || ARCH_IMX8MM || ARCH_IMX8MN || ARCH_IMX8MP
 
 config IMX8M_DRAM
 	bool "imx8m dram controller support"
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 34da44af6446..95ac76efcddb 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -48,6 +48,7 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 		reg32_write(src_ddrc_rcr + 0x04, 0x8f000000);
 		break;
 	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MN:
 	case DDRC_TYPE_MP:
 		reg32_write(src_ddrc_rcr, 0x8f00001f);
 		reg32_write(src_ddrc_rcr, 0x8f00000f);
@@ -88,7 +89,7 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	/* if ddr type is LPDDR4, do it */
 	tmp = reg32_read(DDRC_MSTR(0));
-	if (tmp & (0x1 << 5))
+	if (tmp & (0x1 << 5) && type != DDRC_TYPE_MN)
 		reg32_write(DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
 
 	/* determine the initial boot frequency */
@@ -197,6 +198,11 @@ int imx8mm_ddr_init(struct dram_timing_info *dram_timing)
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
 }
 
+int imx8mn_ddr_init(struct dram_timing_info *dram_timing)
+{
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN);
+}
+
 int imx8mq_ddr_init(struct dram_timing_info *dram_timing)
 {
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index a56033f78032..79bb76c35a2a 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -321,6 +321,7 @@ static int dram_pll_init(enum ddr_rate drate, enum ddrc_type type)
 	case DDRC_TYPE_MQ:
 		return dram_sscg_pll_init(drate);
 	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MN:
 	case DDRC_TYPE_MP:
 		return dram_frac_pll_init(drate);
 	default:
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 78b15f1d461a..a25274c57671 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -365,11 +365,13 @@ extern struct dram_timing_info dram_timing;
 
 enum ddrc_type {
 	DDRC_TYPE_MM,
+	DDRC_TYPE_MN,
 	DDRC_TYPE_MQ,
 	DDRC_TYPE_MP,
 };
 
 int imx8mm_ddr_init(struct dram_timing_info *timing_info);
+int imx8mn_ddr_init(struct dram_timing_info *timing_info);
 int imx8mq_ddr_init(struct dram_timing_info *timing_info);
 int imx8mp_ddr_init(struct dram_timing_info *timing_info);
 int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type type);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

