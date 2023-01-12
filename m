Delivery-date: Thu, 12 Jan 2023 16:16:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzJQ-009tCI-Ea
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 16:16:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzJO-0006yA-9K
	for lore@pengutronix.de; Thu, 12 Jan 2023 16:16:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dOqFqR+wzOaV6UALNuPWxSeiegUGlKK+TCxekWUDKpU=; b=uFGCO6+0m8sjRArbWgjzb/xU9M
	sHqMVh4Uuxmx7XL2iBDpazCV11vKAtV22D4odeUotRardV4nutE91w49w7WhMZtv1g/3VJ6eLvZAO
	MQkIEZgrd0ZmyzAdGUkRJoyZwmjKVmCTG3uy4+j2wlj1ursHKFAiE40gTyL1Sz5V4AkcJrOz6bmys
	jzyj8lxWoPSGtp37lNYPRNK1kVWNGFn5Juo3FwE/LxncmJfy8INvBM18AbSDh+MtbgRjYkSmgmSZe
	gO8mP9N+woUDnOrDSiKfMDbbJSd2MX4KoiXL9qMaRnYCmkRTTS+zlcIlzziZioP24UshKVHDPbp3N
	jc1bYYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzI6-00FYDL-OZ; Thu, 12 Jan 2023 15:14:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzHw-00FYBO-Ut
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 15:14:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzHu-0006YS-SX; Thu, 12 Jan 2023 16:14:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzHu-0005iD-IY; Thu, 12 Jan 2023 16:14:42 +0100
Date: Thu, 12 Jan 2023 16:14:42 +0100
To: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230112151442.GZ24755@pengutronix.de>
References: <20230112081530.2684687-1-johannes.schneider@leica-geosystems.com>
 <e5b08ccf-0282-ae00-9675-e0ab3309eeab@pengutronix.de>
 <DB6PR06MB4008C99EDCC1B7EF1D39E27CBCFD9@DB6PR06MB4008.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DB6PR06MB4008C99EDCC1B7EF1D39E27CBCFD9@DB6PR06MB4008.eurprd06.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_071445_133888_483F9C39 
X-CRM114-Status: GOOD (  32.84  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all
 imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 12, 2023 at 01:57:27PM +0000, SCHNEIDER Johannes wrote:
> Hoi,
> 
> reasoning is that the common config switch limits the codeblock to
> imx8m boards only... or at least was, since on second thought: this is
> inside imx8m.c... so the previous version with current_el might be
> better? preferences? :-)

I like the current_el() approach better. As you said imx8m_init() is
called on i.MX8M only anyway, so no need to limit execution to i.MX8M.
Also just having CONFIG_FIRMWARE_IMX8MQ_ATF enabled doesn't necessarily
mean that the board code has actually loaded the TF-A binary. Using
current_el() gracefuly handles this case as well.

Sascha

> 
> regards
> 
> ________________________________________
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Sent: Thursday, January 12, 2023 13:56
> To: SCHNEIDER Johannes; barebox@lists.infradead.org
> Subject: Re: [PATCH v4] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all imx8m variants
> 
> This email is not from Hexagon’s Office 365 instance. Please be careful while clicking links, opening attachments, or replying to this email.
> 
> 
> Hello Johannes,
> 
> On 12.01.23 09:15, Johannes Schneider wrote:
> > By adding a common config switch, the imx8m_init code becomes generic
> > for all board variants (and slightly less confusing).
> >
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> >
> > ---
> > v4: add missing common switch
> >
> > v3: redid patch with suggested common config switch
> 
> I am fine with either current_el() check or what you do here,
> but given that you switched between them in revisions, I am
> curious what the reasoning is.
> 
> Cheers,
> Ahmad
> 
> >
> > v2: was:
> > [PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check
> >
> > v1: or'ed all IS_ENABLED(FIRMWARE_IMX8M[mnpq]_ATF
> > ---
> >  arch/arm/mach-imx/imx8m.c | 2 +-
> >  firmware/Kconfig          | 7 +++++++
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> > index 9758525b54..4399dc7dd5 100644
> > --- a/arch/arm/mach-imx/imx8m.c
> > +++ b/arch/arm/mach-imx/imx8m.c
> > @@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
> >       pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
> >
> >       if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
> > -         IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
> > +         IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
> >               arm_smccc_smc(IMX_SIP_BUILDINFO,
> >                             IMX_SIP_BUILDINFO_GET_COMMITHASH,
> >                             0, 0, 0, 0, 0, 0, &res);
> > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > index b4a6fd9137..09ad85c539 100644
> > --- a/firmware/Kconfig
> > +++ b/firmware/Kconfig
> > @@ -12,17 +12,24 @@ config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> >  config FIRMWARE_IMX_DDR4_PMU_TRAIN
> >               bool
> >
> > +config FIRMWARE_IMX8M_ATF
> > +     bool
> > +
> >  config FIRMWARE_IMX8MM_ATF
> >          bool
> > +     select FIRMWARE_IMX8M_ATF
> 
> Your whitespacing are ok, but I see now that the file has
> a mix of whitespace and tabs. I just sent out a patch for
> this.
> 
> Cheers,
> Ahmad
> 
> >
> >  config FIRMWARE_IMX8MN_ATF
> >          bool
> > +     select FIRMWARE_IMX8M_ATF
> >
> >  config FIRMWARE_IMX8MP_ATF
> >          bool
> > +     select FIRMWARE_IMX8M_ATF
> >
> >  config FIRMWARE_IMX8MQ_ATF
> >          bool
> > +     select FIRMWARE_IMX8M_ATF
> >
> >  config FIRMWARE_CCBV2_OPTEE
> >       bool
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://eur02.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&data=05%7C01%7C%7C70cd0fd76baf40bfb3f208daf49c74d9%7C1b16ab3eb8f64fe39f3e2db7fe549f6a%7C0%7C0%7C638091250067510526%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=%2B6RznkD0xTQ5Z%2BWuYN4NC4pvjVbFIMRaffz90gnyh3s%3D&reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


