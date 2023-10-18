Delivery-date: Wed, 18 Oct 2023 10:09:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1cN-00Clxv-EQ
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 10:09:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1cM-0001Ms-13
	for lore@pengutronix.de; Wed, 18 Oct 2023 10:09:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nncd61q5sGJcbcin2/TbKuDGCKPri15GtxsF/0JFeUo=; b=d3DvCzqQje5jv1ObV7oH1Z+7Sd
	7/HsS1RjsoMxvAG4kJe9xbw156dua+/RvBHa7FnyEybqEy8OYMeXVSM9UBs6ToZ4ZXi9DbvH/wvvk
	oVDNT4nsbQh/0Nxc1CyKEvyvCEnIEAFJUE+5kaMOTRpSobzKyTuS8uRtw9wdfwudJy3rR6pRWR1Zt
	s5TY8CEYf6JmNa5YsJvsuE32pXKnZJfF4OOggmrl6L3BieMKeulXK0hZUejkwLOhOu+e+VTGJvt8a
	ieDAf7FvoQU+La0UuF2pIRwgRnft+ya1F6nNYniUbX8mP1Ms1FQxkdOOcGqAvAzJ6ab69VyULw88r
	HAZw456w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1bJ-00E6bc-1j;
	Wed, 18 Oct 2023 08:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1bG-00E6b2-06
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 08:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1bE-0001At-Gh; Wed, 18 Oct 2023 10:08:16 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1bE-002Vml-4c; Wed, 18 Oct 2023 10:08:16 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1bE-00F3JT-2U; Wed, 18 Oct 2023 10:08:16 +0200
Date: Wed, 18 Oct 2023 10:08:16 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231018080816.GI3359458@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_010818_075664_29149E14 
X-CRM114-Status: GOOD (  27.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/29] i.MX8M HAB Fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 17, 2023 at 04:51:02PM +0200, Marco Felsch wrote:
> Hi all,
> 
> unfortunately with the addition of the FlexSPI image support I broke
> the HAB support for i.MX8M devices because I didn't honored the new CSF
> location. This PR will fix this for the MMC/SD/USB boot case.
> 
> Additional the PR adds the support to HAB boot the system from a QSPI
> NOR as well. For the FlexSPI HAB boot a 2nd CSF slot/area is added to
> keep the very user-friendly single-image approach.
> 
> Before reviewing Patch13 and onwards I do recommend to look at Patch26
> first to get an overview of the final result.
> 
> Patch1-7:
> Cleanup the hab command code and image artifacts and enable it support
> for all i.MX8M devices.
> 
> Patch8-9:
> Add the signing support to the Makefile.imx and convert the i.MX8M rules
> to use the new macro to cleanup the code.
> 
> Patch10-12:
> Prepare i.MX8M*-EVKs to be able to build signed images.
> 
> Patch13-14:
> Add support for multiple CSF slots.
> 
> Patch15-23:
> Fix the HAB support for MMC/SD card first and add/fix the HAB support
> for FlexSPI images.
> 
> Patch24:
> Make it possible to pass CST command line paramters via environment.
> This is very useful for new CST versions which do support PKCS11
> out-of-the box if the user specify the backend via '-b pkcs11'.
> 
> Patch25-26:
> Documentation patches to become an overview of the FlexSPI HAB single
> image implementation.
> 
> Testers are very welcome :)
> 
> Marco Felsch (20):
>   i.MX: HAB: remove unused init() hook
>   ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
>   ARM: boards: i.MX8M: make use of new flexspi-imx8m{m,p}-cfg.h header
>   ARM: lds: introduce HAB_CSF_LEN define for the hab_csf section
>   ARM: lds: add support for a 2nd CSF area
>   scripts: imx: force flexspi and hab option order
>   scripts: imx: move flexspi_image() into header
>   scripts: imx: fix i.MX8M CSF header placement
>   scripts: imx: add imx8m_get_offset_size helper
>   scripts: imx-image: header_v2: add CSF slots
>   scripts: imx-image: hab_sign: refactor function
>   scripts: imx: replace static string allocation
>   scripts: imx: add hab_qspi support
>   scripts: imx: add helper to write CSF Blocks command
>   scripts: imx: fix HAB for FlexSPI boot
>   scripts: imx-image: add missing close()
>   scripts: imx-image: add support for CST_EXTRA_CMDLINE_OPTIONS
>   ARM: i.MX: add hab qspi support if enabled
>   Documentation: boards: imx: replace i.MX8MQ with i.MX8M
>   Documentation: boards: imx: add FlexSPI sub-section
> 
> Rouven Czerwinski (9):
>   kbuild: clean start*_*.{p,ps}imximg files
>   i.MX: HABv4: fix event status comparison
>   i.MX: HABv4: fix i.MX8MQ device lockdown
>   i.MX: HABv4: extend support to i.MX8M SoCs
>   i.MX: HABv4: retrieve HAB ROM version for i.MX8M
>   ARM: i.MX: allow HAB for i.MX8M family
>   ARM: i.MX: introduce build_imx8m_habv4img
>   ARM: i.MX: convert i.MX8M to helper
>   ARM: boards: i.MX8M: add HAB image support

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


