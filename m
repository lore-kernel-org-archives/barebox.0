Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elVW0-0006Z3-By
 for barebox@lists.infradead.org; Tue, 13 Feb 2018 08:00:39 +0000
Date: Tue, 13 Feb 2018 09:00:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180213080024.mergt47tdjlki2fj@pengutronix.de>
References: <20180209100124.4119-1-s.hauer@pengutronix.de>
 <9e7d3a20-794e-1b49-9377-4b076e25e1e1@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e7d3a20-794e-1b49-9377-4b076e25e1e1@pengutronix.de>
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
Subject: Re: [PATCH] bootm: fit: add option to add DT snipped that contains
 fit public key
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Feb 09, 2018 at 11:50:34AM +0100, Marc Kleine-Budde wrote:
> On 02/09/2018 11:01 AM, Sascha Hauer wrote:
> > From: Marc Kleine-Budde <mkl@pengutronix.de>
> > 
> > This makes it easier for build systems to include a configurable dts
> > snippet which holds the public keys for FIT images.
> > 
> > Usage:
> > 
> > Add to your dts:
> > 
> >  #ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> >  #include CONFIG_BOOTM_FITIMAGE_PUBKEY
> >  #endif
> > 
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/Kconfig       | 7 +++++++
> >  scripts/Makefile.lib | 6 ++++++
> >  2 files changed, 13 insertions(+)
> > 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 93b1d89274..33e15490e9 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -632,6 +632,13 @@ config BOOTM_FITIMAGE_SIGNATURE
> >  	  Additionally the barebox device tree needs a /signature node with the
> >  	  public key with which the image has been signed.
> >  
> > +config BOOTM_FITIMAGE_PUBKEY
> > +	string "Path to dtsi containing pubkey"
> > +	default "../fit/pubkey.dtsi"
> > +	depends on BOOTM_FITIMAGE_SIGNATURE
> > +	help
> > +	  FIXME
> 
> Set Path to a dts snippet which holds the public keys for FIT images.

Added the help text, thanks for writing one.

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
