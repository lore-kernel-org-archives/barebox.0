Delivery-date: Tue, 10 Jan 2023 14:39:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFErA-007nRY-3s
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 14:39:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFEr8-0003qw-8O
	for lore@pengutronix.de; Tue, 10 Jan 2023 14:39:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aF8w5OaO6WYMCLs4tOj5csXQKRlqewyj02Iq5Ci2m4g=; b=Xt9cYK71dbKvm/ZGMIaeqhBEcP
	WwUwzHLKJV0Ki+ajJYzS1wNt5YV9v2q7cVnzEr60WRnHJBwTfaefF9mb2eFzvhXgSxoEn3Cn9kSK1
	iNB6EzXGgg4IlxWI77tlnOkBKzHnO6RHKkhtn19s7778jbPtVFVuACLO9/Jfz2Zr8hAdlyB1jPsRS
	qMUEPeDHPUsg3a4c4BQrEaRnvVidtmz8o4pU8fw3/mtModNQsp2y+a7gw5gKmDh1IfalHFqXE1gma
	lzhQzLWalRGyILFm0WjzOGcfApqPGhTNH/6/Kk4s2NixKhevvdX5kP9kpSAJZrDWrwH8ZNPnm8BJb
	SwCFJM4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEpk-0075HI-2H; Tue, 10 Jan 2023 13:38:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEpd-0075Ei-CZ
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 13:38:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpX-0003eH-Pl; Tue, 10 Jan 2023 14:38:19 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpX-0055Zj-66; Tue, 10 Jan 2023 14:38:19 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpW-00GWuZ-Gs; Tue, 10 Jan 2023 14:38:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 14:38:17 +0100
Message-Id: <20230110133817.3939707-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110133817.3939707-1-a.fatoum@pengutronix.de>
References: <20230110133817.3939707-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_053825_465313_B3B41F35 
X-CRM114-Status: GOOD (  10.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] net: dsa: ksz9477: match microchip,ksz8563 compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tested on an i.MX8MN board communicating with the switch
over I2C. The IC says KSZ9563RNXI, but is detected as KSZ9893:

  ksz9477-i2c ksz85630: Found KSZ9893
  ksz9477-i2c ksz85630: chip id: 0x00989360

This is the same in Linux, but switch works though. I2C support
will follow separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz9477.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 0629efbd7d02..1da57736f2ea 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -469,6 +469,7 @@ static int microchip_switch_probe(struct device *dev)
 }
 
 static const struct of_device_id microchip_switch_dt_ids[] = {
+	{ .compatible = "microchip,ksz8563" },
 	{ .compatible = "microchip,ksz9477" },
 	{ .compatible = "microchip,ksz9563" },
 	{ }
-- 
2.30.2



