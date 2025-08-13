Delivery-date: Wed, 13 Aug 2025 09:41:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um67G-0006Zc-2I
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 09:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um67F-0005KZ-Ig
	for lore@pengutronix.de; Wed, 13 Aug 2025 09:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NDqoRKS+PLI0pi4iRSFzNB4UiHH93NA/Sve0tv+LzvA=; b=y0eN6LLz4iwaf6dqxHkZnwYUf3
	RsJJF0/wOb9+lMttV4ORcwEXC4TKzaDIaddGn/rt76YCO5TZyHmb3LFUeRxZg3UjXp9hMgxg0MoHV
	TgwYS7bOTifwD+CYNFBpsiKHm+DZhGwZZMol+MeHKNQXDsvJbO6k6rx3P7OfQNOlpSih+OnVY9GX+
	vLaE00zvi6h/FmVfsZc3z7YOfbNPKgyHqE4nVid74p4F+y3q0uIZB111k4xvJ/A0l7oJ64l6KokoP
	GwS6ywWxex6OljkDCDoHM4swUjti4UcFMmfCnHNIgsA3iAJrIV4h8MyNSh6eTJH9VyI7grBcdgflH
	e0RGjlrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um66T-0000000CxKM-2kGs;
	Wed, 13 Aug 2025 07:40:57 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um5Kg-0000000CqCp-20dN
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 06:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=NDqoRKS+PLI0pi4iRSFzNB4UiHH93NA/Sve0tv+LzvA=;
	b=tUT17msRYdYVlVmfnRz/EBx/6TvNqqH43hvUDkJ9tm5Cyutz/FQmxNGLZipbRafoDov7nQ1yVGZzr
	 OgEfXlZ2Qw7sBMhSJ/yAnTD+HobSqeDiH/EJzraD7pPkq94gBSYuC3/idUqYX7FYT/X+QP5/WEESXa
	 cGZWp5ceghk9vGnYtlLlDaLe8muyUQhtROoqnVSPZlqRPUwNpyJtPCzFeT8q/XZqQ/ZSzuZ/Ivd9QO
	 0EklCUiWx0mAly9o5TwwcWC0SBxVscVKDvXK0DDprCP4ptazAzTILZPPxIq7XqcBa5zk41nCOZ21eW
	 RLHtsMgL7scOyedfWEUD2SjP1VuX+qQ==
X-MSG-ID: f0644048-7811-11f0-9d4d-00505681446f
Date: Wed, 13 Aug 2025 08:51:28 +0200
From: David Jander <david@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250813085128.4669b30c@erd003.prtnl>
In-Reply-To: <aJwjeV5NcM4E4IsW@pengutronix.de>
References: <20250811064026.753776-1-david@protonic.nl>
	<aJwjeV5NcM4E4IsW@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_235134_938954_65735E41 
X-CRM114-Status: GOOD (  16.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Add Rockchip RK3576 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 13 Aug 2025 07:32:41 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi David,
> 
> On Mon, Aug 11, 2025 at 08:40:18AM +0200, David Jander wrote:
> > This set of patches adds basic support for Rockchip RK3576 SoCs.
> > Peripheral support is added for aiodev (SARADC) and GPIO.
> > 
> > David Jander (8):
> >   clk: rockchip: clk-pll.c: Fix macro name confusion
> >   clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
> >   ARM: Initial support for Rockchip RK3576
> >   arm: dts: Add barebox specific RK3576.dtsi
> >   aiodev: rockchip_saradc.c: Add support for RK3576
> >   gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
> >   arm: dts: rk3576.dtsi: Add gpio aliases
> >   phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found  
> 
> Looks fine. Do you happen to have some board support for the RK3576 as
> well? Would be good to have for compile coverage.

Yes, I wanted to heave the SoC support sorted out first so I could rebase the
board code on whatever the result may end up being and then submit it.
You'll see it shortly. There are some hacks I need to sort out still though.

Best regards,

-- 
David Jander


