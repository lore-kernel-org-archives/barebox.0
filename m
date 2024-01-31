Delivery-date: Thu, 01 Feb 2024 00:00:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ4-00EZi2-0b
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 00:00:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJZ4-0007dj-Mn
	for lore@pengutronix.de; Thu, 01 Feb 2024 00:00:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JtZstvQ7i5wMQzYi1BPR6lwtaBCLXWTiJO7uF3a8Fec=; b=eSTvaE2iOGNm2xuDAlskspfkoC
	qa3f/BnQaoS3gWK54+8YfogfaRKa77D8P0O1vmkI+GOKVFUwLcNqqF09uxM83q6exPQMIaDXsWq3p
	zYXmK+/qqnjK1V3o2Qc/b06lNXuEpyy6ixvDYJ+IQzjbIFmvAJKfRkEqzwoE63pby4sC/u2qW/Qtc
	PR8uw1j4uvczd55yaz+M9DIUCKpB5lZkq9LLryLA7o187xqBJCUApxoljBXKY/izKDR4CBNCKvx5P
	gbeD8QR2k28o5H6GTPIZ2JUKi6u6ZUTnSRFxB8HDFvAGtapnwmu3esTpiEVGC6MQjU3fxRJrL9b09
	oXs3RX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYa-00000005lRW-2VqI;
	Wed, 31 Jan 2024 22:59:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJYU-00000005lOq-04GU
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 22:59:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-0007L8-LY; Wed, 31 Jan 2024 23:59:39 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-003j6g-98; Wed, 31 Jan 2024 23:59:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJYR-007KFg-0b;
	Wed, 31 Jan 2024 23:59:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	ske@pengutronix.de
Date: Wed, 31 Jan 2024 23:59:34 +0100
Message-Id: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_145942_126572_7A3A9F1F 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 0/4] ARM: socfpga: add HANDOFF_FPGA2SDR handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Quartus headers for Cyclone V can contain a reset mask for the
fpga2sdram bridge, which was so far ignored. This series remedies that.

Ahmad Fatoum (4):
  ARM: socfpga: complete definitions of handoff registers
  ARM: socfpga: populate HANDOFF_FPGA2SDR with Quartus value
  fpga: socfpga-fpga2sdram-bridge: consult HANDOFF_FPGA2SDR register
  fpga: socfpga-fpga2sdram-bridge: always populate HANDOFF_FPGA2SDR
    register

 drivers/fpga/socfpga-fpga2sdram-bridge.c       | 13 ++++++++-----
 include/mach/socfpga/cyclone5-sdram-config.h   |  3 +++
 include/mach/socfpga/cyclone5-system-manager.h | 13 +++++++++----
 3 files changed, 20 insertions(+), 9 deletions(-)

-- 
2.39.2



