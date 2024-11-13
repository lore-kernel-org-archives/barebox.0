Delivery-date: Wed, 13 Nov 2024 09:30:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lS-001MW9-0r
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:30:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lR-0004QB-N3
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:30:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ipgewW865ofIK4JHHRA23s8F+DDlNhVDEZppYygJXLU=; b=RSxJWVNkYZ/c0Hf2AJq+jNURxh
	lCScYYJWyW4HgoEXq2S7FMaRHEqAMi7laqXbQI1apT6xcZGY3ZT297Xj33t8+Bw/clse3+2L4Ed5f
	Ejm2kcqgc8CI58PKWVeerw7LoH+W/TOmb54l3xQ9Lve/nYDVmP23rZTJTy84i2XQqC/HZ3iRSiW6T
	JxH9gPvSz0LbxC9aQHAVJyOgG01QTXCntQZtUaNUdOBKhA6DgxRVXi+FxylJxpj2iPHqg8jyuSsCL
	09nTQGiZz7hR7mi2tRmxfeQeTQl2kaZOcsJXEzGWShnkInhYMcq0cXqu6nPFx2AOi2wJPacUYdR9u
	d0xJl0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8ks-0000000665J-21S4;
	Wed, 13 Nov 2024 08:29:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8km-0000000664R-0WZZ
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:29:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00048U-R6; Wed, 13 Nov 2024 09:29:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-000XxS-1w;
	Wed, 13 Nov 2024 09:29:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00FKcT-1j;
	Wed, 13 Nov 2024 09:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Nov 2024 09:29:26 +0100
Message-Id: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGZjNGcC/x2MQQqAMAzAviI9W1inu/gV8TDWqkWdsoEIw787P
 CaQFMiSVDIMTYEkt2Y9YwVqGwirj4ugcmWwxvZE1CH7W2NQPFhPDPuGsz5o2ThDbDvxDmp6Jan
 6347T+356PmQzZgAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731486570; l=606;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=NEhaoafj+8z0pkbwARR87Baxn/SusfoJPqduBsvEAS4=;
 b=qOt2DUV2/cJFW2NsdCcXwU6D2JVoXRUgSYP07leZOvZBD0Kd96F0q446p84hh/TMCPj5SHvfW
 Yrg6u/MO4vmDF/1etjvTGff7bp95L8/ouI3KmqMOobLrRszdNJuMjAJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_002932_199832_ED7F75B6 
X-CRM114-Status: UNSURE (   7.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] davinci_mdio: clk fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes some deficiencies in the davinci_mdio driver

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      net: davinci_mdio: drop phy_mask detection
      net: davinci_mdio: initialize priv->dev
      net: davinci_mdio: initialize divider from clk

 drivers/net/davinci_mdio.c | 61 ++++++++++++++++++++--------------------------
 1 file changed, 26 insertions(+), 35 deletions(-)
---
base-commit: 89ad0c51b24d6df4b5a99d6defa9324d8c30cfbe
change-id: 20241113-davinci-mdio-clk-fix-2d0501d23ea5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



