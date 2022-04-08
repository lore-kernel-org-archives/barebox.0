Delivery-date: Fri, 08 Apr 2022 10:31:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nck2A-00BenT-BX
	for lore@lore.pengutronix.de; Fri, 08 Apr 2022 10:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nck26-00056l-TJ
	for lore@pengutronix.de; Fri, 08 Apr 2022 10:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1CFuoI0wZ8mpyTp89EN/hO9JxJsW6BftTXjqMKWewVY=; b=CIBHdvNUoWFECI
	Br9nYHZvy2kuFN0A15CorXaGGR00OcH1lBvEhuWm9H+aPa+aAhzIuTtYuo753gUTq8er8up7jkwi3
	72iE9U15ZGTSqHvzApnsTTQI/9LFVyJX97Hp/lfRt1g6Xml5oeCHjnTBYGlPKMQFiMJx+TDFJeLZg
	F5uAW8/JoBlZPtKnNAy7oHPcWo0IWi7fhrZFiWDhtu+TgF2myFlr2GVXGfuaVsprnPnXGQkHyGV+L
	p4xbM3b/yNtr88+586sNMmm+UKJLHxLgoWJhzVRnApKJVhUOwgONvEj0nfrVDjSmIM6FZsGGrj5PY
	toZRP01QZLWYWrjygw6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nck0k-00FsL0-SE; Fri, 08 Apr 2022 08:30:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nck0D-00Fs2d-2V
 for barebox@lists.infradead.org; Fri, 08 Apr 2022 08:30:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nck0B-0004EK-T5; Fri, 08 Apr 2022 10:29:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nck0C-001lce-Jr; Fri, 08 Apr 2022 10:29:55 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nck08-003ScH-4m; Fri, 08 Apr 2022 10:29:52 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  8 Apr 2022 10:29:37 +0200
Message-Id: <20220408082950.824927-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_012957_154105_AAC64BCC 
X-CRM114-Status: GOOD (  12.72  )
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
Subject: [PATCH v4 00/13] provide DSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v4:
- ethlog: add patch description
- dsa: fix spelling
- dsa: make sure cpu port count incremented on every port
- dsa: rework error handling
- dsa: make sure port_enable/port_disable are optional
- dsa: make use of of_phy_register_fixed_link()
- sja1105: use dev_err instead of printf
- sja1105: do sanity check on dsa_register
- ksz9477: rework spi_write function
- ksz9477: do not clean PORT_TX/RX_ENABLE flags

changes v3:
- remove no needed work artifact ksz9477_old.c

changes v2:
- mane sure optional functions are called conditionally
- add support for ksz9477 and ksz9893
- add ethlog, kind of replacement for tshark or tcpdump

Oleksij Rempel (13):
  net: add RX preprocessor support
  net: add of_find_eth_device_by_node() function
  net: phy: export of_phy_register_fixed_link() function
  net: add DSA framework to support basic switch functionality
  driver: add dev_get_priv() helper
  net: port part of if_vlan header from kernel v5.17
  spi: port spi_sync_transfer() function from kernel v5.17
  net: mdio: add MDIO_DEVAD_NONE define
  net: phy: make sure MDIO bus is probed if we search for the PHY
  of_net: add rev-rmii support
  net: dsa: add support for SJA11xx switches
  net: dsa: add KSZ9477 switch SPI driver
  add ethlog command

 commands/Kconfig                    |    8 +
 commands/Makefile                   |    1 +
 commands/ethlog.c                   |   83 +
 drivers/net/Kconfig                 |   29 +
 drivers/net/Makefile                |    3 +
 drivers/net/dsa.c                   |  446 ++++
 drivers/net/ksz9477.c               |  566 +++++
 drivers/net/phy/phy.c               |    5 +-
 drivers/net/sja1105.c               | 3005 +++++++++++++++++++++++++++
 drivers/of/of_net.c                 |    1 +
 include/driver.h                    |    5 +
 include/dsa.h                       |   90 +
 include/linux/if_vlan.h             |   56 +
 include/linux/mdio.h                |    2 +
 include/linux/phy.h                 |    3 +
 include/net.h                       |   15 +
 include/platform_data/ksz9477_reg.h | 1665 +++++++++++++++
 include/spi/spi.h                   |   24 +
 net/eth.c                           |   20 +-
 net/net.c                           |    9 +
 20 files changed, 6032 insertions(+), 4 deletions(-)
 create mode 100644 commands/ethlog.c
 create mode 100644 drivers/net/dsa.c
 create mode 100644 drivers/net/ksz9477.c
 create mode 100644 drivers/net/sja1105.c
 create mode 100644 include/dsa.h
 create mode 100644 include/linux/if_vlan.h
 create mode 100644 include/platform_data/ksz9477_reg.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

