Delivery-date: Thu, 23 Mar 2023 13:06:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfJht-00BpeP-J8
	for lore@lore.pengutronix.de; Thu, 23 Mar 2023 13:06:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfJht-0003rx-3z
	for lore@pengutronix.de; Thu, 23 Mar 2023 13:06:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wI7gvIGv7038x+jR5UXq7GywQ0Vj5D78YHMhA0zSd0I=; b=2cYlx5nQ2u6GoIdmeGGa54ms2i
	T5838SSFtqDCvli8dXME2QPLzEfpLTwCc4UjV+q9S+d9ayaa0UNhU/+VGFyFYp6HHdA9plbO4h7cW
	RxcWLvn34fdTy3cIefWHm6Ot//h8PRxL2aVuqZ24gNJ+Dm/vOzdROQZuEsL4AKlQKSycttnOK0dDP
	mDKDlPyja5wPvnrEx4bunyXw+0yBZFykP7yHuEusyVOJEjX4nyFJrhv8/82XRuZ6i+jTZMpgSIj6f
	ubykR+Q9rAR//CSanL4mhyp1LJEKfxlWv1RhEX4vhyokW8FeJ7OAX/S0nTI9QYJ79gdaqczwRKvG2
	YWip3hDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJgs-001pmS-2G;
	Thu, 23 Mar 2023 12:05:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJgo-001pkg-2p
	for barebox@lists.infradead.org;
	Thu, 23 Mar 2023 12:05:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJgl-0003TY-2F; Thu, 23 Mar 2023 13:05:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJgk-00696g-Ch; Thu, 23 Mar 2023 13:05:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfJgj-00Avv6-I3; Thu, 23 Mar 2023 13:05:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 23 Mar 2023 13:04:57 +0100
Message-Id: <20230323120457.2605769-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_050506_919428_4558D1D8 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: clk-gpio: Add Kconfig symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk-gpio is always compiled in with CONFIG_COMMON_CLK=y. It really
depends on CONFIG_COMMON_CLK_OF_PROVIDER though, without this
of_clk_init() just compiles to a static inline stub and the clk-gpio
driver becomes a no-op.
With the conversion to a driver in the next patch this no longer works
and compilation of the driver results in a undefined reference to
of_clk_get_parent_name. To avoid that create a Kconfig symbol for the
driver which defaults to yes when CONFIG_COMMON_CLK_OF_PROVIDER is set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Kconfig  | 5 +++++
 drivers/clk/Makefile | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 0faea6488e..076e77c859 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -38,6 +38,11 @@ config COMMON_CLK_SCMI
 	  This driver uses SCMI Message Protocol to interact with the
 	  firmware providing all the clock controls.
 
+config COMMON_CLK_GPIO
+	bool
+	default y
+	depends on COMMON_CLK_OF_PROVIDER
+
 source "drivers/clk/sifive/Kconfig"
 
 endif
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index baf452de98..c865e4c274 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -2,7 +2,7 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
 				clk-fractional-divider.o clk-conf.o \
-				clk-gate-shared.o clk-gpio.o \
+				clk-gate-shared.o \
 				clk-bulk.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
@@ -28,3 +28,4 @@ obj-$(CONFIG_COMMON_CLK_STM32F)		+= clk-stm32f4.o
 obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
 obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
+obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
-- 
2.30.2



