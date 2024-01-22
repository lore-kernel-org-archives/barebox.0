Delivery-date: Mon, 22 Jan 2024 11:21:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrQy-00BJeo-0o
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 11:21:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRrQx-0007na-Lf
	for lore@pengutronix.de; Mon, 22 Jan 2024 11:21:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x3EoHcVlF4AXV1tBnIS5P1q8x1rmtx2a0aMzcSXfYJk=; b=OOHwzxqaYcJcF1QzI4I1dwghAV
	R/qZk2yGC+Majeq+k+JOsc8kSjJ3oYEHvy6bMKuYKd6XWnvWtnYiefP7c98X0a2jksTh26ZJl1LLq
	Y5ejXp5KBRkAp7CIzBF/3T98RXIdhhRbQ3UqBcFIBiCUlkap4FLJfYm3tGrC4puhzbrx+v7EFor4X
	sQMXfXCzoFV+WWbf72JbnKpnXkcn7xXtZKYgXv9Myy3Bxo5iO86YvTiS5VZLGh1L/siMptLb1XYQY
	y9zHq0P42CsUTcjw8v1JhM2WKbrwQpa4us7+YVqpJR52KGdGjJyypTdCwnyfW1kF/M5nz+58z+Oie
	72CmDxQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrPr-00BU2k-0t;
	Mon, 22 Jan 2024 10:20:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRrPm-00BU1T-0V
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 10:20:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRrPk-0007e2-Ok; Mon, 22 Jan 2024 11:20:24 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rRrPk-001ZR8-CL; Mon, 22 Jan 2024 11:20:24 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rRrPk-001B7z-9x; Mon, 22 Jan 2024 11:20:24 +0100
Date: Mon, 22 Jan 2024 11:20:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240122102024.GT4700@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-5-s.hauer@pengutronix.de>
 <20240119152103.4nhg4jtfctrfvl6v@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119152103.4nhg4jtfctrfvl6v@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_022026_192307_326BCFC6 
X-CRM114-Status: GOOD (  23.24  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/7] ARM: i.MX93: add imx93_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 19, 2024 at 04:21:03PM +0100, Marco Felsch wrote:
> On 24-01-19, Sascha Hauer wrote:
> > We already have support for detecting the DDR size automatically on
> > i.MX93. Create imx93_barebox_entry() from it and use it instead of
> > the hardcoded DDR size in the tqmba9xxxca board.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/tqmba9xxxca/lowlevel.c |  4 +++-
> >  arch/arm/mach-imx/esdctl.c             | 15 ++++++++++++---
> >  include/mach/imx/esdctl.h              |  1 +
> >  3 files changed, 16 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boards/tqmba9xxxca/lowlevel.c b/arch/arm/boards/tqmba9xxxca/lowlevel.c
> > index 0a57d02451..64913b8de9 100644
> > --- a/arch/arm/boards/tqmba9xxxca/lowlevel.c
> > +++ b/arch/arm/boards/tqmba9xxxca/lowlevel.c
> > @@ -4,11 +4,13 @@
> >  #include <debug_ll.h>
> >  #include <mach/imx/debug_ll.h>
> >  #include <mach/imx/generic.h>
> > +#include <mach/imx/xload.h>
> >  #include <asm/barebox-arm.h>
> >  #include <soc/imx9/ddr.h>
> >  #include <mach/imx/atf.h>
> >  #include <mach/imx/xload.h>
> >  #include <mach/imx/romapi.h>
> > +#include <mach/imx/esdctl.h>
> >  
> >  extern char __dtb_z_imx93_tqma9352_mba93xxca_start[];
> >  extern struct dram_timing_info tqma93xxca_dram_timing;
> > @@ -29,7 +31,7 @@ static noinline void tqma9352_mba93xxca_continue(void)
> >  		imx93_load_and_start_image_via_tfa();
> >  	}
> >  
> > -	barebox_arm_entry(0x80000000, 0x40000000, __dtb_z_imx93_tqma9352_mba93xxca_start);
> > +	imx93_barebox_entry(__dtb_z_imx93_tqma9352_mba93xxca_start);
> >  }
> >  
> >  ENTRY_FUNCTION(start_imx93_tqma9352_mba93xxca, r0, r1, r2)
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index 1bd22cc6ef..2dc858c87f 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -563,7 +563,7 @@ static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  #define IMX9_DDRC_CS_COL_BITS	GENMASK(2, 0)
> >  #define IMX9_DDRC_CS_EN		BIT(31)
> >  
> > -static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> > +static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
> >  {
> >  	int width = 2;
> >  	int banks = 8;
> > @@ -588,7 +588,12 @@ static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  		mem += memory_sdram_size(cols, rows, banks, width);
> >  	}
> >  
> > -	return arm_add_mem_device("ram0", data->base0, mem);
> > +	return mem;
> 
> Nit: make mem typeof resource_size_t?

Yes. Added an extra patch for this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


