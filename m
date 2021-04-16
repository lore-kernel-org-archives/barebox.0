Delivery-date: Fri, 16 Apr 2021 12:00:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHF-0001Ch-Ng
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 12:00:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHE-0007CI-Mr
	for lore@pengutronix.de; Fri, 16 Apr 2021 12:00:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1e3tbi3eNBJKhDAo3KQVDUyI57iL7ge2n2IErU7dcq4=; b=M1sc6wEsRqpGpk0+LEQ0KLOKq
	dRNO+wTAeRukeSbvJ9Uf6/4Bcne84SvAN1keX9djiCm3+r7l8ZlPFw0smPNTe5zZwCMwLx4+qehP8
	EN6UtRxW6fZuuKpI6noT+NM9f1dQ1ef9dKB83B4ZI45xh8q9nNQdw6Rr8EzpafZ8XJ/tUmG1GRkxw
	YOefdl/epsiedPk8Xv5LVGeeXG5aX8fB4b4VPmtrZ8FCAR21IXCpfGq4YnD0Lc8IyJ2GUYQxdFS0j
	gvEZFOcsJ/JRJ/KClY+PkHTUFWBz0Lmyf0kr52yCJ0N684TLuj0/gnlyh3mRJD20L1SN3BrAYSQIS
	Cho20QGDw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLFh-001eWV-CZ; Fri, 16 Apr 2021 09:59:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7Y-001cVn-5L
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=i5U74LrE2D1K2r0cquz6VQj41YTpV3AlDi2uESthO3k=; b=BuVTwAbp6SqGEzoz8o75h++Pt6
 lLnzj8AM13p0Z+gyWGI9CwwmSwFEse1q8zO9Ypdl5EDo2C7KqIzDSqX9xNuyIWMaJ9LcC61x0u9/U
 LWc3pQw3A7+rCCQTaaDmPf17uwf5pYibqRhlM6Aptnw/rmgwhdkArIwCQDOacJTfbJm6K2AbD3vwe
 fl0IAGYAMUiI+9nB3tjTjA0gtEHXrzYiUTqVC3IYDe8XHiQoIey4dbiyD9/bRyaA8Kwx4gknX+rRQ
 nkW7O63WtkMCwKN215cYRYeLvgBjcrluTBQeGGwRqjE4cS/qlgKf1SVn0j7H7ovr3arsDTpWD+xbP
 sorGsvXg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7V-009G0C-Jt
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051W-7m; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7D-0001E7-06; Fri, 16 Apr 2021 11:50:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:43 +0200
Message-Id: <20210416094943.3648-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025037_676210_81C252AA 
X-CRM114-Status: GOOD (  12.17  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 36c4d9a78b..a108726468 100644
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
@@ -358,3 +367,15 @@ static struct driver_d physom_imx6_driver = {
 };
 
 postcore_platform_driver(physom_imx6_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pfla02");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pfla02");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6s-pfla02");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcaaxl3");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-nand");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-emmc");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-nand");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6qp-pcm058-nand");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-emmc");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-nand");
+BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-emmc");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

