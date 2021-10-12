Delivery-date: Tue, 12 Oct 2021 10:46:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDQ9-0004V6-RS
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 10:46:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDQ8-0007Mp-NN
	for lore@pengutronix.de; Tue, 12 Oct 2021 10:46:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EmGawIQlbPRLYgVQStOHRRYcXaWJyIX7K5nA8OHLYiE=; b=YhYb9lu13ez31tHTLN6eeNZFsJ
	Wlurc4mkVbNvHigsGU9DTDOS2GkO6EEw/cNMKWt4oQtvhQ0n08KBzQpCiHSMkC3pJxEWr256d+44m
	wWBFxpAqM6cDkjrgVqAJ6HPzAPu3mVVyXj00g+9o9FAPBhBsvmJcE4sG4L9DADqidF7mLKjUGsjmH
	41GUt3fNcoBWGHkNcMonfrFcpZ6PqN4jbMCG09yRr9+ODZKX7Gvxv7ghKFrAqkVB0jtVdRG+/kJKk
	wgig+5OySoazFT081xq7B9ccFCJoAP3yGpPFEei6jjWFK/eSrViqsmyvvrBDrw4egPioAUBjHNPSl
	jr0PmIQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDOn-00C3rA-M8; Tue, 12 Oct 2021 08:44:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDOi-00C3qk-Q8
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 08:44:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maDOh-00074k-8C; Tue, 12 Oct 2021 10:44:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maDOg-00061C-V3; Tue, 12 Oct 2021 10:44:30 +0200
Date: Tue, 12 Oct 2021 10:44:30 +0200
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012084430.GP28453@pengutronix.de>
References: <20211012083920.14092-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211012083920.14092-1-u.oelmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:43:44 up 236 days, 12:07, 141 users,  load average: 2.43, 1.21,
 0.65
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_014432_876704_18A35761 
X-CRM114-Status: GOOD (  38.82  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: Kconfig: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 12, 2021 at 10:39:19AM +0200, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/Kconfig | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 4239ddfb19e0..d8d20917aab6 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -10,7 +10,7 @@ config HAS_MODULES
>  config HAS_CACHE
>  	bool
>  	help
> -	  This allows you do run "make ARCH=3Dsandbox allyesconfig".
> +	  This allows you to run "make ARCH=3Dsandbox allyesconfig".
>  =

>  	  Drivers that depend on a cache implementation can depend on this
>  	  config, so that you don't get a compilation error.
> @@ -18,7 +18,7 @@ config HAS_CACHE
>  config HAS_DMA
>  	bool
>  	help
> -	  This allows you do run "make ARCH=3Dsandbox allyesconfig".
> +	  This allows you to run "make ARCH=3Dsandbox allyesconfig".
>  =

>  	  Drivers that depend on a DMA implementation can depend on this
>  	  config, so that you don't get a compilation error.
> @@ -630,7 +630,7 @@ config BOOTM_FITIMAGE
>  	select FITIMAGE
>  	depends on BOOTM && ARM
>  	help
> -	  Support using Flattened Image Tree (FIT) Images. FIT is an image
> +	  Support using Flattened Image Tree (FIT) images. FIT is an image
>  	  format introduced by U-Boot. A FIT image contains one or multiple
>  	  kernels, device trees and initrds. The FIT image itself is a flattened
>  	  device tree binary. Have a look at the u-boot source tree
> @@ -711,7 +711,7 @@ config MMCBLKDEV_ROOTARG
>  	  variable is set or the used blspec entry contains 'linux-appendroot'.
>  =

>  	  Note: It is crucial that the kernel device tree and the barebox device
> -	  tree uses the same mmc aliases.
> +	  tree use the same mmc aliases.
>  =

>  	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
>  	      alias")
> @@ -968,7 +968,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
>  	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	help
>  	  This option embeds the used barebox Kconfig .config file into the
> -	  environment as /env/data/config. This will increases barebox image
> +	  environment as /env/data/config. This will increase barebox' image
>  	  size. If unsure, say n here.
>  =

>  config DEFAULT_ENVIRONMENT_PATH
> @@ -1010,7 +1010,7 @@ config STATE_CRYPTO
>  	select DIGEST
>  	select DIGEST_HMAC_GENERIC
>  	help
> -	  This options enables HMAC based authentication support for
> +	  This option enables HMAC based authentication support for
>  	  the state's header and data. This means the state framework
>  	  can verify both the data integrity and the authentication of
>  	  the state's header and data.
> @@ -1084,8 +1084,8 @@ config EXTERNAL_DTS_FRAGMENTS
>  	  the dtc include search path.
>  =

>  	  A preprocessor macro based on the name of the main dts will be
> -	  defined, which allows the dts fragments to based on which image of a
> -	  multi image build they are being used in. Given the dts filename
> +	  defined, which allows the dts fragments to be based on which image of
> +	  a multi image build they are being used in. Given the dts filename
>  	  used for a board is "foo-board.dts" the external dts usage can be
>  	  limited to that board with
>  =

> @@ -1093,9 +1093,9 @@ config EXTERNAL_DTS_FRAGMENTS
>  	  ...
>  	  #endif
>  =

> -	  It not intended that this be put into into Barebox defconfig files.
> -	  Instead, it's an external build system, like Yocto or buildroot, to
> -	  add dts fragments from outside the Barebox source tree into the
> +	  It is not intended that this is put into Barebox' defconfig files.
> +	  Instead, it's an external build system's job, like Yocto or buildroot,
> +	  to add dts fragments from outside the Barebox source tree into the
>  	  Barebox build.
>  =

>  menu "OP-TEE loading"
> @@ -1127,7 +1127,7 @@ config PBL_OPTEE
>  	depends on !THUMB2_BAREBOX
>  	help
>  	  Allows starting OP-TEE during lowlevel initialization of the PBL.
> -	  Requires explicit support in the boards lowlevel file.
> +	  Requires explicit support in the board's lowlevel file.
>  =

>  endmenu
>  =

> @@ -1510,7 +1510,7 @@ config PBL_BREAK
>  	bool "Execute software break on pbl start"
>  	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
>  	help
> -	  If this enabled, barebox will be compiled with BKPT instruction
> +	  If enabled, barebox will be compiled with BKPT instruction
>  	  on early pbl init. This option should be used only with JTAG debugger!
>  =

>  source "lib/Kconfig.ubsan"
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

