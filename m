Delivery-date: Fri, 11 Aug 2023 13:54:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUQix-00GXWb-PV
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 13:54:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUQiv-00017k-Qj
	for lore@pengutronix.de; Fri, 11 Aug 2023 13:54:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=utK2sxznslswlddQ0yeRatyfD2Ac7UzWPqI+U1uP8UI=; b=SI0d48vd9XjagLIQ8xDlEUaX1y
	S7UfobNYRAmrVdUGZfPd5PLWps9MJC1egXbW6WepBvDqcNLjUN+sYfTpYW27AJeMi/jT8mlL6rGXr
	EFWr6F5reMEkKtZ9my1kLoIA6CcnQXJUlXM6EQXCs9ZRJa7DfSr6DsavdfWOWSw5fxcLCcgO+jzXb
	ZTY5bjPgHkQWJ39QtCwnN33fxYM2Pa9OC+WGrmC9D0nAGmEN9m7QjMN+alCzIAymu6Bs5/TmniBuf
	1gBog7P6agWfdsCGmGTyUphjHT2F7Dz5NSzdLByAHibEuo3BpEU6ezY4ppz/TMqCtBlv1V9ItTRrd
	9pH+/04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQhw-00AVYc-22;
	Fri, 11 Aug 2023 11:53:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUQht-00AVXt-1Z
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 11:53:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhr-0000qL-KY; Fri, 11 Aug 2023 13:53:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhr-002hcr-0G; Fri, 11 Aug 2023 13:53:27 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qUQhq-00B6QH-2n;
	Fri, 11 Aug 2023 13:53:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 11 Aug 2023 13:53:24 +0200
Message-Id: <20230811115325.2646286-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_045329_545296_1EF6F424 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/2] net: ksz9477: add support for ksz9893 switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for Microchip KSZ9893 switch. No additional changes seems to
be needed.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ksz9477.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 61142aa97b..a6a8144479 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -476,6 +476,7 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
 	{ .compatible = "microchip,ksz8563" },
 	{ .compatible = "microchip,ksz9477" },
 	{ .compatible = "microchip,ksz9563" },
+	{ .compatible = "microchip,ksz9893" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, microchip_switch_dt_ids);
-- 
2.39.2



