Delivery-date: Thu, 15 Feb 2024 17:45:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerO-007dm3-0L
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:45:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerN-0006t6-AS
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:45:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ozX/Ybc3khsMWsNS+UGMZ/bq6/JROi+1EmKG2H0Lsjw=; b=veA9TM7hJDf1G2IpXwTZ6hNnk8
	WFdmfO45XBw3CeiCZqEnI4s0iG3UPwZ1Xw1iahe3AcNii7EAf7mo+8ZbOMhDP+F0Qz/ivHBq8JvUU
	I07839HWrhmpOLdPxHC0WahigHqOQUX4p/j+llBzhQbaODVQW50h7VXWCwcoS9TxNMcO52Hoh5KQ/
	3F6RqlCLM1oeOiNxNkHmN8BCkBTYSRQA9HbycuS8Ord7dXsvKwtA08jFl1S8zbvmLIuG9qd2ly6KQ
	vEifOLBOAyktqu/f0S0hPiP06+lcXLvl8Ku2VM5Z9R+KIBNXyox4/hfYFvXwNyFVpgHIPUuUBr2Fe
	+iQdI2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqt-0000000H1fZ-0hcP;
	Thu, 15 Feb 2024 16:44:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqp-0000000H1cN-2gj0
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:44:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqo-0006dC-CJ; Thu, 15 Feb 2024 17:44:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqn-000v3z-UN; Thu, 15 Feb 2024 17:44:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-1m;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:08 +0100
Message-Id: <20240215163009.2172795-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_084443_739633_C4732D48 
X-CRM114-Status: GOOD (  12.80  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 14/15] ARM: AT91: skov-arm9cpu: support environment on SD-Card
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox is meant to boot from SD-Card on this platform, so support a
barebox environment in this case for easier handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 arch/arm/boards/skov-arm9cpu/board.c | 8 ++++++++
 arch/arm/dts/at91-skov-arm9cpu.dts   | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index db6813c0e726..20507922cb24 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -7,6 +7,7 @@
 #include <envfs.h>
 #include <init.h>
 #include <gpio.h>
+#include <bootsource.h>
 
 #include <linux/sizes.h>
 
@@ -70,6 +71,13 @@ static int skov_arm9_probe(struct device *dev)
 	mem = mem / SZ_1M;
 	globalvar_add_simple_int("board.mem", &mem, "%u");
 
+	/*
+	 * NOR first stage bootloader is at91bootstrap, so if we find traces
+	 * of barebox in on-chip SRAM, it must mean we have booted from SD
+	 */
+	if (is_barebox_arm_head((void *)AT91SAM9263_SRAM0_BASE))
+		bootsource_set_raw(BOOTSOURCE_MMC, BOOTSOURCE_INSTANCE_UNKNOWN);
+
 	return 0;
 }
 
diff --git a/arch/arm/dts/at91-skov-arm9cpu.dts b/arch/arm/dts/at91-skov-arm9cpu.dts
index ac1d5c0c2e6e..d04d031f4053 100644
--- a/arch/arm/dts/at91-skov-arm9cpu.dts
+++ b/arch/arm/dts/at91-skov-arm9cpu.dts
@@ -16,6 +16,12 @@ / {
 
 	chosen {
 		stdout-path = "serial0:115200n8";
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &mmc1;
+			file-path = "barebox.env";
+		};
 	};
 
 	flash: nor_flash@10000000 {
-- 
2.39.2



