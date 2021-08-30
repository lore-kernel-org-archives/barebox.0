Delivery-date: Mon, 30 Aug 2021 13:54:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrd-00048L-HQ
	for lore@lore.pengutronix.de; Mon, 30 Aug 2021 13:54:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfrb-0006Ze-Ik
	for lore@pengutronix.de; Mon, 30 Aug 2021 13:54:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9GdOtNyfiNUNbMNvAPxqwwCGIeEpoDvCTBE+4mcrgY=; b=M+uv7rUFSeoZqd
	xGbJh5/KL/qnog5j6Rc6y+itZO1IPHQWba6Fzo5Esa6WHWYyk7wsOpHSofh33kUC3OWTRGUQTXD85
	vtaV6FIMCvC4wMZqMMkmod/F4IMij6Bavjt2IMuCMYSxfpPwu70TX9Dx3DfZsZDFq312Zx+wIyVsC
	5zOYHyxnLtGJV7s1BQ8IIxzb9vUX2Uh54eW48g+GQHHq/JTaVeu6kyEJs4s4vMjHu3QfixTaP90qm
	y4EZsvmFB+/xHu29V3qaPt8SxI4eVt5pMHzL8uL609LEL/8sHycm3PThKYWuY8OMfQu7nSnyk6eJH
	IbMc+2qdMJA4aI5QXUEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKfpg-00H8MG-AY; Mon, 30 Aug 2021 11:52:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKfpa-00H8KG-U1
 for barebox@lists.infradead.org; Mon, 30 Aug 2021 11:52:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006Op-KF; Mon, 30 Aug 2021 13:51:57 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfpV-0006FZ-BE; Mon, 30 Aug 2021 13:51:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de, rcz@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Aug 2021 13:51:56 +0200
Message-Id: <20210830115156.21907-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210830115156.21907-1-a.fatoum@pengutronix.de>
References: <20210830115156.21907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_045203_045014_41E2E42F 
X-CRM114-Status: GOOD (  12.79  )
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
Subject: [PATCH v2 3/3] ARM: i.MX8MP: EVK: change bbu handler from eMMC user
 to boot partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With recent changes, it's now possible to update and start barebox from
an eMMC boot partition on the i.MX8MP. Reflect this in the board code, so
future barebox updates on eMMC will automatically leverage this.

Tested on an i.MX8MN, which has the same flash header offsets as the 8MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch. Tested on i.MX8MN.
---
 arch/arm/boards/nxp-imx8mp-evk/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index a3ff59810888..8f1c2471091e 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -37,7 +37,7 @@ static int nxp_imx8mp_evk_init(void)
 	}
 
 	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
-	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
 
 	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
 	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

