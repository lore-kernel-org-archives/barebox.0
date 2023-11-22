Delivery-date: Wed, 22 Nov 2023 19:13:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rik-004gJW-1f
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:13:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rik-0001HW-Jm
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:13:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jxxVQb010feefvmFKaXs6CLXFwvZAKTaUFGDDs8A+JM=; b=zvdAmjt02Vej/rHy4wteEgCpF3
	12nGQs/yqwCO8cU2rYSYmLmShOEiATg8mMVohQG6oAgofqGPEEMTgrJudLeDBtWrtde6rNlCKVw/E
	1zJB7xXLSIOzOcSOXsdvXpTYdkyadlx44x1TJF2ZczBzcngfrryHK47fS77Q4XbtM3kARQbSY4OXy
	QiX/SOrjd20wKv1bnmZ8Pg2oJgN0W4WsT8S85buezAh0akUu38/fODOu5Nju8mLgy8HQoG1lkhiMQ
	29wVD3qU0MwICs/cXe4D/QHBtpye9RLcx2jArkeh5rVCwFxUA26PXNNfA/xSJWxRitsp8Bki7jqI4
	OYuSLZTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhE-002lpB-35;
	Wed, 22 Nov 2023 18:11:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002llt-2v
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000aL-7G
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-00As0u-Qp
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 19:11:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-002Wed-2H
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 19:11:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 19:11:09 +0100
Message-Id: <20231122181116.591131-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_981801_7CDFC72A 
X-CRM114-Status: UNSURE (   7.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/7] ARM: stm32mp: random STM32MP13 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

STM32MP135-DK board support has been broken by a device tree sync with
the kernel as the kernel now uses SCMI to communicate with OP-TEE for
controlling some clocks, resets, regulators and OTP.

A series for that is incoming once OP-TEE communication upstreaming
is complete, but for now, this series fixes random other stuff.

Ahmad Fatoum (7):
  ARM: dts: stm32mp: stm32mp135-dk: drop duplicate property
  ARM: dts: stm32mp: fix model string for stm32mp135f-dk
  ARM: stm32mp: init: drop unused macros
  ARM: stm32mp: don't re-enable DBGCFGR clock
  ARM: stm32mp: init: handle differences between STM32MP13 and STM32MP15
  ARM: stm32mp: init: don't print STM32MP15 CPU type
  ARM: stm32mp: init: ignore of_register_fixup return value

 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c |   2 +-
 arch/arm/dts/stm32mp135f-dk.dts            |   6 +-
 arch/arm/mach-stm32mp/init.c               | 106 +++++----------------
 include/mach/stm32mp/revision.h            |  41 +++-----
 4 files changed, 38 insertions(+), 117 deletions(-)

-- 
2.39.2



