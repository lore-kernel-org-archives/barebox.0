Delivery-date: Tue, 06 Jun 2023 10:19:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RuM-00CoOs-F3
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:19:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6RuJ-0002jd-Fs
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:19:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K9nTc9IiiRpRfcRCdL54URN5gJ/37f5QrOLtvC+G85Q=; b=jzICFwsRPdTgsJ5tf0kMGFU16q
	sNcZmsq8Ju0QXtmHWxZBwDu/00wDyoM1gPscD6qpsqhSwhaD4hQxuWtV23Dhr4XTqzk7sN8mmB3h0
	DofCtXE3Ne/CDIcmMQLwHyk0FJV6Sp6KbTATRIozYtByrArClQ+X7ZM3GqSpNiFrzXvJe7l61JgYg
	LNihyDQ+B7nA2iVzRCMkq1aRNnDa+InwBBcY3euUXSVdmNLOrA65+Zz26xKuMwhqr33uBXoOZQCuk
	hbESdjues0mIKZm0CzLiCb9w+PCMmcl/Bb3g2XLANaMFGNHgNQjQr10O5C5r2fjIPbMnEx/yN6vZh
	zw1YUDpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6RtE-000lK0-2x;
	Tue, 06 Jun 2023 08:18:04 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6RtB-000lIM-1E
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:18:02 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51458e3af68so8463806a12.2
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 01:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686039478; x=1688631478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K9nTc9IiiRpRfcRCdL54URN5gJ/37f5QrOLtvC+G85Q=;
        b=j0iKcpf5awkdCuhm6jCAK9ygL0zHPBppInhW9ZOVELkjNjFjXeX7iAMsVeaXyPKbIM
         p0/oEKpNRc3X2S2aMscHLeGFHe/JlXzVb3LNa8LrJJ9zfRf0kv5CK1NeS4sHvPp2hT5a
         pR0ZMQ7BspCbVVxkO4lDHsY7AXxO/43d3cQwNnZn2wmDvhNn6nOC8oJZGmcPgxI2dIWz
         RPg1LJGHDoTXTWgSybqOrreXXVVowrEUcC0ozy3OHPEbzlsd/rbh9Y0iM+8gMsE+pEHi
         moIDl0zUPeN0umu7bHbJPd+miI27b1TlenIAPwzbTZeLZziWkNUPAw3HLJZmLEaZJ3Ti
         NZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686039478; x=1688631478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9nTc9IiiRpRfcRCdL54URN5gJ/37f5QrOLtvC+G85Q=;
        b=jG6EFj/APFs4iSVgdwvBCphCJDH8gSCfWdzixB4bvdZs7Uh9gQgMxAR1Diwe6mUopY
         EjGLIgPxKZE6PDLAgZF0YFogxtsCPZWBDSxCMkJMNSm+fszmiD9ZsW8Vz/DEnPw1oRAM
         oQY+PXUJ65c9Vz478J+Y3NnhFOt+vmShepxhaMhn1MXiQilBt3FiTP3l0Uio6ReXc2xn
         W7tNqf2U4koDZ6UrJiudzmQ3RYTIQpIS9akFM/VX+e6TY+hYHE+KJGpYMkOPA9QZewsw
         Lmq7nmvGb5KiOCR+YBREIpvd//NBHgUMtBWy6OOvmj/9BYz6CEBQy4oTQq8ltCXHGibW
         sSqg==
X-Gm-Message-State: AC+VfDx8ZkT+QwS8f6JMu4+kMwWXvy/3g3Z25PQAbECu1cR/Ptvx7D2h
	FItJ775QeldamQwafXl076dXCAET7qY=
X-Google-Smtp-Source: ACHHUZ4WuH+Kqp9x3Cta/WKVPGwkNeNBcK22sG/fPVuIsR7endNTaFvLU2Nh8+54yLaNS3WDzVTLqg==
X-Received: by 2002:a17:907:7ba5:b0:975:bbd:d205 with SMTP id ne37-20020a1709077ba500b009750bbdd205mr1884916ejc.9.1686039477928;
        Tue, 06 Jun 2023 01:17:57 -0700 (PDT)
Received: from development2.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id d4-20020a17090694c400b0096f67b55b0csm5238014ejy.115.2023.06.06.01.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 01:17:57 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Tue,  6 Jun 2023 10:17:18 +0200
Message-Id: <20230606081718.2246807-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_011801_421486_34BB0923 
X-CRM114-Status: GOOD (  17.85  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

The driver corresponds to the kernel 6.1.27.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
	v1 -> v2: add the related kernel version

 drivers/net/phy/Kconfig     |   5 ++
 drivers/net/phy/Makefile    |   1 +
 drivers/net/phy/motorcomm.c | 128 ++++++++++++++++++++++++++++++++++++
 3 files changed, 134 insertions(+)
 create mode 100644 drivers/net/phy/motorcomm.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index cd20e1de27..e95e2a3228 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -50,6 +50,11 @@ config MICREL_PHY
 	help
 	  Supports the KSZ9021, VSC8201, KS8001 PHYs.
 
+config MOTORCOMM_PHY
+	bool "Driver for Motorcomm PHYs"
+	help
+	  Currently supports the YT8511 PHY.
+
 config NATIONAL_PHY
 	bool "Driver for National Semiconductor PHYs"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 83f46f11d3..26e4ad884d 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_DAVICOM_PHY)	+= davicom.o
 obj-$(CONFIG_LXT_PHY)		+= lxt.o
 obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
