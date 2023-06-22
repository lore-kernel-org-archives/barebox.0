Delivery-date: Thu, 22 Jun 2023 20:20:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCOv0-00HGPF-3R
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 20:20:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCOux-0007aT-OM
	for lore@pengutronix.de; Thu, 22 Jun 2023 20:20:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hFj0/8iQ3mPOuod3X8zbYQxGLp5s7KDawZzV/RBTw3U=; b=LHkiRPfHIgkf6DhLJZbxbiby2c
	GEBklJdAXRFJYe/wxNnN1K9g0MIXwYyxOq8tzH6gGkU017ALB0IRDo/3dW8tYYed1E29lPTYVaAha
	tRWQovRHdfY/QCI4LwIzbPQ82uWchADXzy+l2MzrhISxQ3guvnBKveQ28Rfx//EmA21yiZPsRKwzp
	lK1dmuPJvbiVXIv0uOT/8Fa0D+S8P4sSaCdmBBlb+t/3KmadGNBH++h9InCpTwRXaTU7dUnFfld0e
	4jQPeDLoEQeol3slQbb0G7VGeuE3UL4ZhJmXtCHDSqqKgYxirMVg/AooEIbNcqpoRM3SOUmWyc/yp
	mce5lTbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCOtp-001Qk9-1f;
	Thu, 22 Jun 2023 18:19:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCOtm-001Qjh-2s
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 18:19:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qCOtk-0007EV-9p
	for barebox@lists.infradead.org; Thu, 22 Jun 2023 20:19:12 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 22 Jun 2023 20:19:07 +0200
Message-Id: <20230622181907.3167989-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_111914_930342_83B6AE22 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8M: iomux-mx8mm: add pad ctrl defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add pad ctrl defines like already done for the 8mp.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/iomux-mx8mm.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/mach/imx/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
index f2ebde3d3b..24e7e4afe3 100644
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
2.39.2



