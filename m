Delivery-date: Fri, 25 Jun 2021 09:47:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgYP-0007tD-NN
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:47:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgYN-0005q1-5k
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:47:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5awCNXC8YXwr+aNiC3PesnWOG7KtDBAepciwtWYoxQ=; b=N2cr4RnqY1s3HH
	qEuyCzsF/nHbALOUjfDzojELmuoDXvRSLG9b/7wk+Tr9LaskNgxpd8iTSaFAY0ZkE4EWCGHkOeyvC
	m09+x8a0ow7KwpRlB4immXPaayEwuX/7FVxbtTe2UtX23HZklMZDW+KBqUEpcAE1Rw7V8saq6ZB3y
	uZUq5iPZGq0W4x1hsb1yrozVox6/L/Lxz0GoiOJjEtw0fdpzBWHtLMedXKCco2am2AXv2NU8EXCiT
	1d63KfJnsoleJHqgdtcWZ6whOw6AH8maSFhZEcOAkFuQRIh4nHw88bVS5Edz8dXznRIeU5IZoydh/
	WnhQg8LiSpL9bpEEY3Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgWr-00068K-Tu; Fri, 25 Jun 2021 07:45:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1m-4W
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qn-Ok; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dl-HS; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:39 +0200
Message-Id: <20210625072540.32717-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_472123_94F70B3E 
X-CRM114-Status: GOOD (  12.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/19] ARM: i.MX Phytec physom: Add deep-probe support
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

