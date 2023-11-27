Delivery-date: Mon, 27 Nov 2023 07:51:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSf-00AeqK-07
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSf-00014L-1Z
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MLDEZBFY9AhaJWGeTKqwWLwUDR0aypHsoy1gCUs+F5A=; b=YzZlaTJ5PBfSbEa9myt0GhBTMg
	uNmA9W8SJHGyHVL8jR0lBJrK3ooXSWj635bVHnFEpl1fdVvwkuBLnlHlXcQEkASbINS/XmS5eA7+6
	EmqmRP+onPaijefHt77Z6GQx+zZvIWfzioujZNQNf/OzkuPpySKZASsmMkayHSeqmCl8KFxZuagjf
	50pRwxPwu89RcGLyWyD9yrUDe3wen3Q/jETR/QDsm/O2EQwNHaBadssjWzjjKNG9LWVlvAeQuJhIo
	p79V86R/Z1WfUJq5yPmo2TpGdXMBoYLiulrN8sEAAFOyDm3RvC8xSOiPLTMZ8wtfRnBDVSo8BFuWy
	CJZ7ZatA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRQ-001bZA-2M;
	Mon, 27 Nov 2023 06:50:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWF-1T
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dC-5p; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsik-Pj; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2J;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:35 +0100
Message-Id: <20231127064947.2207726-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_664459_58FE126E 
X-CRM114-Status: GOOD (  11.82  )
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
Subject: [PATCH 01/13] clk: stm32mp1: build only when STM32MP15 support is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The stm32mp1 clock driver is only used on the STM32MP15 and won't be
reused for the STM32MP13, so let's make it dependent on ARCH_STM32MP157
instead of CONFIG_ARCH_STM32MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig  | 5 +++++
 drivers/clk/Makefile | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 076e77c8590f..a7b8709cd72c 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -28,6 +28,11 @@ config COMMON_CLK_STM32F
 	help
 	  Support for stm32f4 and stm32f7 SoC families clocks
 
+config COMMON_CLK_STM32MP157
+	def_bool ARCH_STM32MP157
+	help
+	  Support for stm32mp157 SoC family clocks
+
 config COMMON_CLK_SCMI
 	tristate "Clock driver controlled via SCMI interface"
 	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 3ebafbf7fdad..6b08dc065444 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_SOC_QCA_AR9331)	+= clk-ar933x.o
 obj-$(CONFIG_SOC_QCA_AR9344)	+= clk-ar9344.o
 obj-$(CONFIG_ARCH_IMX)		+= imx/
 obj-$(CONFIG_COMMON_CLK_AT91)	+= at91/
-obj-$(CONFIG_ARCH_STM32MP)	+= clk-stm32mp1.o
+obj-$(CONFIG_COMMON_CLK_STM32MP157)	+= clk-stm32mp1.o
 obj-$(CONFIG_MACH_VEXPRESS)	+= vexpress/
 obj-$(CONFIG_MACH_MIPS_LOONGSON)+= loongson/
 obj-$(CONFIG_ARCH_LAYERSCAPE)	+= clk-qoric.o
-- 
2.39.2



