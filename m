Delivery-date: Tue, 01 Oct 2024 08:36:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWVB-004rdd-1c
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 08:36:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWVB-0001Gf-VN
	for lore@pengutronix.de; Tue, 01 Oct 2024 08:36:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LPo/ywf3xvchFxT3bPn9hTEjQ8+KI5nb4fC8Wb40USE=; b=nHpNkp4LQ9sZTPCCA+pB+igD4D
	blXtwritAjiIJTWYhWAPCd/gEyFXPSy/AIETfEW7jOqhhPV2y7l3w80u6r3c9QaXrnITSVxekdESO
	lK3IN4K+tDr8vhDe0mYSuojckOTcY21fyisPE6Q4C5ms7MsvJPgnYBEADjeCP/iZBApuTKLuvPvtW
	vKMr4LrTf/akCquoE4WDIazEZiur1RnCdjAiQ7QhDY6WD0DUyI3MT02YP0YVeRGPEjN4rD171BqHk
	Ln/7tC9ErCFbO2irIYYNWVIqSqEWevDovL1r3uIS2kYbJRBJj+MHYd9L9PWo5aQSwHztxw/XGnnSl
	ggEjzKpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svWUd-00000001lx0-32Qq;
	Tue, 01 Oct 2024 06:36:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svWTn-00000001lpi-3azv
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 06:35:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1svWTl-0000es-3F; Tue, 01 Oct 2024 08:35:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1svWTk-002oWg-NC; Tue, 01 Oct 2024 08:35:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1svWTk-004tL2-23;
	Tue, 01 Oct 2024 08:35:24 +0200
Date: Tue, 1 Oct 2024 08:35:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvuYLC-IEmiHKTrQ@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
 <20240927-vop2-v2-15-dc8dcfc651d5@pengutronix.de>
 <0ca5ba95-48e4-49e5-b603-1b84f084b2e6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ca5ba95-48e4-49e5-b603-1b84f084b2e6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_233527_917413_3CB17FE8 
X-CRM114-Status: GOOD (  21.72  )
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
Subject: Re: [PATCH v2 15/15] video: Rockchip: Add VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 30, 2024 at 08:35:54AM +0200, Ahmad Fatoum wrote:
> On 27.09.24 12:37, Sascha Hauer wrote:
> > This adds support for the Rockchip VOP2 video core found on the Rockchip
> > SoCs RK3566, RK3568 and RK3588. The code is based on the Linux driver
> > and has been heavily stripped down for barebox. Support for the cluster
> > windows has been removed, also support for YUV modes has been dropped.
> > 
> > Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # rk3566 HDMI
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> > +struct driver vop2_driver = {
> > +	.probe = vop2_bind,
> > +	.name = "rockchip-vop2",
> > +	.of_compatible = vop2_dt_match,
> > +};
> > +device_platform_driver(vop2_driver);
> 
> Unfortunately, this causes the VOP2 driver to hang my CPU on the first
> MMIO access, unless I move it back to late_initcall level.
> 
> I added *_ensure_probed for the Rockchip I/O domain device, but this
> didn't help and I am not sure where exactly (device dependency? timing?)
> the problem is. Any ideas?

No idea, sorry.

I switched back to late_platform_driver() while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


