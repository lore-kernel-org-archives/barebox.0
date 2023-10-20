Delivery-date: Fri, 20 Oct 2023 15:20:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpQr-00FZwM-7s
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 15:20:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpQq-0000vU-2K
	for lore@pengutronix.de; Fri, 20 Oct 2023 15:20:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGOIxHUoMjyaVFwGIhCBThNkwtQlfZeK5IyJIFAp5J0=; b=wsX2WMpwxfK+zMpod8a9SxDG+P
	/hHhmGyUhD5h/qCx8RBHzhbnrmWyGVsg+2ToecKyC+sOovF2HEhNSM4et1Yhz5gourqIbW/rwewV6
	jJNfACCZjZl3GtQLKPVeoRBjUZc0HGqw4d5hKfDPCULD2qpfBZTk3p9S/ZwENjmkmKsY1Dba3vemg
	XWqZXVqFQCAStuzrb3OPS619f4nK44SPXHDrpexf75k4GLwhpvEUVECGye+j7Pq2KlSNDpkgYcZFJ
	+dVXDaQjYl7eoqziVctnk+BqmueFzAVuYEum2X32bFF8qlPXOh4pK7HYMwDtkhP7gSpTOZdree4dG
	WL0Vz5tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtpPd-002M08-0d;
	Fri, 20 Oct 2023 13:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtpPY-002Lxh-0H
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 13:19:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qtpPW-0000eZ-LC; Fri, 20 Oct 2023 15:19:30 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qtpPW-0032R8-8q; Fri, 20 Oct 2023 15:19:30 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qtpPW-00FRwY-6Q; Fri, 20 Oct 2023 15:19:30 +0200
Date: Fri, 20 Oct 2023 15:19:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231020131930.j6vuiwsklpenh5bj@pengutronix.de>
References: <20231020121710.658511-1-a.fatoum@pengutronix.de>
 <20231020130335.dm7qipxvsbf7375w@pengutronix.de>
 <82dfaeae-a7f2-6217-83fb-b977bb94dfc3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82dfaeae-a7f2-6217-83fb-b977bb94dfc3@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_061932_138704_B2075EF9 
X-CRM114-Status: GOOD (  24.58  )
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
Subject: Re: [PATCH] ARM: i.MX8M: limit PBL size to 0x3f000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-20, Ahmad Fatoum wrote:
> On 20.10.23 15:03, Marco Felsch wrote:
> > On 23-10-20, Ahmad Fatoum wrote:
> >> On i.MX8M(Q/M/N/P), barebox PBL is loaded 0x1000 bytes into ITCM
> > 
> > Nit: only the i.MX8MQ-EVK was converted. Don't know if the rest is
> > broken since they don't use the pblb (PBL only).
> 
> I can't follow what you mean with "don't use the pblb (PBL only)",
> but the other three 8MQ boards already have a MAX_PBL_MEMORY_SIZE,
> so as far as this patch is concerned, there's nothing further to do.

Sorry for the confusion, they use ".imximg" instead of ".pimximg". Not
sure if this is correct and you're right they already do have the
MAX_PBL_MEMORY_SIZE defined. I just wanted to point out that not all
i.MX8MQ images do use the new macro.

Regards,
  Marco

> >> at address 0x7e00_1000. ITCM is 128K followed by 128K of DTCM.
> >>
> >> Therefore, in total, barebox PBL may not exceed 0x3f000. Now that we
> >> have a common macro for defining boards, let's add a
> >> MAX_PBL_MEMORY_SIZE_$(entrypoint) into it, so check that we don't
> >> exceed this size at runtime.
> >>
> >> Boards that trip over this, should consider using get_builtin_firmware_ext
> >> to offload binaries into barebox proper.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > 
> >> ---
> >>  images/Makefile.imx | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/images/Makefile.imx b/images/Makefile.imx
> >> index 50f0a64b3091..ca09853c4b6e 100644
> >> --- a/images/Makefile.imx
> >> +++ b/images/Makefile.imx
> >> @@ -26,6 +26,7 @@ $(eval
> >>  ifeq ($($(strip $(1))), y)
> >>  	pblb-y += $(strip $(2))
> >>  	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
> >> +	MAX_PBL_MEMORY_SIZE_$(strip $(2)) = 0x3f000
> >>  	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.pimximg
> >>  	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.psimximg
> >>  	image-y += barebox-$(strip $(4)).img
> >> -- 
> >> 2.39.2
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


