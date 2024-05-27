Delivery-date: Mon, 27 May 2024 12:28:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaH-000ezC-0t
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 12:28:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaG-0005lk-9r
	for lore@pengutronix.de; Mon, 27 May 2024 12:28:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9wDIc/L4g9yXYWgHzsp1frz4gfNZ3OW3SYfSb3AIFJk=; b=KhcNLI/jpbQjyR
	U0m8AfqDNAFIa5/KFmOD3GxEGrGvyff8ro1B7fOLpzLuC1JZM6zrpq28SMgdQJbFDcm73T9b80jo5
	HUnZt7DjJvhxA/hioD5BSbHHbVm2kcKAT+gTVrj/XpJQ5Im5UrstCEukMca7oTOtZTSijVWvvuh0E
	iLQ9JsEV2lSWdfotBII9YhaV8KWJviFfkyhxEZJubXjT4thvzS7RkSGMsMZbNCj1zU6wOOjJtgf3f
	RysgVcfCYlT5TDMS6/SdVPG4mg/brG5f7FGAUIMfVWMYORwC0d7oVuGzc75QmErIK9tAD9RjlYYj6
	Z6UJ3cCqxN5KZVdp8cQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZl-0000000EaAH-1tEn;
	Mon, 27 May 2024 10:27:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZe-0000000Ea6m-2Ll2
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 10:27:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-0005RF-8o; Mon, 27 May 2024 12:27:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZb-003Asn-Rx; Mon, 27 May 2024 12:27:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZb-00Ejyk-2S;
	Mon, 27 May 2024 12:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 12:27:16 +0200
Message-Id: <20240527102723.3504270-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_032726_685145_755C2032 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: jianqiang wang <wjq.sec@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/7] net: do not read past receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several network drivers read overlong packets without checking if the
buffer they read into is large enough. Discard the packets instead
of writing past the buffer.

Changes since v1:
- Do not call net_receive() when we decided to discard a packet
- Add patch to let network device receive hook return void

Sascha Hauer (7):
  net: cs8900: simplify buffer read loop
  net: cs8900: do not read past the receive buffer
  net: ks8851_mll: do not read past the receive buffer
  net: liteeth: do not read past the receive buffer
  net: smc911x: do not read past the receive buffer
  net: ks8851_mll: drop return value from ks8851_rx_frame()
  net: let net rx hook return void

 drivers/net/ag71xx.c          |  4 +--
 drivers/net/ar231x.c          |  3 +--
 drivers/net/arc_emac.c        |  4 +--
 drivers/net/at91_ether.c      |  6 ++---
 drivers/net/bcmgenet.c        |  6 ++---
 drivers/net/cpsw.c            |  4 +--
 drivers/net/cs8900.c          | 19 +++++++-------
 drivers/net/davinci_emac.c    | 11 +++-----
 drivers/net/designware.c      |  9 ++-----
 drivers/net/designware_eqos.c |  6 ++---
 drivers/net/dm9k.c            | 12 ++++-----
 drivers/net/dsa.c             |  6 ++---
 drivers/net/e1000/main.c      |  5 +---
 drivers/net/efi-snp.c         |  8 +++---
 drivers/net/enc28j60.c        |  4 +--
 drivers/net/ep93xx.c          |  9 +------
 drivers/net/ethoc.c           | 10 +++-----
 drivers/net/fec_imx.c         |  8 +++---
 drivers/net/fec_mpc5200.c     |  5 ++--
 drivers/net/fsl-fman.c        |  6 +----
 drivers/net/fsl_enetc.c       |  6 ++---
 drivers/net/gianfar.c         |  6 ++---
 drivers/net/ks8851_mll.c      | 48 +++++++++++++++++++++++++----------
 drivers/net/liteeth.c         | 14 ++++------
 drivers/net/macb.c            | 12 +++------
 drivers/net/r8169_main.c      |  7 +----
 drivers/net/rtl8139.c         |  6 ++---
 drivers/net/smc91111.c        |  7 ++---
 drivers/net/smc911x.c         | 15 ++++++-----
 drivers/net/tap.c             |  4 +--
 drivers/net/usb/usbnet.c      |  8 +++---
 drivers/net/virtio.c          |  6 ++---
 include/net.h                 |  2 +-
 33 files changed, 115 insertions(+), 171 deletions(-)

-- 
2.39.2



