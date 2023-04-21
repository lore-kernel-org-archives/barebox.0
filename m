Delivery-date: Fri, 21 Apr 2023 12:08:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppnh0-00BPTf-EE
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppnh0-0001VE-Cl
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oEbZN9ma9dddJ1ApENf9inmUjqLw6SJZJX8qy4TJGAM=; b=hFn6m+WZVdYoOn+m0YPe8vjSg9
	43yHrtoOnFONXCQ3plfpcVMUi6MAXFVbsbJT154R/SEDLyhjqXHjus0dEX1+9EdJerbf5zZ1yuzQs
	V9TLTdgbNdkC2CcTyBxhRracniA2U4EkDEPrsPR2ACSNqEAllLJFBzSMLw7ugbLgF4bfBvlOndE1n
	DiZPn/m+4shNtLLqiSBlJFRjoqZxpsa40YTCK9480B3ZDDCcBlSOi9fhUF7gLDdXYTtNTfduNknW+
	iZXTSQIZQdBQ9T99wANmS0TgcTKS8FmGlNAvH9nex4Sd2MWQ9+jTZT0ixtHicxH4DlD8rkvksSMWy
	Ey/nyBAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfj-00AQ3y-13;
	Fri, 21 Apr 2023 10:07:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfd-00AQ1Y-0w
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-00010x-H8
	for barebox@lists.infradead.org; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfZ-00ClhT-Rm
	for barebox@lists.infradead.org; Fri, 21 Apr 2023 12:07:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2OG-Gl
	for barebox@lists.infradead.org; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 Apr 2023 12:06:37 +0200
Message-Id: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030713_367439_EDDB8368 
X-CRM114-Status: UNSURE (   8.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/5] ARM: stm32mp: enable UBS hubs on DKx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I am not sure this worked for a while, but the DT binding changed.
Let's sync with the kernel driver and enable the necessary config
options and some other stuff noticed as well.

Ahmad Fatoum (5):
  asm-generic: atomic: implement atomic_inc/dec_return stubs
  phy: stm32-usphyc: sync with Linux v6.3-rc5
  ARM: stm32mp: defconfig: enable use of DKx USB hubs
  clk: bulk: return -EPROBE_DEFER in silence
  ARM: stm32mp: dkx: enable deep probe

 arch/arm/boards/stm32mp15xx-dkx/board.c |   2 +
 arch/arm/configs/stm32mp_defconfig      |   3 +
 drivers/clk/clk-bulk.c                  |   5 +-
 drivers/phy/phy-stm32-usbphyc.c         | 321 ++++++++++++++++++++++--
 include/asm-generic/atomic.h            |  11 +-
 include/linux/units.h                   | 111 ++++++++
 6 files changed, 421 insertions(+), 32 deletions(-)
 create mode 100644 include/linux/units.h

-- 
2.39.2



