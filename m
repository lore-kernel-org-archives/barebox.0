Delivery-date: Fri, 19 Mar 2021 14:12:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv4-0007QD-Ki
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv0-0006uZ-Ey
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dwPP2FIf7QYdAyQvFuHojfguVFabfSGuYhAXv08yBW4=; b=WrKOVPoJEoQjbND1UK3kqpxY2
	SfF9l9kIIUPcNrcJTED39+in3E0tmNXUNsmKoli+EhWs6wqiK9ZIrxCF/dTnB47lMW0X81M/2KdY0
	tEeQxolIM20MaOG3cKS34EU48nlJjbGzWAZuNZ77VskwSK/xPZk5NbRmgGnRF5nJiD/9w0MuJ7v4r
	m7WwbpZLJ5CI4X1OvBa51SE+zu7meuNqNj7VelrzPIjTBrHjumI7U8AXxNudnhZUtCVNIXMZqpeSu
	p7OTgNWmGHTt3952Ovvks1Z/1FiUr4/dCTAye7AF9V5HGf1pPdCl980Qif7wM71a5vBFxWty9/EjP
	eAPOopRpg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEte-007SFO-Jt; Fri, 19 Mar 2021 13:10:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAj-AV
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:24 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0006KH-BC; Fri, 19 Mar 2021 14:10:17 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-0000yy-Cn; Fri, 19 Mar 2021 14:10:16 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxY5-C7; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:12 +0100
Message-Id: <20210319131016.2612134-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_488671_DB6C7200 
X-CRM114-Status: GOOD (  10.34  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] net: phy: dp83867: remove useless call to
 genphy_config_aneg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

genphy_config_aneg will be called by the generic code anyway. No need to
call it from the driver.

As at it, do not explicitly set the config_aneg and read_status
pointers, because they will be automatically set anyway.

Remove the "hello world" message by the driver, too.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index deee7e3ae7ca..8a14927071b9 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -278,13 +278,9 @@ static int dp83867_config_init(struct phy_device *phydev)
 		}
 	}
 
-	genphy_config_aneg(phydev);
-
 	if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
 		dp83867_config_port_mirroring(phydev);
 
-	dev_info(&phydev->dev, "DP83867\n");
-
 	return 0;
 }
 
@@ -294,11 +290,7 @@ static struct phy_driver dp83867_driver[] = {
 		.phy_id_mask = 0xfffffff0,
 		.drv.name = "TI DP83867",
 		.features = PHY_GBIT_FEATURES,
-
 		.config_init = dp83867_config_init,
-
-		.config_aneg = genphy_config_aneg,
-		.read_status = genphy_read_status,
 	},
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

