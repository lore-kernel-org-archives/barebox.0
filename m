Delivery-date: Thu, 05 Feb 2026 16:45:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YC-009AUU-0k
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 16:45:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1YB-0006aB-3Y
	for lore@pengutronix.de; Thu, 05 Feb 2026 16:45:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d3kkTXZaGg5rceWcNl/VgPTLZzhHUmxmIxxJIzZduwk=; b=QCkSworLIlPpYrzDs3+Lc48c5I
	pJW4xhjtrp/81T1rswzil2PdLUj6bkRQYlmYGIZoO23LVtvXQH+3nhy8gbwrv3wPhjJoMpglGBGXN
	cSGyMq7pZEdHPSptl9HFbZsF4IDh+PgRhpqWgVR/C3TxlhLH4pXVcvMqqIWtNwifEQfgNzQtj/M1d
	iVJ7MbeVu8QWsUzXeLF1LuG8//61DcmLRl272v6E14vHHCFb2yw4I5G0HFihDGHI20iizsf8eXO2O
	F3ntH8uJ52la8W7eHUPO3JzD5Dkr/Z6t10cGzbrltgJ8WOEcFVkyJGQy+kLbZHV3aOHp9PdlpdHYu
	gWP1W5RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xk-0000000A9na-1VDq;
	Thu, 05 Feb 2026 15:45:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Xf-0000000A9lu-1FCW
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 15:45:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vo1Xc-0006IY-6q; Thu, 05 Feb 2026 16:45:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 05 Feb 2026 16:45:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-vmaster-customers-leicageo-system1600-v1-1-a80b234ce1a1@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
In-Reply-To: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_074515_346086_B67C2B13 
X-CRM114-Status: UNSURE (   7.00  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: i.MX8MM: add MX8MM_PAD_CTL defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add defines like already done for i.MX8MP and i.MX8MQ.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/iomux-mx8mm.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
index ee0240f538322021ae37a7d154bfdd26d0628087..693eb67b9602c1c5ca4f8f9b448c2a7886ce1046 100644
--- a/include/mach/imx/iomux-mx8mm.h
+++ b/include/mach/imx/iomux-mx8mm.h
@@ -691,6 +691,16 @@ enum {
 	IMX8MM_PAD_UART4_TXD_GPIO5_IO29                               =  IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
 };
 
+#define MX8MM_PAD_CTL_DSE1	(0 << 1)
+#define MX8MM_PAD_CTL_DSE2	(2 << 1)
+#define MX8MM_PAD_CTL_DSE4	(1 << 1)
+#define MX8MM_PAD_CTL_DSE6	(3 << 1)
+#define MX8MM_PAD_CTL_FSEL	BIT(4)
+#define MX8MM_PAD_CTL_ODE	BIT(5)
+#define MX8MM_PAD_CTL_PUE	BIT(6)
+#define MX8MM_PAD_CTL_HYS	BIT(7)
+#define MX8MM_PAD_CTL_PE	BIT(8)
+
 static inline void imx8mm_setup_pad(iomux_v3_cfg_t pad)
 {
 	void __iomem *iomux = IOMEM(MX8MM_IOMUXC_BASE_ADDR);

-- 
2.47.3



