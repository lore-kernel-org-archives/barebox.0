Delivery-date: Sun, 05 Sep 2021 15:53:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaS-0007GD-Iq
	for lore@lore.pengutronix.de; Sun, 05 Sep 2021 15:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaR-0002Qg-AP
	for lore@pengutronix.de; Sun, 05 Sep 2021 15:53:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3rbsJg84fmR0d/kqR4ySxSM6BvDmbUOkdqfI0ZUP7A=; b=D5kVD/irQXcTs4
	MhTPVnnBMaHf8WzI7BEq/JL/1ocPSQc1sx+qh1XZGGvEwqucqsKd7VBD6I5J/7pvQj9aYXmoqrfau
	9rcrjEmh7nuEcJa2jctkNsRiFj1l0rVHNw/fpB6lS/Y1neXUBmxFv/ozK1x0DCfKIR6xRApBhnNEF
	PjPnn2iHV6rUD2O3TTQ4rswAJHJWuq7x9NEgLVH6v+6MFVP34rEC6YwswQa04wKZCUvvNGEOeEZu/
	v8mARGKhrZ8BQNKOnYGCQ5WjXSBPC/iQtwSkLY3dMoZK1fMCNzdVFURClzs/KPSrbQeRQD3XC0hqL
	UVtFEA/vQamxmGZRqo2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMsYr-00Fqdz-Ly; Sun, 05 Sep 2021 13:51:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMsYY-00FqWt-P5
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 13:51:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYV-00024B-0i
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:31 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYU-00026b-8k
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun,  5 Sep 2021 15:51:19 +0200
Message-Id: <20210905135122.7038-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210905135122.7038-1-a.fatoum@pengutronix.de>
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210905_065134_915885_2F4D5701 
X-CRM114-Status: GOOD (  13.96  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] ddr: imx8m: add i.MX8MN (Nano) support
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
index 6836e7d4b351..f47886116d14 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -343,6 +343,7 @@ static int dram_pll_init(u32 freq, enum ddrc_type type)
 	case DDRC_TYPE_MQ:
 		return dram_sscg_pll_init(freq);
 	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MN:
 	case DDRC_TYPE_MP:
 		return dram_frac_pll_init(freq);
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

