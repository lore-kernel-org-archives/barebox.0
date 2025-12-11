Delivery-date: Thu, 11 Dec 2025 09:10:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTbl4-00ADl1-1M
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 09:10:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTbl3-0000dm-SQ
	for lore@pengutronix.de; Thu, 11 Dec 2025 09:10:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lTqGoRiepsJGzWpjBUjWGDibEr5Peqk13670vgqtgbg=; b=FdgOUJuEbjWoBSVfMCAfFtNhG/
	y3S/ejckDC5/40bIeCeRs5440X2nA0do5wKUDmjB4EMM1pOodJUDacGXdqQmqoviJw/edSD/dMUGZ
	v02At2xl6XbjkDp+7bG0x4fJ4yejJwvd6dShoJFmk4+ufgDdjjw7zKYin+IzEEeA4U0tVA5fiEhlw
	oyxUcGbWnunZBM8W0VASG2Xspon8GW6SZ/PPWvEmv2mEiDUejbmoCznnPhCHeYHOldWEyuXIfcKgN
	ZcIpIXVf3fzGpDrTcFe/0MdQGk717MeXFJONPNN9kzdoYDBySkLO+lnfvKYkSbfcAAf77SX+sxsth
	GCdNmwQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTbkh-0000000GMS5-2G57;
	Thu, 11 Dec 2025 08:10:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTbke-0000000GMRe-38cp
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 08:10:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTbkb-0000Yd-OJ; Thu, 11 Dec 2025 09:10:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTbkb-00563I-1o;
	Thu, 11 Dec 2025 09:10:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTbkb-001EXS-1O;
	Thu, 11 Dec 2025 09:10:13 +0100
Date: Thu, 11 Dec 2025 09:10:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aTp8ZaoiferxM6ES@pengutronix.de>
References: <20251209081731.3444677-1-s.hauer@pengutronix.de>
 <8c86e290-7e82-417f-943d-cd45fa147e8a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c86e290-7e82-417f-943d-cd45fa147e8a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_001016_807931_CC2A8AAF 
X-CRM114-Status: GOOD (  21.81  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX Riotboard: Use eMMC boot partition to boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 09, 2025 at 10:47:47AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 12/9/25 9:17 AM, Sascha Hauer wrote:
> > The Riotboard boots fine from eMMC boot partitions, so use them to store
> > barebox.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Is this worth a migration guide entry?

Yeah, added one.

Sascha

> 
> Cheers,
> Ahmad
> 
> > ---
> >  arch/arm/boards/embest-riotboard/board.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
> > index ebaff48388..83fbf0ee57 100644
> > --- a/arch/arm/boards/embest-riotboard/board.c
> > +++ b/arch/arm/boards/embest-riotboard/board.c
> > @@ -21,7 +21,7 @@
> >  
> >  static int riotboard_probe(struct device *dev)
> >  {
> > -	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.barebox",
> > +	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc3",
> >  			BBU_HANDLER_FLAG_DEFAULT);
> >  	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc2", 0);
> >  
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


