Delivery-date: Thu, 23 Apr 2026 08:58:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1T-00FOws-1f
	for lore@lore.pengutronix.de;
	Thu, 23 Apr 2026 08:58:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFo1S-00042y-VY
	for lore@pengutronix.de; Thu, 23 Apr 2026 08:58:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eMEo6NJ5/+nlLmTJVPyvQoFgiCOan1Ncg/k1iCMw+uY=; b=GgSlggYVXZvYH7
	24q99jK8bw9ZkC9n1fZtpHZEY4fndCGREp1Jpeer5e4d6JxTQFvL6lcywl0MNUpsz4EiLtUTtv+v5
	PDeUYe9v3ao9UzrP+FGqH385QRtPwfAeH3I7Q15CSVGYPanCFBkLVWsU4nycMZ0Uu+40zdIdRl0YN
	n4lF/uG1TNi8Dn3dngxyU/87SfkiSLYChlV4pdt4SqURjPC5dJa8xhEy/IzGJMxbgKAwb58nB4OtG
	EQ4ZiuS+2M8f70sO+wFyDdZX0vOkx70DIs2gXMX80G9hL4khp0m5bWAXYeILdQ3Naf0HZ2n8llh4y
	GKS7/7smoKfcK7wwhp3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0w-0000000B84Z-3NwQ;
	Thu, 23 Apr 2026 06:58:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFo0s-0000000B83M-1Tnr
	for barebox@lists.infradead.org;
	Thu, 23 Apr 2026 06:58:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wFo0q-0003qQ-8O; Thu, 23 Apr 2026 08:58:12 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 23 Apr 2026 08:58:10 +0200
Message-Id: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAALD6WkC/x3MQQqAIBAAwK/Enlsoy4K+Eh1W3WyhLBQqiP6ed
 JzLPJA4CicYigcin5JkDxl1WYBdKHhGcdmgKtVVrWow7XY+PCF5WfnW6K6NLBoJToLHXnfG1ER
 GaQ35OCLPcv//OL3vBzhwoNZvAAAA
X-Change-ID: 20260423-socfpga-agilex5-dwmac-binding-756bb1aab255
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_235816_114577_AD627C60 
X-CRM114-Status: UNSURE (   7.46  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: socfpga: xgmac: switch to upstream device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The compatible used by the xgmac driver in barebox doesn't use the
existing binding for the xgmac, but uses a custom compatible string.
Therefore, the Ethernet nodes that are already defined by the imported
Linux device tree are not used.

Update the driver to use the same compatible as Linux and remove the now
obsolete downstream device tree nodes.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      net: xgmac: switch to upstream compatible
      ARM: socfpga: remove obsolete gmac device tree nodes

 arch/arm/dts/socfpga_agilex5.dtsi           | 51 -----------------------------
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts |  1 -
 drivers/net/designware_xgmac_socfpga.c      |  6 ++--
 3 files changed, 3 insertions(+), 55 deletions(-)
---
base-commit: 7b492daea9347fd55bf29560c2ec494ca1040f95
change-id: 20260423-socfpga-agilex5-dwmac-binding-756bb1aab255

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



