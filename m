Delivery-date: Mon, 10 Jul 2023 08:38:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXm-005NaI-S2
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 08:38:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIkXk-0003Eu-Ch
	for lore@pengutronix.de; Mon, 10 Jul 2023 08:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CussYyIE6Tq9O6D1mrZHix72q5GcomYIr3cHb4kBlZU=; b=q8IKsrxcg9B4+iFCZo3CNdL2Ee
	SmfQaHrZWx1+SPv/5UwQn1fqjPWpkNtDye9lpMwRBAhG/MWlJ5xnW75+Pz7Wkql6hksWvOkNj5Agq
	uoFtyCJVlsIkCilEdb06DeawkwFKY8dngYcpxShb1uEL6Nh7FM+jf3jOfObf06IEABA27nyoVl1lm
	3k+mB8CBpuG7EUs66FoVEaksML3tyM0zdBmwezQwqSvCNApB5AyVP7PEbJgJH/vHy/dH3mG3KB4H5
	PZmw8EjdUzPtHMSvi9R7Tlfv9qKtS8Mo3FciBIsxc/e546U4QfEcCNHIkTndw2HlrmIwJcVhNL9RQ
	iGK6OWug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWL-00Aawq-1i;
	Mon, 10 Jul 2023 06:37:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIkWG-00Aatm-2t
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 06:37:14 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qIkW4-0002w5-3a
	for barebox@lists.infradead.org; Mon, 10 Jul 2023 08:37:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Jul 2023 08:36:50 +0200
Message-Id: <20230710063653.660040-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710063653.660040-1-m.felsch@pengutronix.de>
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_233712_936040_22F62439 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: [PATCH 4/7] net: phy: add phydev_{err,err_probe,info,warn,dbg} macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import Linux macros to make it easier to port drivers to barebox.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/linux/phy.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index d96c4e97ab..b0474e87df 100644
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



