Delivery-date: Wed, 02 Nov 2022 09:47:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9PC-00C3sk-0Z
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:47:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9PA-0006jc-N0
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:47:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmP2g8+PTmRxr3i7vPV3f6mN3nQSqfJGExBPv6ST75w=; b=Sgaf+V2cR6y6eACjNzIGjWuIw8
	+DL3e0yxYuuz3XSFa3vurho+lkOp66/14MXaGUgLY4twOuah6yKmxGti8eWNRmbiyZcnypEULywRL
	Aw+mo5Lk2hkjQvUMFWF8qVNf5rzXqASZ1ftaG+sWVHfz4kc7d8RNB4H8OHJgdluGiTK/ZWRWXyu/4
	cz/h5OZO2iru/IBUNU3+uf99X+0Vaw/Eo93dCrklR7A+Jy8F9MmChHCC5bwml+sjkpIiuKNZy24jG
	eCsEB1mwUJkfG0bnvL0An/jQMTb77Ka+lkiozNJ3s6Pdsxe6o38j1USIhK7N8KrtZGc1E/Vf/WauW
	DZ5yHrIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9Nx-0098II-AC; Wed, 02 Nov 2022 08:46:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9Nr-0098DZ-PU
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:46:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq9Nq-0006SS-GA; Wed, 02 Nov 2022 09:46:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq9Nq-0000qp-7w; Wed, 02 Nov 2022 09:46:02 +0100
Date: Wed, 2 Nov 2022 09:46:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221102084602.GJ3143@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
 <20221101153048.772146-14-s.hauer@pengutronix.de>
 <20221102084118.monxfljt7z2jorjm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102084118.monxfljt7z2jorjm@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_014603_842915_23A2480F 
X-CRM114-Status: GOOD (  24.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/14] ARM: i.MX: xload nand: Implement i.MX7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 09:41:18AM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 22-11-01, Sascha Hauer wrote:
> > i.MX7 xload NAND support works like on i.MX6, but the FCB is in a
> > different format. The FCB page uses BCH62 ECC, has 8 ECC chunks with
> > 128 bytes each with a resulting total page size of 1862 bytes. Also
> > the page data is written with a pseudo randomizer enabled.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/include/mach/imx7-regs.h |  1 +
> >  arch/arm/mach-imx/include/mach/xload.h     |  1 +
> >  arch/arm/mach-imx/xload-gpmi-nand.c        | 95 ++++++++++++++++++++--
> >  3 files changed, 91 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
> > index 1ee7d86e0e..379be9e062 100644
> > --- a/arch/arm/mach-imx/include/mach/imx7-regs.h
> > +++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
> > @@ -118,6 +118,7 @@
> >  #define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
> >  #define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
> >  
> > +#define	MX7_APBH_BASE			0x33000000
> >  #define MX7_GPMI_BASE			0x33002000
> >  #define MX7_BCH_BASE			0x33004000
> >  
> > diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
> > index 82bf663c42..ca0055aee2 100644
> > --- a/arch/arm/mach-imx/include/mach/xload.h
> > +++ b/arch/arm/mach-imx/include/mach/xload.h
> > @@ -12,6 +12,7 @@ int imx6_spi_start_image(int instance);
> >  int imx6_esdhc_start_image(int instance);
> >  int imx6_nand_start_image(void);
> >  int imx7_esdhc_start_image(int instance);
> > +int imx7_nand_start_image(void);
> >  int imx8m_esdhc_load_image(int instance, bool start);
> >  int imx8mn_esdhc_load_image(int instance, bool start);
> >  int imx8mp_esdhc_load_image(int instance, bool start);
> > diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
> > index 7e4033d74f..edffd69e6b 100644
> > --- a/arch/arm/mach-imx/xload-gpmi-nand.c
> > +++ b/arch/arm/mach-imx/xload-gpmi-nand.c
> > @@ -13,6 +13,7 @@
> >  #include <linux/mtd/rawnand.h>
> >  #include <soc/imx/gpmi-nand.h>
> >  #include <mach/imx6-regs.h>
> > +#include <mach/imx7-regs.h>
> >  #include <mach/clock-imx6.h>
> >  #include <dma/apbh-dma.h>
> >  
> > @@ -228,7 +229,7 @@ static uint32_t mxs_nand_aux_status_offset(void)
> >  }
> >  
> >  static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
> > -		int oobsize, int pagenum, void *databuf, int raw)
> > +		int oobsize, int pagenum, void *databuf, int raw, bool randomizer)
> 
> Here the change comes, so this anwers my question.

Yes, moved the offending hunk here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


