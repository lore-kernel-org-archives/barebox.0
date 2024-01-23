Delivery-date: Tue, 23 Jan 2024 13:16:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSFhz-00DNOh-0A
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 13:16:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSFhz-0005Lo-Lz
	for lore@pengutronix.de; Tue, 23 Jan 2024 13:16:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BtgtJg7cB9xP+WjGJcamD8ktd2coGmW/BviNGWr0HHk=; b=gjAxlCGcfs3YPTZgICmrMSHRUm
	hdtN/BRve34ku2vNqtQVSXnwevZ+iOWbVaddunajAXmn+IC7QSkcCC0HrNZk6KRKl+Cd2tMT4H6S2
	XatEsAwnpDQNdgfwDZrMzLciPl0J4j6o4B9mqSMDvGheQFDw1j0vK3Z+yahjWz8ZVFiaRXqR9AMBr
	X0zuNk52z5tAm23dEBfFCAKMVra0wGpqMzYCYcKiXHjPfS1n2sIsd34J/AmGXyJVCtZXP+PXBWFZ+
	hoAC37UK2ELv4sLeEvqgFaHHOaJ7/O3HlDl6U2LEeNhiig2TyY+rfd2d/FH5wJFtTVNV08mZbOy4x
	nvNJEHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSFga-00GNED-1i;
	Tue, 23 Jan 2024 12:15:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSFgW-00GNCU-36
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 12:15:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSFgU-0005BU-WF; Tue, 23 Jan 2024 13:15:19 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSFgU-001pCF-Jj; Tue, 23 Jan 2024 13:15:18 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSFgU-001McH-HQ; Tue, 23 Jan 2024 13:15:18 +0100
Date: Tue, 23 Jan 2024 13:15:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240123121518.y3bjxo3dbuapwcjm@pengutronix.de>
References: <20240122141331.3438235-1-a.fatoum@pengutronix.de>
 <20240123100431.njlq2kcobkgumvyh@pengutronix.de>
 <e36eda7e-29fc-4e92-be4e-f8c58ec286e6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e36eda7e-29fc-4e92-be4e-f8c58ec286e6@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_041520_998149_73D86D06 
X-CRM114-Status: GOOD (  25.48  )
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
Subject: Re: [PATCH] ddr: imx8m: add missing DDR clock rates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-23, Ahmad Fatoum wrote:
> On 23.01.24 11:04, Marco Felsch wrote:
> > On 24-01-22, Ahmad Fatoum wrote:
> >> ddrphy_init_set_dfi_clk() is called to translate a scalar clock rate
> >> as specified by board code into PLL parameters, which are configured.
> >>
> >> enum ddr_rate describes the possible DDR rates and so far
> >> ddrphy_init_set_dfi_clk() supported all of them, except for 2600 and
> >> 2376 MHz, rendering these two rates unusable.
> >>
> >> Fix this by adding support for them into ddrphy_init_set_dfi_clk.
> > 
> > Do we need to support this in TF-A as well for dvfs?
> 
> I don't know. I am not familiar with what needs to be done in TF-A
> to support DVFS for these frequencies. Do you know?

See dram_pll_init() within the TF-A code. Marek recently added the 3600
case.

Regards,
  Marco

> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > The barebox change itself lgtm, therefore:
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > 
> >> ---
> >>  drivers/ddr/imx/imx8m_ddr_init.c | 6 ++++--
> >>  1 file changed, 4 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
> >> index 8b829645c063..d9a5d589f27b 100644
> >> --- a/drivers/ddr/imx/imx8m_ddr_init.c
> >> +++ b/drivers/ddr/imx/imx8m_ddr_init.c
> >> @@ -219,9 +219,9 @@ enum ddr_rate {
> >>  	DDR_3720,
> >>  	DDR_3200,
> >>  	DDR_3000,
> >> -	DDR_2600, /* Unused */
> >> +	DDR_2600,
> >>  	DDR_2400,
> >> -	DDR_2376, /* Unused */
> >> +	DDR_2376,
> >>  	DDR_1600,
> >>  	DDR_1000, /* Unused */
> >>  	DDR_1066,
> >> @@ -450,7 +450,9 @@ static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int d
> >>  	case 3720: drate = DDR_3720; break;
> >>  	case 3200: drate = DDR_3200; break;
> >>  	case 3000: drate = DDR_3000; break;
> >> +	case 2600: drate = DDR_2600; break;
> >>  	case 2400: drate = DDR_2400; break;
> >> +	case 2376: drate = DDR_2376; break;
> >>  	case 1600: drate = DDR_1600; break;
> >>  	case 1066: drate = DDR_1066; break;
> >>  	case 667: drate = DDR_667; break;
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


