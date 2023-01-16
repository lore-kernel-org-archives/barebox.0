Delivery-date: Mon, 16 Jan 2023 14:47:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpm-00Dbvc-00
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:47:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpj-0000Hk-I8
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:47:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/x0f6ONofIwkQUQfsHmQCSLE4MG17JJExJSyiHJO9W0=; b=we1lTDLFEjND5eK4fbea7O5/Jh
	U2HkNWDr/vdW0t2cULF6Kh4dIP3mSXgObWXRXpoWrZ4SOXr7RV6velgw69CjC3ge8cdZkXE9dL71S
	SjHTeJ/O+koHREUpx6VR1xDpnwmy7Vb31SWLd4ZKFu5TSyZV8KZHe8HZdqfFesuTT83cYP5EcCLz4
	3e47FBuiEpally8eayhfR5fgjvSCFU9QIqZgcaH9mUmAhszb3NfdoNWuz3KUv1jPcp3F+xz6Xu/r8
	Ym6/JQN5Bj9k5QyMoTh8deImwWO1qy4oQv5rdhN5egBsrbxc59rucWGgSMDRIYxfp8mOg3mlMDZu6
	rTu3MppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPoQ-00AYZF-DY; Mon, 16 Jan 2023 13:46:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8D-66
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-0007zM-PP; Mon, 16 Jan 2023 14:45:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKF-3y; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008Py6-Of; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de
Date: Mon, 16 Jan 2023 14:44:52 +0100
Message-Id: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_363132_EF8B23D8 
X-CRM114-Status: GOOD (  11.84  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This imports the Linux v6.1 state of the driver into barebox. This has
been tested with the RTL8365MB in (bitbanged) SMI mode connected
to an i.MX8MM FEC.

Ahmad Fatoum (9):
  driver: alias of_match_ptr and DRV_OF_COMPAT
  gpiolib: implement gpio_direction_input/output
  net: dsa: rename dsa_ops to dsa_switch_ops
  net: dsa: factor out dsa_port_alloc helper
  net: dsa: populate struct dsa_port::index/dev members
  net: dsa: always call port_pre_enable before port_enable
  net: dsa: add some helpers to ease porting kernel drivers
  net: dsa: add struct dsa_switch::priv member for driver use
  net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support

 drivers/net/Kconfig                    |    2 +
 drivers/net/Makefile                   |    1 +
 drivers/net/dsa.c                      |   46 +-
 drivers/net/ksz8873.c                  |    2 +-
 drivers/net/ksz9477.c                  |    2 +-
 drivers/net/realtek-dsa/Kconfig        |   62 ++
 drivers/net/realtek-dsa/Makefile       |    7 +
 drivers/net/realtek-dsa/dsa_priv.h     |   77 ++
 drivers/net/realtek-dsa/realtek-mdio.c |  226 +++++
 drivers/net/realtek-dsa/realtek-smi.c  |  502 ++++++++++
 drivers/net/realtek-dsa/realtek.h      |  105 ++
 drivers/net/realtek-dsa/rtl8365mb.c    | 1273 ++++++++++++++++++++++++
 drivers/net/realtek-dsa/rtl8366rb.c    | 1123 +++++++++++++++++++++
 drivers/net/realtek-dsa/tag_rtl4_a.c   |  103 ++
 drivers/net/realtek-dsa/tag_rtl8_4.c   |  205 ++++
 drivers/net/realtek-dsa/tagger.c       |   38 +
 drivers/net/sja1105.c                  |    2 +-
 include/driver.h                       |    4 +-
 include/dsa.h                          |   21 +-
 include/gpiod.h                        |   12 +-
 include/linux/barebox-wrapper.h        |    1 +
 include/linux/if_bridge.h              |    9 +
 include/net.h                          |    3 +-
 23 files changed, 3803 insertions(+), 23 deletions(-)
 create mode 100644 drivers/net/realtek-dsa/Kconfig
 create mode 100644 drivers/net/realtek-dsa/Makefile
 create mode 100644 drivers/net/realtek-dsa/dsa_priv.h
 create mode 100644 drivers/net/realtek-dsa/realtek-mdio.c
 create mode 100644 drivers/net/realtek-dsa/realtek-smi.c
 create mode 100644 drivers/net/realtek-dsa/realtek.h
 create mode 100644 drivers/net/realtek-dsa/rtl8365mb.c
 create mode 100644 drivers/net/realtek-dsa/rtl8366rb.c
 create mode 100644 drivers/net/realtek-dsa/tag_rtl4_a.c
 create mode 100644 drivers/net/realtek-dsa/tag_rtl8_4.c
 create mode 100644 drivers/net/realtek-dsa/tagger.c
 create mode 100644 include/linux/if_bridge.h

-- 
2.30.2



