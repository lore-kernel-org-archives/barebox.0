Delivery-date: Wed, 13 Apr 2022 10:24:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIS-000W2m-Df
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIO-0002Ji-S1
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRAulKMH4LPohpFdzB5aVJlkms01gz1eC9oB5jJl1Js=; b=M/MAFx6zHMupJ+
	Dctw3vBN2gY5z6oPKFPXW+C2swZJ3rZODN/NAud7ZYiklQlsrYNIbntBabHbTnl/4HEZ2MlQTt4fX
	wMmEkp/HW+NtupBYvV5/GA0EkOa0yH1AnupqnTRuIDfGmtVTTlDSLhwnBATVK5Ie6g+SJgwLxjUR/
	Up8nyNDml1qq7+1By0RUTohdqMCaSwWBxvglaNrIzs1BRLJcbqzh5bfeSCGbXt8YxOKUax0OlCyIW
	Q7qgtsw/x/JDps5hIez1vMXkAT6m8uM5+vwB5/p9qIklG9Keqv/KptwYFDeO0cng1vv7TIzbkQYZm
	O7rA/C1LNk637kQKvfCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYH8-0000pj-03; Wed, 13 Apr 2022 08:22:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGT-0000Tm-5i
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-0001b4-U7; Wed, 13 Apr 2022 10:22:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGQ-002kDN-Li; Wed, 13 Apr 2022 10:22:09 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nkm-DY; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:21:54 +0200
Message-Id: <20220413082205.429509-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012213_272552_60893399 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 03/14] net: phy: export of_phy_register_fixed_link()
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will need this function by DSA framework

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 4 ++--
 include/linux/phy.h   | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index e8e8dad5bd..4c09839f3f 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -302,8 +302,8 @@ void phy_unregister_device(struct phy_device *phydev)
 	phydev->registered = 0;
 }
 
-static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
-						struct eth_device *edev)
+struct phy_device *of_phy_register_fixed_link(struct device_node *np,
+		                              struct eth_device *edev)
 {
 	struct phy_device *phydev;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index d9fb514277..2711e7dad3 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -280,6 +280,8 @@ int phy_drivers_register(struct phy_driver *new_driver, int n);
 struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
+struct phy_device *of_phy_register_fixed_link(struct device_node *np,
+		                              struct eth_device *edev);
 
 #define phy_register_drivers_macro(level, drvs)				\
         static int __init drvs##_register(void)				\
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

