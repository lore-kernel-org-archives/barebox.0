Delivery-date: Mon, 21 Mar 2022 10:28:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKX-001Esg-R3
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:28:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEKZ-0004zh-MP
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:28:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B+0ER9brINm69TsuV/q4em0aWiMuUdXC/0ZMkHK4MDY=; b=Hnb+87xPjRBPEW
	/LZlcpSueSWThlgyE8Tc7GjxUcjA/1SCfsS/MXbVjrInI38UAEb83UppWMEAEW1P9EFGclfH7eGIZ
	tXAQRPwGDBk9pgGvLbUOaQo+a6xZRmPEyVZ8xMiRFFX7sOy98i6BoqENvU1F9hhRQ+4ePU6ElLgoo
	7BZ0pQI6OMWyEGbQee6fLab3JT5+HfRueATSTlnXuxIawWLNVE7TqpGAm3qewDe+L54Vh/erXzrOO
	PBiLciSgu3ATTjSF5bLgW9kyKQo5w/r0hpcgWABIOUll1BRKjpuTr19d795OmZz7kdSUzQXJ1F212
	/t4EF1gBRjrOOCBYhFFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEJJ-0079ay-2x; Mon, 21 Mar 2022 09:26:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEIk-0079JR-2p
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:26:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIi-0004CS-Bz; Mon, 21 Mar 2022 10:26:08 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEIh-0067nB-OU; Mon, 21 Mar 2022 10:26:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:25:57 +0100
Message-Id: <20220321092606.1459834-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022610_283321_E942BA49 
X-CRM114-Status: GOOD (  10.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 0/9] add basic DSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add DSA support to be able to handle different ports of switch
controllers to handle as separate Ethernet devices.

With this patches different switch ports are visible and configurable
will existing barebox infrastructure. For example:
- dhcp ethX
- devinfo ethX
- ...

Oleksij Rempel (9):
  net: add RX preprocessor support
  net: add of_find_eth_device_by_node() function
  net: add DSA framework to support basic switch functionality
  driver: add dev_get_priv() helper
  net: port part of if_vlan header from kernel v5.17
  spi: port spi_sync_transfer() function from kernel v5.17
  net: mdio: add MDIO_DEVAD_NONE define
  net: phy: make sure MDIO bus is probed if we search for the PHY
  net: dsa: add support for SJA11xx switches

 drivers/net/Kconfig     |   20 +
 drivers/net/Makefile    |    2 +
 drivers/net/dsa.c       |  385 ++++++
 drivers/net/phy/phy.c   |    1 +
 drivers/net/sja1105.c   | 2918 +++++++++++++++++++++++++++++++++++++++
 include/driver.h        |    5 +
 include/dsa.h           |   94 ++
 include/linux/if_vlan.h |   56 +
 include/linux/mdio.h    |    2 +
 include/net.h           |    4 +
 include/spi/spi.h       |   24 +
 net/eth.c               |   16 +
 net/net.c               |    6 +
 13 files changed, 3533 insertions(+)
 create mode 100644 drivers/net/dsa.c
 create mode 100644 drivers/net/sja1105.c
 create mode 100644 include/dsa.h
 create mode 100644 include/linux/if_vlan.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

