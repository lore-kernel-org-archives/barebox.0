Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdc7p-0003Vk-LL
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 12:22:33 +0000
Date: Tue, 14 Feb 2017 13:21:49 +0100 (CET)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20170214075053.pnowzjtopzro7fkc@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1702141317320.13516@blala.de>
References: <1486852299-30432-1-git-send-email-akurz@blala.de>
 <20170214075053.pnowzjtopzro7fkc@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/2] i.MX: i2c: fix i2c-fsl for non-OF boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On Tue, 14 Feb 2017, Sascha Hauer wrote:

> On Sat, Feb 11, 2017 at 11:31:38PM +0100, Alexander Kurz wrote:
> > With commit 4ed5b778a56b ("i.MX: i2c: Add Vybrid support") i2c-fsl probe
> > returns -EINVAL for all non-OF boards.
> > Since newer planforms, especially vf610 are restricted OF-only it is safe to
> > assume "fsl,imx21-i2c" if CONFIG_OFDEVICE is not set.
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> 
> Sorry, I should have read these mails before doing the release. Now they
> have to wait for another month. Applied both to master.
Actually I have noticed this when 2017.02 was already released during an 
installation of 2017.02. Sorry for not having tested next before.
Regards, Alexander
> 
> Sascha
> 
> > ---
> >  drivers/i2c/busses/i2c-imx.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> > index 5677443..4ff4f5c 100644
> > --- a/drivers/i2c/busses/i2c-imx.c
> > +++ b/drivers/i2c/busses/i2c-imx.c
> > @@ -153,6 +153,8 @@ static struct fsl_i2c_clk_pair vf610_i2c_clk_div[] = {
> >  	{ 3840, 0x3F }, { 4096, 0x7B }, { 5120, 0x7D }, { 6144, 0x7E },
> >  };
> >  
> > +static const struct fsl_i2c_hwdata imx21_i2c_hwdata;
> > +
> >  struct fsl_i2c_hwdata {
> >  	unsigned		regshift;
> >  	struct fsl_i2c_clk_pair	*clk_div;
> > @@ -676,10 +678,14 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
> >  	clk_enable(i2c_fsl->clk);
> >  #endif
> >  
> > -	i2c_fsl->hwdata = of_device_get_match_data(pdev);
> > -	if (!i2c_fsl->hwdata) {
> > -		ret = -EINVAL;
> > -		goto fail;
> > +	if (IS_ENABLED(CONFIG_OFDEVICE)) {
> > +		i2c_fsl->hwdata = of_device_get_match_data(pdev);
> > +		if (!i2c_fsl->hwdata) {
> > +			ret = -EINVAL;
> > +			goto fail;
> > +		}
> > +	} else {
> > +		i2c_fsl->hwdata = &imx21_i2c_hwdata;
> >  	}
> >  
> >  	/* Setup i2c_fsl driver structure */
> > -- 
> > 2.1.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