+obj-$(CONFIG_MOTORCOMM_PHY)	+= motorcomm.o
 obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_REALTEK_PHY)	+= realtek.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
new file mode 100644
index 0000000000..4bcd84342c
--- /dev/null
+++ b/drivers/net/phy/motorcomm.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * drivers/net/phy/motorcomm.c
+ *
+ * Driver for Motorcomm PHYs
+ *
+ * Author: Peter Geis <pgwipeout@gmail.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/phy.h>
+#include <linux/mdio.h>
+
+#define PHY_ID_YT8511		0x0000010a
+
+#define YT8511_PAGE_SELECT	0x1e
+#define YT8511_PAGE		0x1f
+#define YT8511_EXT_CLK_GATE	0x0c
+#define YT8511_EXT_DELAY_DRIVE	0x0d
+#define YT8511_EXT_SLEEP_CTRL	0x27
+
+/* 2b00 25m from pll
+ * 2b01 25m from xtl *default*
+ * 2b10 62.m from pll
+ * 2b11 125m from pll
+ */
+#define YT8511_CLK_125M		(BIT(2) | BIT(1))
+#define YT8511_PLLON_SLP	BIT(14)
+
+/* RX Delay enabled = 1.8ns 1000T, 8ns 10/100T */
+#define YT8511_DELAY_RX		BIT(0)
+
+/* TX Gig-E Delay is bits 7:4, default 0x5
+ * TX Fast-E Delay is bits 15:12, default 0xf
+ * Delay = 150ps * N - 250ps
+ * On = 2000ps, off = 50ps
+ */
+#define YT8511_DELAY_GE_TX_EN	(0xf << 4)
+#define YT8511_DELAY_GE_TX_DIS	(0x2 << 4)
+#define YT8511_DELAY_FE_TX_EN	(0xf << 12)
+#define YT8511_DELAY_FE_TX_DIS	(0x2 << 12)
+
+static int yt8511_read_page(struct phy_device *phydev)
+{
+	return phy_read(phydev, YT8511_PAGE_SELECT);
+};
+
+static int yt8511_write_page(struct phy_device *phydev, int page)
+{
+	return phy_write(phydev, YT8511_PAGE_SELECT, page);
+};
+
+static int yt8511_config_init(struct phy_device *phydev)
+{
+	int oldpage, ret = 0;
+	unsigned int ge, fe;
+
+	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
+	if (oldpage < 0)
+		goto err_restore_page;
+
+	/* set rgmii delay mode */
+	switch (phydev->interface) {
+	case PHY_INTERFACE_MODE_RGMII:
+		ge = YT8511_DELAY_GE_TX_DIS;
+		fe = YT8511_DELAY_FE_TX_DIS;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		ge = YT8511_DELAY_RX | YT8511_DELAY_GE_TX_DIS;
+		fe = YT8511_DELAY_FE_TX_DIS;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		ge = YT8511_DELAY_GE_TX_EN;
+		fe = YT8511_DELAY_FE_TX_EN;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		ge = YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN;
+		fe = YT8511_DELAY_FE_TX_EN;
+		break;
+	default: /* do not support other modes */
+		ret = -EOPNOTSUPP;
+		goto err_restore_page;
+	}
+
+	ret = phy_modify(phydev, YT8511_PAGE, (YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN), ge);
+	if (ret < 0)
+		goto err_restore_page;
+
+	/* set clock mode to 125mhz */
+	ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
+	if (ret < 0)
+		goto err_restore_page;
+
+	/* fast ethernet delay is in a separate page */
+	ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_DELAY_DRIVE);
+	if (ret < 0)
+		goto err_restore_page;
+
+	ret = phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe);
+	if (ret < 0)
+		goto err_restore_page;
+
+	/* leave pll enabled in sleep */
+	ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
+	if (ret < 0)
+		goto err_restore_page;
+
+	ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
+	if (ret < 0)
+		goto err_restore_page;
+
+err_restore_page:
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
+static struct phy_driver motorcomm_phy_drvs[] = {
+	{
+		.phy_id		= PHY_ID_YT8511,
+		.drv.name	= "YT8511 Gigabit Ethernet",
+		.config_init	= yt8511_config_init,
+		.features	= PHY_GBIT_FEATURES,
+		.read_page	= yt8511_read_page,
+		.write_page	= yt8511_write_page,
+	},
+};
+
+device_phy_drivers(motorcomm_phy_drvs);
-- 
2.34.1



