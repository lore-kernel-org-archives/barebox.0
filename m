Delivery-date: Wed, 05 Mar 2025 13:14:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpne9-00AB35-1a
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 13:14:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpne8-0000iy-BL
	for lore@pengutronix.de; Wed, 05 Mar 2025 13:14:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+jJJYijdYT+jYnxLWnDgofxDs0Unh+NmkDeOmfYwKs=; b=pV6GUH1UOZlBqqvLiJhl8KSN23
	PMGzliqaqC5jsBAXY/V6t4umXZoslbtenOdYDrba+l7J4ZmjyRXLulrv5rkIjn4gtWpJq8QdHux9s
	ST/5qUUjoanEH1M022LGJgBgVd3zbCxBzOkMRB5u+DL3Li5TM588jaFQlP75Izl1uOZ6FWEkpzsQB
	UBBQbTAeBtv9J95DdSx6AXI2QN/9vKVhe+bfRFfUk72xBey1ILmF5MXqf5A2NvSAz6tSu+mpvLDkJ
	SsI+IlcnNWxSQPGromdFRzuDTbhBwmfgU+TV05p7DvL6p8gqm69hd0NdRGqQBfKPTfK86Y9LU6TOL
	Aoq3TisA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpndU-00000007yCx-47Zq;
	Wed, 05 Mar 2025 12:14:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmme-00000007pru-479J
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 11:19:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmlC-0002Do-Dc; Wed, 05 Mar 2025 12:17:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmlC-0048O4-0k;
	Wed, 05 Mar 2025 12:17:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmlC-0081Dx-0W;
	Wed, 05 Mar 2025 12:17:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
Message-Id: <174117347816.1911229.14146792947451830485.b4-ty@pengutronix.de>
Date: Wed, 05 Mar 2025 12:17:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_031929_022031_D71C5373 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] SoCFPGA: Arria10: sdram: cleanup and fix DDR
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Mar 2025 09:59:16 +0100, Steffen Trumtrar wrote:
> When the L4WD0 is left enabled on startup, depending on handoff files
> and its PLL settings, the DDR code might hang while waiting for the
> calibration to be successful. Rework this code and cleanup the rest of
> the driver a little bit while we are at it.
> 
> Tested on an Enclustra PE1 board.
> 
> [...]

Applied, thanks!

[1/5] ARM: SoCFPGA: move wait_on_timeout to generic
      https://git.pengutronix.de/cgit/barebox/commit/?id=5080f1eae33d (link may not be stable)
[2/5] ARM: SoCFPGA: arria10-sdram: cleanup emif_clear
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d639315b48c (link may not be stable)
[3/5] ARM: SoCFPGA: arria10-sdram: cleanup emif_reset
      https://git.pengutronix.de/cgit/barebox/commit/?id=41ec8cbd8bfb (link may not be stable)
[4/5] ARM: SoCFPGA: arria10-sdram: remove workaround
      https://git.pengutronix.de/cgit/barebox/commit/?id=da158a7fd07b (link may not be stable)
[5/5] ARM: SoCFPGA: arria10-sdram: cleanup ddr_setup
      https://git.pengutronix.de/cgit/barebox/commit/?id=c97ef53a7eae (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



