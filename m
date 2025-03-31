Delivery-date: Mon, 31 Mar 2025 14:31:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEII-006Z6B-1m
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:31:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEIH-00058z-UJ
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:31:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJNzaNLcCpejbn4l2B7SDFVGncocMDiTzBpVjdXjyeY=; b=VjDSDsS2P8c4eamy5xaL8cKOK2
	qIFXZ4eHv9GBdcNpSgYuqD66Bic+hfcOq6HttB6aPCz7v79bYRbGo5HEoAA1cHV8cDAl7HHlbRstF
	pF/OdwFr+8rnJ16U9hS4lzLtxmWDzHlpUM+/9c+Z499YhFh/+rq5jhxll+0WKyQnHGhXRxiJWYEmA
	+pwY5n5dqf94J1oeadkSkYIpWyPBFhQnLvSLxTMBU3UIgrRLulMYgitUyXNQBnTFb0/6K+j0SapU6
	g4SU3dUPuPIUgw3SiVxEliPrWS0YowSNxbPhxQ2SoAOBZbI1J8YUt8er2rExLpe47RQR+0AlhQ74E
	cyt0HQYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHp-00000000LEA-3oDl;
	Mon, 31 Mar 2025 12:30:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHj-00000000L7b-0L3n
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-0004pz-Vf; Mon, 31 Mar 2025 14:30:33 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002asa-2X;
	Mon, 31 Mar 2025 14:30:33 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002dCs-2K;
	Mon, 31 Mar 2025 14:30:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 31 Mar 2025 14:30:32 +0200
Message-Id: <20250331123032.626219-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331123032.626219-1-o.rempel@pengutronix.de>
References: <20250331123032.626219-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_053035_234747_E27B4647 
X-CRM114-Status: GOOD (  13.02  )
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
X-Spam-Status: No, score=-1.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/4] arm: boards: protonic-stm32mp: free shift register GPIOs after use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPIOs used to access the external shift register (PL_N, CP, Q7) are
shared with other functionality - including the LED heartbeat driver.

After the board code completes reading the shift register during early
boot, the GPIOs are no longer needed for that purpose. Free them
immediately to avoid resource conflicts and allow reuse (e.g., for
LEDs or other drivers).

This change applies to both STM32MP1 and STM32MP13 board code.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c  | 8 ++++++++
 arch/arm/boards/protonic-stm32mp13/board.c | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 4c8ad9e53388..9116876ad59f 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -230,6 +230,13 @@ static void prt_stm32_read_shift_reg(struct device *dev)
 	gpio_set_value(PRT_STM32_GPIO_HWID_CP, 1);
 }
 
+static void prt_stm32_put_gpios(void)
+{
+	gpio_free(PRT_STM32_GPIO_HWID_PL_N);
+	gpio_free(PRT_STM32_GPIO_HWID_CP);
+	gpio_free(PRT_STM32_GPIO_HWID_Q7);
+}
+
 static int prt_stm32_probe(struct device *dev)
 {
 	const struct prt_stm32_machine_data *dcfg;
@@ -247,6 +254,7 @@ static int prt_stm32_probe(struct device *dev)
 	if (!(dcfg->flags & PRT_STM32_NO_SHIFT_REG)) {
 		prt_stm32_init_shift_reg(dev);
 		prt_stm32_read_shift_reg(dev);
+		prt_stm32_put_gpios();
 	}
 
 	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
index 4268db2b384c..fe251b9e7764 100644
--- a/arch/arm/boards/protonic-stm32mp13/board.c
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -214,6 +214,13 @@ static void prt_stm32_read_shift_reg(struct device *dev)
 	gpio_set_value(PRT_STM32_GPIO_HWID_CP, 1);
 }
 
+static void prt_stm32_put_gpios(void)
+{
+	gpio_free(PRT_STM32_GPIO_HWID_PL_N);
+	gpio_free(PRT_STM32_GPIO_HWID_CP);
+	gpio_free(PRT_STM32_GPIO_HWID_Q7);
+}
+
 static int prt_stm32_probe(struct device *dev)
 {
 	const struct prt_stm32_machine_data *dcfg;
@@ -229,6 +236,7 @@ static int prt_stm32_probe(struct device *dev)
 	prt_stm32_read_serial(dev);
 	prt_stm32_init_shift_reg(dev);
 	prt_stm32_read_shift_reg(dev);
+	prt_stm32_put_gpios();
 
 	for (i = 0; i < ARRAY_SIZE(prt_stm32_boot_devs); i++) {
 		const struct prt_stm32_boot_dev *bd = &prt_stm32_boot_devs[i];
-- 
2.39.5



