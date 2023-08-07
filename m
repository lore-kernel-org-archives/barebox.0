Delivery-date: Mon, 07 Aug 2023 08:42:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStx1-00AhmX-D1
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 08:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStwz-0003b4-Lg
	for lore@pengutronix.de; Mon, 07 Aug 2023 08:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UKxNGQ1bJChyJiY+NjsUrJbZkKCtMPugBSi0QI8CoLw=; b=BxL+JltpRiJ1B/XDeo0dxrMU36
	p4U3BHONxsxt4nEf03TcXlGjUD9C0ocYk1PcFm36LM8u3dYpCPuDARMN6guzQHzFYxANX98w+ecV8
	RrxzDIahSJqr3FvkDmZtWTweHQXqLt012WPf++seBMInjEi4ZFQasY9whtYPEg2v2reqLc1d55twS
	yDKKWUxgF+fGPn4xYtKapwE2nv8eG6dlYhzY2SGfzPuOMkvWa45k5drJsolEro/tOITGVAhB+91le
	nXmgdteOjj6clwWKqNA/CcmGjUly02FSd3A66r4TNG/zcRitGWL2m6VZtdJGQsmQ9W/4+9Qj1sfDn
	XvEZ1LYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qStvu-00GHi0-1b;
	Mon, 07 Aug 2023 06:41:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qStvr-00GHhg-1W
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 06:41:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qStvq-0003Ue-1Z; Mon, 07 Aug 2023 08:41:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qStvp-001gVX-DV; Mon, 07 Aug 2023 08:41:33 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qStvo-00FxUU-P2; Mon, 07 Aug 2023 08:41:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Aug 2023 08:41:32 +0200
Message-Id: <20230807064132.3803562-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230806_234135_505946_74C12438 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] ARM: socfpga_defconfig: Enable more boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable the remaining SoCFPGA boards for better compile coverage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/socfpga_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 8c9c1f7642..0050dd2e4f 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,5 +1,8 @@
 CONFIG_ARCH_SOCFPGA=y
+CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
+CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1=y
+CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
-- 
2.39.2



