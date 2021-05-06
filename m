Delivery-date: Thu, 06 May 2021 11:30:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLH-0001Vn-4B
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:47 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLF-0008UA-GP
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O5awCNXC8YXwr+aNiC3PesnWOG7KtDBAepciwtWYoxQ=; b=TrR98pFbAEyPRb1xsnTliRPYu
	gPm1y/wAN/zG6KxNOdkJstvwr53L0JSVKy+X/wKalvoH3NAfb/Eh3vilOv0aVkZLqJAqrUXHOinmz
	nYw5Yaby0kkJ0Xf+I2nNe9J3vvXSt6GvI01tC4jp4UMHIPAdI/GUcq2+CnvCQAXuSwAcHZlgWYt86
	EUP3ByAIVo825R6d1/ucIPe2qvSl559MoJyLPNRmFTGp/JKbIgXVxGgAzR0T+fyZo4j1WTfRVErIt
	adki6lN3KlRXXpodbEwDeGJtCN30wlEB7Y+a2LXuO5UXHMEo2HFDYRbpuUXYIfqsDFtWnC96K5S9u
	mg9SjfllA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKG-003nzI-NK; Thu, 06 May 2021 09:29:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJj-003npi-Ly
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=dFsZOAl5S6UZAYVtNwdwpeDh5mioOUsNwhRhgUSllDI=; b=riCB4jJQ7/vXdlQyPeOASRQY/l
 rEZTiJakG/JIfoeI/5mptFu5PZef/8TusNPz9hSXFQfewXUonSsimvm0pzKzRl7eO3OBJ+m1Cjr+J
 tPH0AWQzV3Xh6Q0V8qUEXLBfdFFopvf16QAYXRnkBoYxHS/Q9FPv6ZoNGQmdCD/MQiaQg0TscQJ7r
 mvTq+jD+lsIwFFp2j25P3Ripx33DW6y8XD3EVbWhLK0rK56HlkUdXJanJkkSB50qOmmwCXzmN39Jv
 aloQO9XXB4dcMR3foCe3JwkHUAd6NZqMwAQLlKguCwAOUD8qJ8Ndfib44AkHHn1OksHc5Vn/Xl0L0
 LrXpG4oA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFd-Rs
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pL-LJ; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lv-Jx; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:29:01 +0200
Message-Id: <20210506092901.25461-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_984226_82D63495 
X-CRM114-Status: GOOD (  12.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 36c4d9a78b..1e515a093a 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -14,6 +14,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <of.h>
+#include <deep-probe.h>
 #include <i2c/i2c.h>
 #include <mach/bbu.h>
 #include <platform_data/eth-fec.h>
@@ -110,6 +111,10 @@ static int phycore_da9062_setup_buck_mode(void)
 	if (!pmic_np)
 		return -ENODEV;
 
+	ret = of_device_ensure_probed(pmic_np);
+	if (ret)
+		return ret;
+
 	adapter = of_find_i2c_adapter_by_node(pmic_np->parent);
 	if (!adapter)
 		return -ENODEV;
@@ -161,6 +166,10 @@ static int physom_imx6_probe(struct device_d *dev)
 	unsigned flags = brd->flags;
 
 	if (flags & IS_PHYFLEX) {
+		ret = of_devices_ensure_probed_by_property("gpio-controller");
+		if (ret)
+			return ret;
+
 		phyflex_err006282_workaround();
 
 		pfla02_module_revision = get_module_rev();
@@ -358,3 +367,5 @@ static struct driver_d physom_imx6_driver = {
 };
 
 postcore_platform_driver(physom_imx6_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

