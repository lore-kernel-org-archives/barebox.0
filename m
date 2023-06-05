Delivery-date: Mon, 05 Jun 2023 08:30:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63k4-00BRwv-At
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63k1-0002kh-Lu
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7YrYt7BTqBxEqSCTyFl0TTZ6VuOzv3sJl9D4FgxFHek=; b=0q8ql0tntCcjk8oSjhRXlOc+64
	kqjqcbg/263hnIDpR9QsOysDipuS2J2erYN3eaWUme+Qm37rUq0GfB2gFregApskPjXBaf3yoviBu
	m84t2CxoZbLosIkS7L7geIdpAjAQlRfJujOn+mGoYH8fDmSBusYYH2ErVzbdZYVgFfwgMzGHH8l/Y
	cLWwbLD7ogdgLutarFarWUfBFGQrKPLAU4tPQcJV78dcfhM0JbT6jotPS4OenjgwEnjp7waNMvSn4
	ae0r5/bY8lmGxlXBjgrUGt1M7oRlb9DUT2CTjEBh5/mIdMPCZDX7lutVl0D4e6AV7OGrPcgu0jgg0
	PIKbS6xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ix-00ELkj-39;
	Mon, 05 Jun 2023 06:29:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ip-00ELf4-33
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-00024i-PE; Mon, 05 Jun 2023 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-005Cpk-53; Mon, 05 Jun 2023 08:29:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001BzP-Pg; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:36 +0200
Message-Id: <20230605062939.242063-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605062939.242063-1-a.fatoum@pengutronix.de>
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232943_985218_324DFBB4 
X-CRM114-Status: GOOD (  10.93  )
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
Subject: [PATCH master 4/7] net: gianfar: fix out of bounds read of local variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MAC address will be written to two 32-bit registers. Because
MAC_ADDR_LEN == 6, this meant two bytes out-of-bounds where written to
the hardware register. Fix this by having them be in-bound and always
initialized to zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/gianfar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 4b374b4a50de..10a95324920b 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -234,7 +234,7 @@ static int gfar_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
 {
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
-	char tmpbuf[MAC_ADDR_LEN];
+	char tmpbuf[8] = {};
 	uint tempval;
 	int ix;
 
-- 
2.39.2



