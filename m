Delivery-date: Wed, 13 Sep 2023 15:26:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsk-00Do3J-N2
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 15:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPsi-0002Fn-Pl
	for lore@pengutronix.de; Wed, 13 Sep 2023 15:26:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LFTdNlAiKL3eO++eOXvZ8aKyoGVijU95HW65Jbo7PDw=; b=PmbpOKQAb8jSpElBRz8dPV8K2x
	jMcGpjMvEQhsK8WQSWCoOZ3aUmxDlsqE+uZMkN55w3vpIirfS2g/FQ7qfNXwQesQ5shIfMfXqkF5/
	2Bsk2zRftIlXsVuQtsB0uqgD/zHj7UAZ5umttvkd5cYVFLihzTQsJa5mqP3KLFgbU0IGYyJVjQeSu
	z5apsg7o0GrAyfQLY8v6NeTqhwxFn1AWls/gzxlbCoh62XCcmzlN4XlY3DGfqJN87UZ1zJuh9bk1r
	o1VH9P8bQGPkEtJDS3VuxJhuwdc+vldm6xpr+9b93QNX658dm8FypoHPNx+p1IvieZLLMHaX18tLN
	y94YcHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrc-005yQM-1z;
	Wed, 13 Sep 2023 13:25:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPrY-005yOt-2H
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 13:25:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrX-0001wd-Dg
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 15:24:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-00651F-QL
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 15:24:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPrW-009HTe-2U
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 15:24:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Sep 2023 15:24:53 +0200
Message-Id: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_062500_846693_ED434A1B 
X-CRM114-Status: UNSURE (   8.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] firmware-zynqmp: add accessors for ggs/pggs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ZynqMP features eight 32-bit global storage registers that are
available for general use. Four of them have their values preserved
after software reboots and four are cleared on software reboots.

In Linux they are accessed as:

  /sys/firmware/zynqmp/ggs[0-4]
  /sys/firmware/zynqmp/pggs[0-4]

Allow reading and writing these parameters from barebox board code
via exported functions and from barebox shell as well via device
parameters:

  echo ${firmware:zynqmp-firmware.of.ggs0}
  firmware:zynqmp-firmware.of.pggs0=4

Because the name is a bit unwieldy, use the device alias support added
in this series to make the variables more compact:

  echo ${zynqmp_fw.ggs0}
  zynqmp_fw.pggs0=4

Ahmad Fatoum (3):
  driver: add support for device aliases
  firmware-zynqmp: export functions for setting GGS/PGGS
  firmware-zynqmp: add device parameters for ggs/pggs

 arch/arm/mach-zynqmp/firmware-zynqmp.c | 133 +++++++++++++++++++++++++
 common/complete.c                      |  14 ++-
 drivers/base/driver.c                  |  46 +++++++++
 include/driver.h                       |   7 ++
 include/mach/zynqmp/firmware-zynqmp.h  |  33 +++++-
 5 files changed, 222 insertions(+), 11 deletions(-)

-- 
2.39.2



