Delivery-date: Mon, 27 Nov 2023 07:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFy-00AdxB-1w
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFy-0007Ty-LZ
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhLShxTCT6YIfrzS5UlJr2ifiLyIQW0dDuWeCHUqlck=; b=Io+oejFcUhtrm5pY6ilQuMHyZz
	DNgTQaFT/T9wGh1WpDnUNxghGNZYKtDPRz7Qq0Ee02jgTHgoyUEpNKqcTU3Awhz6yIctXJ3d+gxBD
	TeXgU/f6JpvKThMT8gnShU2CkS0wt7ArULOLJXWfHDopNnYpcqxDjwT7T0PUchGPT1hzra1g5HAoZ
	IF6oLLURTYdWaECSeSicnWsuu75/7L04U+V8e1HgNyzmVBMlaEXBZOC1NXiDva1mSPeXrxsEKDwr9
	n/EUZTEC3S9H37kZOQKXlpa1WRes1PPq0Ys8z+ZnndGaOLrkYKFdChMPa4MAExf3tivfMVBnRomzF
	JdFbcRNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEL-001Z1C-31;
	Mon, 27 Nov 2023 06:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Ywq-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00070a-Gk; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00BsgW-49; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-09;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:53 +0100
Message-Id: <20231127063559.2205776-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223617_127354_94CADB84 
X-CRM114-Status: GOOD (  12.09  )
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
Subject: [PATCH 2/8] deep-probe: don't panic when device can't be created
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_device_ensure_probed() already returns error codes, e.g. when
of_device_create_on_demand attempts recreating a device with the same name.
In some error cases though that shouldn't happen in normal operation,
of_device_create_on_demand() returns NULL, which triggers a panic.

During development, returning NULL can happen more often, so aborting
barebox startup is unnecessarily harsh. Follow-up commit will add other
ways for of_device_create_on_demand to return NULL, so the panic is even
more out of place. Let's just return a silent error code instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 1f79a539f541..9e592d567cae 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -486,12 +486,11 @@ int of_device_ensure_probed(struct device_node *np)
 		return 0;
 
 	dev = of_device_create_on_demand(np);
+	if (!dev)
+		return -ENODEV;
 	if (IS_ERR(dev))
 		return PTR_ERR(dev);
 
-	if (!dev)
-		panic("deep-probe: device for '%pOF' couldn't be created\n", np);
-
 	/*
 	 * The deep-probe mechanism relies on the fact that all necessary
 	 * drivers are added before the device creation. Furthermore deep-probe
-- 
2.39.2



