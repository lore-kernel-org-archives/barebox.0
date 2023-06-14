Delivery-date: Wed, 14 Jun 2023 12:09:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRF-006UKd-Sm
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRD-00067N-Fu
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wRLqwlTZ/y5bKtBjiMgVTuNLpO2DW6EmZPLMzOg0/Ok=; b=GpSyq+3Q4/sWuB/qYaoRDS7w3f
	jobo6ErXs8ndjzjnGMM87VwpqZl63hmrZLRyhnNwgJ778faz+6sFmRxA5CyiYf4r/p0+0KSRcodNb
	sWvmBCu47TGNKmLqOwYZMlmYuljMA/GYOWByqdo7jXpzs2r04q1T6PIwMWTDipgBM6ykwdbzaTETf
	q+Mxy/GzWtV+y5OCqtzEZEUcL4HgTzNtJrz2l7WJigKrbP2Q8I74gyOLZPuouqPT9vBNMSuVQvYtg
	bIDzKZY03FqePBNZSFXZx8+gxsZ/yofSjO8NQ3Nikh7CD3Vmi5mBv1Zp2V3W+5j5MFJtzhZAnv9+o
	Uo+wzubw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQB-00BAXg-0Q;
	Wed, 14 Jun 2023 10:08:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ2-00BATK-3B
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cW-Ma; Wed, 14 Jun 2023 12:07:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-007Kbi-0u; Wed, 14 Jun 2023 12:07:53 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9tr-KQ; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 14 Jun 2023 12:07:37 +0200
Message-Id: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030803_037641_C064CC1A 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/10] Fix gpio-hogs and sync with Linux gpiolib
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Quoting v1:

  the purpose of this series is to fix the gpio-hogs mechanism since this
  is broken since commit 3641d381e6 ("gpiolib: Add of_xlate support").
  
  Patch1: Revert the above mentioned commit to make the gpio-hogs working
          again.
  
  Patch2-10: Add the of_xlate support required for the upcoming sunxi
             pinctrl driver. The mechanism is now more in sync with kernel
             gpiolib. This allows to sync easier with the kernel gpiolib
             in case of new features or fixes.

I've incorporated feedback and tested this still works on a i.mx8mn.
Patch 1 should be ok to go into master and the rest to next IMO.

Changelog in each patch.

Marco Felsch (10):
  gpiolib: fix gpio-hog functionality
  gpiolib: simplify for loop break condition
  gpiolib: rename local gpio-line-names variable
  gpiolib: fix gpio name memory leak
  gpiolib: fix missing error check while query gpio-line-names
  gpiolib: refactor gpio-line-names parsing
  gpiolib: introduce of_gpiochip_add to bundle all of functions
  OF: gpio: sync of_get_named_gpio_flags variable with kernel
  OF: gpio: call of_node_put in of_get_named_gpio_flags
  gpiolib: add of_xlate support

 drivers/gpio/gpiolib.c | 207 ++++++++++++++++++++++++++++++-----------
 drivers/of/of_gpio.c   |  69 ++++++++++----
 include/gpio.h         |  30 +++++-
 3 files changed, 231 insertions(+), 75 deletions(-)

-- 
2.39.2



