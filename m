Delivery-date: Mon, 31 May 2021 17:02:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnjR3-0005FQ-KV
	for lore@lore.pengutronix.de; Mon, 31 May 2021 17:02:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnjR2-0001XB-Ln
	for lore@pengutronix.de; Mon, 31 May 2021 17:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wlF4kp5SwUbr0ogzGUGZ3Fb+YDyRnXHgp6igsnBuG5g=; b=16/EXn7dSKaPCU
	TG8bcP2ZvYTxDeIaKenO7N/8RP6+Qo+FjSLGWzyQrZbvVj95y8/2sxjqmHC4eIO0TmYA300E6T/zI
	RCLrc1mk1HdeDn8Ki1ZekwvC1hjTQE6+ZQbLY34eFdSrhVxWp4YomjWN/jl6QYNpEFBThDgFsZmlR
	ZRtqR8q9edW458CuNU2h+GtacuOFPQwmeEiW5Kn7wlXLT07rXn31fv28dcgaMsuEq8icH0/u7ZC7U
	b2Khr9hU3buF+/+C5p9igAsiPLTRk3I5qD2P3OT4QV8FN6cpcQVthIhHfJJGNxLfqg519KTXhWG0m
	4bzP4DW5cA6R1NZDAKhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnjPa-00CfBd-6M; Mon, 31 May 2021 15:01:03 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnjPT-00CfAE-CB
 for barebox@lists.infradead.org; Mon, 31 May 2021 15:00:56 +0000
Received: by mail-pg1-x536.google.com with SMTP id 27so8531819pgy.3
 for <barebox@lists.infradead.org>; Mon, 31 May 2021 08:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oQF/+Axa0RBpdYYQ6uekGdBA/DOvtLnr0b6FLk2yZ4A=;
 b=RFhzNAu1xDjvtZMcYbQ2FSF1oluYhCkRk/qIcMLyMLQ+/rzieyZZUp8y9ErHSMxtNu
 XCwhP3qzHyj2LmAuu2BfhE0mfBS5KtnaxNFXTypye6zQZ7UBa+31MrxlgVZEOu5zj0Gw
 dVgDozyvYQlOixkmmn1Bo1aNj4EX17fzPjAvQVddX8yI/wCt3ucJnjCPPI+mVb+0Bl/u
 d8SFJ3/AWpRwTyhuBzyXCpqKFgk7g8ZxR7+O8D0OKAwqrZAi8Xpz96jUk0LiEltz+ubM
 RPJdn/VOzCzaO3XTRaczjhg5NFAbpHD/HW6j6BZbx8IaYOaKLxkwDRQKXhfcwyidl/UI
 BnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oQF/+Axa0RBpdYYQ6uekGdBA/DOvtLnr0b6FLk2yZ4A=;
 b=EMaLvCNGVxw+GCSxphBcqTrLN4Lj4mfj5H7ccHxoqgX8RDSxH05yKSPkiQipIgviD4
 dkTWYiZUr6ZvzFfgJ++EDbfMVU3inZWRTLJIl+zUBjegag6+D+INi3ZBczlQbxVSWGPA
 3p5vYnMG4h4WRfFi5t/+VDTqfJhMX8sP0pU/PaTL3FQn+PreOu/LnFwrnZwb6zspoBNv
 XlEX78yDSSZxX2mnw5/xaibFq/5KYLAnEFsepY2QD535SbaTtp8aDLOWALkL0iHlrAkO
 wETCMMHd2P+xzYEL62nM30EbbBIveBPj0yFqh7bj88yIbLBr6pxtFfdR6fUHDci1cmSE
 lmug==
X-Gm-Message-State: AOAM530IuO2TbuwKMA7KClVSZpKqqK+GSPTwijMYg1Hbci9Ptk/XJXKA
 S30J+MllD9PHIgBuJvkv9k8ZoLYqZa7Fyw==
