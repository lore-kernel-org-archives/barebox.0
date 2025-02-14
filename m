Delivery-date: Fri, 14 Feb 2025 11:32:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszu-002EOx-1W
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:32:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszt-0002Fm-AG
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:32:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sydgYGgCqVoGDkKzT9g1yEy7gX70uK8gWeRTqSRbjM4=; b=BqKp84IAZzdBUDE44CLt5v/iw1
	J/j747gSePFlIWy+NRrvo1XUDnVYCwAUV3ziuTNSUV43zxu2kTcPFU9E+LZye7nGPxqVYIG+2jTt9
	mPpf6wVTSclKmlbWyZH83e5Bc9hGNA4pa+61OBFg7R4KdFZP5stpygVZXourpHVlSIirbfPiNxBb3
	jW5BuCRB5yG40qI+wk1SAT6PsRh2mlq8wdJcT++om4y8TQoLFXG2tusATZ5mKqzFwsY4pDazdjCEx
	ieI3hGFSWfzvBR4LHEjwPZt2gHi3+Inuaok6lPp+dflrrCWSSexRSxI9v6N32apzODF8A6M1umHm+
	23F40tHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiszQ-0000000EWBH-0brL;
	Fri, 14 Feb 2025 10:32:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisyN-0000000EW0V-2QiD
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-0001wT-Vn; Fri, 14 Feb 2025 11:31:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-000twL-2D;
	Fri, 14 Feb 2025 11:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-006TU7-20;
	Fri, 14 Feb 2025 11:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250212104842.504-1-jmaselbas@zdiv.net>
References: <20250212104842.504-1-jmaselbas@zdiv.net>
Message-Id: <173952906062.1543284.10772766948007639190.b4-ty@pengutronix.de>
Date: Fri, 14 Feb 2025 11:31:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_023103_624785_4A111D64 
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/6] Initial support for Allwinner A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Feb 2025 11:48:36 +0100, Jules Maselbas wrote:
> This series adds an initial support for Allwinner, currently only
> targetting the Pine64+ board, based on the A64 SoC.
> 
> This first series is intented as a second boot image only, that can
> be started from u-boot. This series provides the bare minimal for
> barebox to load the next OS from sd/mmc.
> 
> [...]

Applied, thanks!

[1/6] clk: divider: add error code propagation
      https://git.pengutronix.de/cgit/barebox/commit/?id=2faf9ac88f41 (link may not be stable)
[2/6] clk: Add clock driver for sun50i-a64
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a8afdc9afe0 (link may not be stable)
[3/6] pinctrl: Add sun50i-a64 pinctrl driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=199f3e78b059 (link may not be stable)
[4/6] mci: Add sunxi-mmc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=085180b15e4c (link may not be stable)
[5/6] ARM: sunxi: Introduce mach-sunxi
      https://git.pengutronix.de/cgit/barebox/commit/?id=da8c77923696 (link may not be stable)
[6/6] Documentation: sunxi: Add some documentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=0429625f4d83 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



