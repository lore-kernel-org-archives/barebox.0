Delivery-date: Wed, 22 Nov 2023 18:14:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qoB-004cTl-22
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:14:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qoB-0004Aq-LM
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:14:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQgVNMpHc74fDkQnQOqgJbN0wTuxVl8uHuV1zaRO4Fw=; b=EjbhdKrOKaLMhKsECugzajhAQL
	rQBSnbLeQKXM9y2RmWlACFyjBbl+GUoKGFVu3zolLKho9yZlXg5HtLLm9pn5Y4Nf9o5WAIh3ek6XG
	DUDL5LYhAKMCPK6IoHk2lliW6eN73nynjHI1s/v4KVNQHD6ZGCaoN2vJ8SGSWreFLnW+wJZQkQomJ
	/ApKWyTbJjwaOEE159Aokb9n4IRd5gLxkD3jb4QpUXWhiLFy3w6TT5JKiisdyCwYX28LbqgqXlmgz
	fxFwEj65+57cFRZvR21c/alIdzqvRIhrT2XPEbJo3ZuMVLjWmx0yIA1lkhdTTpJ++LFU0JMGqeUlq
	9yU2qI1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qn0-002csq-32;
	Wed, 22 Nov 2023 17:13:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qmx-002cri-2b
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmw-0003rm-Es; Wed, 22 Nov 2023 18:13:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmw-00ArRC-2Z; Wed, 22 Nov 2023 18:13:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qmv-0083cJ-38;
	Wed, 22 Nov 2023 18:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:13:20 +0100
Message-Id: <20231122171320.1714868-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122171320.1714868-1-a.fatoum@pengutronix.de>
References: <20231122171320.1714868-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_091323_851448_7D0CDD3A 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] serial: stm32: support probing with missing clock provider
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
v1 -> v2:
  - no change
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



