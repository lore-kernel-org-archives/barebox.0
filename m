Delivery-date: Thu, 15 Feb 2024 11:14:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raYkn-007Ij9-0b
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 11:14:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raYkm-00063c-GC
	for lore@pengutronix.de; Thu, 15 Feb 2024 11:14:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j7Cz8lml2mrHCuh0Xm3bFSkIX4iLas569peK0XbHToo=; b=c/E/ioKBLrKokd99chCx+g2pfB
	iUZEorcMXBlvkqRV7Soh4Ru2+QjKFjugnXkFyzoVObNiXF6bdBfvpvztSQKFf+pZg8EYH3gWuGAfF
	OtxO/j6ZXooKM62ieOWNQp0zBAgNXqkXIs3V0wfrUWOc8ATBuHyfgDS3/6LlgaK/0d+Bm2ctjjkxN
	3ET2/SW1NHDlcmeGRXWV1XPexCaULZc+ISk4nHgq+iQR75LBkCRPEA5ISl6OQzP/l7bHGhxT+N9Os
	qiHGSdQ42DML+PdpO+HnfPgpsluq8RgFYIyXT4w0I1NFqbkiDpfirQ3JQTKrxOyEF/Qy1IDIdVu/V
	uTYswS6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raYk7-0000000FiPB-0MyE;
	Thu, 15 Feb 2024 10:13:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raYjf-0000000Fi8F-19Or
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 10:13:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1raYjc-0005sE-Hp; Thu, 15 Feb 2024 11:12:52 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1raYjc-000rdj-5K; Thu, 15 Feb 2024 11:12:52 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1raYjc-009zzl-0G;
	Thu, 15 Feb 2024 11:12:52 +0100
Date: Thu, 15 Feb 2024 11:12:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20240215101252.nefqtngf5vxm2a5f@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
 <718388d8-1540-4f45-9604-ae8e63cf986f@pengutronix.de>
 <Zc3ItV4Ak4NDdWPs@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zc3ItV4Ak4NDdWPs@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_021255_544279_5E8B0E78 
X-CRM114-Status: GOOD (  36.90  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-15, Sascha Hauer wrote:
> On Wed, Feb 14, 2024 at 07:09:16PM +0100, Ahmad Fatoum wrote:
> > Hello Sascha,
> > 
> > On 13.02.24 16:17, Sascha Hauer wrote:
> > > This adds support for AHAB based secure boot on i.MX93. The user
> > > interface is integrated into the existing hab command used for ealier
> > > i.MX variants. On i.MX93 the hab command can:
> > > 
> > > - read/write the SRK hash
> > > - lock the device
> > > - show lock status of the device
> > > 
> > > Like done with HAB the AHAB events will be shown during boot so that
> > > possible failure events are seen should there be any issues like no
> > > or wrong SRK hash fused or an unsigned image is attempted to be started.
> > > 
> > > Unlike with HAB it is currently not possible to sign the barebox images
> > > directly within the barebox build system. Instead, the images need to be
> > > signed afterwards with the NXP CST tool. I am currently unsure if it's
> > > worth the hassle, as it turned out to be quite straight forward to
> > > integrate the signing process into YOCTO (likely also ptxdist, but I
> > > haven't tried yet). In the end it might be easier than adding another
> > > indirection with tunneling the necessary keys through the barebox build
> > > process. I might be convinced otherwise though.
> > 
> > Could you make the signing inside the barebox build system optional
> > for HAB? Then we could have a prompt symbol that depends on HABv4, e.g.
> > CONFIG_HAB_SIGN_IMAGES or something and disabling that would require
> > external signing like for AHAB. I think this would improve user experience
> > a fair bit, because HAB and AHAB could be handled the same build-system
> > side and it would be easily discoverable in Kconfig that one supports
> > sigining internally and the other doesn't.
> 
> Originally it was a design decision to integrate the signing into
> barebox. I wanted to make barebox self contained and not depend on
> external tools to generate images.
> I am not sure though if anyone really builds signed images without
> the help of a build system. So I had the same thought as well if we
> could let the build system do the signing also for HAB. I haven't looked
> into it what it takes to implement that. One point where it gets
> difficult is our special trick to create signed USB images. We handle
> the DCD table in imx-usb-loader to setup DDR and disable DCD in the
> image. To make that work with signed images we sign an image which
> has the DCD table disabled.

Additional the i.MX8M signing is quite different compared to the i.MX5/6
sigining since only the pbl part is signed and we use symbols to get the
size of the pbl. I'm not saying that it's impossible but we would need
to expose information to the build system.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


