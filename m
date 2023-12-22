Delivery-date: Fri, 22 Dec 2023 03:09:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyS-009O0S-0H
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:09:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyR-00077S-HG
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:09:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rsh2likLF7cn4m9sediYZbnGXOtH5l3GoK/PDYEm2vE=; b=FErT/H8jSGp74odrAL9wiKI9b9
	pTmgQzOIEpbcrr+kUqToIsMWpmtiMQ9WQoT+fwfg1Yk7XT7UbSC24puJS3BKQt2beM115WFlF82fG
	3IgESbdMlfkSzpgSyWLYigxGDxLrBmbPZLXpmg44mLaMMxPbxExLv2VYXW3hxitxy0eLXIAt0FJdR
	RqsZnWpQdQknScM4K6WybE0VG3pJHyy7Eek2+D3HOW7oDyNm9UnPcbMDO73fnIVpYCS3DfeFZ9PBE
	xG/8Iv2dFch7sunCD/cDNNBrxqu4P5E2lKLxA68dvywnPjxoPwJ8/CPOqJ03jMMZCklkaq57urNzU
	QhVbz7Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUx0-004eYS-1x;
	Fri, 22 Dec 2023 02:07:46 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUww-004eX9-1d
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:07:44 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703210856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rsh2likLF7cn4m9sediYZbnGXOtH5l3GoK/PDYEm2vE=;
	b=uga7UDELWgknR5Gr08N65s72dhULFKfZN8eyBRUEb7MmN2kCkfYuu6cC7C9WPwA/WjIUB1
	vYnnPl52QtR5M4jM3DgJYv5phzR7l7SpSJ2hGB/6u5EUo8lZNFC6hPh+9kk70Fi72G4/xi
	+UnJxO+VARZwsx3USfkQaxc7jMkBA7Gv2jIcgKJTRTWfDcuw29mYZIjUGewTAyaLPRa0lf
	eq89zijYjIVl7aB1ZfRIA4jB+YGtR+S9aMHTwWhM2Ev9RQ1ziibgMc8GY9z7IvrkUnxrjV
	N9MeJ43+CgpdswZnaCYZNyUh5Ah007mfY67jajTNwleOFdXOvBOGp1J4wbe3sw==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:07:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231222-realtek-mdio-fix-v1-1-6bbf80d6a756@bang-olufsen.dk>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
In-Reply-To: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Luiz Angelo Daros de Luca <luizluca@gmail.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_180743_499287_F14A4B7F 
X-CRM114-Status: UNSURE (   9.61  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] net: fec_imx: reverse registration order of mdiobus
 and edev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alvin Šipraga <alsi@bang-olufsen.dk>

This is necessary so that on systems with MDIO-connected Etheret
switches, DSA can find the master edev during switch registration.
Otherwise the switch setup will fail.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 drivers/net/fec_imx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 203a2a8aa191..75a65962820b 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -895,18 +895,18 @@ static int fec_probe(struct device *dev)
 	fec->miibus.priv = fec;
 	fec->miibus.parent = dev;
 
-	ret = mdiobus_register(&fec->miibus);
+	ret = eth_register(edev);
 	if (ret)
 		goto free_receive_packets;
 
-	ret = eth_register(edev);
+	ret = mdiobus_register(&fec->miibus);
 	if (ret)
-		goto unregister_mdio;
+		goto unregister_eth;
 
 	return 0;
 
-unregister_mdio:
-	mdiobus_unregister(&fec->miibus);
+unregister_eth:
+	eth_unregister(edev);
 free_receive_packets:
 	fec_free_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 free_xbd:

-- 
2.43.0



