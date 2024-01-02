Delivery-date: Tue, 02 Jan 2024 18:02:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9g-000qKB-2q
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9f-00073E-R1
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=efEucrBJ4Ey3gJiKybuKwScrj7L1UCSDyoETt+AHabc=; b=tkpVJcX+Z2PyZDLKkqekrCysPG
	XOJ562AxK8M6koMy/dktuA/CYDivBzSrGqwQENdKELUROVwg55owdySV7zRq7PpFzzvwgqiJzbfZY
	IKD2qO+YbYyPDwJLMKrHf7F7DQnXkte9Fy6NDRbNkwZ+eeqRWjcBfMHOT1QbCx4bmBsDzfS7hoU/U
	huBtGCX3T6p99cq5h9M13it8ChbmgMPeaCBkO7T8J3MIlSbeht/GVGun0YBRvT2/kc39GEaL1UodJ
	89lVT80b1AeUr84tWovbMjCUmxkl4aAfrB8GhxysZO4Mb30u7yjGeyb2vjpB6j3ENJteKZ4KouSQW
	bLyJGLeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8Z-008XtC-1t;
	Tue, 02 Jan 2024 17:01:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8V-008Xr7-33
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-0006Gi-JP
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 18:01:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrE-3l
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-0L
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Jan 2024 18:00:53 +0100
Message-Id: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090103_987802_458F75B1 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 0/7] regmap: fix size of regmap-backed cdev and nvmem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct regmap::max_register is in units of struct regmap::reg_stride.
To get the total number or registers, we need to divide by reg_stride
before adding one, but we ended up adding one before division.

This is wrong at different places across the tree, leading to the last
fuse to be inaccessible when not using the regmap API directly, i.e.
when using a NVMEM registered by nvmem_register_regmap or the cdev
instantiated in /dev.

Ahmad Fatoum (6):
  regmap: fix calculation of regmap size when reg_stride != 1
  nvmem: bsec: correct regmap's max_register
  nvmem: startfive-otp: correct regmap's max_register
  nvmem: imx-ocotp-ele: correct regmap's max_register
  nvmem: ocotp: correct regmap's max_register
  nvmem: ocotp: align OCOTP bank count with Linux

Robin van der Gracht (1):
  nvmem: regmap: Fix nvmem size

 drivers/base/regmap/regmap.c  | 28 ++++++++++++++++++++++++++--
 drivers/nvmem/bsec.c          |  2 +-
 drivers/nvmem/imx-ocotp-ele.c |  2 +-
 drivers/nvmem/ocotp.c         | 24 ++++++++++++------------
 drivers/nvmem/regmap.c        |  4 ++--
 drivers/nvmem/starfive-otp.c  |  2 +-
 6 files changed, 43 insertions(+), 19 deletions(-)

-- 
2.39.2



