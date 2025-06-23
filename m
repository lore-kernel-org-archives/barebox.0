Delivery-date: Mon, 23 Jun 2025 16:31:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTiCi-00AI6N-2x
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 16:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTiCi-0004r2-9O
	for lore@pengutronix.de; Mon, 23 Jun 2025 16:31:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bzcMhYT9al+1g15YeLiiZh4+X1e5kVL/xUhpeTFJRzc=; b=RkgAS+FvCXuLvtKmgbbdlRPnL7
	bZ57ui/6tp8YdRQ77U7XqbJFmjHxfZHBgsWdoaUkemdxAJji+Otx+cMUNMNZuPiTTP3zc4ygPi6Nc
	NjA2CI+nlvNPwtHogFFMHv7+ZMkb1zg84xgZax9ObWL+mAdPvLAotBQ5UPYjia3+PbjSPJqbAw/F/
	cZzbcv3W4epE8Saf/HKzQNHOG/GFoP+kek2XKxqN+CqdvcZedQwsA3cq6i/ke7/Fn47gjD+aAazEl
	JhmgNuM+GVlx3J3wiPk+mbqCZPrvPsfm3Bjbk+dcvg/Ut7WvuJnwY89tYIdvlx6AT1XuezQGERLk/
	OJNMhFGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTiC3-000000033ZS-1d4L;
	Mon, 23 Jun 2025 14:30:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfri-00000002awU-3y3J
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 12:01:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTfrg-00043C-7J; Mon, 23 Jun 2025 14:01:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTfrg-004wQ4-07;
	Mon, 23 Jun 2025 14:01:32 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTfrf-00DBds-2x;
	Mon, 23 Jun 2025 14:01:31 +0200
Date: Mon, 23 Jun 2025 14:01:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aFlCG6YGEmXkNwzA@pengutronix.de>
References: <20250618123642.1432610-1-a.fatoum@barebox.org>
 <aFVYBJikCmjGpupI@pengutronix.de>
 <0c5b58a4-bc8a-4775-a265-f1bb2b46eea0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c5b58a4-bc8a-4775-a265-f1bb2b46eea0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_050134_985620_3A7F2C55 
X-CRM114-Status: GOOD (  32.16  )
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
Subject: Re: [PATCH] mmu: explicitly map executable non-SDRAM regions with
 MAP_CODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 20, 2025 at 05:45:45PM +0200, Ahmad Fatoum wrote:
> On 20.06.25 14:45, Sascha Hauer wrote:
> > On Wed, Jun 18, 2025 at 02:36:42PM +0200, Ahmad Fatoum wrote:
> >> So far we have been setting eXecute Never on MAP_UNCACHED regions and
> >> left it out for the default MAP_CACHED region.
> >>
> >> We have at least three places, which depend on this to remap non-SDRAM
> >> regions executable, so ROM code or newly uploaded code can be run.
> >>
> >> Switch them over to use a new MAP_CODE mapping type. For now, this is
> >> equivalent to MAP_CACHED, but with the addition of W^X support in
> >> barebox, this will be required to avoid a prefetch abort when MMU
> >> attributes are used.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> >> ---
> >> Sascha, I think this should be ordered before your MMU patches to avoid
> >> the known regressions. Let's see what else there is. :)
> >> ---
> >>  arch/arm/mach-imx/romapi.c | 3 ++-
> >>  drivers/firmware/socfpga.c | 3 ++-
> >>  drivers/hab/habv4.c        | 2 +-
> >>  include/mmu.h              | 1 +
> >>  4 files changed, 6 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> >> index 10af42f28a76..a4143d372ae8 100644
> >> --- a/arch/arm/mach-imx/romapi.c
> >> +++ b/arch/arm/mach-imx/romapi.c
> >> @@ -299,7 +299,8 @@ void imx93_bootsource(void)
> >>  		goto out;
> >>  	}
> >>  
> >> -	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CACHED);
> >> +	/* TODO: restore uncached mapping once we no longer need this? */
> >> +	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CODE);
> >>  
> >>  	OPTIMIZER_HIDE_VAR(rom_api);
> >>  
> >> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
> >> index 0f7d11abb588..4b10ca009798 100644
> >> --- a/drivers/firmware/socfpga.c
> >> +++ b/drivers/firmware/socfpga.c
> >> @@ -353,7 +353,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
> >>  		return status;
> >>  	}
> >>  
> >> -	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
> >> +	/* TODO: restore uncached mapping once we no longer need this? */
> >> +	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);
> > 
> > This is done before the code is copied to this page. I moved it after
> > the fncpy call to avoid writing to readonly memory.
> 
> fncpy calls memcpy internally though, so we should either leave the MAP_CACHED
> as is and add a further MAP_CODE after the fncpy or introduce a fncpy_toio
> that calls memcpy_toio internally.
> 
Ok, changed that to:

	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);

	fncpy();

	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);

	ocram_func()

	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_UNCACHED);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


