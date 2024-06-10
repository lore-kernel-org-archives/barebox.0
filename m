Delivery-date: Mon, 10 Jun 2024 10:57:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGaqa-003bad-2u
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 10:57:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGaqa-0001DB-3S
	for lore@pengutronix.de; Mon, 10 Jun 2024 10:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VuIEjVMioQaFp3ZBSGfOIHo3v48MPALC8Gyh3D4Eeo=; b=Les+ki0Ty5TJ7HauVpDzE7rNRR
	34u82GsK9XhxeuwuDy6ql21AHJ55iBoP9702WBzMgp2+hFcPSYE3VxrOiJnhjV4RBYiicFW56AAHz
	o+3H0ZQUvGRzVnnExl/LlOPrxPf8D3HxwSoez3ifYasYPPmZyHDskGWGsJFGIBDfN2sDEyvZG70t6
	ZrQ+0ecTkxpz+We1O3lvIZBStfmsL6beA/lJQQMPSlYAs3GLi2TAd7S1uI/QirPnbZj9oDxtjLSc1
	7W/RDG86fRk2QXw5oAKJXxx39N0UQVcmA/qVwDV4bv/TvPcJgl/3f9l3p48bSSMT4g2SlNY9kqsZu
	QjHLFY3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGaq4-00000004KHv-0OX9;
	Mon, 10 Jun 2024 08:57:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGaq0-00000004KH4-2LCo
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 08:57:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sGapx-00018o-AL; Mon, 10 Jun 2024 10:57:09 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sGapw-001GSu-U2; Mon, 10 Jun 2024 10:57:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sGapw-002k8Q-2j;
	Mon, 10 Jun 2024 10:57:08 +0200
Date: Mon, 10 Jun 2024 10:57:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zma_5MygmFRxOdqZ@pengutronix.de>
References: <20240610081213.858714-1-s.hauer@pengutronix.de>
 <20240610081213.858714-3-s.hauer@pengutronix.de>
 <9544d04c-6d5e-4a5b-93cf-7cfabf9a90ae@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9544d04c-6d5e-4a5b-93cf-7cfabf9a90ae@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_015712_624872_4B7562F6 
X-CRM114-Status: GOOD (  32.53  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] base: add class device support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 10, 2024 at 10:33:43AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 10.06.24 10:12, Sascha Hauer wrote:
> > This introduces the concept of class devices in barebox. Class devices
> > group together devices of the same type. Several subsystems like
> > watchdog and network devices have a struct device embedded in their
> > subsystem specific struct anyway, so we can use this as a class device.
> > As these class devices are collected on a list we can use this list to
> > iterate over all network/watchdog devices and thus free the subsystems
> > from the burden of keeping a list themselves.
> > 
> > There is a 'class' command added in this patch which can be used to show
> > all registered classes along with the devices registered for each class.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/Kconfig                  |  6 +++++
> >  commands/Makefile                 |  1 +
> >  commands/class.c                  | 30 ++++++++++++++++++++++
> >  drivers/base/Makefile             |  1 +
> >  drivers/base/class.c              | 41 +++++++++++++++++++++++++++++++
> >  include/asm-generic/barebox.lds.h |  7 ++++++
> >  include/device.h                  | 21 ++++++++++++++++
> >  7 files changed, 107 insertions(+)
> >  create mode 100644 commands/class.c
> >  create mode 100644 drivers/base/class.c
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 899673bfee..7831e6276d 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -68,6 +68,12 @@ config CMD_BOOTROM
> >  
> >  	  bootrom [-la]
> >  
> > +config CMD_CLASS
> > +	tristate
> > +	prompt "class"
> > +	help
> > +	  Show information about registered classes and devices
> 
> s/classes and devices/device classes/.
> 
> > +#define BAREBOX_CLASSES				\
> > +	STRUCT_ALIGN();				\
> > +	__barebox_class_start = .;		\
> > +	KEEP(*(SORT_BY_NAME(.barebox_class*)))	\
> > +	__barebox_class_end = .;
> 
> While I don't mind using linker lists for this, can you add a note
> to the commit message why you decided against dynamic allocation?

Sure. I decided for a linker list because otherwise we would have to add
an additional initcall to each subsystem using it. That's fine to do,
but we would also have to make sure this initcall executes before the
first user registers a device. Alternatively we could do something like
this in eth_register():

	static bool class_registered;

	if (!class_registered) {
		class_register(&eth_class);
		class_registered = true;
	}

I don't have a strong preference, but I think from these alternatives I
like linker lists best.

> 
> > +struct class {
> > +	const char *name;
> > +	struct list_head devices;
> > +	struct list_head list;
> > +};
> > +
> > +#define DECLARE_CLASS(_name, _classname)					\
> 
> This is a definition, not ony a declaration and
> Linux has DEFINE_CLASS defined in <linux/cleanup.h>.
> 
> How about DEFINE_DEV_CLASS?

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


