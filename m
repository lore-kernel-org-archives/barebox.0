Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6dkg-0000eV-Bf
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 08:35:55 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 980CBDC4B18
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 10:41:00 +0200 (CEST)
Date: Wed, 29 Aug 2012 10:36:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120829083607.GE18708@game.jcrosoft.org>
References: <20120829042727.GA18708@game.jcrosoft.org>
 <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
 <1346216778-14100-5-git-send-email-plagnioj@jcrosoft.com>
 <20120829065245.GM26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120829065245.GM26594@pengutronix.de>
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
Subject: Re: [PATCH 5/7] smc911x: improve detection handle
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:52 Wed 29 Aug     , Sascha Hauer wrote:
> On Wed, Aug 29, 2012 at 07:06:16AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > detect if the bus is swapped and report a 32bit drivers is used on a 16bit bus
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/smc911x.c |   20 +++++++++++++++++++-
> >  drivers/net/smc911x.h |    2 ++
> >  2 files changed, 21 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> > index 75a332e..17f365d 100644
> > --- a/drivers/net/smc911x.c
> > +++ b/drivers/net/smc911x.c
> > @@ -470,9 +470,27 @@ static int smc911x_probe(struct device_d *dev)
> >  	}
> >  
> >  	val = smc911x_reg_read(priv, BYTE_TEST);
> > -	if(val != 0x87654321) {
> > +	if (val == 0x43218765) {
> > +		dev_info(dev, "BYTE_TEST looks swapped, "
> > +			   "applying WORD_SWAP");
> 
> dev_dbg please. Users shouldn't be interested in this.
> 
> > +		smc911x_reg_write(priv, WORD_SWAP, 0xffffffff);
> > +
> > +		/* 1 dummy read of BYTE_TEST is needed after a write to
> > +		 * WORD_SWAP before its contents are valid */
> > +		val = smc911x_reg_read(priv, BYTE_TEST);
> > +
> > +		val = smc911x_reg_read(priv, BYTE_TEST);
> > +	}
> > +
> > +	if (val != 0x87654321) {
> >  		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
> >  			priv->base, val);
> > +		if (((val >> 16) & 0xFFFF) == (val & 0xFFFF)) {
> > +			dev_err(dev, "top 16 bits equal to bottom 16 bits\n");
> > +			dev_err(dev,
> > +				   "This may mean the chip is set "
> > +				   "for 32 bit while the bus is reading 16 bit\n");
> 
> Please replace the second dev_err with a comment in the source code.
> This is developer information only; developers will grep for the source
> of the message anyway.
code from the kernel prefer to keep it as is

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
