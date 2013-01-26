Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzEyu-0005re-7g
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 23:16:17 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56C22DC0DCA
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 00:26:05 +0100 (CET)
Date: Sun, 27 Jan 2013 00:14:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130126231454.GI26329@game.jcrosoft.org>
References: <20130126181809.GH26329@game.jcrosoft.org>
 <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
 <1359224399-569-5-git-send-email-plagnioj@jcrosoft.com>
 <20130126215949.GR1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130126215949.GR1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] at91sam9261ek: add first stage support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:59 Sat 26 Jan     , Sascha Hauer wrote:
> On Sat, Jan 26, 2013 at 07:19:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/at91sam9261ek/env/config           |   10 ++-
> >  arch/arm/boards/at91sam9261ek/init.c               |   15 ++++-
> >  .../configs/at91sam9261ek_first_stage_defconfig    |   71 ++++++++++++++++++++
> >  3 files changed, 92 insertions(+), 4 deletions(-)
> >  create mode 100644 arch/arm/configs/at91sam9261ek_first_stage_defconfig
> > 
> > diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
> > index 7d85577..cb3e847 100644
> > --- a/arch/arm/boards/at91sam9261ek/env/config
> > +++ b/arch/arm/boards/at91sam9261ek/env/config
> > @@ -34,8 +34,14 @@ kernelimage=zImage
> >  #kernelimage=Image.lzo
> >  
> >  nand_device=atmel_nand
> > -nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> > -rootfs_mtdblock_nand=6
> > +if [ x$borebox_first_stage = x1 ]
> 
> LOL ;) Found a new name for the project?
typo
> 
> > +then
> > +	nand_parts="384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> > +	rootfs_mtdblock_nand=5
> > +else
> > +	nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
> > +	rootfs_mtdblock_nand=6
> > +fi
> 
> I find this rather confusing. Now we have a bootstrap config, a first
> stage config and a regular config, two different partition layouts and
> no indication how these play together.
> 
> I think it's dangerous to have two different partition layouts. What's
> the reason to concatenate the at91bootstrap and barebox partition
> together for the first stage case?
yes because the 9261 can only load 156K into sram

so it's more than the first block
> 
> What I would understand is:
> 
> - have a 128k first stage barebox which either
>   - loads the kernel directly
>   - or loads the second stage (bigger) barebox
> 
>   The decision could be made by the environment or maybe a button/key
> 
> However, this makes for two defconfigs, not three.
> 
> BTW your at91 bootstrap code has:
> 
> 	bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> 
> Which means that you will use up to 1MB of Nand if you have bad blocks.
> This conflicts with your partition layout above.
> 
> I suggest that you combine the first stage and bootstrap config into one
> by adding some switch in the environment to optionally start the second
> stage loader or directly boot through to the kernel.

if you do this the first stage will be limited artificially at 128KiB where we
can go to 156KiB

and later
when we can have the support of the mini nand laod we will use the 384KiB for
barebox first stage

so I prefer to have 2 layout onthe ref board
as it's here for dev not production

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
