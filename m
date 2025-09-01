Delivery-date: Mon, 01 Sep 2025 10:46:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0BY-006qph-1R
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:46:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0BX-0007HA-81
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kzhHZaVZVE5X/N8zt0aA8p8ek3MLSsqsbPtHXka+QR0=; b=KrVh9rHDHBRbAWTcj6bRwJg5/Q
	UOS6oiVN7m3ubsq0zmGAtSO+VNxCq2lnty9GH4pKB1kx+y1qOgc92qxfBsocuLlBq/P1wW0taBcFQ
	Nh+2TgWWUodZckwazdVBaBl3ClJtSgRfUvRtP8I/XBQ7rdNYXgQU7qVMwWBlAUDGn/pTBDlYaWOMZ
	UnLoLB9e8kVkuNNM+89VuIs0ygCkihSeCEzp3dYhhPfpreLClLkb5iFR0MmnQnFlComFMXUiHxkNB
	k8bwN3OYG/QmzLKFIwiJONh5corjUDKMB5nUNg8T+iwVpy2p2o6/hwxDjRVfkgXLjO1KERDsH6+ib
	QKvp4Wsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut0Ax-0000000Bcly-0Fad;
	Mon, 01 Sep 2025 08:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszuP-0000000BZvI-3XJq
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 08:29:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uszuM-0001OH-TB; Mon, 01 Sep 2025 10:28:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uszuM-003Bma-21;
	Mon, 01 Sep 2025 10:28:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uszuM-00DCwy-1g;
	Mon, 01 Sep 2025 10:28:58 +0200
Date: Mon, 1 Sep 2025 10:28:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Message-ID: <aLVZSt6ER3NO4XOA@pengutronix.de>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
 <20250901-imx6-usb-uuu-v1-3-1194bb6135ae@pengutronix.de>
 <79fff7ee-4e50-426e-94f2-3c2e2bfba2d4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79fff7ee-4e50-426e-94f2-3c2e2bfba2d4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_012901_884433_E4585182 
X-CRM114-Status: GOOD (  25.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] mach-imx: Kconfig: add option for image with dcd
 auth block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 01, 2025 at 10:23:13AM +0200, Ahmad Fatoum wrote:
> 
> 
> On 9/1/25 9:35 AM, Sascha Hauer wrote:
> > From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
> > 
> > Add option CONFIG_HABV4_IMAGE_SIGNED_USB_DCD to select build of barebox
> > image for i.mx6 devices with an additional authentication block in CSF
> > ("0x0091000 offset size filename").
> > Additional the barebox toolchain will build now a signed image e.g.
> > barebox-image-name-dcdus.img for usb loading with SDP DCD_WRITE ROM
> > command.
> > 
> > Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
> > ---
> >  arch/arm/mach-imx/Kconfig |  9 +++++++++
> >  images/Makefile.imx       | 11 +++++++----
> >  2 files changed, 16 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index 0d745ce2315834ec5d0c366d227b40f2adff5e83..ade4a4ce1783fc60f85aefab2da2df17a57bfe55 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -945,6 +945,15 @@ config HABV4_IMAGE_SIGNED_USB
> >  	  enable the creation of a usb signed image, if the habv4-imx6-gencsf.h
> >  	  included in the flash-header and the NXP cst Tool is available
> >  
> > +config HABV4_IMAGE_SIGNED_USB_DCD
> > +	bool "build signed USB images including DCD"
> > +	depends on ARCH_IMX6
> > +	depends on HABV4_IMAGE_SIGNED_USB
> > +	help
> > +	  enable the creation of a usb signed image loaded via SDP and DCD_WRITE
> > +	  ROM command, if the habv4-imx6-gencsf.h included in the flash-header
> > +	  and the NXP cst Tool is available
> 
> Can you add here the info that this makes the image loadable via uuu?
> Can imx-usb-loader still load this image?

I did, but that change didn't make it into this patchset :(

I would add:

	The image will have the filename ending
	*-dcdusb.img and is compatible with NXPs uuu tool. The images are not
	compatible with imx-usb-loader.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


