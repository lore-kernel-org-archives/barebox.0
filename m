Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabim-0001NW-Is
 for barebox@lists.infradead.org; Mon, 18 May 2020 09:06:05 +0000
Message-ID: <8fb591b12086537f6a87bbd5056b6c38f506e99d.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 18 May 2020 11:06:00 +0200
In-Reply-To: <20200518070848.GP11869@pengutronix.de>
References: <20200513114636.811-1-l.stach@pengutronix.de>
 <20200518070848.GP11869@pengutronix.de>
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
Subject: Re: [PATCH] mci: core: add device parameter for eMMC boot ack
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 18.05.2020, 09:08 +0200 schrieb Sascha Hauer:
> On Wed, May 13, 2020 at 01:46:36PM +0200, Lucas Stach wrote:
> > This adds an easy way to enable the boot acknowledge function of
> > a eMMC device, without the need to frob the EXT_CSD setting via
> > the mmc_extcsd command.
> > A boot ack is required whenever the boot partitions are read via
> > the fast initialization boot protocol.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/mci/mci-core.c | 33 +++++++++++++++++++++++++++------
> >  include/mci.h          |  2 ++
> >  2 files changed, 29 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index f3718327f18d..d33bc0c1a41e 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -516,6 +516,7 @@ static int mmc_change_freq(struct mci *mci)
> >  
> >  		mci->ext_csd_part_config = mci->ext_csd[EXT_CSD_PARTITION_CONFIG];
> >  		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
> > +		mci->boot_ack_enable = (mci->ext_csd_part_config >> 6) & 0x1;
> >  	}
> >  
> >  	return 0;
> > @@ -1592,6 +1593,17 @@ static int mci_set_boot(struct param_d *param, void *priv)
> >  			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
> >  }
> >  
> > +static int mci_set_boot_ack(struct param_d *param, void *priv)
> > +{
> > +	struct mci *mci = priv;
> > +
> > +	mci->ext_csd_part_config &= ~(0x1 << 6);
> > +	mci->ext_csd_part_config |= mci->boot_ack_enable << 6;
> > +
> > +	return mci_switch(mci,
> > +			  EXT_CSD_PARTITION_CONFIG, mci->ext_csd_part_config);
> > +}
> 
> There's only one correct setting for each board or SoC. Instead of
> letting the user choose between right and wrong, can't we add a hook to
> be called from the board/SoC code? A device tree property might be an
> option as well, something like barebox,enable-boot-ack.

A DT property might work, but my initial line of thinking was to set
this from a platform specific barebox_update call, where having the
parameter would certainly help to keep some sort of abstraction.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
