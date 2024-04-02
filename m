Delivery-date: Tue, 02 Apr 2024 11:23:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraMG-003Big-1L
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 11:23:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraMF-0001Sw-Ri
	for lore@pengutronix.de; Tue, 02 Apr 2024 11:23:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qoAP9HiAUOblMh4woPnzjB6jEu6Sd3aLHqRcCNcSiME=; b=uXJNi+hIYp9o47/N2jdBrSAgVd
	xcDIwCpexamSRRB7ketxf44efEMO/O+mXoqxft5qPib2bMDMfl+ZanPZZZqGW8OdpQ0V3O9W663q8
	UuUi5rIsk93raI9sNvBwLFw8jboXpLoMp5TWo7Il76irJfC6VL8D0PsSXq1b42A6jMBBy8aRP6Ru+
	Jov4I0EHV0vT4aqa5zG+lbHRnIDY4y2b7B6z6XJjnB/dxRKCK3/fKOpsLO2jzLUkvHYIgwDmQ4QEI
	uE/iuWCOVFj5ul8V38JlcECyukgUS4FaHi4hB0jU04vVERIph7eo0k6E2N0B8rAX7plosc6AWMnS2
	TmwG6UAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraLp-0000000AQ4m-0I0w;
	Tue, 02 Apr 2024 09:22:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraLk-0000000AQ3X-1ehF
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 09:22:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraLi-0000tm-QO; Tue, 02 Apr 2024 11:22:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraLi-009xCA-E2; Tue, 02 Apr 2024 11:22:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraLi-00HQmT-1D;
	Tue, 02 Apr 2024 11:22:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240402091926.4096972-1-s.hauer@pengutronix.de>
References: <20240402091926.4096972-1-s.hauer@pengutronix.de>
Message-Id: <171204975437.4154369.756258275198950462.b4-ty@pengutronix.de>
Date: Tue, 02 Apr 2024 11:22:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_022236_586622_F0F6FF28 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 11:19:26 +0200, Sascha Hauer wrote:
> barebox adoption of Linux commit 2dc66a5ab2c6:
> 
> |    clk: rockchip: rk3588: fix CLK_NR_CLKS usage
> |
> |    CLK_NR_CLKS is not part of the DT bindings and needs to be removed
> |    from it, just like it recently happened for other platforms. This
> |    takes care of it by introducing a new function identifying the
> |    maximum used clock ID at runtime.
> |
> |    Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> |    Link: https://lore.kernel.org/r/20240126182919.48402-2-sebastian.reichel@collabora.com
> |    Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=966c042f806f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



