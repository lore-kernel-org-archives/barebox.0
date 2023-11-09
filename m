Delivery-date: Thu, 09 Nov 2023 12:48:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13WO-0048md-00
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:48:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13WO-00032G-0r
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:48:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q6t79dvzYlfp7+fr5yrAMmFlrAvQeCuB3+2oL82fj7U=; b=RhW3hxoBfwW7NWvWeuoZ1NiyXX
	9Q98T4+ZR/4tSvH/T5pAuYuO0+5Yk17mSF5GciLKrvOp61PIc+NBvzEHceUq+fNaBHB9NFU6DQ4mj
	Me9mg1IqzXuUtGpT/4rLwHcKMox8YpKiSrjcgNufM0gGFotIysD5o6WH21ziWW7tsmoYapGQqMRwo
	k2qQregFp+4zFDpAge0f9/PdmvltSOUBBYKt0WZHFUxr9vdyUq4oPkiCLTl2mPnmKxk3NSFyH5wJe
	wlM3IMk+/CnMGMPZlleEhNC8DiV9h4ZvxOYKqz3gO6eg981FntHYpAQyMfL++LCOpHSfkUJhdMwRa
	OnPTuQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13VF-00692u-04;
	Thu, 09 Nov 2023 11:47:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13VB-00690V-2y
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:47:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13VA-0002ky-Qb; Thu, 09 Nov 2023 12:47:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13VA-007lcq-EE; Thu, 09 Nov 2023 12:47:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13VA-005gNP-18;
	Thu, 09 Nov 2023 12:47:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:47:07 +0100
Message-Id: <20231109114707.1354502-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
References: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_034713_960832_5D306950 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH 2/2] serial: stm32: support probing with missing clock provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The STM32MP135F-DK support in barebox has bitrotted, because of changes
to the upstream device tree: The root of the clock tree is now provided
by OP-TEE over SCMI for which no support exists in barebox, so drivers
requesting clocks will defer indefinitely, including the console device.

A series adding OP-TEE SCMI support will follow, but for now, let's
ensure that console registration isn't deferred in such a case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_stm32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 4a67408f44f6..3e18a2c152af 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -165,7 +165,7 @@ static int stm32_serial_probe(struct device *dev)
 	stm32->stm32f4 = info->stm32f4;
 	stm32->uart_enable_bit = info->uart_enable_bit;
 
-	stm32->clk = clk_get(dev, NULL);
+	stm32->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(stm32->clk)) {
 		ret = PTR_ERR(stm32->clk);
 		dev_err(dev, "Failed to get UART clock %d\n", ret);
@@ -183,7 +183,7 @@ static int stm32_serial_probe(struct device *dev)
 	cdev->putc   = stm32_serial_putc;
 	cdev->getc   = stm32_serial_getc;
 	cdev->flush  = stm32_serial_flush;
-	cdev->setbrg = stm32_serial_setbaudrate;
+	cdev->setbrg = stm32->clk ? stm32_serial_setbaudrate : NULL;
 	cdev->linux_console_name = "ttySTM";
 
 	if (dev->of_node) {
-- 
2.39.2



