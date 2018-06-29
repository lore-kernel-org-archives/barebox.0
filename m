Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYreH-0001DC-3g
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 11:33:11 +0000
Date: Fri, 29 Jun 2018 13:32:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180629113255.idhib3zi3vma4nco@pengutronix.de>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
 <20180628073953.15384-4-antonynpavlov@gmail.com>
 <20180629072908.4z66au6jdyyehmwf@pengutronix.de>
 <20180629132710.88b512ddb6c8331d3655afa3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180629132710.88b512ddb6c8331d3655afa3@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 03/12] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2018 at 01:27:10PM +0300, Antony Pavlov wrote:
> On Fri, 29 Jun 2018 09:29:08 +0200
> > 
> > Do you need these __bare_init* stuff? If not I would prefer to remove
> > it.
> 
> 
> Hmmm. You are right! I have not realized PBL for RISC-V yet so it's better
> to drop all these bare_inits.

This isn't needed for PBL either. It is only for cases where the boot
ROM only loads the initial image portion.

> > 
> > > +static int of_riscv_init(void)
> > > +{
> > > +	struct device_node *root;
> > > +
> > > +	root = of_get_root_node();
> > > +	if (root)
> > > +		return 0;
> > > +
> > > +	root = of_unflatten_dtb(__dtb_start);
> > > +	if (!IS_ERR(root)) {
> > > +		pr_debug("using internal DTB\n");
> > > +		of_set_root_node(root);
> > > +		if (IS_ENABLED(CONFIG_OFDEVICE))
> > > +			of_probe();
> > > +	}
> > 
> > Can we just call of_unflatten_dtb()/of_set_root_node() from the board
> > code and use obj-dtb-y to include the dtb?
> > 
> > That way a board can specify the dtb and not the config.
> 
> Good idea! MIPS code lacks this feature at the moment.
> 
> Can I use of_arm_init() as a reference?

Not sure what you mean. of_riscv_init() is nearly a copy of
of_arm_init() already.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
