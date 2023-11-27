Delivery-date: Mon, 27 Nov 2023 08:12:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnQ-00AgRv-1s
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 08:12:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VnQ-0004gM-LF
	for lore@pengutronix.de; Mon, 27 Nov 2023 08:12:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dNQdNouIwMdWVO0nzZ7pfWLUTfwkL73jaCS6hXfHs+I=; b=EGeStJFo/ILgxzc6pq7V8ROdju
	DUyOgiAIZsfT7vVpBNAwaF2lhUOyTO3h3wyLk51r28f6B6kDIgl0qN9ub09FLx39jX2Hshh1XrthI
	d3QpbX6gIrWilu5HI0AxUPU9wwbCS6fDb5zG4MibkqaTzZJZCdPgCdD6g2TFNR4lS97TLMLw0Mz6T
	TvGpzywvX10G/iz/mBTu2Jq3UN4THct46EYDH+g065ZHApE4W+2EQ64FRNYc13dRfnJzktgjFeA4W
	enGsv4hjWPe3tsNfEVoBulaYgAjMImsKQbkB3SmaKaxliJ3x3KiURiLz4QE/BYz7JDDb4Mj2sO7dL
	/hrArIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VmA-001ggO-1H;
	Mon, 27 Nov 2023 07:11:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Vm4-001ge7-18
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:11:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm3-0004PT-25; Mon, 27 Nov 2023 08:11:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7Vm2-00BtCa-LY; Mon, 27 Nov 2023 08:11:18 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-009GPh-0e;
	Mon, 27 Nov 2023 07:49:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:45 +0100
Message-Id: <20231127064947.2207726-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_231120_422969_73A089A1 
X-CRM114-Status: GOOD (  10.66  )
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
Subject: [PATCH 11/13] aiodev: stm32: add STM32MP13x support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux driver for the STM32 ADC has only minor differences to the
STM32MP15 driver. Add these changes to barebox, even if untested.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/stm32-adc.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index af644786554d..a1998da62c63 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -362,9 +362,23 @@ static const struct stm32_adc_cfg stm32mp1_adc_cfg = {
 	.has_vregready = true,
 };
 
+/* STM32MP13 programmable sampling time (ADC clock cycles, rounded down) */
+static const unsigned int stm32mp13_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
+	        2, 6, 12, 24, 47, 92, 247, 640,
+};
+
+static const struct stm32_adc_cfg stm32mp13_adc_cfg = {
+	.num_bits = 16,
+	.max_channels = 19,
+	.smp_bits = stm32h7_smp_bits,
+	.smp_cycles = stm32mp13_adc_smp_cycles,
+	.has_vregready = false,
+};
+
 static const struct of_device_id stm32_adc_match[] = {
 	{ .compatible = "st,stm32h7-adc", .data = &stm32h7_adc_cfg },
 	{ .compatible = "st,stm32mp1-adc", .data = &stm32mp1_adc_cfg },
+	{ .compatible = "st,stm32mp13-adc", .data = &stm32mp13_adc_cfg },
 	{}
 };
 MODULE_DEVICE_TABLE(of, stm32_adc_match);
-- 
2.39.2



