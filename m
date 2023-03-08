Delivery-date: Wed, 08 Mar 2023 15:26:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZukm-00DfYt-VC
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:26:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZukm-0003bs-JV
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:26:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YRe7ITSXkEHRdhZBaPF1qCTk5KSL6X8Urz8CFoSlOF8=; b=ltdwVLrKWw77Yf4s3spgJqEFB6
	ENp7jF0lTCdJIhof9Fty3ScG7lIeQl18/auqlPZeCCzkcXOZheSdM1+AADjlAPlhSssn3uwLo1YVe
	iGgkdY9wCw7qai4lrb3ynjMkcJCD7hLJ5lDMNcvASYdfmxO/ZPsKw2WTzu5ihV2idt/uPHP/LSDk2
	My/QeF8ZOBhFF3etOs8TzfIXkKFu+hFzrQdZonkFsFGvIraE79w/Ko+EKItPA7xvsGB2Hy3jMnUfv
	NL5WR49aE6Omcl0eSxJudCbdufz/o2HKASOnD8dhFV0Y2D2pGhb5gvcFdrhN494fmb5npBB2NU1Mk
	Rdop7OFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujU-005Qqr-GM; Wed, 08 Mar 2023 14:25:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujF-005Ql4-2f
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 14:25:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuj6-0002wp-IT; Wed, 08 Mar 2023 15:25:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQN-002jFv-Iy; Wed, 08 Mar 2023 15:05:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQM-00E7m4-Es; Wed, 08 Mar 2023 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:05:38 +0100
Message-Id: <20230308140545.3366052-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_062517_322283_AA4E7BA8 
X-CRM114-Status: GOOD (  11.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] support overlays to the barebox live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support for applying a device tree overlay to the barebox live tree
is already present. This series adds a few missing pieces:

- add support for applying overlays to the live tree from the command
  line
- add support for adding new I2C/SPI devices via overlays
- add Makefile magic to build dtbo files and dtbo.o files to include
  into the barebox binary from dtso files

Sascha Hauer (7):
  kbuild: Add target to build dtb overlay files
  driver: Add rescan hook to struct device
  i2c: implement rescan
  spi: Directly register SPI device
  spi: reduce scope of 'chip'
  spi: implement rescan
  of_overlay: Add option to apply overlay to live tree

 commands/of_overlay.c  | 38 ++++++++++++++++++++++++++++++++++----
 drivers/i2c/i2c.c      | 16 +++-------------
 drivers/of/platform.c  |  5 ++++-
 drivers/spi/spi.c      | 31 ++++++++++++++++++++++++++-----
 include/driver.h       |  1 +
 scripts/Makefile.build |  4 ++++
 scripts/Makefile.lib   | 11 ++++++++++-
 7 files changed, 82 insertions(+), 24 deletions(-)

-- 
2.30.2



