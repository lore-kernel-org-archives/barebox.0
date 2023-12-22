Delivery-date: Fri, 22 Dec 2023 03:09:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyT-009O1A-1J
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:09:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyS-00077p-Qz
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:09:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pz0fhYLk1O86931Lq2+qJqtkWI5XK1dH5EvSmpilNeI=; b=o8P1IBRGYXdVCG
	cdlPrmPCZ3l/1si6z7Omg3nEimgwQPf6fn0Y4QKV6VvggNF4Gpm/StEVsAebC4X+lj/707Xc97tMc
	lr6VM+De52kti9I0V14COleD5Je1XAv8vbWdM3dCKqyupt3kV1srQUPCXfyrWE0eHrK2uvMTsRXfe
	k0xNZbN+bV3UEW2CHMHtBNBhp7AS3JSXNa8sWRdLZifDiLtss+lcJ2feLDAc0lIHV1kExvfjaO6gD
	Cyy7OxpVsTVm7mru+qleK7ByxTyEEbVHkBihiP9835pzIQGANRP0meYuhfR0Z69WUM79lqVwi6KQS
	1dA4cnzJXqMbM7MpwGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUx1-004eYY-0i;
	Fri, 22 Dec 2023 02:07:47 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUww-004eX8-1O
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:07:45 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703210855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pz0fhYLk1O86931Lq2+qJqtkWI5XK1dH5EvSmpilNeI=;
	b=sZ5OYhHa8J3xZgJZc8xLtAhghTt1DP4MxnPgECjF4eH1DPF5a+wLkSiJcLh9U5xboJNKls
	uF0hUaqHVGH+9+eGciuSDXzdqdIufdRXGVWtgXvu1XVnNZur393C7K07w9e6R37k2/mRN9
	dkHKyo3tQd1g4S76rokH9ob+Hc1bFYR4Zye9ftJ8UvwKPG5Y1AGuOJVLZlVSOfwsXzzGxS
	SIJUzJ/WA9KwyxCqKd2RjDdDbdTyrNd2oaQYBm4bEPL2pQXjVOiftgSXKwCyXW/7TccTMM
	Ws3IRzZVAByvy03YGzNzPV4nEB6iNiuJ7fq9EDweKnwp9Lhtns9arUPGdi3SZQ==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:07:24 +0100
Message-Id: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFzvhGUC/x2M3QpAQBQGX0Xn2ikOUV5FLpb9cPLbrqQ2725zO
 VMzgTycwlOTBHK41euxR8jThIbZ7BNYbWSSTIpcRNjBrBcW3qwePOrDUtXSC8bSoKKYnQ5R/8u
 2e98Pvcq232IAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Luiz Angelo Daros de Luca <luizluca@gmail.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
 "realtek-smi 30be0000.ethernet"@30be0000
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_180743_499467_76FDD145 
X-CRM114-Status: UNSURE (   6.04  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] fix barebox support for MDIO-connected Realtek
 Ethernet switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While bringing up a new board with an MDIO-connected RTL8365MB, I had to
make some changes to barebox to get network boot to work. This small
series addresses all of the problems I encountered along the way.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
Alvin Šipraga (4):
      net: fec_imx: reverse registration order of mdiobus and edev
      net: dsa: realtek: fix support for MDIO-connected switches
      net: dsa: realtek: unify ds_ops
      net: mdio_bus: associate OF nodes with their devices

 drivers/net/fec_imx.c                  |  10 ++--
 drivers/net/phy/mdio_bus.c             |   4 ++
 drivers/net/realtek-dsa/realtek-mdio.c | 105 +++++++++++++++++++++++++--------
 drivers/net/realtek-dsa/realtek-smi.c  |   2 +-
 drivers/net/realtek-dsa/realtek.h      |   3 +-
 drivers/net/realtek-dsa/rtl8365mb.c    |  24 +-------
 drivers/net/realtek-dsa/rtl8366rb.c    |  23 +-------
 7 files changed, 97 insertions(+), 74 deletions(-)
---
base-commit: 934cb2146e5b34eb45c81e3f9bc9b63c95701e43
change-id: 20231222-realtek-mdio-fix-2672b2ef4ae6



