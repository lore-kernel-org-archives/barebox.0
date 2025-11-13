Delivery-date: Thu, 13 Nov 2025 10:35:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjX-000UsE-1v
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjW-0007QX-Qx
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1zn/vKsq8WsmsoduuEoBPWLpmCydaD6ssOK2OjPBbHU=; b=qSTkFHKcePEiU0UmIgOW1+O3co
	lRdN0OJAimIjfKkN29jrhsCOEGdmxbsZ8gH/qQkAknfh0IhHvWY+aNsUqgEpHhwhG/+CEfSmvjaIY
	gHv98cQrACdXIszHkGb86raenaiOIZB4wCNtq9ENobCDP/jd5J8ofRkT0zUk0+cLY4niPULBBTND1
	kXQ2jaOmK6LhffCtdG8Jf5PDIYjdpWiGhJIg6bZX+7Ulo/FQm+CrgcdHI1YaeCCZGVDuJ1JBSZDUk
	sCCKEIrVyi6CoP+r22ZBDHGoRIuHvkPU4ZyB9cwHCheHlILyzEqvTGMzE4MuhwlYB97Wuj5/fZreV
	raqZhEQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj8-0000000ACa2-3zsX;
	Thu, 13 Nov 2025 09:34:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj6-0000000ACZ2-0u3r
	for barebox@bombadil.infradead.org;
	Thu, 13 Nov 2025 09:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=1zn/vKsq8WsmsoduuEoBPWLpmCydaD6ssOK2OjPBbHU=; b=lPLPfxrFVgi9aQdk+YWYcdMim/
	OA/eYbg0N940DLgQyUKVdW1QjqOzpDRGvypbfdXwcQOS8AZAB+QK5gLZmNxvsUprt1hVHPCzuma+B
	s0eyZpZBNf0uzx5Veov1lT7g6UPUa7FhQoDaldB4OQmWio9+Nua16ksIpJqW9H3RLO2sRjWMldZT3
	7busJCK7ZC19X0JGRDF9yRD08UE4hoJRi36pjUNQoqEcZMRB/opR+qc0C439BwCNijJU83wUEiuG0
	h5ViuC4ZIy6El/uD10+5L7uTnWwmsQ6ItwxH/6zKOvOEhYDvxh/fzVP0m6gaXDm5vkSTtRoEEHJ+8
	pr/OGMfg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSrL-0000000HQ9b-1s0c
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 08:39:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070J-E9; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-000EXw-00;
	Thu, 13 Nov 2025 10:34:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1L0O;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-8-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=944;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hiAV0iaFqPF98jfrmli11Oz6ufaQAeUs5AZqZS72CIY=;
 b=q/mRHeqzVJPfgK2pa3hIOa4nHTzjQGx/x5T56cEV1nup9UdvYwRHCqdxia342wXOlYWfrDrso
 zUE7L7NsIVHDxd7cXZDy0Tcar2e6+uoJzfPEFRKMHfOQv050vnVm2Vi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_083917_087642_B18BE5BA 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] soc: imx8m: register SoC UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just like the ocotp driver the i.MX8M SoC driver also reads the SoC UID.
Unlike the ocotp driver the i.MX8M SoC driver is always enabled, so if
we don't have the ocotp driver enabled then register the SoC UID from
the SoC driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/soc-imx8m.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index b17f088ad04f3afbf06b823caaaefc1b19f664ea..74abea7ffc904840c91ad50c5ac7b91e7e38520a 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -284,6 +284,10 @@ static int __init imx8_soc_init(void)
 		goto free_rev;
 	}
 
+	if (!IS_ENABLED(CONFIG_IMX_OCOTP))
+		barebox_set_soc_uid(soc_dev_attr->serial_number, soc_uid,
+				    sizeof(soc_uid));
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		ret = PTR_ERR(soc_dev);

-- 
2.47.3



