Delivery-date: Tue, 24 Jun 2025 13:28:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1pC-00AaLe-1y
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:28:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1pC-0003uu-2b
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:28:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaDo+K3O3iiFf4Ww4LuEwpjGp2oTKacfDnRj5ouEzvM=; b=E7RAdDxCFlh2jKXB6iTP329FSW
	3cvqmbqX2l7mTMwcu0dOkokSFIykm2Li4vpFmajVEQfIN3dPnDRMB6UAIbXJGa/2Q0XwovlD28ckY
	UjlOi2THbw+emp1NVhr4xPutgQQ1RsqiSn4Xo9AvLn+CO9cqMQyZL/FPwzfoJeAmfFIr9S01V+v01
	grkORcYXTXrIyqEpjVs/2EJgvU3UWMzn13e5VHUeJXyUFGKJSkM2/ruUW4W5iKTj8RV6kPu/MK+Yt
	zd2MT0cx1Oe3FzaV+Z8ZFXAVBljdQDdhS3s/U+aU0wQddHFdHsggQGQtnZ0uiasZyGEFuh/IcCUNb
	ZFY9Eyqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1ol-00000005Qlp-0RTG;
	Tue, 24 Jun 2025 11:27:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1JQ-00000005MtM-2Hx3
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:55:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU1JP-0006BK-3b; Tue, 24 Jun 2025 12:55:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU1JO-0056A9-2z;
	Tue, 24 Jun 2025 12:55:34 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU1JO-00F94C-2g;
	Tue, 24 Jun 2025 12:55:34 +0200
Date: Tue, 24 Jun 2025 12:55:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250624105534.kmewkn5etl2rhh5a@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-4-m.felsch@pengutronix.de>
 <7987c09e-d236-455e-b17d-efaa5e1ea791@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7987c09e-d236-455e-b17d-efaa5e1ea791@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_035536_583264_31424CC3 
X-CRM114-Status: GOOD (  17.17  )
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
Subject: Re: [PATCH 4/5] ARM: mach-imx: tzasc: add
 imx6q_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 25-06-24, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 6/19/25 17:25, Marco Felsch wrote:
> > +void imx6q_tzc380_early_ns_region1(void)
> > +{
> > +	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
> > +
> > +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
> > +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
> > +				  TZC380_REGION_SP_NS_RW);
> > +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC2_BASE), 1,
> > +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
> > +				  TZC380_REGION_SP_NS_RW);
> 
> What's the point of having two TZASC's if you configure them the exact
> same way..?

The i.MX6QDL do have two MMDCs. Depending on the system/board-design the
controllers support interleaved access. I'm not that deep into that
topic but I think this was mostly used by LPDDR2 setups. For DDR3 setups
only one MMDC can be used.

Regards,
  Marco

> > +}
> > +
> >  void imx8m_tzc380_init(void)
> >  {
> >  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> > diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> > index 51c86f168ee4..4d3f26fc82f1 100644
> > --- a/include/mach/imx/tzasc.h
> > +++ b/include/mach/imx/tzasc.h
> > @@ -6,6 +6,7 @@
> >  #include <linux/types.h>
> >  #include <asm/system.h>
> >  
> > +void imx6q_tzc380_early_ns_region1(void);
> >  void imx8m_tzc380_init(void);
> >  bool imx8m_tzc380_is_enabled(void);
> >  
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 


