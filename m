Delivery-date: Mon, 04 Dec 2023 17:54:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rACCs-00324P-1D
	for lore@lore.pengutronix.de;
	Mon, 04 Dec 2023 17:54:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rACCs-0003D4-Cd
	for lore@pengutronix.de; Mon, 04 Dec 2023 17:54:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7riFofBO3tCBqGfEiFGeSSguvrJlKai+y6RpYQ/LgIw=; b=KrmC2Z/Y3iTsoOswV/ZbRxzp/7
	RmXg+aWP6qxOu6BL2epMtHUPWyOWSNKD84IQMKPCE5DkwrfVrtuLpfUaINKQwHSbxhaLoOkQwzFQz
	A8XcI/CWxDTJH2/QSkkCusgSiaIpirkwZToyFy4yhyKrcXV93MFlKYiTMhwc+Tt+R8YE7U6wK88YO
	NyT1WczfcQVFrvu4L/x/6HsVKMzE0h6Nbn1DOVDHCmz8lpU1Q7KjvtsUrmB/LRChk5Txs4zxcMR2B
	lylMiIBnyc5ua7R7vguATUIoLTTlEG0lcfR38ThPLnndbGaLyvK/sKwHaSQ8c0WtJYtaZUSdiEv5E
	PF6j6JJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rACBY-0058kJ-29;
	Mon, 04 Dec 2023 16:52:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rACBV-0058jp-0b
	for barebox@lists.infradead.org;
	Mon, 04 Dec 2023 16:52:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rACBT-0002q6-W8; Mon, 04 Dec 2023 17:52:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rACBT-00DYkh-Jp; Mon, 04 Dec 2023 17:52:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rACBT-004kJD-1i;
	Mon, 04 Dec 2023 17:52:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Dec 2023 17:52:38 +0100
Message-Id: <20231204165238.1131311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_085241_221825_54A49916 
X-CRM114-Status: GOOD (  11.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] clk: ti-sci: fix build failure without TI_SCI_PROTOCOL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SCI clk driver has an unconditional reference to
ti_sci_get_handle(), but no dependency is specific in the Kconfig.
Add a dependency and change defaults, so it's enabled by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig      | 9 +++++++++
 drivers/clk/Makefile     | 2 +-
 drivers/firmware/Kconfig | 1 +
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 076e77c8590f..a3772ed56d2a 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -38,6 +38,15 @@ config COMMON_CLK_SCMI
 	  This driver uses SCMI Message Protocol to interact with the
 	  firmware providing all the clock controls.
 
+config TI_SCI_CLK
+	tristate "TI System Control Interface clock drivers"
+	depends on TI_SCI_PROTOCOL
+	default ARCH_K3
+	help
+	  This adds the clock driver support over TI System Control Interface.
+	  If you wish to use clock resources from the PMMC firmware, say Y.
+	  Otherwise, say N.
+
 config COMMON_CLK_GPIO
 	bool
 	default y
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 3ebafbf7fdad..3a2983c0a030 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -29,4 +29,4 @@ obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
 obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
-obj-$(CONFIG_ARCH_K3)		+= ti-sci-clk.o
+obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index ee91b2b7fa6d..e37099aa6141 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -46,6 +46,7 @@ config QEMU_FW_CFG
 config TI_SCI_PROTOCOL
 	bool "TI System Control Interface (TISCI) Message Protocol"
 	depends on TI_MESSAGE_MANAGER
+	default ARCH_K3
 	help
 	  TI System Control Interface (TISCI) Message Protocol is used to manage
 	  compute systems such as ARM, DSP etc with the system controller in
-- 
2.39.2



