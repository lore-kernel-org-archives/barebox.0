Delivery-date: Mon, 03 Jan 2022 12:59:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzS-009nhz-TW
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 12:59:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4LzR-0003ia-5S
	for lore@pengutronix.de; Mon, 03 Jan 2022 12:59:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YzAJL7R6INKyiTtpxBa3rIVeLLGo5DrSA5NzG9S1SvY=; b=UNfdDjfefK7Gfp
	iyie5Lq7/ZM5ZukeXit18NjSCwC2HcCWTGEFXmbZSNGYXy2JXXg/E94zJ5a58L3BIMNGw9aBFYsHj
	zeufADCgniqF8ffCcNfnHrOK5cmiVsOk76oCfl8FW3wXtm9ATqFOmqXbb9VEyUrKec8QuDLdr+i4o
	pfBTQn6+Y8uVkvbFDQi9VKRBK7cOkTc1uOYlHAMqoIh0buhWSOMHiBqSv3/bB2WMp4j9YS6Fpqxw3
	4MWfMVHvZyerEEeQcjdePlQ1ai+5vCSh2k0/rHr9BqZYubOWLJQ7Mbxj9iWn+p0x1ew4pkEoEZY0l
	48MRyMZsqo5HavOIY/Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Lxz-008vMK-DS; Mon, 03 Jan 2022 11:57:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Lxs-008vKK-RL
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 11:57:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1n4Lxn-0003NH-J9
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:57:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1n4Lxn-007EVw-4N
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:57:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Jan 2022 12:57:13 +0100
Message-Id: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_035724_924809_715C5709 
X-CRM114-Status: UNSURE (   6.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/5] misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Collection of fixes for master.

Ahmad Fatoum (4):
  pwm: atmel: point MMIO accesses at correct address
  clk: fixed: record parent name in clk_register_fixed_rate
  imx-bbu-nand-fcb: suppress compiler warning about uninitialized use
  regulator: fix broken reference counting on disable

Enrico Jorns (1):
  regulator: respect "regulator-always-on" property

 common/imx-bbu-nand-fcb.c | 2 +-
 drivers/clk/clk-fixed.c   | 4 ++++
 drivers/pwm/pwm-atmel.c   | 2 +-
 drivers/regulator/core.c  | 8 +++++++-
 include/regulator.h       | 3 ++-
 5 files changed, 15 insertions(+), 4 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

