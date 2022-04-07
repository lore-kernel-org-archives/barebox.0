Delivery-date: Thu, 07 Apr 2022 11:16:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOFy-00AI0D-4j
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:16:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOFu-0001en-VE
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hce2OICc5X233ZcqUvjTNR1fJXNO4/cURCUowl42FBk=; b=WA/Lj5sGrGXdmx
	96Gvsl8Gtn3gbd1Cl12se+an9TMhcNHUcVgVw0SCximNzdOXciVngwh2jrqrWoGLaZry+Ft3s4YQ6
	2R9wje8FKQCjQr+/z4DZSWmnBR44K9evutPlg/2JgQ2nMMaEIXUsZoyAFaYopJnhRGUJgZPQxylsm
	EjzAuTyPuNigaPIx+sretwSyEd89MeAhyBxYGt7RVx1NEauP7gw1igx43bOxHYTm/IYc/dMv+u00n
	v4SL0Rkfw22TSRGA4MorzuUZONK8riEuiCF/h4PYx/wR/Q0ffQVHp1h6LVOOJ18I636IkmftDlLi1
	LOVVyWhuFa7y3s7ISqhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncODv-00AkQW-Sx; Thu, 07 Apr 2022 09:14:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx2-00AcvV-68
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwy-0005p0-WD; Thu, 07 Apr 2022 10:57:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNwz-001Zt8-Ko; Thu, 07 Apr 2022 10:57:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUI-IR; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:56:53 +0200
Message-Id: <20220407085705.951285-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015712_306497_4359DFF6 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH v2 00/12] provide DSA support 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v2:
- mane sure optional functions are called conditionally
- add support for ksz9477 and ksz9893
- add ethlog, kind of replacement for tshark or tcpdump

Oleksij Rempel (12):
  net: add RX preprocessor support
  net: add of_find_eth_device_by_node() function
  net: add DSA framework to support basic switch functionality
  driver: add dev_get_priv() helper
  net: port part of if_vlan header from kernel v5.17
  spi: port spi_sync_transfer() function from kernel v5.17
  net: mdio: add MDIO_DEVAD_NONE define
  net: phy: make sure MDIO bus is probed if we search for the PHY
  of_net: add rev-rmii support
  net: dsa: add support for SJA11xx switches
  net: dsa: add KSZ9477 switch SPI driver
  add ethlog

 commands/Kconfig                    |    8 +
 commands/Makefile                   |    1 +
 commands/ethlog.c                   |   82 +
 drivers/net/Kconfig                 |   29 +
 drivers/net/Makefile                |    3 +
 drivers/net/dsa.c                   |  460 ++++
 drivers/net/ksz9477.c               |  570 +++++
 drivers/net/ksz9477_old.c           |  561 +++++
 drivers/net/phy/phy.c               |    1 +
 drivers/net/sja1105.c               | 3000 +++++++++++++++++++++++++++
 drivers/of/of_net.c                 |    1 +
 include/driver.h                    |    5 +
 include/dsa.h                       |   90 +
 include/linux/if_vlan.h             |   56 +
 include/linux/mdio.h                |    2 +
 include/linux/phy.h                 |    1 +
 include/net.h                       |   15 +
 include/platform_data/ksz9477_reg.h | 1665 +++++++++++++++
 include/spi/spi.h                   |   24 +
 net/eth.c                           |   20 +-
 net/net.c                           |    9 +
 21 files changed, 6601 insertions(+), 2 deletions(-)
 create mode 100644 commands/ethlog.c
 create mode 100644 drivers/net/dsa.c
 create mode 100644 drivers/net/ksz9477.c
 create mode 100644 drivers/net/ksz9477_old.c
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

