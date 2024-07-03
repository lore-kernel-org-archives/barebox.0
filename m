Delivery-date: Wed, 03 Jul 2024 19:20:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f9-001F1v-0I
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:20:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f8-0007Qk-2p
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WFQbE7v4IwxmZ7qGNIcZ60QUIR/vpTSeFmqyF+K9acE=; b=BcG5DM02lF3+ZBj5juSQAKObdg
	r5F/WYscgzONHhuPd6nAZrYBqLqTc9uxamrrzFC7zvL469/vc5p2NJ24prugdbv1RhXzZnEwBeqt1
	i2breXIgjnBvXmXrrVnu7SPTOEtARLuJ4A8E6mMgHKQVy+BUomWeqnj0L7p3wwaWzrScVK8Q2T3cj
	/gka9NeyoikSYg8AzA6SB7t+uopLiqXTzh9DtdAyab/Gdok+sj9FzwmtkBTDqeaOstDlZV4vZBlTl
	zF+brJU/kT4yifLWmjHKrFsQMz/wfvTrUTKBtmvAIqkFbW0y/lb85MJtc9W108mVtE+IEGEiiAL4E
	yh2i7zQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3ea-0000000Aya8-4293;
	Wed, 03 Jul 2024 17:20:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyXB-3Pv2
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:22 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-Qy; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-hab-v2-6-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_251963_B16CCB87 
X-CRM114-Status: UNSURE (   7.39  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/9] i.MX: HABv4: add more i.MX8M fuse defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add more common i.MX8M fuse defines so they can be reused by board code.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/ocotp-fusemap.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index e6fa96b40ba9..1aece9195ff9 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -55,8 +55,18 @@
 #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
 /* i.MX8M moved the security related fuses */
 #define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_SJC_RESP_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_USB_ID_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
+#define MX8M_OCOTP_KTE			(OCOTP_WORD(0x470) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_SJC_DISABLE		(OCOTP_WORD(0x470) | OCOTP_BIT(21) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_JTAG_SMODE		(OCOTP_WORD(0x470) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
 #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_JTAG_HEO		(OCOTP_WORD(0x470) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
 #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_FORCE_COLD_BOOT	(OCOTP_WORD(0x470) | OCOTP_BIT(29) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_TZASC_EN		(OCOTP_WORD(0x480) | OCOTP_BIT(11) | OCOTP_WIDTH(1))
+#define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */

-- 
2.39.2



