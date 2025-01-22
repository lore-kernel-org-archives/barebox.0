Delivery-date: Wed, 22 Jan 2025 08:44:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVP8-002xw8-1Q
	for lore@lore.pengutronix.de;
	Wed, 22 Jan 2025 08:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVP8-0007fw-JL
	for lore@pengutronix.de; Wed, 22 Jan 2025 08:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zCwGTmozAETOjFGIBxn6geCKdngqfAMn3f31rF3k1xc=; b=G1akZ/u0kULe/GrBSL1ETb8pV0
	LtJ2C7EfYU3o3pwHa+FfLCSt2zA3XOAWN1Nbl0CYH1ex0r/AzS/6O6HOvzZRiEBUinD4HyHX8knJk
	LaSG0WGSJG3j7Xo7vseVunbF1HnIq1crnUaOySQ8cz//stEQa7q6Uh+/YvBk3p4NO0pww5XUfCR7z
	lhBvdOdq/ln0fyDhLsWfoZnNU8Q7SF2h+3VSbejVw2cyKYErutHnzj+U/OsnuYUTpHISFVaRKRhz9
	MkyDDcC7VQaxvb82f9BNOV8TBqUn/QpNrWXGxGhyzwE21mylGL+jNAaqDmUF6XB7lbf8uFVsTCAZh
	AA9jpOPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVOj-00000009ci8-0gKZ;
	Wed, 22 Jan 2025 07:43:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVMz-00000009cVP-2Rla
	for barebox@lists.infradead.org;
	Wed, 22 Jan 2025 07:41:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-0007Dd-9L; Wed, 22 Jan 2025 08:41:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-001FTp-0K;
	Wed, 22 Jan 2025 08:41:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taVMy-00AQnj-08;
	Wed, 22 Jan 2025 08:41:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
References: <20250121121800.2806881-1-eagle.alexander923@gmail.com>
Message-Id: <173753170803.2486177.187424371149243867.b4-ty@pengutronix.de>
Date: Wed, 22 Jan 2025 08:41:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_234149_623686_711C817F 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] aiodev: rockchip_saradc: Add reset control
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Jan 2025 15:17:58 +0300, Alexander Shiyan wrote:
> This adds reset control support for the Rockchip ADC driver.
> 
> 

Applied, thanks!

[1/3] aiodev: rockchip_saradc: Add reset control support
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a46a5f4c4f0 (link may not be stable)
[2/3] aiodev: rockchip_saradc: Prepare driver to add support for other SARADC variants
      https://git.pengutronix.de/cgit/barebox/commit/?id=7aef44578689 (link may not be stable)
[3/3] aiodev: rockchip_saradc: Add support for RK3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=68f64b4571b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



