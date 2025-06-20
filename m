Delivery-date: Fri, 20 Jun 2025 14:09:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaYj-009HB5-2M
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:09:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaYj-0002Vj-2y
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:09:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bz6ZZzpLpbSv0l3WWbyvqyh/SC0hFV6xQaQOrOAfF5A=; b=YhW6TAu82EVvT/T1oPEhzxHGba
	/ZDsI+OTu7i5W/puPsswtsbxs3kADOF0D8zk8Hkf1dZmVrQfTIhc9cj4hiFVhLH7bOxCPrQXe72Y9
	cbY/hX6cBuwTJpkLrcJGHoY0t8rFdEw9VEJ9fmVse4m4XX1OXbxWTXvZa1UrEl3NiFuY4Emth9t87
	F9rveoRJjqte/D0HTgqh7neWND8j1po0RAHfU+MBxrmHQppHTEhPakNJRDhBs9El4D0OSxxg/o948
	c6ORJ0q+/1ZhrmAAg6+D3aazaXdYFF5UKfAClBcYQo4PLYfEsf9zeyuORlxyzbbVGzVngf7X3a+Jb
	eOwThhMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaYK-0000000FXg6-17vI;
	Fri, 20 Jun 2025 12:09:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaPH-0000000FWMk-42Ne
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 11:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Bz6ZZzpLpbSv0l3WWbyvqyh/SC0hFV6xQaQOrOAfF5A=; b=FOnFK3mewBt5k85GaDmWlcILp2
	Gim6yUwF73PtImfwlozff+MO9/1WxUYyB6P0hDqJhc8EBKzzNuyyRcJZvYNOOp2+RrTJ02hHON31t
	DzM5Ny6ygNzBKZsCdMbBLPuhK3zJhAzGvzDR5qUXpxVEM3pOyWQyx+Q/jjWomfpTZgq+pD6opm+q/
	9LL7t+mZRgiqUgP6UhoewlGeHuV9YjZh1kt+B45lIlg57JHmCE7Fbuf2knHawlkJeaH8FmT0Eq/++
	GiZkE3ILoxDbliKvddcBpkGlNh+n1cUZ4qQjaYluUhLssTEgWWOpm/OucTe7mMAjhADK+pgDK69YN
	bHNrD0Lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaPF-00000004iuT-1NAc
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 11:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uSaPB-0001Xm-0t; Fri, 20 Jun 2025 13:59:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSaPA-004SG4-26;
	Fri, 20 Jun 2025 13:59:36 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSaPA-007NCM-1j;
	Fri, 20 Jun 2025 13:59:36 +0200
Date: Fri, 20 Jun 2025 13:59:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <aFVNKJHgh_z7shPk@pengutronix.de>
References: <20250619103440.76796-1-eagle.alexander923@gmail.com>
 <20250619171358.GA1859740@ravnborg.org>
 <CAP1tNvQ=7zHyN39vRj=so0=AXLTWG-EQQjJEwyu6Uvr4qmu5yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvQ=7zHyN39vRj=so0=AXLTWG-EQQjJEwyu6Uvr4qmu5yw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_125941_492298_F730C520 
X-CRM114-Status: GOOD (  27.52  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: remove unused soc type/subtype getter
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 20, 2025 at 08:48:12AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Indeed, I hope Sasсha can fix this in the commit.

Did that.

Sascha

> 
> Thanks!
> 
> чт, 19 июн. 2025 г. в 20:14, Sam Ravnborg <sam@ravnborg.org>:
> >
> > Hi Alexander.
> >
> > On Thu, Jun 19, 2025 at 01:34:40PM +0300, Alexander Shiyan wrote:
> > > The functions at91_get_soc_type() and at91_get_soc_subtype() were
> > > used only within the setup.c file. They provided simple access to
> > > string arrays but added an unnecessary layer of abstraction.
> > > Since they are not used elsewhere, we can safely remove them and
> > > access the string arrays directly.
> > >
> > > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > > ---
> > >  arch/arm/mach-at91/setup.c | 22 ++++++----------------
> > >  include/mach/at91/cpu.h    |  2 --
> > >  2 files changed, 6 insertions(+), 18 deletions(-)
> > >
> > > diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
> > > index e726495726..5969c32e54 100644
> > > --- a/arch/arm/mach-at91/setup.c
> > > +++ b/arch/arm/mach-at91/setup.c
> > > @@ -281,12 +281,6 @@ static const char *soc_name[] = {
> > >       [AT91_SOC_NONE]         = "Unknown"
> > >  };
> > >
> > > -const char *at91_get_soc_type(struct at91_socinfo *c)
> > > -{
> > > -     return soc_name[c->type];
> > > -}
> > > -EXPORT_SYMBOL(at91_get_soc_type);
> > > -
> > >  static const char *soc_subtype_name[] = {
> > >       [AT91_SOC_RM9200_BGA]   = "at91rm9200 BGA",
> > >       [AT91_SOC_RM9200_PQFP]  = "at91rm9200 PQFP",
> > > @@ -330,12 +324,6 @@ static const char *soc_subtype_name[] = {
> > >       [AT91_SOC_SUBTYPE_NONE] = "Unknown"
> > >  };
> > >
> > > -const char *at91_get_soc_subtype(struct at91_socinfo *c)
> > > -{
> > > -     return soc_subtype_name[c->subtype];
> > > -}
> > > -EXPORT_SYMBOL(at91_get_soc_subtype);
> > > -
> > >  static int at91_detect(void)
> > >  {
> > >       at91_soc_initdata.type = AT91_SOC_NONE;
> > > @@ -353,9 +341,9 @@ static int at91_detect(void)
> > >               panic("AT91: Impossible to detect the SOC type");
> > >
> > >       pr_info("AT91: Detected soc type: %s\n",
> > > -             at91_get_soc_type(&at91_soc_initdata));
> > > +             soc_name[at91_soc_initdata.type]);
> > >       pr_info("AT91: Detected soc subtype: %s\n",
> > > -             at91_get_soc_subtype(&at91_soc_initdata));
> > > +             soc_subtype_name[at91_soc_initdata.subtype]);
> > >
> > >       /* Init clock subsystem */
> > >       at91_clock_init();
> > > @@ -372,8 +360,10 @@ static int at91_soc_device(void)
> > >       struct device *dev;
> > >
> > >       dev = add_generic_device_res("soc", DEVICE_ID_SINGLE, NULL, 0, NULL);
> > > -     dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
> > > -     dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
> > > +     dev_add_param_fixed(dev, "name",
> > > +                         (char*)soc_name[at91_soc_initdata.type]);
> > > +     dev_add_param_fixed(dev, "subname",
> > > +                         (char*)soc_subtype_name[at91_soc_initdata.subtype]);
> > The cast can go, as dev_add_param_fixed() take a const already.
> > Otherwise looks good.
> > It is good to see at91 gets some attention, despite the age.
> >
> >         Sam
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


