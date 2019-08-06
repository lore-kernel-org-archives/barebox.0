Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutku-0002fk-VU
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 07:19:38 +0000
Date: Tue, 6 Aug 2019 09:19:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190806071933.mof4s52raym4zvkb@pengutronix.de>
References: <20190805140927.14941-1-s.hauer@pengutronix.de>
 <20190805142405.25n73rcixhctzsvh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805142405.25n73rcixhctzsvh@pengutronix.de>
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
Subject: Re: [PATCH] crypto: caam - Always do rng selftest
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 05, 2019 at 04:24:05PM +0200, Roland Hieber wrote:
> On Mon, Aug 05, 2019 at 04:09:27PM +0200, Sascha Hauer wrote:
> > The caam rng selftest is known to be broken in several i.MX
> > incarnations. To be on the safe side just unconditionally execute
> > it rather than trying to guess from HAB failure events if this is
> > necessary.
> > We can only do the selftest once per boot though, doing it a second time
> > yields an error:
> > 
> > rng_self_test: Job Error:
> > 2101000.jr0@1000.of: 20001953: CCB: desc idx 25: RNG: Instantiate
> > 
> > so only do the test when rng is not yet initialized as tested with the
> > RDSTA_IFx status bits.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/crypto/caam/Kconfig         | 23 -----------------------
> >  drivers/crypto/caam/Makefile        |  2 +-
> >  drivers/crypto/caam/ctrl.c          |  2 +-
> >  drivers/crypto/caam/rng_self_test.c | 15 +++++++++++++++
> >  drivers/hab/habv4.c                 | 13 -------------
> >  include/hab.h                       |  5 -----
> >  6 files changed, 17 insertions(+), 43 deletions(-)
> > 
> > diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
> > index 56b90700b8..6bb8278d69 100644
> > --- a/drivers/crypto/caam/Kconfig
> > +++ b/drivers/crypto/caam/Kconfig
> > @@ -34,26 +34,3 @@ config CRYPTO_DEV_FSL_CAAM_RNG
> >  	help
> >  	  Selecting this will register the SEC4 hardware rng.
> >  
> > -if CRYPTO_DEV_FSL_CAAM_RNG
> > -
> > -config CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST
> > -	bool "Run RNG software self-test on impacted chips"
> > -	depends on ARCH_IMX6
> > -	depends on HABV4
> > -	default y
> > -	help
> > -	  Some chips with HAB >= 4.2.3 have an incorrect implementation of the
> > -	  RNG self-test in ROM code. In this case, a software self-test should
> > -	  be run to ensure correctness of the RNG. By enabling this config
> > -	  option, the software self-test is run automatically when this case
> > -	  is detected.
> > -
> > -	  Currently known impacted chips:
> > -	  * i.MX6DQ+ silicon revision 1.1
> > -	  * i.MX6DQ silicon revision 1.6
> > -	  * i.MX6DLS silicon revision 1.4
> > -	  * i.MX6SX silicon revision 1.4
> > -	  * i.MX6UL silicon revision 1.2
> > -	  * i.MX67SD silicon revision 1.3
> > -
> > -endif
> > diff --git a/drivers/crypto/caam/Makefile b/drivers/crypto/caam/Makefile
> > index 933b9c0592..718e25c41a 100644
> > --- a/drivers/crypto/caam/Makefile
> > +++ b/drivers/crypto/caam/Makefile
> > @@ -3,5 +3,5 @@
> >  #
> >  obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += ctrl.o error.o jr.o
> >  obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG) += caamrng.o
> > -obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) += rng_self_test.o
> > +obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += rng_self_test.o
> >  obj-$(CONFIG_BLOBGEN) += caam-blobgen.o
> > diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> > index 06b075e74a..53526f53cf 100644
> > --- a/drivers/crypto/caam/ctrl.c
> > +++ b/drivers/crypto/caam/ctrl.c
> > @@ -573,7 +573,7 @@ static int caam_probe(struct device_d *dev)
> >  	cha_vid_ls = rd_reg32(&ctrl->perfmon.cha_id_ls);
> >  
> >  	/* habv4_need_rng_software_self_test is determined by habv4_get_status() */
> 
> Please also adapt the comment above :-)
> 
> > -	if (caam_need_rng_software_selftest()) {
> > +	if (!(rd_reg32(&ctrl->r4tst[0].rdsta) & RDSTA_IFMASK)) {
> 
> I'm not sure if I would understand that condition some years later
> without a comment, but then I'm not very versed in the NXP CAAM and the
> rest of the code also does many things like that without explaining
> them, so I guess it's okay :D

Right, better to leave a comment here. I added this one:

	/*
	 * Only do the rng self test when the state handles are not yet
	 * instantiated as indicated by the RDSTA_IF1 and RDSTA_IF2 flags.
	 * Otherwise the self test fails.
	 */

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
