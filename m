Delivery-date: Thu, 01 Feb 2024 00:00:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ5-00EZic-0O
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 00:00:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ5-0007ef-Ki
	for lore@pengutronix.de; Thu, 01 Feb 2024 00:00:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tq3V+o79MPm3ypf/6+PBpWLaPU7CO4wueyS450LP9+k=; b=t5N5Dsq0pinYauB1sJ3oAXfDGY
	Mb35Pfvg1hR0mi5eKn1mQnbC9WjLFjMA4d/9whRPcM3tkF0PQj9i28J0+RQoLThMLjMVblKYOA5En
	2lHjwrXa86eDOw2ut9sxA+mULF1f8kkYvW5jUE8tE6tUTXNdPCsZ32ZMImFPUF/urC/WTxhq00cyA
	hBkDUpl0Jv7A4nyMrulT5HooARxBOJ3DmraHFb9J7iKNacpD0Xptyn5eoQPBWHRLapAtv5f4Jhz8F
	p2XKNKxEOfFAuv5kkWCXfSfv8mLHQpE1W6v+fGXr9RFZHaKO2sVF57C/6SwWrYR1lPiwy/Cod98Yh
	j41cUYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYb-00000005lRy-48Bz;
	Wed, 31 Jan 2024 22:59:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYU-00000005lOt-041B
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 22:59:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-0007LD-RT; Wed, 31 Jan 2024 23:59:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-003j6q-Es; Wed, 31 Jan 2024 23:59:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-007KFg-1D;
	Wed, 31 Jan 2024 23:59:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jan 2024 23:59:38 +0100
Message-Id: <20240131225938.1746123-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
References: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_145942_132626_185AA63B 
X-CRM114-Status: GOOD (  16.01  )
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
Subject: [PATCH master 4/4] fpga: socfpga-fpga2sdram-bridge: always populate HANDOFF_FPGA2SDR register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver will take care to write the handoff register, when the bridge
is first enabled or disabled. In the case that the driver merely probes
the device and no explicit action is taken, the handoff value is never
written. This is evident with a look at the console:

barebox output:

  altera-fpga2sdram-bridge ffc25080.fpga-bridge@ffc25080.of:
    driver initialized with handoff 00003fff
                                        ^^^^
Linux output:

  altera_fpga2sdram_bridge ffc25080.fpga-bridge:
    driver initialized with handoff 00000000
                                        ^^^^

The result of this that the Linux driver must be disabled, otherwise, it
will just reset the same bridges that barebox had previously moved out
of reset. Let's get rid of this discrepancy by moving the write to the
handoff value into the probe function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/fpga/socfpga-fpga2sdram-bridge.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/fpga/socfpga-fpga2sdram-bridge.c b/drivers/fpga/socfpga-fpga2sdram-bridge.c
index 961a083ae512..7f72bd8a6536 100644
--- a/drivers/fpga/socfpga-fpga2sdram-bridge.c
+++ b/drivers/fpga/socfpga-fpga2sdram-bridge.c
@@ -68,9 +68,6 @@ static inline int _alt_fpga2sdram_enable_set(struct alt_fpga2sdram_data *priv,
 	else
 		val = 0;
 
-	/* The kernel driver expects this value in this register :-( */
-	writel(priv->mask, SOCFPGA_SYSMGR_ADDR + SYSMGR_ISWGRP_HANDOFF3);
-
 	dev_dbg(priv->dev, "setting fpgaportrst to 0x%08x\n", val);
 
 	return writel(val, SOCFPGA_SDRCTL_ADDR + ALT_SDR_CTL_FPGAPORTRST_OFST);
@@ -110,6 +107,9 @@ static int alt_fpga_bridge_probe(struct device *dev)
 	if (!priv->mask) {
 		/* enable all ports if we don't know better */
 		priv->mask = ALT_SDR_CTL_FPGAPORTRST_PORTRSTN_MSK;
+		/* The kernel driver expects this value in this register :-( */
+		writel(priv->mask, SOCFPGA_SYSMGR_ADDR + SYSMGR_ISWGRP_HANDOFF3);
+
 	}
 
 	priv->dev = dev;
-- 
2.39.2



