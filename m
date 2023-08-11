Delivery-date: Fri, 11 Aug 2023 12:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNW-00GSaC-Kv
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNU-0007Tz-V3
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1qYea+GgHv36Ai1gQbi9mK8X/bJQ2vQTX+FCg3l+1Fw=; b=BC54NmbGUjLEFeAtBexuDeVdQH
	bLjUNyY63y59tf48R80wFe5gbb1eJo4SOmSMp6S9BNHqU5XsEvF17mIA6FDOcxWt1OLH8M9ICmgqb
	6ZSxMJ8WQQxoP4hLpMK4wejh1ZxNOfNlNvfceJt/CXNYDGS0oh9IaBheTM/xpW6gsbYtzAB/Sku1N
	5WnG8UVN7V3fsyL952RuaAdJyj4crx5h7kgHTXJ1nebXSlvE+wjT14PDIAvJ2gKhEaPdiwDK5qSnf
	3rjAAXbfZuCz4U/qogrOKp8ZVLtwUhKwCAijI/YQ2ccE6JSzspzB9YN8Q1KdZjE3l5RkAKzccv7Qr
	0xvsFn7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMM-00AD7y-20;
	Fri, 11 Aug 2023 10:27:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0S-17
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:07 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPMD-00073K-RK
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:51 +0200
Message-Id: <20230811102657.271931-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_423788_59043737 
X-CRM114-Status: UNSURE (   8.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/11] net: phy: add phydev_{err,err_probe,info,warn,dbg} macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import Linux macros to make it easier to port drivers to barebox.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2:
- add afa's rb

 include/linux/phy.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index fee3868d38f9..8b52c16bb228 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -417,6 +417,21 @@ static inline bool phy_acquired(struct phy_device *phydev)
 	return phydev && phydev->bus && slice_acquired(&phydev->bus->slice);
 }
 
+#define phydev_err(_phydev, format, args...)	\
+	dev_err(&_phydev->dev, format, ##args)
+
+#define phydev_err_probe(_phydev, err, format, args...)	\
+	dev_err_probe(&_phydev->dev, err, format, ##args)
+
+#define phydev_info(_phydev, format, args...)	\
+	dev_info(&_phydev->dev, format, ##args)
+
+#define phydev_warn(_phydev, format, args...)	\
+	dev_warn(&_phydev->dev, format, ##args)
+
+#define phydev_dbg(_phydev, format, args...)	\
+	dev_dbg(&_phydev->dev, format, ##args)
+
 #ifdef CONFIG_PHYLIB
 int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
 		int (*run)(struct phy_device *));
-- 
2.39.2



