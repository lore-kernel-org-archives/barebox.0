Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt860-00085l-Ns
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 11:18:37 +0000
Date: Wed, 8 Jul 2020 13:18:34 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200708111833.nkp3xi2ocpertdww@pengutronix.de>
References: <20190805140927.14941-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805140927.14941-1-s.hauer@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 05, 2019 at 04:09:27PM +0200, Sascha Hauer wrote:
> The caam rng selftest is known to be broken in several i.MX
> incarnations. To be on the safe side just unconditionally execute
> it rather than trying to guess from HAB failure events if this is
> necessary.
> We can only do the selftest once per boot though, doing it a second time
> yields an error:
> 
> rng_self_test: Job Error:
> 2101000.jr0@1000.of: 20001953: CCB: desc idx 25: RNG: Instantiate
> 
> so only do the test when rng is not yet initialized as tested with the
> RDSTA_IFx status bits.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/crypto/caam/Kconfig         | 23 -----------------------
>  drivers/crypto/caam/Makefile        |  2 +-
>  drivers/crypto/caam/ctrl.c          |  2 +-
>  drivers/crypto/caam/rng_self_test.c | 15 +++++++++++++++
>  drivers/hab/habv4.c                 | 13 -------------
>  include/hab.h                       |  5 -----
>  6 files changed, 17 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
> index 56b90700b8..6bb8278d69 100644
> --- a/drivers/crypto/caam/Kconfig
> +++ b/drivers/crypto/caam/Kconfig
> @@ -34,26 +34,3 @@ config CRYPTO_DEV_FSL_CAAM_RNG
>  	help
>  	  Selecting this will register the SEC4 hardware rng.
>  
> -if CRYPTO_DEV_FSL_CAAM_RNG
> -
> -config CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST
> -	bool "Run RNG software self-test on impacted chips"
> -	depends on ARCH_IMX6
> -	depends on HABV4
> -	default y
> -	help
> -	  Some chips with HAB >= 4.2.3 have an incorrect implementation of the
> -	  RNG self-test in ROM code. In this case, a software self-test should
> -	  be run to ensure correctness of the RNG. By enabling this config
> -	  option, the software self-test is run automatically when this case
> -	  is detected.
> -
> -	  Currently known impacted chips:
> -	  * i.MX6DQ+ silicon revision 1.1
> -	  * i.MX6DQ silicon revision 1.6
> -	  * i.MX6DLS silicon revision 1.4
> -	  * i.MX6SX silicon revision 1.4
> -	  * i.MX6UL silicon revision 1.2
> -	  * i.MX67SD silicon revision 1.3
> -
> -endif
> diff --git a/drivers/crypto/caam/Makefile b/drivers/crypto/caam/Makefile
> index 933b9c0592..718e25c41a 100644
> --- a/drivers/crypto/caam/Makefile
> +++ b/drivers/crypto/caam/Makefile
> @@ -3,5 +3,5 @@
>  #
>  obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += ctrl.o error.o jr.o
>  obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG) += caamrng.o
> -obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) += rng_self_test.o
> +obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += rng_self_test.o

This should depend on CRYPTO_DEV_FSL_CAAM_RNG...

>  obj-$(CONFIG_BLOBGEN) += caam-blobgen.o
> diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> index 06b075e74a..53526f53cf 100644
> --- a/drivers/crypto/caam/ctrl.c
> +++ b/drivers/crypto/caam/ctrl.c
> @@ -573,7 +573,7 @@ static int caam_probe(struct device_d *dev)
>  	cha_vid_ls = rd_reg32(&ctrl->perfmon.cha_id_ls);
>  
>  	/* habv4_need_rng_software_self_test is determined by habv4_get_status() */
> -	if (caam_need_rng_software_selftest()) {
> +	if (!(rd_reg32(&ctrl->r4tst[0].rdsta) & RDSTA_IFMASK)) {
>  		u8 caam_era;
>  		u8 rngvid;
>  		u8 rngrev;
> diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
> index 7816cd152c..ed3017d828 100644
> --- a/drivers/crypto/caam/rng_self_test.c
> +++ b/drivers/crypto/caam/rng_self_test.c
> @@ -129,6 +129,21 @@ static void rng_self_test_done(struct device_d *dev, u32 *desc, u32 err, void *a
>  /*
>   * caam_rng_self_test() - Perform RNG self test
>   * Returns zero on success, and negative on error.
> + *
> + * Some chips with HAB >= 4.2.3 have an incorrect implementation of the
> + * RNG self-test in ROM code. In this case, a software self-test should
> + * be run to ensure correctness of the RNG. By enabling this config
> + * option, the software self-test is run automatically when this case
> + * is detected.
> + *
> + * Currently known impacted chips:
> + * * i.MX6DQ+ silicon revision 1.1
> + * * i.MX6DQ silicon revision 1.6
> + * * i.MX6DLS silicon revision 1.4
> + * * i.MX6SX silicon revision 1.4
> + * * i.MX6UL silicon revision 1.2
> + * * i.MX67SD silicon revision 1.3
> + *
>   */
>  int caam_rng_self_test(struct device_d *dev, const u8 caam_era, const u8 rngvid, const u8 rngrev)
>  {
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index 6a60be6853..a53e40ad23 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -388,18 +388,6 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
>  	habv4_display_event_record((struct hab_event_record *)data);
>  }
>  
> -/* Some chips with HAB >= 4.2.3 have an incorrect implementation of the RNG
> - * self-test in ROM code. In this case, an HAB event is generated, and a
> - * software self-test should be run. This variable is set to @c true by
> - * habv4_get_status() when this occurs. */
> -static bool habv4_need_rng_software_self_test;
> -
> -bool caam_need_rng_software_selftest(void)
> -{
> -	return IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
> -		habv4_need_rng_software_self_test;
> -}
> -
>  #define RNG_FAIL_EVENT_SIZE 36
>  static uint8_t habv4_known_rng_fail_events[][RNG_FAIL_EVENT_SIZE] = {
>  	{ 0xdb, 0x00, 0x24, 0x42,  0x69, 0x30, 0xe1, 0x1d,
> @@ -457,7 +445,6 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&

The removed kconfig symbol is still used here, so this branch is a no-op
now...

 - Roland

>  		    is_known_rng_fail_event(data, len)) {
>  			pr_debug("RNG self-test failure detected, will run software self-test\n");
> -			habv4_need_rng_software_self_test = true;
>  		} else {
>  			pr_err("-------- HAB warning Event %d --------\n", index);
>  			pr_err("event data:\n");
> diff --git a/include/hab.h b/include/hab.h
> index a74b7dafce..78c2b865ba 100644
> --- a/include/hab.h
> +++ b/include/hab.h
> @@ -23,7 +23,6 @@
>  #ifdef CONFIG_HABV4
>  int imx28_hab_get_status(void);
>  int imx6_hab_get_status(void);
> -bool caam_need_rng_software_selftest(void);
>  #else
>  static inline int imx28_hab_get_status(void)
>  {
> @@ -33,10 +32,6 @@ static inline int imx6_hab_get_status(void)
>  {
>  	return -EPERM;
>  }
> -static inline bool caam_need_rng_software_selftest(void)
> -{
> -	return false;
> -}
>  #endif
>  
>  #ifdef CONFIG_HABV3
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
