Delivery-date: Wed, 03 May 2023 12:07:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9Ot-00332w-Og
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9Or-0004se-Ef
	for lore@pengutronix.de; Wed, 03 May 2023 12:07:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GEHaKhMLuLVqemY2H/p7I5ZLhzL05iP7nwRrB1vK5sc=; b=G31XpbblGSnfRg8aBkBR5Rzr2X
	Jz6GlaHNZy/OfcKc8DL11uwPWdDEw8Iznkrdzt4jDmyP2jOWGD8dZrL1BbqakhQFPJRrJKnoa3wKd
	BLtJgW3tQ61Cf1RRGg8pe+g3wxyIhk5SFdpY25ZWPqrVPRpNVQW481MRr6YEhYrtAmUKnCTCkVI2v
	vSsyJ7Ey8+mUwm5NcDhJQYAPJx/LvFK0mVNW+voEa8cfSIL+aFLnr5jBF3ruL5i0r0P20n4vSNwud
	fY2BpmIEhsLRg3E0VDcuwhjPLxCqYWvJnncXzR9XE1+pxmpj9qnql/DZrsn0iZllmifSGT4tDT0ZV
	1COkLwTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9NN-0045mI-37;
	Wed, 03 May 2023 10:06:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9NK-0045lY-2P
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:06:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pu9NE-0004mV-KT; Wed, 03 May 2023 12:06:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pu9ND-000nVu-7v; Wed, 03 May 2023 12:06:11 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pu9NC-006OC7-Dv; Wed, 03 May 2023 12:06:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 May 2023 12:06:09 +0200
Message-Id: <20230503100609.1522959-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_030618_781049_705049F7 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: dsa: realtek: fix Kconfig selects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike Linux, barebox has no CONFIG_FIXED_PHY or CONFIG_IRQ_DOMAIN.
The former is implied by CONFIG_PHYLIB and the latter is unneeded, so
revise the Kconfig option accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/realtek-dsa/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/realtek-dsa/Kconfig b/drivers/net/realtek-dsa/Kconfig
index dd8599565f6e..0708f1ef96f4 100644
--- a/drivers/net/realtek-dsa/Kconfig
+++ b/drivers/net/realtek-dsa/Kconfig
@@ -2,8 +2,7 @@
 menuconfig DRIVER_NET_DSA_REALTEK
 	tristate "Realtek Ethernet switch family support"
 	depends on DSA
-	select FIXED_PHY
-	select IRQ_DOMAIN
+	select PHYLIB
 	select REALTEK_PHY
 	select REGMAP
 	help
-- 
2.39.2



