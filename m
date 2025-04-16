Delivery-date: Wed, 16 Apr 2025 18:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u55Ys-001WQB-1a
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 18:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u55Yr-0006KG-UO
	for lore@pengutronix.de; Wed, 16 Apr 2025 18:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SKsy87/UsfhU3OA6N8hy/dfoBXR5t2phvwxIbDZ8d04=; b=aQOOPOPZ0/qR96SG/axb0ij8JX
	xQhoKKkmITvLkbDgUgS/aVpL5vsLOw2Xw37xNbSRBwOmtHuA6imi/jKyP/BRlvCUy0e4VvWrxx09O
	RSOXWOzabg+9lQIXFfHAVBaHvvAKsCdqTDWJtReDxSxCvEdXQqfMJptQOZp1dLaI7R2SG3VnJqIdM
	Y+qTERzH5ppECUjss5/nJ9fbU0As2yk7EN3t3f7eCzZQDCzOVYLVD8N+ewcoCXzJyiH48ALKkRjTf
	6Ua8NK0gmpH97gezccrc90rTXlVyJaZ4L2zRsVhvyQNHYsMSptw8Qdfe5jZlo5ghclAraBmZxZJYD
	1qL5yu+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u55YE-0000000AEbb-1ipa;
	Wed, 16 Apr 2025 16:23:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u54id-0000000A5JP-0EKL
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 15:30:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lsc@pengutronix.de>)
	id 1u54ia-0002nV-HA; Wed, 16 Apr 2025 17:30:28 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1u54ia-000blV-14;
	Wed, 16 Apr 2025 17:30:28 +0200
Received: from lsc by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1u54ia-007xuI-0r;
	Wed, 16 Apr 2025 17:30:28 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <lsc@pengutronix.de>
Date: Wed, 16 Apr 2025 17:30:08 +0200
Message-Id: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_083031_116167_A3B10993 
X-CRM114-Status: UNSURE (   9.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: at91: add sama5d3 compatible after DT regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Lars Schmidt <lsc@pengutronix.de>

Commit f9abec74133a6 ("ARM: dts: microchip: Remove additional compatible
string from PIO3 pinctrl nodes") removed compatible string
atmel,at91sam9x5-pinctrl, which was used by pinctrl driver for sama3d3 in
barebox. Compatible string atmel,sama5d3-pinctrl was left in list, so
that needs to be included for identification.

The removal caused an issue during boot process. The system did still boot,
but no bootloader console was shown. Leaving the user without
possibility to interact with the bootloader.

The DT ABI breakage has been reported upstream:

https://lore.kernel.org/all/fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de/

Signed-off-by: Lars Schmidt <lsc@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index a3372a5035..ddc725187b 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -370,6 +370,9 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
 
 static struct of_device_id at91_pinctrl_dt_ids[] = {
 	{
+		.compatible = "atmel,sama5d3-pinctrl",
+		.data = &at91sam9x5_ops,
+	}, {
 		.compatible = "atmel,at91rm9200-pinctrl",
 		.data = &at91rm9200_ops,
 	}, {
-- 
2.39.5



