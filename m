Delivery-date: Wed, 04 Feb 2026 16:17:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnedF-008nPB-0S
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 16:17:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnedE-0004B1-6P
	for lore@pengutronix.de; Wed, 04 Feb 2026 16:17:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RB3gtGGFWZ0qN0uBApVFWtoSb3iwnPwVGcWEbjk2AFk=; b=wa4RTC6oXODIvTy0UUWf5cvamN
	kAvqM86gblTvp4TFxSMdYbhj3BZj1C1iznr1BxdWw8ldU3ZtWn7NCKD9EUuBNfHKWHNk7cy2YiWoU
	0XlQYPvy98Uap7thlHaOPoy6wexPYMIjANf1ump0aJvUUnGm1DKW56DQNHCr5eaoaZak94jR/bwsu
	Kz+COA5GEoFPvITrnxgKnWZeXvTHGqICXuV09p01K8WtzOr6RfOk6TLYeaF7ybSmg4DaMSDhC8vD5
	JrTn26GNwJwOAQRsHJbSbNk0DB8LDX0Dp/MgprCGoj7jxiCARFfKY1HR3WeWvz0zKSS5+/G3Yd14H
	vOiHxwQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnech-00000008dvd-3hnE;
	Wed, 04 Feb 2026 15:16:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnecf-00000008dum-0F9H
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 15:16:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnecb-00040f-Lq
	for barebox@lists.infradead.org; Wed, 04 Feb 2026 16:16:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  4 Feb 2026 16:10:52 +0100
Message-ID: <20260204151645.1426068-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_071653_097007_49973F38 
X-CRM114-Status: UNSURE (   7.16  )
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
Subject: [PATCH v2 1/2] ARM: i.MX8MM: add MX8MM_PAD_CTL defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add defines like already done for i.MX8MP and i.MX8MQ.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
- no changes

 include/mach/imx/iomux-mx8mm.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
index ee0240f53832..693eb67b9602 100644
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



