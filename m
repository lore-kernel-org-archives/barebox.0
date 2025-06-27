Delivery-date: Fri, 27 Jun 2025 21:05:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOM-00BiXU-30
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 21:05:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOM-00075E-CO
	for lore@pengutronix.de; Fri, 27 Jun 2025 21:05:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X0+gU0SgokeOqZAQFlw7ylaP0jBlpIF8d3r1TA2IuiA=; b=E7XUUIBrL10FJTTFnNNkxNwWJv
	7v3FHqvOMsgcTMzx9bewwbSCdqmNmsAtat2XKxHeJlMV+JavEbJawbsZT5JEmroE46PAIUxSuxdoT
	d4kkQmeztLALATJpQSG0l31HTAAqLywnlxV0ZrABI1MwiSu6y+T9HQ5nk2ViEok9bMXQ4oywDtDvg
	t/KX4K37n35OoOczI2ZmdPTt7Bg0B9/UdovcATHfeBImc3/FwRVjUr7BfDFrg+6U8xsVPwTxGHAfI
	rzGPVuCB+AWSGhxNINFUPbdwxRKO0aDaEzB460U4bFPVIkEPqH7O9GRaTFHIMQL8xRaZSDEFlg0WZ
	d4mYf4Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENr-0000000FZUw-2WGZ;
	Fri, 27 Jun 2025 19:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVDHc-0000000FSD1-2I6s
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 17:54:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVDHb-0003bG-8h; Fri, 27 Jun 2025 19:54:39 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVDHb-005ed4-0H;
	Fri, 27 Jun 2025 19:54:39 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVDHa-003f2I-3A;
	Fri, 27 Jun 2025 19:54:38 +0200
Date: Fri, 27 Jun 2025 19:54:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250627175438.o6tx3nz4r3ek3jx4@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-9-4b098e8ac7cd@pengutronix.de>
 <20250627160404.gs7txsvrba4dezds@pengutronix.de>
 <aF7ZUU5UcO2kms34@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aF7ZUU5UcO2kms34@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_105440_587696_F203847F 
X-CRM114-Status: GOOD (  22.24  )
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
Subject: Re: [PATCH 09/14] ARM: i.MX: add imx6_can_access_tzasc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-27, Sascha Hauer wrote:
> On Fri, Jun 27, 2025 at 06:04:04PM +0200, Marco Felsch wrote:
> > On 25-06-27, Sascha Hauer wrote:
> > > On ARMv7 there is no direct way to detect if we are in the secure or non
> > > secure world. Add a imx6_can_access_tzasc() for this purpose. When
> > > accessing the TZASC triggers a data abort then we are in the non secure
> > > world. This function can be used later to detect if we have to load
> >        ^
> > because OP-TEE configures the TZASC access policy to secure-world R/W. ?
> 
> Will add.
> 
> > 
> > Keep in mind that this test will fail if a downstream/buggy OP-TEE
> > doesn't configure the CSU correctly. Fingers crossed that this never
> > will never happen.
> 
> When you are using this buggy OP-TEE for security relevant stuff you're
> screwed anyway.
> 
> When in this case barebox tries to start OP-TEE again and your board
> crashes because of this then you are lucky as this could give you a hint
> that there's really something wrong.

Yes, you're right.

> > > +bool imx6_can_access_tzasc(void)
> > > +{
> > > +	if (!IS_ENABLED(CONFIG_ARM_EXCEPTIONS_PBL))
> > > +		panic("%s only works with CONFIG_ARM_EXCEPTIONS_PBL\n", __func__);
> > > +
> > > +	arm_pbl_init_exceptions();
> > 
> > Can't we do that within the imx*_cpu_lowlevel_init?
> 
> No, we need a proper C environment for this which is not guaranteed in
> these functions.

Ah, right.

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