X-Google-Smtp-Source: ABdhPJz4F5i/kY2KHTi4VZNkFY7u1m6VdZpkxRJRNQ79AHkoo/DRdxaao9x1kqHh4sKZOkdhkbCr2Q==
X-Received: by 2002:a63:1c52:: with SMTP id c18mr23431684pgm.258.1622473253761; 
 Mon, 31 May 2021 08:00:53 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id cl2sm3007419pjb.31.2021.05.31.08.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 08:00:53 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Mon, 31 May 2021 08:00:45 -0700
Message-Id: <20210531150045.1214037-1-tpiepho@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_080055_441693_4A8CF27E 
X-CRM114-Status: GOOD (  14.09  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: phy: micrel: Add led-mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add code that will use the micrel,led-mode property to configure the
led.

It seems nearly every Micrel PHY equipped board has a custom phy fixup
to do this.  Maybe some of them won't be needed anymore.

Signed-off-by: Trent Piepho <tpiepho@gmail.com>
---
 drivers/net/phy/micrel.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 4e4637024..ea193c84a 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -28,13 +28,16 @@
 #define KSZPHY_OMSO_MII_OVERRIDE		BIT(0)
 
 /* general PHY control reg in vendor specific block. */
-#define	MII_KSZPHY_CTRL			0x1F
+#define	MII_KSZPHY_CTRL				0x1F
 /* bitmap of PHY register to set interrupt mode */
 #define KSZPHY_CTRL_INT_ACTIVE_HIGH		BIT(9)
 #define KSZ9021_CTRL_INT_ACTIVE_HIGH		BIT(14)
 #define KS8737_CTRL_INT_ACTIVE_HIGH		BIT(14)
 #define KSZ8051_RMII_50MHZ_CLK			BIT(7)
 
+/* PHY Control 1 */
+#define MII_KSZPHY_CTRL_1			0x1e
+
 /* Write/read to/from extended registers */
 #define MII_KSZPHY_EXTREG                       0x0b
 #define KSZPHY_EXTREG_WRITE                     0x8000
@@ -63,18 +66,35 @@ static int kszphy_extended_read(struct phy_device *phydev,
 	return phy_read(phydev, MII_KSZPHY_EXTREG_READ);
 }
 
+/* Handle LED mode, shift = position of first led mode bit, usually 4 or 14 */
+static int kszphy_led_mode(struct phy_device *phydev, int reg, int shift)
+{
+	const struct device_d *dev = &phydev->dev;
+	const struct device_node *of_node = dev->device_node ? : dev->parent->device_node;
+	u32 val;
+
+	if (!of_property_read_u32(of_node, "micrel,led-mode", &val)) {
+		if (val > 0x03) {
+			dev_err(dev, "led-mode 0x%02x out of range\n", val);
+			return -1;
+		}
+		return phy_modify(phydev, reg, 0x03 << shift, val << shift);
+	}
+	return 0;
+}
+
 static int kszphy_config_init(struct phy_device *phydev)
 {
+	kszphy_led_mode(phydev, MII_KSZPHY_CTRL_1, 14);
+
 	return 0;
 }
 
 static int ksz8021_config_init(struct phy_device *phydev)
 {
-	u16 val;
+	phy_set_bits(phydev, MII_KSZPHY_OMSO, KSZPHY_OMSO_B_CAST_OFF);
 
-	val = phy_read(phydev, MII_KSZPHY_OMSO);
-	val |= KSZPHY_OMSO_B_CAST_OFF;
-	phy_write(phydev, MII_KSZPHY_OMSO, val);
+	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
 
 	return 0;
 }
@@ -89,6 +109,8 @@ static int ks8051_config_init(struct phy_device *phydev)
 		phy_write(phydev, MII_KSZPHY_CTRL, regval);
 	}
 
+	kszphy_led_mode(phydev, MII_KSZPHY_CTRL, 4);
+
 	return 0;
 }
 
@@ -143,6 +165,8 @@ static int ksz9021_config_init(struct phy_device *phydev)
 		ksz9021_load_values_from_of(phydev, of_node,
 				    MII_KSZPHY_TX_DATA_PAD_SKEW,
 				    tx_pad_skew_names);
+
+		kszphy_led_mode(phydev, 0x11, 6);
 	}
 
 	return 0;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

