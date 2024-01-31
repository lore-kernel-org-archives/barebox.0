Delivery-date: Thu, 01 Feb 2024 00:00:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ3-00EZhg-0w
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 00:00:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ3-0007cy-PK
	for lore@pengutronix.de; Thu, 01 Feb 2024 00:00:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S8+MWyop70XoNnbh1zOAPwe0WKnT82SOlfdv+EXAb8c=; b=P3eVNOyy1GCjdocYaszKUXBdRX
	B0lyZd3tN97W4gnzG/0ZVovpmAeuSTe7b+MSguRU8TrdF25qv+SUAVUQkZW8Afy4uJC/ddFKTM9TK
	fCyNIsMaeFpJAORhGgwuqz8o8sqGJ+VC/wKb5TOgNO7Em9cqDjzJzEUICgYVaJ4TuK8/DUxhivAQN
	L97/eTQ9SAFn8N76X2hSuuxbi/nzf/W/YbNL3ajUgjI6DQJiR3isnyrg1otTWiyoua5+UWyajF1/B
	tZ8LL4aezOp4YYYPeLDju6MlRHLyGvW24oGAAuY08pdAZiwlJaVrmIt+nd3xX7rKmK/a4nORtVQ+F
	jX0MMkhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYX-00000005lQy-1RbZ;
	Wed, 31 Jan 2024 22:59:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYU-00000005lOs-04PA
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 22:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-0007LB-QE; Wed, 31 Jan 2024 23:59:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-003j6n-DZ; Wed, 31 Jan 2024 23:59:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-007KFg-14;
	Wed, 31 Jan 2024 23:59:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jan 2024 23:59:37 +0100
Message-Id: <20240131225938.1746123-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
References: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_145942_113377_25B86BE4 
X-CRM114-Status: GOOD (  14.95  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/4] fpga: socfpga-fpga2sdram-bridge: consult HANDOFF_FPGA2SDR register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previous commit started populating the handoff register, which the
Linux SoCFPA FPGA2SDRAM bridge driver would use to bring the correct
SDRAM ports on the bridge out of reset.

An alternative is skipping the Linux driver and doing setup in barebox.
So far, we just enabled all ports, but this can lead to discrepancy
between barebox and Linux if both drivers are enabled.

This is the case for the upstream Terasic DE10-Nano, which specifies a
mask of 0x1ff in its generated Quartus headers, which is narrower than
the maximum possible bitmask of 0x3fff.

Therefore, let's start using the handoff register in barebox as well.
At probe time, the register is currently only populated on Cyclone V SoCs,
so arria10 will just read a zero and fallback to the old behavior of writing
0x3fff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/fpga/socfpga-fpga2sdram-bridge.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
index 202dfaa82b5e..961a083ae512 100644
--- a/drivers/fpga/socfpga-fpga2sdram-bridge.c
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -106,8 +106,11 @@ static int alt_fpga_bridge_probe(struct device *dev)
 	if (!priv)
 		return -ENOMEM;
 
-	/* enable all ports for now */
-	priv->mask = ALT_SDR_CTL_FPGAPORTRST_PORTRSTN_MSK;
+	priv->mask = readl(SOCFPGA_SYSMGR_ADDR + SYSMGR_ISWGRP_HANDOFF3);
+	if (!priv->mask) {
+		/* enable all ports if we don't know better */
+		priv->mask = ALT_SDR_CTL_FPGAPORTRST_PORTRSTN_MSK;
+	}
 
 	priv->dev = dev;
 
-- 
2.39.2



