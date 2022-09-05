Delivery-date: Mon, 05 Sep 2022 19:44:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9V-007l9O-Nj
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:44:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9V-0003ZX-W0
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:44:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IFcpNTwYjAKJPFWl53r7Y3VbFt0/yjJCRqoNEqYRSZU=; b=1Vyz5gBdAdiIx7Zw4lM+OVa82/
	cSPizPFQRzxNg37MAmmMqhhpaOjWDXwIG3FeIXgezzKtumOnlUDBhYnaE++vOrDq6ZC0fiIVvAsCQ
	jq+F7rjSXqPAAP4Nz6ZFdTcA0mrcQUrw4Z8cx7FvY7UpTlOK92DIrQ/Azhqr51lGyvnN11RJr8/2t
	pRvmAhIP3/LARzRTnwkkpYRNN3h7AInGCpnM8+SDKtv4FzOIdhchk4yjmjgXwbWNDsqI+nX6OqyC5
	bqQ8re5dYabMzrSl8v2yUVVMObd839I2ah+oHIbaw4G9mPORhMtNFQfiudutop1Va8cH3j8ztQCwV
	bsvgfTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG8A-007l2R-Jy; Mon, 05 Sep 2022 17:43:31 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SK-000QRz-8Q
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SI-0005ia-Dc
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 12:35:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-0042jW-2s
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 12:35:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LC6-OZ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  5 Sep 2022 12:35:41 +0200
Message-Id: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033556_234952_511E48D2 
X-CRM114-Status: UNSURE (   6.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] commands: gpio: add controller as optional argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gpioinfo currently displays all GPIOs and the rest of the GPIO commands
like gpio_direction_output expects either a GPIO label or a global GPIO
number to act upon.

With this series, the gpio commands now accept an optional argument,
e.g.:

  gpioinfo gpio4
  gpio_direction_output -d gpio4 20 1

Controllers are identified by either device name, full path to the
device tree node backing it or an alias pointing at it.

Ahmad Fatoum (5):
  gpiolib: implement gpio_get_chip_by_dev()
  of: platform: optimize of_find_device_by_node when deep probing
  driver: implement find_device() helper
  commands: gpio: add -d argument to set/get commands
  gpiolib: gpioinfo: add optional CONTROLLER command line argument

 commands/gpio.c        | 51 +++++++++++++++++++++++++++++-------
 drivers/base/driver.c  | 16 ++++++++++++
 drivers/gpio/gpiolib.c | 59 ++++++++++++++++++++++++++++++++----------
 drivers/of/platform.c  |  3 +++
 include/driver.h       |  5 ++++
 include/gpio.h         |  1 +
 6 files changed, 111 insertions(+), 24 deletions(-)

-- 
2.30.2



