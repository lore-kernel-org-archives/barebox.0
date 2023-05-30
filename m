Delivery-date: Tue, 30 May 2023 13:19:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOR-002jxL-7g
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:19:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOO-0001WJ-Vl
	for lore@pengutronix.de; Tue, 30 May 2023 13:19:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E/XwgI6a7y2hkCT3XqrgMK/saHHeKCIZ9v4Ab1nFKKE=; b=WnHlw37KfIo6XllQrc/Cmz9Klg
	SXX+i+wH/Z3zGwvFBXB+mcpaDDKuKZzjRHyRrvNRln4A5ypsDNng4vaFSzhKZ7Qaip65sJ0svaWLi
	QxpgC9JfribVaZPsIjTYxO5J+GD2yEVa+A1WzNFU3mS5dMTWk8xk/FzpUosB3uvyFpBGRq0IGHyA7
	PVYSCrwNxqDPr/qbqKqjLsLomfrvYtARqBWfxcYvDjdzeEDwDfDLpAG+1OEiXEFOunnCEGFrF45i4
	KjB3gaOMRsRyp56+fqLIbqqg3bacmki8inX6eFCzTSNIVAPDniXbPwyBPl6oMTVvjotIvomKe7tFu
	LbSlYe8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNL-00Dbpi-1L;
	Tue, 30 May 2023 11:18:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbip-1e
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-00014N-DV; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-003rOa-Nt; Tue, 30 May 2023 13:18:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082bK-PX; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:31 +0200
Message-Id: <20230530111832.1916542-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_604634_0AF93A71 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] ARM: multi_v8_defconfig: Enable SCMI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SCMI clocks are needed to support the Rockchip RK3588.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index d30158d7f8..e0ff21641a 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -188,6 +188,7 @@ CONFIG_MCI_DW=y
 CONFIG_MCI_ROCKCHIP_DWCMSHC=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_MCI_ARASAN=y
+CONFIG_COMMON_CLK_SCMI=y
 CONFIG_MFD_ACT8846=y
 CONFIG_RAVE_SP_CORE=y
 CONFIG_MFD_RK808=y
@@ -211,12 +212,14 @@ CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
 CONFIG_RESET_IMX7=y
 CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
+CONFIG_ARM_SCMI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
-- 
2.39.2



