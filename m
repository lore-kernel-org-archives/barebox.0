Delivery-date: Thu, 07 Apr 2022 11:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOOC-00AILn-JD
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOO9-0003QL-5Y
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfGjVHHeawfSKBku/xMDhvLNIxfYIrk45Bwg8EClnPs=; b=3JV+PGIC7Syqt/
	e+l1wKNQ0LlObqkP/vZNCB7Jr3WTBTfetDQPTZ7xdW6g/PD4gLrxksxt6vl6dZ8sbdpte5uuuGU5H
	XT0q5w/WTRVptd/fylCqUx+w269w/av2NjBrz/4HFgr/VEJw/vPYVo41AAo2o4NwIidpIdICHgSAd
	+WvY1jdrQsnXLyVG8/NJ/Cw7rTijm/tXRFBzD2mxgXprQe5mh/qB2hKl1p3i/2QQaOHi+pGyCbBRe
	fW4U/1MoKPHHMHO45itwIZbnqiq3qPor5ky7w+aMIY5nKswIohwO7nIg1+1vzNkuPspQ3h+WRQSGC
	aj+NaaG61x3f6x1MgvlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOMr-00Ap6M-Q9; Thu, 07 Apr 2022 09:23:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncO2U-00Afb3-ND
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 09:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2T-0007AI-DP; Thu, 07 Apr 2022 11:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2U-001Zui-50; Thu, 07 Apr 2022 11:02:48 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2S-00407E-1V; Thu, 07 Apr 2022 11:02:48 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 11:02:46 +0200
Message-Id: <20220407090246.953707-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407090246.953707-1-o.rempel@pengutronix.de>
References: <20220407090246.953707-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_020250_856506_68399A3B 
X-CRM114-Status: GOOD (  12.08  )
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
Subject: [PATCH v1 2/2] net: designware: eqos: do not try to talk to not
 existing PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Currently barebox will try to talk to the phy over mdio, even if the
parent is a fixed-link. This will result in the following stacktrace:

  barebox@Linux Automation Test Automation Controller (TAC):/ dhcp
  unable to handle NULL pointer dereference at address 0x00000130
  pc : [<dfc01800>]    lr : [<dfc0f963>]
  sp : dffefd40  ip : 004c4b40  fp : d00286e0
  r10: cf25cc4e  r9 : 00000000  r8 : 05f5e100
  r7 : 00000130  r6 : 00000000  r5 : 00000000  r4 : 00000130
  r3 : 00000109  r2 : 00000000  r1 : 00000000  r0 : 00000130
  Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
  WARNING: [<dfc01800>] (slice_acquire+0xc/0x28) from [<dfc0f963>] (mdiobus_read+0x13/0x28)
  WARNING: [<dfc0f963>] (mdiobus_read+0x13/0x28) from [<dfc10685>] (eqos_start+0x85/0x32c)
  WARNING: [<dfc10685>] (eqos_start+0x85/0x32c) from [<dfc3cdf1>] (eth_open+0xd/0x24)
  WARNING: [<dfc3cdf1>] (eth_open+0xd/0x24) from [<dfc3e391>] (dhcp+0xb/0x3a)
  WARNING: [<dfc3e391>] (dhcp+0xb/0x3a) from [<dfc30fab>] (do_dhcp+0xfb/0x114)
  WARNING: [<dfc30fab>] (do_dhcp+0xfb/0x114) from [<dfc0490f>] (execute_command+0x23/0x4c)
  WARNING: [<dfc0490f>] (execute_command+0x23/0x4c) from [<dfc0a127>] (run_list_real+0x5bf/0x638)
  WARNING: [<dfc0a127>] (run_list_real+0x5bf/0x638) from [<dfc09a2b>] (parse_stream_outer+0xc7/0x154)
  WARNING: [<dfc09a2b>] (parse_stream_outer+0xc7/0x154) from [<dfc0a383>] (run_shell+0x3f/0x6c)
  WARNING: [<dfc0a383>] (run_shell+0x3f/0x6c) from [<dfc010b9>] (run_init+0x191/0x200)
  WARNING: [<dfc010b9>] (run_init+0x191/0x200) from [<dfc01153>] (start_barebox+0x2b/0x6c)
  WARNING: [<dfc01153>] (start_barebox+0x2b/0x6c) from [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164)
  WARNING: [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164) from [<dfc00005>] (__bare_init_start+0x1/0xc)

  WARNING: [<dfc4da7d>] (unwind_backtrace+0x1/0x78) from [<dfc01461>] (panic+0x1d/0x34)
  WARNING: [<dfc01461>] (panic+0x1d/0x34) from [<dfc4b6a3>] (do_exception+0xf/0x14)
  WARNING: [<dfc4b6a3>] (do_exception+0xf/0x14) from [<dfc4b711>] (do_data_abort+0x21/0x34)
  WARNING: [<dfc4b711>] (do_data_abort+0x21/0x34) from [<dfc4b454>] (do_abort_6+0x48/0x54)

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 1f97d84880..6b372e4274 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -417,9 +417,11 @@ static int eqos_start(struct eth_device *edev)
 	/* Before we reset the mac, we must insure the PHY is not powered down
 	 * as the dw controller needs all clock domains to be running, including
 	 * the PHY clock, to come out of a mac reset.  */
-	ret = phy_resume(edev->phydev);
-	if (ret)
-		return ret;
+	if (edev->phydev) {
+		ret = phy_resume(edev->phydev);
+		if (ret)
+			return ret;
+	}
 
 	/* Configure MTL */
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

