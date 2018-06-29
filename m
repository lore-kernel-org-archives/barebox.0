Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYtH8-00087u-Ef
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 13:17:23 +0000
Received: by mail-lf0-x243.google.com with SMTP id y200-v6so1190115lfd.7
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 06:17:11 -0700 (PDT)
Date: Fri, 29 Jun 2018 16:17:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180629161740.cd2b37ab454953e326bda19e@gmail.com>
In-Reply-To: <20180629113255.idhib3zi3vma4nco@pengutronix.de>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
 <20180628073953.15384-4-antonynpavlov@gmail.com>
 <20180629072908.4z66au6jdyyehmwf@pengutronix.de>
 <20180629132710.88b512ddb6c8331d3655afa3@gmail.com>
 <20180629113255.idhib3zi3vma4nco@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 03/12] Add initial RISC-V architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Jun 2018 13:32:55 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Jun 29, 2018 at 01:27:10PM +0300, Antony Pavlov wrote:
> > On Fri, 29 Jun 2018 09:29:08 +0200
> > > =

> > > Do you need these __bare_init* stuff? If not I would prefer to remove
> > > it.
> > =

> > =

> > Hmmm. You are right! I have not realized PBL for RISC-V yet so it's bet=
ter
> > to drop all these bare_inits.
> =

> This isn't needed for PBL either. It is only for cases where the boot
> ROM only loads the initial image portion.
> =

> > > =

> > > > +static int of_riscv_init(void)
> > > > +{
> > > > +	struct device_node *root;
> > > > +
> > > > +	root =3D of_get_root_node();
> > > > +	if (root)
> > > > +		return 0;
> > > > +
> > > > +	root =3D of_unflatten_dtb(__dtb_start);
> > > > +	if (!IS_ERR(root)) {
> > > > +		pr_debug("using internal DTB\n");
> > > > +		of_set_root_node(root);
> > > > +		if (IS_ENABLED(CONFIG_OFDEVICE))
> > > > +			of_probe();
> > > > +	}
> > > =

> > > Can we just call of_unflatten_dtb()/of_set_root_node() from the board
> > > code and use obj-dtb-y to include the dtb?
> > > =

> > > That way a board can specify the dtb and not the config.
> > =

> > Good idea! MIPS code lacks this feature at the moment.
> > =

> > Can I use of_arm_init() as a reference?
> =

> Not sure what you mean. of_riscv_init() is nearly a copy of
> of_arm_init() already.

Actually of_riscv_init() is a copy of of_mips_init().

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
