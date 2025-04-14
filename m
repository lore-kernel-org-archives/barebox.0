Delivery-date: Mon, 14 Apr 2025 13:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4I4o-000cfM-0K
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:34:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4I4n-0000vl-Hu
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=faUGnYDz6VZUhiZtSW0HQFbgwo2aPPC9WzpJADPIgro=; b=mpIfwTSefp/6BIQuG6e2YePm+2
	msZbBCdNJBw2+ePSGz60PDV/jv60FRhHe1+1hVFSxgXuvtp5r+sux/uEjtoO4FVCaFxM1JTlRaPa7
	OjEBaNULsfdjHPd7tdKx0sOp7YvYnvnH2OY9+mcXywdl+TKYWRH2MxHD9JAkDyA6vcFQj9ZbeuDF0
	zvijb1uYpCohpdAVXvWN9i90qfDW2hkmYRf+7Gz6/cKEJ1z77cBS1GyGtD2lZX+BaZ4mkQiEhMcZW
	yg1mi8iNNUY258+hcFJnh33a67Kd7AO1vH7RWYWxADdMJ+uo8wFCuiI0uZ20SwUgDEoA3I+8EEvGn
	x5psMmaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4I4L-00000001mT4-2LbG;
	Mon, 14 Apr 2025 11:33:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4I3d-00000001mPo-3UV2
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:32:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I3c-0000O4-5y; Mon, 14 Apr 2025 13:32:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I3b-000F1o-2f;
	Mon, 14 Apr 2025 13:32:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4I3b-001cmf-2K;
	Mon, 14 Apr 2025 13:32:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
References: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
Message-Id: <174463037571.386271.2680238026498953519.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 13:32:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_043257_875097_E0371230 
X-CRM114-Status: UNSURE (   9.06  )
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
Subject: Re: [PATCH 1/3] clk: rockchip: Add new clock-type for the ddrclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Apr 2025 15:07:43 +0300, Alexander Shiyan wrote:
> Changing the DDR clock frequency requires special care, this patch
> adds the DDR clock driver code from the Linux kernel repository.
> While we're here, let's also update drivers/clk/rockchip/Makefile
> to make it more readable.
> 
> 

Applied, thanks!

[1/3] clk: rockchip: Add new clock-type for the ddrclk
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e7465c80e36 (link may not be stable)
[2/3] clk: rockchip: Add linked gate clock support
      https://git.pengutronix.de/cgit/barebox/commit/?id=0336060c12ad (link may not be stable)
[3/3] clk: rockchip: Update RK3188 driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ca5cf10b81e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



