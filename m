Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1VFo-0002ur-Kw
 for barebox@lists.infradead.org; Wed, 15 Aug 2012 04:30:49 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DDBA21054AE1
 for <barebox@lists.infradead.org>; Wed, 15 Aug 2012 06:35:27 +0200 (CEST)
Date: Wed, 15 Aug 2012 06:30:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120815043055.GQ6271@game.jcrosoft.org>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
 <1344965540-31534-3-git-send-email-plagnioj@jcrosoft.com>
 <20120814202136.GE1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120814202136.GE1451@pengutronix.de>
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
Subject: Re: [PATCH 3/7] smc911x: add 16bit bus width support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:21 Tue 14 Aug     , Sascha Hauer wrote:
> On Tue, Aug 14, 2012 at 07:32:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/smc911x.c |   20 ++++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> > index 2583235..c74ed52 100644
> > --- a/drivers/net/smc911x.c
> > +++ b/drivers/net/smc911x.c
> > @@ -47,6 +47,8 @@ struct smc911x_priv {
> >  	struct mii_device miidev;
> >  	void __iomem *base;
> >  
> > +	u32 width;
> > +
> >  	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
> >  	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
> >  };
> > @@ -78,7 +80,11 @@ static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
> >  
> >  static inline u32 __smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
> >  {
> > -	return readl(priv->base + reg);
> > +	if (priv->width)
> > +		return readl(priv->base + reg);
> > +	else
> > +		return ((readw(priv->base + reg) & 0xFFFF) |
> > +			((readw(priv->base + reg + 2) & 0xFFFF) << 16));
> >  }
> 
> If you introduce function pointers for the read/write functions, then
> please use them to implement 16bit support.
this what this patch do

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
